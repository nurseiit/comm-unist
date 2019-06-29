package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.AbsSavedState;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.ViewDragHelper.Callback;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;

public class SlidingPaneLayout extends ViewGroup {
    private static final int DEFAULT_FADE_COLOR = -858993460;
    private static final int DEFAULT_OVERHANG_SIZE = 32;
    static final SlidingPanelLayoutImpl IMPL;
    private static final int MIN_FLING_VELOCITY = 400;
    private static final String TAG = "SlidingPaneLayout";
    private boolean mCanSlide;
    private int mCoveredFadeColor;
    final ViewDragHelper mDragHelper;
    private boolean mFirstLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    boolean mIsUnableToDrag;
    private final int mOverhangSize;
    private PanelSlideListener mPanelSlideListener;
    private int mParallaxBy;
    private float mParallaxOffset;
    final ArrayList<DisableLayerRunnable> mPostedRunnables;
    boolean mPreservedOpenState;
    private Drawable mShadowDrawableLeft;
    private Drawable mShadowDrawableRight;
    float mSlideOffset;
    int mSlideRange;
    View mSlideableView;
    private int mSliderFadeColor;
    private final Rect mTmpRect;

    private class DisableLayerRunnable implements Runnable {
        final View mChildView;

        DisableLayerRunnable(View view) {
            this.mChildView = view;
        }

        public void run() {
            if (this.mChildView.getParent() == SlidingPaneLayout.this) {
                this.mChildView.setLayerType(0, null);
                SlidingPaneLayout.this.invalidateChildRegion(this.mChildView);
            }
            SlidingPaneLayout.this.mPostedRunnables.remove(this);
        }
    }

    public static class LayoutParams extends MarginLayoutParams {
        private static final int[] ATTRS = new int[]{16843137};
        Paint dimPaint;
        boolean dimWhenOffset;
        boolean slideable;
        public float weight = 0.0f;

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(@NonNull android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(@NonNull MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(@NonNull LayoutParams layoutParams) {
            super(layoutParams);
            this.weight = layoutParams.weight;
        }

        public LayoutParams(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ATTRS);
            this.weight = obtainStyledAttributes.getFloat(0, 0.0f);
            obtainStyledAttributes.recycle();
        }
    }

    public interface PanelSlideListener {
        void onPanelClosed(@NonNull View view);

        void onPanelOpened(@NonNull View view);

        void onPanelSlide(@NonNull View view, float f);
    }

    interface SlidingPanelLayoutImpl {
        void invalidateChildRegion(SlidingPaneLayout slidingPaneLayout, View view);
    }

    class AccessibilityDelegate extends AccessibilityDelegateCompat {
        private final Rect mTmpRect = new Rect();

        AccessibilityDelegate() {
        }

        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain(accessibilityNodeInfoCompat);
            super.onInitializeAccessibilityNodeInfo(view, obtain);
            copyNodeInfoNoChildren(accessibilityNodeInfoCompat, obtain);
            obtain.recycle();
            accessibilityNodeInfoCompat.setClassName(SlidingPaneLayout.class.getName());
            accessibilityNodeInfoCompat.setSource(view);
            ViewParent parentForAccessibility = ViewCompat.getParentForAccessibility(view);
            if (parentForAccessibility instanceof View) {
                accessibilityNodeInfoCompat.setParent((View) parentForAccessibility);
            }
            int childCount = SlidingPaneLayout.this.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = SlidingPaneLayout.this.getChildAt(i);
                if (!filter(childAt) && childAt.getVisibility() == 0) {
                    ViewCompat.setImportantForAccessibility(childAt, 1);
                    accessibilityNodeInfoCompat.addChild(childAt);
                }
            }
        }

        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
        }

        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return !filter(view) ? super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent) : false;
        }

        public boolean filter(View view) {
            return SlidingPaneLayout.this.isDimmed(view);
        }

        private void copyNodeInfoNoChildren(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2) {
            Rect rect = this.mTmpRect;
            accessibilityNodeInfoCompat2.getBoundsInParent(rect);
            accessibilityNodeInfoCompat.setBoundsInParent(rect);
            accessibilityNodeInfoCompat2.getBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setVisibleToUser(accessibilityNodeInfoCompat2.isVisibleToUser());
            accessibilityNodeInfoCompat.setPackageName(accessibilityNodeInfoCompat2.getPackageName());
            accessibilityNodeInfoCompat.setClassName(accessibilityNodeInfoCompat2.getClassName());
            accessibilityNodeInfoCompat.setContentDescription(accessibilityNodeInfoCompat2.getContentDescription());
            accessibilityNodeInfoCompat.setEnabled(accessibilityNodeInfoCompat2.isEnabled());
            accessibilityNodeInfoCompat.setClickable(accessibilityNodeInfoCompat2.isClickable());
            accessibilityNodeInfoCompat.setFocusable(accessibilityNodeInfoCompat2.isFocusable());
            accessibilityNodeInfoCompat.setFocused(accessibilityNodeInfoCompat2.isFocused());
            accessibilityNodeInfoCompat.setAccessibilityFocused(accessibilityNodeInfoCompat2.isAccessibilityFocused());
            accessibilityNodeInfoCompat.setSelected(accessibilityNodeInfoCompat2.isSelected());
            accessibilityNodeInfoCompat.setLongClickable(accessibilityNodeInfoCompat2.isLongClickable());
            accessibilityNodeInfoCompat.addAction(accessibilityNodeInfoCompat2.getActions());
            accessibilityNodeInfoCompat.setMovementGranularities(accessibilityNodeInfoCompat2.getMovementGranularities());
        }
    }

    private class DragHelperCallback extends Callback {
        DragHelperCallback() {
        }

        public boolean tryCaptureView(View view, int i) {
            if (SlidingPaneLayout.this.mIsUnableToDrag) {
                return false;
            }
            return ((LayoutParams) view.getLayoutParams()).slideable;
        }

        public void onViewDragStateChanged(int i) {
            if (SlidingPaneLayout.this.mDragHelper.getViewDragState() != 0) {
                return;
            }
            if (SlidingPaneLayout.this.mSlideOffset == 0.0f) {
                SlidingPaneLayout.this.updateObscuredViewsVisibility(SlidingPaneLayout.this.mSlideableView);
                SlidingPaneLayout.this.dispatchOnPanelClosed(SlidingPaneLayout.this.mSlideableView);
                SlidingPaneLayout.this.mPreservedOpenState = false;
                return;
            }
            SlidingPaneLayout.this.dispatchOnPanelOpened(SlidingPaneLayout.this.mSlideableView);
            SlidingPaneLayout.this.mPreservedOpenState = true;
        }

        public void onViewCaptured(View view, int i) {
            SlidingPaneLayout.this.setAllChildrenVisible();
        }

        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            SlidingPaneLayout.this.onPanelDragged(i);
            SlidingPaneLayout.this.invalidate();
        }

        public void onViewReleased(View view, float f, float f2) {
            int width;
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (SlidingPaneLayout.this.isLayoutRtlSupport()) {
                int paddingRight = SlidingPaneLayout.this.getPaddingRight() + layoutParams.rightMargin;
                if (f < 0.0f || (f == 0.0f && SlidingPaneLayout.this.mSlideOffset > 0.5f)) {
                    paddingRight += SlidingPaneLayout.this.mSlideRange;
                }
                width = (SlidingPaneLayout.this.getWidth() - paddingRight) - SlidingPaneLayout.this.mSlideableView.getWidth();
            } else {
                width = layoutParams.leftMargin + SlidingPaneLayout.this.getPaddingLeft();
                if (f > 0.0f || (f == 0.0f && SlidingPaneLayout.this.mSlideOffset > 0.5f)) {
                    width += SlidingPaneLayout.this.mSlideRange;
                }
            }
            SlidingPaneLayout.this.mDragHelper.settleCapturedViewAt(width, view.getTop());
            SlidingPaneLayout.this.invalidate();
        }

        public int getViewHorizontalDragRange(View view) {
            return SlidingPaneLayout.this.mSlideRange;
        }

        public int clampViewPositionHorizontal(View view, int i, int i2) {
            LayoutParams layoutParams = (LayoutParams) SlidingPaneLayout.this.mSlideableView.getLayoutParams();
            if (SlidingPaneLayout.this.isLayoutRtlSupport()) {
                i2 = SlidingPaneLayout.this.getWidth() - ((SlidingPaneLayout.this.getPaddingRight() + layoutParams.rightMargin) + SlidingPaneLayout.this.mSlideableView.getWidth());
                return Math.max(Math.min(i, i2), i2 - SlidingPaneLayout.this.mSlideRange);
            }
            i2 = SlidingPaneLayout.this.getPaddingLeft() + layoutParams.leftMargin;
            return Math.min(Math.max(i, i2), SlidingPaneLayout.this.mSlideRange + i2);
        }

        public int clampViewPositionVertical(View view, int i, int i2) {
            return view.getTop();
        }

        public void onEdgeDragStarted(int i, int i2) {
            SlidingPaneLayout.this.mDragHelper.captureChildView(SlidingPaneLayout.this.mSlideableView, i2);
        }
    }

    static class SavedState extends AbsSavedState {
        public static final Creator<SavedState> CREATOR = new ClassLoaderCreator<SavedState>() {
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, null);
            }

            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        boolean isOpen;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.isOpen = parcel.readInt() != 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.isOpen);
        }
    }

    public static class SimplePanelSlideListener implements PanelSlideListener {
        public void onPanelClosed(View view) {
        }

        public void onPanelOpened(View view) {
        }

        public void onPanelSlide(View view, float f) {
        }
    }

    static class SlidingPanelLayoutImplBase implements SlidingPanelLayoutImpl {
        SlidingPanelLayoutImplBase() {
        }

        public void invalidateChildRegion(SlidingPaneLayout slidingPaneLayout, View view) {
            ViewCompat.postInvalidateOnAnimation(slidingPaneLayout, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    @RequiresApi(16)
    static class SlidingPanelLayoutImplJB extends SlidingPanelLayoutImplBase {
        private Method mGetDisplayList;
        private Field mRecreateDisplayList;

        SlidingPanelLayoutImplJB() {
            try {
                this.mGetDisplayList = View.class.getDeclaredMethod("getDisplayList", (Class[]) null);
            } catch (NoSuchMethodException e) {
                Log.e(SlidingPaneLayout.TAG, "Couldn't fetch getDisplayList method; dimming won't work right.", e);
            }
            try {
                this.mRecreateDisplayList = View.class.getDeclaredField("mRecreateDisplayList");
                this.mRecreateDisplayList.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e(SlidingPaneLayout.TAG, "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", e2);
            }
        }

        public void invalidateChildRegion(SlidingPaneLayout slidingPaneLayout, View view) {
            if (this.mGetDisplayList == null || this.mRecreateDisplayList == null) {
                view.invalidate();
                return;
            }
            try {
                this.mRecreateDisplayList.setBoolean(view, true);
                this.mGetDisplayList.invoke(view, (Object[]) null);
            } catch (Exception e) {
                Log.e(SlidingPaneLayout.TAG, "Error refreshing display list state", e);
            }
            super.invalidateChildRegion(slidingPaneLayout, view);
        }
    }

    @RequiresApi(17)
    static class SlidingPanelLayoutImplJBMR1 extends SlidingPanelLayoutImplBase {
        SlidingPanelLayoutImplJBMR1() {
        }

        public void invalidateChildRegion(SlidingPaneLayout slidingPaneLayout, View view) {
            ViewCompat.setLayerPaint(view, ((LayoutParams) view.getLayoutParams()).dimPaint);
        }
    }

    static {
        if (VERSION.SDK_INT >= 17) {
            IMPL = new SlidingPanelLayoutImplJBMR1();
        } else if (VERSION.SDK_INT >= 16) {
            IMPL = new SlidingPanelLayoutImplJB();
        } else {
            IMPL = new SlidingPanelLayoutImplBase();
        }
    }

    public SlidingPaneLayout(@NonNull Context context) {
        this(context, null);
    }

    public SlidingPaneLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingPaneLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mSliderFadeColor = DEFAULT_FADE_COLOR;
        this.mFirstLayout = true;
        this.mTmpRect = new Rect();
        this.mPostedRunnables = new ArrayList();
        float f = context.getResources().getDisplayMetrics().density;
        this.mOverhangSize = (int) ((32.0f * f) + 0.5f);
        setWillNotDraw(false);
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegate());
        ViewCompat.setImportantForAccessibility(this, 1);
        this.mDragHelper = ViewDragHelper.create(this, 0.5f, new DragHelperCallback());
        this.mDragHelper.setMinVelocity(f * 400.0f);
    }

    public void setParallaxDistance(int i) {
        this.mParallaxBy = i;
        requestLayout();
    }

    public int getParallaxDistance() {
        return this.mParallaxBy;
    }

    public void setSliderFadeColor(@ColorInt int i) {
        this.mSliderFadeColor = i;
    }

    @ColorInt
    public int getSliderFadeColor() {
        return this.mSliderFadeColor;
    }

    public void setCoveredFadeColor(@ColorInt int i) {
        this.mCoveredFadeColor = i;
    }

    @ColorInt
    public int getCoveredFadeColor() {
        return this.mCoveredFadeColor;
    }

    public void setPanelSlideListener(@Nullable PanelSlideListener panelSlideListener) {
        this.mPanelSlideListener = panelSlideListener;
    }

    /* Access modifiers changed, original: 0000 */
    public void dispatchOnPanelSlide(View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelSlide(view, this.mSlideOffset);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void dispatchOnPanelOpened(View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelOpened(view);
        }
        sendAccessibilityEvent(32);
    }

    /* Access modifiers changed, original: 0000 */
    public void dispatchOnPanelClosed(View view) {
        if (this.mPanelSlideListener != null) {
            this.mPanelSlideListener.onPanelClosed(view);
        }
        sendAccessibilityEvent(32);
    }

    /* Access modifiers changed, original: 0000 */
    public void updateObscuredViewsVisibility(View view) {
        int i;
        int i2;
        int i3;
        int i4;
        View view2 = view;
        boolean isLayoutRtlSupport = isLayoutRtlSupport();
        int width = isLayoutRtlSupport ? getWidth() - getPaddingRight() : getPaddingLeft();
        int paddingLeft = isLayoutRtlSupport ? getPaddingLeft() : getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        if (view2 == null || !viewIsOpaque(view)) {
            i = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
        } else {
            i = view.getLeft();
            i2 = view.getRight();
            i3 = view.getTop();
            i4 = view.getBottom();
        }
        int childCount = getChildCount();
        int i5 = 0;
        while (i5 < childCount) {
            View childAt = getChildAt(i5);
            if (childAt != view2) {
                boolean z;
                if (childAt.getVisibility() == 8) {
                    z = isLayoutRtlSupport;
                } else {
                    int i6;
                    int max = Math.max(isLayoutRtlSupport ? paddingLeft : width, childAt.getLeft());
                    int max2 = Math.max(paddingTop, childAt.getTop());
                    if (isLayoutRtlSupport) {
                        z = isLayoutRtlSupport;
                        i6 = width;
                    } else {
                        z = isLayoutRtlSupport;
                        i6 = paddingLeft;
                    }
                    max = (max < i || max2 < i3 || Math.min(i6, childAt.getRight()) > i2 || Math.min(height, childAt.getBottom()) > i4) ? 0 : 4;
                    childAt.setVisibility(max);
                }
                i5++;
                isLayoutRtlSupport = z;
                view2 = view;
            } else {
                return;
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void setAllChildrenVisible() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    private static boolean viewIsOpaque(View view) {
        boolean z = true;
        if (view.isOpaque()) {
            return true;
        }
        if (VERSION.SDK_INT >= 18) {
            return false;
        }
        Drawable background = view.getBackground();
        if (background == null) {
            return false;
        }
        if (background.getOpacity() != -1) {
            z = false;
        }
        return z;
    }

    /* Access modifiers changed, original: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    /* Access modifiers changed, original: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mFirstLayout = true;
        int size = this.mPostedRunnables.size();
        for (int i = 0; i < size; i++) {
            ((DisableLayerRunnable) this.mPostedRunnables.get(i)).run();
        }
        this.mPostedRunnables.clear();
    }

    /* Access modifiers changed, original: protected */
    /* JADX WARNING: Removed duplicated region for block: B:117:0x020d  */
    /* JADX WARNING: Removed duplicated region for block: B:114:0x01f7  */
    public void onMeasure(int r21, int r22) {
        /*
        r20 = this;
        r0 = r20;
        r1 = android.view.View.MeasureSpec.getMode(r21);
        r2 = android.view.View.MeasureSpec.getSize(r21);
        r3 = android.view.View.MeasureSpec.getMode(r22);
        r4 = android.view.View.MeasureSpec.getSize(r22);
        r5 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
        r6 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        r7 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        if (r1 == r7) goto L_0x0030;
    L_0x001a:
        r8 = r20.isInEditMode();
        if (r8 == 0) goto L_0x0028;
    L_0x0020:
        if (r1 != r6) goto L_0x0023;
    L_0x0022:
        goto L_0x0047;
    L_0x0023:
        if (r1 != 0) goto L_0x0047;
    L_0x0025:
        r2 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
        goto L_0x0047;
    L_0x0028:
        r1 = new java.lang.IllegalStateException;
        r2 = "Width must have an exact value or MATCH_PARENT";
        r1.<init>(r2);
        throw r1;
    L_0x0030:
        if (r3 != 0) goto L_0x0047;
    L_0x0032:
        r1 = r20.isInEditMode();
        if (r1 == 0) goto L_0x003f;
    L_0x0038:
        if (r3 != 0) goto L_0x0047;
    L_0x003a:
        r3 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        r4 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
        goto L_0x0047;
    L_0x003f:
        r1 = new java.lang.IllegalStateException;
        r2 = "Height must not be UNSPECIFIED";
        r1.<init>(r2);
        throw r1;
    L_0x0047:
        r1 = 0;
        if (r3 == r6) goto L_0x005b;
    L_0x004a:
        if (r3 == r7) goto L_0x004f;
    L_0x004c:
        r4 = 0;
        r5 = 0;
        goto L_0x0067;
    L_0x004f:
        r5 = r20.getPaddingTop();
        r4 = r4 - r5;
        r5 = r20.getPaddingBottom();
        r4 = r4 - r5;
        r5 = r4;
        goto L_0x0067;
    L_0x005b:
        r5 = r20.getPaddingTop();
        r4 = r4 - r5;
        r5 = r20.getPaddingBottom();
        r4 = r4 - r5;
        r5 = r4;
        r4 = 0;
    L_0x0067:
        r8 = r20.getPaddingLeft();
        r8 = r2 - r8;
        r9 = r20.getPaddingRight();
        r8 = r8 - r9;
        r9 = r20.getChildCount();
        r10 = 2;
        if (r9 <= r10) goto L_0x0080;
    L_0x0079:
        r10 = "SlidingPaneLayout";
        r11 = "onMeasure: More than two child views are not supported.";
        android.util.Log.e(r10, r11);
    L_0x0080:
        r10 = 0;
        r0.mSlideableView = r10;
        r13 = r4;
        r14 = r8;
        r4 = 0;
        r11 = 0;
        r12 = 0;
    L_0x0088:
        r15 = 8;
        r16 = 1;
        if (r4 >= r9) goto L_0x012d;
    L_0x008e:
        r6 = r0.getChildAt(r4);
        r18 = r6.getLayoutParams();
        r7 = r18;
        r7 = (android.support.v4.widget.SlidingPaneLayout.LayoutParams) r7;
        r10 = r6.getVisibility();
        if (r10 != r15) goto L_0x00a4;
    L_0x00a0:
        r7.dimWhenOffset = r1;
        goto L_0x0124;
    L_0x00a4:
        r10 = r7.weight;
        r15 = 0;
        r10 = (r10 > r15 ? 1 : (r10 == r15 ? 0 : -1));
        if (r10 <= 0) goto L_0x00b4;
    L_0x00ab:
        r10 = r7.weight;
        r12 = r12 + r10;
        r10 = r7.width;
        if (r10 != 0) goto L_0x00b4;
    L_0x00b2:
        goto L_0x0124;
    L_0x00b4:
        r10 = r7.leftMargin;
        r15 = r7.rightMargin;
        r10 = r10 + r15;
        r15 = r7.width;
        r1 = -2;
        if (r15 != r1) goto L_0x00c9;
    L_0x00be:
        r1 = r8 - r10;
        r10 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        r1 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r10);
        r10 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        goto L_0x00df;
    L_0x00c9:
        r1 = r7.width;
        r15 = -1;
        if (r1 != r15) goto L_0x00d7;
    L_0x00ce:
        r1 = r8 - r10;
        r10 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r1 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r10);
        goto L_0x00df;
    L_0x00d7:
        r10 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r1 = r7.width;
        r1 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r10);
    L_0x00df:
        r15 = r7.height;
        r10 = -2;
        if (r15 != r10) goto L_0x00eb;
    L_0x00e4:
        r10 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        r15 = android.view.View.MeasureSpec.makeMeasureSpec(r5, r10);
        goto L_0x00ff;
    L_0x00eb:
        r10 = r7.height;
        r15 = -1;
        if (r10 != r15) goto L_0x00f7;
    L_0x00f0:
        r10 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r15 = android.view.View.MeasureSpec.makeMeasureSpec(r5, r10);
        goto L_0x00ff;
    L_0x00f7:
        r10 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r15 = r7.height;
        r15 = android.view.View.MeasureSpec.makeMeasureSpec(r15, r10);
    L_0x00ff:
        r6.measure(r1, r15);
        r1 = r6.getMeasuredWidth();
        r10 = r6.getMeasuredHeight();
        r15 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        if (r3 != r15) goto L_0x0114;
    L_0x010e:
        if (r10 <= r13) goto L_0x0114;
    L_0x0110:
        r13 = java.lang.Math.min(r10, r5);
    L_0x0114:
        r14 = r14 - r1;
        if (r14 >= 0) goto L_0x0119;
    L_0x0117:
        r1 = 1;
        goto L_0x011a;
    L_0x0119:
        r1 = 0;
    L_0x011a:
        r7.slideable = r1;
        r1 = r1 | r11;
        r7 = r7.slideable;
        if (r7 == 0) goto L_0x0123;
    L_0x0121:
        r0.mSlideableView = r6;
    L_0x0123:
        r11 = r1;
    L_0x0124:
        r4 = r4 + 1;
        r1 = 0;
        r6 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        r7 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        goto L_0x0088;
    L_0x012d:
        if (r11 != 0) goto L_0x0134;
    L_0x012f:
        r1 = 0;
        r3 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1));
        if (r3 <= 0) goto L_0x022d;
    L_0x0134:
        r1 = r0.mOverhangSize;
        r1 = r8 - r1;
        r3 = 0;
    L_0x0139:
        if (r3 >= r9) goto L_0x022d;
    L_0x013b:
        r4 = r0.getChildAt(r3);
        r6 = r4.getVisibility();
        if (r6 != r15) goto L_0x014c;
    L_0x0145:
        r19 = r1;
    L_0x0147:
        r1 = 0;
        r6 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        goto L_0x0225;
    L_0x014c:
        r6 = r4.getLayoutParams();
        r6 = (android.support.v4.widget.SlidingPaneLayout.LayoutParams) r6;
        r7 = r4.getVisibility();
        if (r7 != r15) goto L_0x0159;
    L_0x0158:
        goto L_0x0145;
    L_0x0159:
        r7 = r6.width;
        if (r7 != 0) goto L_0x0166;
    L_0x015d:
        r7 = r6.weight;
        r10 = 0;
        r7 = (r7 > r10 ? 1 : (r7 == r10 ? 0 : -1));
        if (r7 <= 0) goto L_0x0166;
    L_0x0164:
        r7 = 1;
        goto L_0x0167;
    L_0x0166:
        r7 = 0;
    L_0x0167:
        if (r7 == 0) goto L_0x016b;
    L_0x0169:
        r10 = 0;
        goto L_0x016f;
    L_0x016b:
        r10 = r4.getMeasuredWidth();
    L_0x016f:
        if (r11 == 0) goto L_0x01b9;
    L_0x0171:
        r15 = r0.mSlideableView;
        if (r4 == r15) goto L_0x01b9;
    L_0x0175:
        r15 = r6.width;
        if (r15 >= 0) goto L_0x0145;
    L_0x0179:
        if (r10 > r1) goto L_0x0182;
    L_0x017b:
        r10 = r6.weight;
        r15 = 0;
        r10 = (r10 > r15 ? 1 : (r10 == r15 ? 0 : -1));
        if (r10 <= 0) goto L_0x0145;
    L_0x0182:
        if (r7 == 0) goto L_0x01a7;
    L_0x0184:
        r7 = r6.height;
        r10 = -2;
        if (r7 != r10) goto L_0x0192;
    L_0x0189:
        r7 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        r6 = android.view.View.MeasureSpec.makeMeasureSpec(r5, r7);
        r7 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        goto L_0x01b1;
    L_0x0192:
        r7 = r6.height;
        r10 = -1;
        if (r7 != r10) goto L_0x019e;
    L_0x0197:
        r7 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r6 = android.view.View.MeasureSpec.makeMeasureSpec(r5, r7);
        goto L_0x01b1;
    L_0x019e:
        r7 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r6 = r6.height;
        r6 = android.view.View.MeasureSpec.makeMeasureSpec(r6, r7);
        goto L_0x01b1;
    L_0x01a7:
        r7 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r6 = r4.getMeasuredHeight();
        r6 = android.view.View.MeasureSpec.makeMeasureSpec(r6, r7);
    L_0x01b1:
        r10 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r7);
        r4.measure(r10, r6);
        goto L_0x0145;
    L_0x01b9:
        r7 = r6.weight;
        r15 = 0;
        r7 = (r7 > r15 ? 1 : (r7 == r15 ? 0 : -1));
        if (r7 <= 0) goto L_0x0145;
    L_0x01c0:
        r7 = r6.width;
        if (r7 != 0) goto L_0x01e9;
    L_0x01c4:
        r7 = r6.height;
        r15 = -2;
        if (r7 != r15) goto L_0x01d4;
    L_0x01c9:
        r7 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        r17 = android.view.View.MeasureSpec.makeMeasureSpec(r5, r7);
        r15 = r17;
        r7 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        goto L_0x01f5;
    L_0x01d4:
        r7 = r6.height;
        r15 = -1;
        if (r7 != r15) goto L_0x01e0;
    L_0x01d9:
        r7 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r17 = android.view.View.MeasureSpec.makeMeasureSpec(r5, r7);
        goto L_0x01f3;
    L_0x01e0:
        r7 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r15 = r6.height;
        r17 = android.view.View.MeasureSpec.makeMeasureSpec(r15, r7);
        goto L_0x01f3;
    L_0x01e9:
        r7 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r15 = r4.getMeasuredHeight();
        r17 = android.view.View.MeasureSpec.makeMeasureSpec(r15, r7);
    L_0x01f3:
        r15 = r17;
    L_0x01f5:
        if (r11 == 0) goto L_0x020d;
    L_0x01f7:
        r7 = r6.leftMargin;
        r6 = r6.rightMargin;
        r7 = r7 + r6;
        r6 = r8 - r7;
        r19 = r1;
        r7 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r1 = android.view.View.MeasureSpec.makeMeasureSpec(r6, r7);
        if (r10 == r6) goto L_0x0147;
    L_0x0208:
        r4.measure(r1, r15);
        goto L_0x0147;
    L_0x020d:
        r19 = r1;
        r1 = 0;
        r7 = java.lang.Math.max(r1, r14);
        r6 = r6.weight;
        r7 = (float) r7;
        r6 = r6 * r7;
        r6 = r6 / r12;
        r6 = (int) r6;
        r10 = r10 + r6;
        r6 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r7 = android.view.View.MeasureSpec.makeMeasureSpec(r10, r6);
        r4.measure(r7, r15);
    L_0x0225:
        r3 = r3 + 1;
        r1 = r19;
        r15 = 8;
        goto L_0x0139;
    L_0x022d:
        r1 = r20.getPaddingTop();
        r13 = r13 + r1;
        r1 = r20.getPaddingBottom();
        r13 = r13 + r1;
        r0.setMeasuredDimension(r2, r13);
        r0.mCanSlide = r11;
        r1 = r0.mDragHelper;
        r1 = r1.getViewDragState();
        if (r1 == 0) goto L_0x024b;
    L_0x0244:
        if (r11 != 0) goto L_0x024b;
    L_0x0246:
        r1 = r0.mDragHelper;
        r1.abort();
    L_0x024b:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.SlidingPaneLayout.onMeasure(int, int):void");
    }

    /* Access modifiers changed, original: protected */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00c8  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00c2  */
    public void onLayout(boolean r20, int r21, int r22, int r23, int r24) {
        /*
        r19 = this;
        r0 = r19;
        r1 = r19.isLayoutRtlSupport();
        r2 = 1;
        if (r1 == 0) goto L_0x0010;
    L_0x0009:
        r3 = r0.mDragHelper;
        r4 = 2;
        r3.setEdgeTrackingEnabled(r4);
        goto L_0x0015;
    L_0x0010:
        r3 = r0.mDragHelper;
        r3.setEdgeTrackingEnabled(r2);
    L_0x0015:
        r3 = r23 - r21;
        if (r1 == 0) goto L_0x001e;
    L_0x0019:
        r4 = r19.getPaddingRight();
        goto L_0x0022;
    L_0x001e:
        r4 = r19.getPaddingLeft();
    L_0x0022:
        if (r1 == 0) goto L_0x0029;
    L_0x0024:
        r5 = r19.getPaddingLeft();
        goto L_0x002d;
    L_0x0029:
        r5 = r19.getPaddingRight();
    L_0x002d:
        r6 = r19.getPaddingTop();
        r7 = r19.getChildCount();
        r8 = r0.mFirstLayout;
        if (r8 == 0) goto L_0x0047;
    L_0x0039:
        r8 = r0.mCanSlide;
        if (r8 == 0) goto L_0x0044;
    L_0x003d:
        r8 = r0.mPreservedOpenState;
        if (r8 == 0) goto L_0x0044;
    L_0x0041:
        r8 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        goto L_0x0045;
    L_0x0044:
        r8 = 0;
    L_0x0045:
        r0.mSlideOffset = r8;
    L_0x0047:
        r11 = r4;
        r12 = r11;
        r4 = 0;
    L_0x004a:
        if (r4 >= r7) goto L_0x00df;
    L_0x004c:
        r13 = r0.getChildAt(r4);
        r14 = r13.getVisibility();
        r15 = 8;
        if (r14 != r15) goto L_0x005c;
    L_0x0058:
        r8 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        goto L_0x00da;
    L_0x005c:
        r14 = r13.getLayoutParams();
        r14 = (android.support.v4.widget.SlidingPaneLayout.LayoutParams) r14;
        r15 = r13.getMeasuredWidth();
        r2 = r14.slideable;
        if (r2 == 0) goto L_0x00a5;
    L_0x006a:
        r2 = r14.leftMargin;
        r8 = r14.rightMargin;
        r2 = r2 + r8;
        r8 = r3 - r5;
        r9 = r0.mOverhangSize;
        r9 = r8 - r9;
        r9 = java.lang.Math.min(r11, r9);
        r9 = r9 - r12;
        r9 = r9 - r2;
        r0.mSlideRange = r9;
        if (r1 == 0) goto L_0x0082;
    L_0x007f:
        r2 = r14.rightMargin;
        goto L_0x0084;
    L_0x0082:
        r2 = r14.leftMargin;
    L_0x0084:
        r16 = r12 + r2;
        r16 = r16 + r9;
        r17 = r15 / 2;
        r10 = r16 + r17;
        if (r10 <= r8) goto L_0x0090;
    L_0x008e:
        r8 = 1;
        goto L_0x0091;
    L_0x0090:
        r8 = 0;
    L_0x0091:
        r14.dimWhenOffset = r8;
        r8 = (float) r9;
        r9 = r0.mSlideOffset;
        r8 = r8 * r9;
        r8 = (int) r8;
        r2 = r2 + r8;
        r2 = r2 + r12;
        r8 = (float) r8;
        r9 = r0.mSlideRange;
        r9 = (float) r9;
        r8 = r8 / r9;
        r0.mSlideOffset = r8;
        r8 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        goto L_0x00bf;
    L_0x00a5:
        r2 = r0.mCanSlide;
        if (r2 == 0) goto L_0x00bc;
    L_0x00a9:
        r2 = r0.mParallaxBy;
        if (r2 == 0) goto L_0x00bc;
    L_0x00ad:
        r2 = r0.mSlideOffset;
        r8 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r10 = r8 - r2;
        r2 = r0.mParallaxBy;
        r2 = (float) r2;
        r10 = r10 * r2;
        r2 = (int) r10;
        r9 = r2;
        r2 = r11;
        goto L_0x00c0;
    L_0x00bc:
        r8 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r2 = r11;
    L_0x00bf:
        r9 = 0;
    L_0x00c0:
        if (r1 == 0) goto L_0x00c8;
    L_0x00c2:
        r10 = r3 - r2;
        r10 = r10 + r9;
        r9 = r10 - r15;
        goto L_0x00cc;
    L_0x00c8:
        r9 = r2 - r9;
        r10 = r9 + r15;
    L_0x00cc:
        r12 = r13.getMeasuredHeight();
        r12 = r12 + r6;
        r13.layout(r9, r6, r10, r12);
        r9 = r13.getWidth();
        r11 = r11 + r9;
        r12 = r2;
    L_0x00da:
        r4 = r4 + 1;
        r2 = 1;
        goto L_0x004a;
    L_0x00df:
        r1 = r0.mFirstLayout;
        if (r1 == 0) goto L_0x011b;
    L_0x00e3:
        r1 = r0.mCanSlide;
        if (r1 == 0) goto L_0x0106;
    L_0x00e7:
        r1 = r0.mParallaxBy;
        if (r1 == 0) goto L_0x00f0;
    L_0x00eb:
        r1 = r0.mSlideOffset;
        r0.parallaxOtherViews(r1);
    L_0x00f0:
        r1 = r0.mSlideableView;
        r1 = r1.getLayoutParams();
        r1 = (android.support.v4.widget.SlidingPaneLayout.LayoutParams) r1;
        r1 = r1.dimWhenOffset;
        if (r1 == 0) goto L_0x0116;
    L_0x00fc:
        r1 = r0.mSlideableView;
        r2 = r0.mSlideOffset;
        r3 = r0.mSliderFadeColor;
        r0.dimChildView(r1, r2, r3);
        goto L_0x0116;
    L_0x0106:
        r1 = 0;
    L_0x0107:
        if (r1 >= r7) goto L_0x0116;
    L_0x0109:
        r2 = r0.getChildAt(r1);
        r3 = r0.mSliderFadeColor;
        r4 = 0;
        r0.dimChildView(r2, r4, r3);
        r1 = r1 + 1;
        goto L_0x0107;
    L_0x0116:
        r1 = r0.mSlideableView;
        r0.updateObscuredViewsVisibility(r1);
    L_0x011b:
        r1 = 0;
        r0.mFirstLayout = r1;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.SlidingPaneLayout.onLayout(boolean, int, int, int, int):void");
    }

    /* Access modifiers changed, original: protected */
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            this.mFirstLayout = true;
        }
    }

    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (!isInTouchMode() && !this.mCanSlide) {
            this.mPreservedOpenState = view == this.mSlideableView;
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        boolean z = true;
        if (!this.mCanSlide && actionMasked == 0 && getChildCount() > 1) {
            View childAt = getChildAt(1);
            if (childAt != null) {
                this.mPreservedOpenState = this.mDragHelper.isViewUnder(childAt, (int) motionEvent.getX(), (int) motionEvent.getY()) ^ 1;
            }
        }
        if (!this.mCanSlide || (this.mIsUnableToDrag && actionMasked != 0)) {
            this.mDragHelper.cancel();
            return super.onInterceptTouchEvent(motionEvent);
        } else if (actionMasked == 3 || actionMasked == 1) {
            this.mDragHelper.cancel();
            return false;
        } else {
            Object obj;
            float x;
            float y;
            if (actionMasked == 0) {
                this.mIsUnableToDrag = false;
                x = motionEvent.getX();
                y = motionEvent.getY();
                this.mInitialMotionX = x;
                this.mInitialMotionY = y;
                if (this.mDragHelper.isViewUnder(this.mSlideableView, (int) x, (int) y) && isDimmed(this.mSlideableView)) {
                    obj = 1;
                    if (!this.mDragHelper.shouldInterceptTouchEvent(motionEvent) && obj == null) {
                        z = false;
                    }
                    return z;
                }
            } else if (actionMasked == 2) {
                x = motionEvent.getX();
                y = motionEvent.getY();
                x = Math.abs(x - this.mInitialMotionX);
                y = Math.abs(y - this.mInitialMotionY);
                if (x > ((float) this.mDragHelper.getTouchSlop()) && y > x) {
                    this.mDragHelper.cancel();
                    this.mIsUnableToDrag = true;
                    return false;
                }
            }
            obj = null;
            z = false;
            return z;
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.mCanSlide) {
            return super.onTouchEvent(motionEvent);
        }
        this.mDragHelper.processTouchEvent(motionEvent);
        float x;
        float y;
        switch (motionEvent.getActionMasked()) {
            case 0:
                x = motionEvent.getX();
                y = motionEvent.getY();
                this.mInitialMotionX = x;
                this.mInitialMotionY = y;
                break;
            case 1:
                if (isDimmed(this.mSlideableView)) {
                    x = motionEvent.getX();
                    y = motionEvent.getY();
                    float f = x - this.mInitialMotionX;
                    float f2 = y - this.mInitialMotionY;
                    int touchSlop = this.mDragHelper.getTouchSlop();
                    if ((f * f) + (f2 * f2) < ((float) (touchSlop * touchSlop)) && this.mDragHelper.isViewUnder(this.mSlideableView, (int) x, (int) y)) {
                        closePane(this.mSlideableView, 0);
                        break;
                    }
                }
                break;
        }
        return true;
    }

    private boolean closePane(View view, int i) {
        if (!this.mFirstLayout && !smoothSlideTo(0.0f, i)) {
            return false;
        }
        this.mPreservedOpenState = false;
        return true;
    }

    private boolean openPane(View view, int i) {
        if (!this.mFirstLayout && !smoothSlideTo(1.0f, i)) {
            return false;
        }
        this.mPreservedOpenState = true;
        return true;
    }

    @Deprecated
    public void smoothSlideOpen() {
        openPane();
    }

    public boolean openPane() {
        return openPane(this.mSlideableView, 0);
    }

    @Deprecated
    public void smoothSlideClosed() {
        closePane();
    }

    public boolean closePane() {
        return closePane(this.mSlideableView, 0);
    }

    public boolean isOpen() {
        return !this.mCanSlide || this.mSlideOffset == 1.0f;
    }

    @Deprecated
    public boolean canSlide() {
        return this.mCanSlide;
    }

    public boolean isSlideable() {
        return this.mCanSlide;
    }

    /* Access modifiers changed, original: 0000 */
    public void onPanelDragged(int i) {
        if (this.mSlideableView == null) {
            this.mSlideOffset = 0.0f;
            return;
        }
        boolean isLayoutRtlSupport = isLayoutRtlSupport();
        LayoutParams layoutParams = (LayoutParams) this.mSlideableView.getLayoutParams();
        int width = this.mSlideableView.getWidth();
        if (isLayoutRtlSupport) {
            i = (getWidth() - i) - width;
        }
        this.mSlideOffset = ((float) (i - ((isLayoutRtlSupport ? getPaddingRight() : getPaddingLeft()) + (isLayoutRtlSupport ? layoutParams.rightMargin : layoutParams.leftMargin)))) / ((float) this.mSlideRange);
        if (this.mParallaxBy != 0) {
            parallaxOtherViews(this.mSlideOffset);
        }
        if (layoutParams.dimWhenOffset) {
            dimChildView(this.mSlideableView, this.mSlideOffset, this.mSliderFadeColor);
        }
        dispatchOnPanelSlide(this.mSlideableView);
    }

    private void dimChildView(View view, float f, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f > 0.0f && i != 0) {
            int i2 = (((int) (((float) ((ViewCompat.MEASURED_STATE_MASK & i) >>> 24)) * f)) << 24) | (i & ViewCompat.MEASURED_SIZE_MASK);
            if (layoutParams.dimPaint == null) {
                layoutParams.dimPaint = new Paint();
            }
            layoutParams.dimPaint.setColorFilter(new PorterDuffColorFilter(i2, Mode.SRC_OVER));
            if (view.getLayerType() != 2) {
                view.setLayerType(2, layoutParams.dimPaint);
            }
            invalidateChildRegion(view);
        } else if (view.getLayerType() != 0) {
            if (layoutParams.dimPaint != null) {
                layoutParams.dimPaint.setColorFilter(null);
            }
            DisableLayerRunnable disableLayerRunnable = new DisableLayerRunnable(view);
            this.mPostedRunnables.add(disableLayerRunnable);
            ViewCompat.postOnAnimation(this, disableLayerRunnable);
        }
    }

    /* Access modifiers changed, original: protected */
    public boolean drawChild(Canvas canvas, View view, long j) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int save = canvas.save();
        if (!(!this.mCanSlide || layoutParams.slideable || this.mSlideableView == null)) {
            canvas.getClipBounds(this.mTmpRect);
            if (isLayoutRtlSupport()) {
                this.mTmpRect.left = Math.max(this.mTmpRect.left, this.mSlideableView.getRight());
            } else {
                this.mTmpRect.right = Math.min(this.mTmpRect.right, this.mSlideableView.getLeft());
            }
            canvas.clipRect(this.mTmpRect);
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        return drawChild;
    }

    /* Access modifiers changed, original: 0000 */
    public void invalidateChildRegion(View view) {
        IMPL.invalidateChildRegion(this, view);
    }

    /* Access modifiers changed, original: 0000 */
    public boolean smoothSlideTo(float f, int i) {
        if (!this.mCanSlide) {
            return false;
        }
        int width;
        LayoutParams layoutParams = (LayoutParams) this.mSlideableView.getLayoutParams();
        if (isLayoutRtlSupport()) {
            width = (int) (((float) getWidth()) - ((((float) (getPaddingRight() + layoutParams.rightMargin)) + (f * ((float) this.mSlideRange))) + ((float) this.mSlideableView.getWidth())));
        } else {
            width = (int) (((float) (getPaddingLeft() + layoutParams.leftMargin)) + (f * ((float) this.mSlideRange)));
        }
        if (!this.mDragHelper.smoothSlideViewTo(this.mSlideableView, width, this.mSlideableView.getTop())) {
            return false;
        }
        setAllChildrenVisible();
        ViewCompat.postInvalidateOnAnimation(this);
        return true;
    }

    public void computeScroll() {
        if (this.mDragHelper.continueSettling(true)) {
            if (this.mCanSlide) {
                ViewCompat.postInvalidateOnAnimation(this);
            } else {
                this.mDragHelper.abort();
            }
        }
    }

    @Deprecated
    public void setShadowDrawable(Drawable drawable) {
        setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(@Nullable Drawable drawable) {
        this.mShadowDrawableLeft = drawable;
    }

    public void setShadowDrawableRight(@Nullable Drawable drawable) {
        this.mShadowDrawableRight = drawable;
    }

    @Deprecated
    public void setShadowResource(@DrawableRes int i) {
        setShadowDrawable(getResources().getDrawable(i));
    }

    public void setShadowResourceLeft(int i) {
        setShadowDrawableLeft(ContextCompat.getDrawable(getContext(), i));
    }

    public void setShadowResourceRight(int i) {
        setShadowDrawableRight(ContextCompat.getDrawable(getContext(), i));
    }

    public void draw(Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        if (isLayoutRtlSupport()) {
            drawable = this.mShadowDrawableRight;
        } else {
            drawable = this.mShadowDrawableLeft;
        }
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt != null && drawable != null) {
            int right;
            int top = childAt.getTop();
            int bottom = childAt.getBottom();
            int intrinsicWidth = drawable.getIntrinsicWidth();
            if (isLayoutRtlSupport()) {
                right = childAt.getRight();
                intrinsicWidth += right;
            } else {
                right = childAt.getLeft();
                int i = right - intrinsicWidth;
                intrinsicWidth = right;
                right = i;
            }
            drawable.setBounds(right, top, intrinsicWidth, bottom);
            drawable.draw(canvas);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0023  */
    private void parallaxOtherViews(float r10) {
        /*
        r9 = this;
        r0 = r9.isLayoutRtlSupport();
        r1 = r9.mSlideableView;
        r1 = r1.getLayoutParams();
        r1 = (android.support.v4.widget.SlidingPaneLayout.LayoutParams) r1;
        r2 = r1.dimWhenOffset;
        r3 = 0;
        if (r2 == 0) goto L_0x001c;
    L_0x0011:
        if (r0 == 0) goto L_0x0016;
    L_0x0013:
        r1 = r1.rightMargin;
        goto L_0x0018;
    L_0x0016:
        r1 = r1.leftMargin;
    L_0x0018:
        if (r1 > 0) goto L_0x001c;
    L_0x001a:
        r1 = 1;
        goto L_0x001d;
    L_0x001c:
        r1 = 0;
    L_0x001d:
        r2 = r9.getChildCount();
    L_0x0021:
        if (r3 >= r2) goto L_0x005d;
    L_0x0023:
        r4 = r9.getChildAt(r3);
        r5 = r9.mSlideableView;
        if (r4 != r5) goto L_0x002c;
    L_0x002b:
        goto L_0x005a;
    L_0x002c:
        r5 = r9.mParallaxOffset;
        r6 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r5 = r6 - r5;
        r7 = r9.mParallaxBy;
        r7 = (float) r7;
        r5 = r5 * r7;
        r5 = (int) r5;
        r9.mParallaxOffset = r10;
        r7 = r6 - r10;
        r8 = r9.mParallaxBy;
        r8 = (float) r8;
        r7 = r7 * r8;
        r7 = (int) r7;
        r5 = r5 - r7;
        if (r0 == 0) goto L_0x0046;
    L_0x0045:
        r5 = -r5;
    L_0x0046:
        r4.offsetLeftAndRight(r5);
        if (r1 == 0) goto L_0x005a;
    L_0x004b:
        if (r0 == 0) goto L_0x0051;
    L_0x004d:
        r5 = r9.mParallaxOffset;
        r5 = r5 - r6;
        goto L_0x0055;
    L_0x0051:
        r5 = r9.mParallaxOffset;
        r5 = r6 - r5;
    L_0x0055:
        r6 = r9.mCoveredFadeColor;
        r9.dimChildView(r4, r5, r6);
    L_0x005a:
        r3 = r3 + 1;
        goto L_0x0021;
    L_0x005d:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.SlidingPaneLayout.parallaxOtherViews(float):void");
    }

    /* Access modifiers changed, original: protected */
    /* JADX WARNING: Missing block: B:22:0x0065, code skipped:
            if (r0.canScrollHorizontally(isLayoutRtlSupport() ? r16 : -r16) != false) goto L_0x0069;
     */
    public boolean canScroll(android.view.View r14, boolean r15, int r16, int r17, int r18) {
        /*
        r13 = this;
        r0 = r14;
        r1 = r0 instanceof android.view.ViewGroup;
        r2 = 1;
        if (r1 == 0) goto L_0x0053;
    L_0x0006:
        r1 = r0;
        r1 = (android.view.ViewGroup) r1;
        r3 = r0.getScrollX();
        r4 = r0.getScrollY();
        r5 = r1.getChildCount();
        r5 = r5 - r2;
    L_0x0016:
        if (r5 < 0) goto L_0x0053;
    L_0x0018:
        r7 = r1.getChildAt(r5);
        r6 = r17 + r3;
        r8 = r7.getLeft();
        if (r6 < r8) goto L_0x0050;
    L_0x0024:
        r8 = r7.getRight();
        if (r6 >= r8) goto L_0x0050;
    L_0x002a:
        r8 = r18 + r4;
        r9 = r7.getTop();
        if (r8 < r9) goto L_0x0050;
    L_0x0032:
        r9 = r7.getBottom();
        if (r8 >= r9) goto L_0x0050;
    L_0x0038:
        r9 = 1;
        r10 = r7.getLeft();
        r10 = r6 - r10;
        r6 = r7.getTop();
        r11 = r8 - r6;
        r6 = r13;
        r8 = r9;
        r9 = r16;
        r6 = r6.canScroll(r7, r8, r9, r10, r11);
        if (r6 == 0) goto L_0x0050;
    L_0x004f:
        return r2;
    L_0x0050:
        r5 = r5 + -1;
        goto L_0x0016;
    L_0x0053:
        if (r15 == 0) goto L_0x0068;
    L_0x0055:
        r1 = r13.isLayoutRtlSupport();
        if (r1 == 0) goto L_0x005e;
    L_0x005b:
        r1 = r16;
        goto L_0x0061;
    L_0x005e:
        r1 = r16;
        r1 = -r1;
    L_0x0061:
        r0 = r0.canScrollHorizontally(r1);
        if (r0 == 0) goto L_0x0068;
    L_0x0067:
        goto L_0x0069;
    L_0x0068:
        r2 = 0;
    L_0x0069:
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.SlidingPaneLayout.canScroll(android.view.View, boolean, int, int, int):boolean");
    }

    /* Access modifiers changed, original: 0000 */
    public boolean isDimmed(View view) {
        boolean z = false;
        if (view == null) {
            return false;
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (this.mCanSlide && layoutParams.dimWhenOffset && this.mSlideOffset > 0.0f) {
            z = true;
        }
        return z;
    }

    /* Access modifiers changed, original: protected */
    public android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    /* Access modifiers changed, original: protected */
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof MarginLayoutParams ? new LayoutParams((MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    /* Access modifiers changed, original: protected */
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* Access modifiers changed, original: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.isOpen = isSlideable() ? isOpen() : this.mPreservedOpenState;
        return savedState;
    }

    /* Access modifiers changed, original: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            if (savedState.isOpen) {
                openPane();
            } else {
                closePane();
            }
            this.mPreservedOpenState = savedState.isOpen;
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    /* Access modifiers changed, original: 0000 */
    public boolean isLayoutRtlSupport() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }
}
