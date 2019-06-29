package android.support.v4.widget;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import java.util.Arrays;

public class ViewDragHelper {
    private static final int BASE_SETTLE_DURATION = 256;
    public static final int DIRECTION_ALL = 3;
    public static final int DIRECTION_HORIZONTAL = 1;
    public static final int DIRECTION_VERTICAL = 2;
    public static final int EDGE_ALL = 15;
    public static final int EDGE_BOTTOM = 8;
    public static final int EDGE_LEFT = 1;
    public static final int EDGE_RIGHT = 2;
    private static final int EDGE_SIZE = 20;
    public static final int EDGE_TOP = 4;
    public static final int INVALID_POINTER = -1;
    private static final int MAX_SETTLE_DURATION = 600;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private static final String TAG = "ViewDragHelper";
    private static final Interpolator sInterpolator = new Interpolator() {
        public float getInterpolation(float f) {
            f -= 1.0f;
            return ((((f * f) * f) * f) * f) + 1.0f;
        }
    };
    private int mActivePointerId = -1;
    private final Callback mCallback;
    private View mCapturedView;
    private int mDragState;
    private int[] mEdgeDragsInProgress;
    private int[] mEdgeDragsLocked;
    private int mEdgeSize;
    private int[] mInitialEdgesTouched;
    private float[] mInitialMotionX;
    private float[] mInitialMotionY;
    private float[] mLastMotionX;
    private float[] mLastMotionY;
    private float mMaxVelocity;
    private float mMinVelocity;
    private final ViewGroup mParentView;
    private int mPointersDown;
    private boolean mReleaseInProgress;
    private OverScroller mScroller;
    private final Runnable mSetIdleRunnable = new Runnable() {
        public void run() {
            ViewDragHelper.this.setDragState(0);
        }
    };
    private int mTouchSlop;
    private int mTrackingEdges;
    private VelocityTracker mVelocityTracker;

    public static abstract class Callback {
        public int clampViewPositionHorizontal(@NonNull View view, int i, int i2) {
            return 0;
        }

        public int clampViewPositionVertical(@NonNull View view, int i, int i2) {
            return 0;
        }

        public int getOrderedChildIndex(int i) {
            return i;
        }

        public int getViewHorizontalDragRange(@NonNull View view) {
            return 0;
        }

        public int getViewVerticalDragRange(@NonNull View view) {
            return 0;
        }

        public void onEdgeDragStarted(int i, int i2) {
        }

        public boolean onEdgeLock(int i) {
            return false;
        }

        public void onEdgeTouched(int i, int i2) {
        }

        public void onViewCaptured(@NonNull View view, int i) {
        }

        public void onViewDragStateChanged(int i) {
        }

        public void onViewPositionChanged(@NonNull View view, int i, int i2, int i3, int i4) {
        }

        public void onViewReleased(@NonNull View view, float f, float f2) {
        }

        public abstract boolean tryCaptureView(@NonNull View view, int i);
    }

    public static ViewDragHelper create(@NonNull ViewGroup viewGroup, @NonNull Callback callback) {
        return new ViewDragHelper(viewGroup.getContext(), viewGroup, callback);
    }

    public static ViewDragHelper create(@NonNull ViewGroup viewGroup, float f, @NonNull Callback callback) {
        ViewDragHelper create = create(viewGroup, callback);
        create.mTouchSlop = (int) (((float) create.mTouchSlop) * (1.0f / f));
        return create;
    }

    private ViewDragHelper(@NonNull Context context, @NonNull ViewGroup viewGroup, @NonNull Callback callback) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        } else if (callback == null) {
            throw new IllegalArgumentException("Callback may not be null");
        } else {
            this.mParentView = viewGroup;
            this.mCallback = callback;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.mEdgeSize = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
            this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
            this.mMaxVelocity = (float) viewConfiguration.getScaledMaximumFlingVelocity();
            this.mMinVelocity = (float) viewConfiguration.getScaledMinimumFlingVelocity();
            this.mScroller = new OverScroller(context, sInterpolator);
        }
    }

    public void setMinVelocity(float f) {
        this.mMinVelocity = f;
    }

    public float getMinVelocity() {
        return this.mMinVelocity;
    }

    public int getViewDragState() {
        return this.mDragState;
    }

    public void setEdgeTrackingEnabled(int i) {
        this.mTrackingEdges = i;
    }

    public int getEdgeSize() {
        return this.mEdgeSize;
    }

    public void captureChildView(@NonNull View view, int i) {
        if (view.getParent() != this.mParentView) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (");
            stringBuilder.append(this.mParentView);
            stringBuilder.append(")");
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        this.mCapturedView = view;
        this.mActivePointerId = i;
        this.mCallback.onViewCaptured(view, i);
        setDragState(1);
    }

    @Nullable
    public View getCapturedView() {
        return this.mCapturedView;
    }

    public int getActivePointerId() {
        return this.mActivePointerId;
    }

    public int getTouchSlop() {
        return this.mTouchSlop;
    }

    public void cancel() {
        this.mActivePointerId = -1;
        clearMotionHistory();
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    public void abort() {
        cancel();
        if (this.mDragState == 2) {
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            this.mScroller.abortAnimation();
            int currX2 = this.mScroller.getCurrX();
            int currY2 = this.mScroller.getCurrY();
            this.mCallback.onViewPositionChanged(this.mCapturedView, currX2, currY2, currX2 - currX, currY2 - currY);
        }
        setDragState(0);
    }

    public boolean smoothSlideViewTo(@NonNull View view, int i, int i2) {
        this.mCapturedView = view;
        this.mActivePointerId = -1;
        boolean forceSettleCapturedViewAt = forceSettleCapturedViewAt(i, i2, 0, 0);
        if (!(forceSettleCapturedViewAt || this.mDragState != 0 || this.mCapturedView == null)) {
            this.mCapturedView = null;
        }
        return forceSettleCapturedViewAt;
    }

    public boolean settleCapturedViewAt(int i, int i2) {
        if (this.mReleaseInProgress) {
            return forceSettleCapturedViewAt(i, i2, (int) this.mVelocityTracker.getXVelocity(this.mActivePointerId), (int) this.mVelocityTracker.getYVelocity(this.mActivePointerId));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    private boolean forceSettleCapturedViewAt(int i, int i2, int i3, int i4) {
        int left = this.mCapturedView.getLeft();
        int top = this.mCapturedView.getTop();
        i -= left;
        i2 -= top;
        if (i == 0 && i2 == 0) {
            this.mScroller.abortAnimation();
            setDragState(0);
            return false;
        }
        this.mScroller.startScroll(left, top, i, i2, computeSettleDuration(this.mCapturedView, i, i2, i3, i4));
        setDragState(2);
        return true;
    }

    private int computeSettleDuration(View view, int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        i3 = clampMag(i3, (int) this.mMinVelocity, (int) this.mMaxVelocity);
        i4 = clampMag(i4, (int) this.mMinVelocity, (int) this.mMaxVelocity);
        int abs = Math.abs(i);
        int abs2 = Math.abs(i2);
        int abs3 = Math.abs(i3);
        int abs4 = Math.abs(i4);
        int i5 = abs3 + abs4;
        int i6 = abs + abs2;
        if (i3 != 0) {
            f = (float) abs3;
            f2 = (float) i5;
        } else {
            f = (float) abs;
            f2 = (float) i6;
        }
        f /= f2;
        if (i4 != 0) {
            f3 = (float) abs4;
            f2 = (float) i5;
        } else {
            f3 = (float) abs2;
            f2 = (float) i6;
        }
        f3 /= f2;
        return (int) ((((float) computeAxisDuration(i, i3, this.mCallback.getViewHorizontalDragRange(view))) * f) + (((float) computeAxisDuration(i2, i4, this.mCallback.getViewVerticalDragRange(view))) * f3));
    }

    private int computeAxisDuration(int i, int i2, int i3) {
        if (i == 0) {
            return 0;
        }
        int width = this.mParentView.getWidth();
        float f = (float) (width / 2);
        f += distanceInfluenceForSnapDuration(Math.min(1.0f, ((float) Math.abs(i)) / ((float) width))) * f;
        i2 = Math.abs(i2);
        if (i2 > 0) {
            i = Math.round(Math.abs(f / ((float) i2)) * 1000.0f) * 4;
        } else {
            i = (int) (((((float) Math.abs(i)) / ((float) i3)) + 1.0f) * 256.0f);
        }
        return Math.min(i, MAX_SETTLE_DURATION);
    }

    private int clampMag(int i, int i2, int i3) {
        int abs = Math.abs(i);
        if (abs < i2) {
            return 0;
        }
        if (abs <= i3) {
            return i;
        }
        if (i <= 0) {
            i3 = -i3;
        }
        return i3;
    }

    private float clampMag(float f, float f2, float f3) {
        float abs = Math.abs(f);
        if (abs < f2) {
            return 0.0f;
        }
        if (abs <= f3) {
            return f;
        }
        if (f <= 0.0f) {
            f3 = -f3;
        }
        return f3;
    }

    private float distanceInfluenceForSnapDuration(float f) {
        return (float) Math.sin((double) ((f - 0.5f) * 0.47123894f));
    }

    public void flingCapturedView(int i, int i2, int i3, int i4) {
        if (this.mReleaseInProgress) {
            this.mScroller.fling(this.mCapturedView.getLeft(), this.mCapturedView.getTop(), (int) this.mVelocityTracker.getXVelocity(this.mActivePointerId), (int) this.mVelocityTracker.getYVelocity(this.mActivePointerId), i, i3, i2, i4);
            setDragState(2);
            return;
        }
        throw new IllegalStateException("Cannot flingCapturedView outside of a call to Callback#onViewReleased");
    }

    public boolean continueSettling(boolean z) {
        if (this.mDragState == 2) {
            boolean computeScrollOffset = this.mScroller.computeScrollOffset();
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            int left = currX - this.mCapturedView.getLeft();
            int top = currY - this.mCapturedView.getTop();
            if (left != 0) {
                ViewCompat.offsetLeftAndRight(this.mCapturedView, left);
            }
            if (top != 0) {
                ViewCompat.offsetTopAndBottom(this.mCapturedView, top);
            }
            if (!(left == 0 && top == 0)) {
                this.mCallback.onViewPositionChanged(this.mCapturedView, currX, currY, left, top);
            }
            if (computeScrollOffset && currX == this.mScroller.getFinalX() && currY == this.mScroller.getFinalY()) {
                this.mScroller.abortAnimation();
                computeScrollOffset = false;
            }
            if (!computeScrollOffset) {
                if (z) {
                    this.mParentView.post(this.mSetIdleRunnable);
                } else {
                    setDragState(0);
                }
            }
        }
        if (this.mDragState == 2) {
            return true;
        }
        return false;
    }

    private void dispatchViewReleased(float f, float f2) {
        this.mReleaseInProgress = true;
        this.mCallback.onViewReleased(this.mCapturedView, f, f2);
        this.mReleaseInProgress = false;
        if (this.mDragState == 1) {
            setDragState(0);
        }
    }

    private void clearMotionHistory() {
        if (this.mInitialMotionX != null) {
            Arrays.fill(this.mInitialMotionX, 0.0f);
            Arrays.fill(this.mInitialMotionY, 0.0f);
            Arrays.fill(this.mLastMotionX, 0.0f);
            Arrays.fill(this.mLastMotionY, 0.0f);
            Arrays.fill(this.mInitialEdgesTouched, 0);
            Arrays.fill(this.mEdgeDragsInProgress, 0);
            Arrays.fill(this.mEdgeDragsLocked, 0);
            this.mPointersDown = 0;
        }
    }

    private void clearMotionHistory(int i) {
        if (this.mInitialMotionX != null && isPointerDown(i)) {
            this.mInitialMotionX[i] = 0.0f;
            this.mInitialMotionY[i] = 0.0f;
            this.mLastMotionX[i] = 0.0f;
            this.mLastMotionY[i] = 0.0f;
            this.mInitialEdgesTouched[i] = 0;
            this.mEdgeDragsInProgress[i] = 0;
            this.mEdgeDragsLocked[i] = 0;
            this.mPointersDown = ((1 << i) ^ -1) & this.mPointersDown;
        }
    }

    private void ensureMotionHistorySizeForId(int i) {
        if (this.mInitialMotionX == null || this.mInitialMotionX.length <= i) {
            i++;
            float[] fArr = new float[i];
            float[] fArr2 = new float[i];
            float[] fArr3 = new float[i];
            float[] fArr4 = new float[i];
            int[] iArr = new int[i];
            int[] iArr2 = new int[i];
            int[] iArr3 = new int[i];
            if (this.mInitialMotionX != null) {
                System.arraycopy(this.mInitialMotionX, 0, fArr, 0, this.mInitialMotionX.length);
                System.arraycopy(this.mInitialMotionY, 0, fArr2, 0, this.mInitialMotionY.length);
                System.arraycopy(this.mLastMotionX, 0, fArr3, 0, this.mLastMotionX.length);
                System.arraycopy(this.mLastMotionY, 0, fArr4, 0, this.mLastMotionY.length);
                System.arraycopy(this.mInitialEdgesTouched, 0, iArr, 0, this.mInitialEdgesTouched.length);
                System.arraycopy(this.mEdgeDragsInProgress, 0, iArr2, 0, this.mEdgeDragsInProgress.length);
                System.arraycopy(this.mEdgeDragsLocked, 0, iArr3, 0, this.mEdgeDragsLocked.length);
            }
            this.mInitialMotionX = fArr;
            this.mInitialMotionY = fArr2;
            this.mLastMotionX = fArr3;
            this.mLastMotionY = fArr4;
            this.mInitialEdgesTouched = iArr;
            this.mEdgeDragsInProgress = iArr2;
            this.mEdgeDragsLocked = iArr3;
        }
    }

    private void saveInitialMotion(float f, float f2, int i) {
        ensureMotionHistorySizeForId(i);
        float[] fArr = this.mInitialMotionX;
        this.mLastMotionX[i] = f;
        fArr[i] = f;
        fArr = this.mInitialMotionY;
        this.mLastMotionY[i] = f2;
        fArr[i] = f2;
        this.mInitialEdgesTouched[i] = getEdgesTouched((int) f, (int) f2);
        this.mPointersDown |= 1 << i;
    }

    private void saveLastMotion(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (isValidPointerForActionMove(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.mLastMotionX[pointerId] = x;
                this.mLastMotionY[pointerId] = y;
            }
        }
    }

    public boolean isPointerDown(int i) {
        return ((1 << i) & this.mPointersDown) != 0;
    }

    /* Access modifiers changed, original: 0000 */
    public void setDragState(int i) {
        this.mParentView.removeCallbacks(this.mSetIdleRunnable);
        if (this.mDragState != i) {
            this.mDragState = i;
            this.mCallback.onViewDragStateChanged(i);
            if (this.mDragState == 0) {
                this.mCapturedView = null;
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public boolean tryCaptureViewForDrag(View view, int i) {
        if (view == this.mCapturedView && this.mActivePointerId == i) {
            return true;
        }
        if (view == null || !this.mCallback.tryCaptureView(view, i)) {
            return false;
        }
        this.mActivePointerId = i;
        captureChildView(view, i);
        return true;
    }

    /* Access modifiers changed, original: protected */
    public boolean canScroll(@NonNull View view, boolean z, int i, int i2, int i3, int i4) {
        View view2 = view;
        boolean z2 = true;
        if (view2 instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view2;
            int scrollX = view2.getScrollX();
            int scrollY = view2.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i5 = i3 + scrollX;
                if (i5 >= childAt.getLeft() && i5 < childAt.getRight()) {
                    int i6 = i4 + scrollY;
                    if (i6 >= childAt.getTop() && i6 < childAt.getBottom()) {
                        if (canScroll(childAt, true, i, i2, i5 - childAt.getLeft(), i6 - childAt.getTop())) {
                            return true;
                        }
                    }
                }
            }
        }
        if (!(z && (view2.canScrollHorizontally(-i) || view2.canScrollVertically(-i2)))) {
            z2 = false;
        }
        return z2;
    }

    /* JADX WARNING: Missing block: B:38:0x00d4, code skipped:
            if (r12 != r11) goto L_0x00dd;
     */
    public boolean shouldInterceptTouchEvent(@android.support.annotation.NonNull android.view.MotionEvent r18) {
        /*
        r17 = this;
        r0 = r17;
        r1 = r18;
        r2 = r18.getActionMasked();
        r3 = r18.getActionIndex();
        if (r2 != 0) goto L_0x0011;
    L_0x000e:
        r17.cancel();
    L_0x0011:
        r4 = r0.mVelocityTracker;
        if (r4 != 0) goto L_0x001b;
    L_0x0015:
        r4 = android.view.VelocityTracker.obtain();
        r0.mVelocityTracker = r4;
    L_0x001b:
        r4 = r0.mVelocityTracker;
        r4.addMovement(r1);
        r4 = 2;
        r6 = 1;
        switch(r2) {
            case 0: goto L_0x00fb;
            case 1: goto L_0x00f6;
            case 2: goto L_0x0067;
            case 3: goto L_0x00f6;
            case 4: goto L_0x0025;
            case 5: goto L_0x0030;
            case 6: goto L_0x0028;
            default: goto L_0x0025;
        };
    L_0x0025:
        r5 = 0;
        goto L_0x012d;
    L_0x0028:
        r1 = r1.getPointerId(r3);
        r0.clearMotionHistory(r1);
        goto L_0x0025;
    L_0x0030:
        r2 = r1.getPointerId(r3);
        r7 = r1.getX(r3);
        r1 = r1.getY(r3);
        r0.saveInitialMotion(r7, r1, r2);
        r3 = r0.mDragState;
        if (r3 != 0) goto L_0x0055;
    L_0x0043:
        r1 = r0.mInitialEdgesTouched;
        r1 = r1[r2];
        r3 = r0.mTrackingEdges;
        r3 = r3 & r1;
        if (r3 == 0) goto L_0x0025;
    L_0x004c:
        r3 = r0.mCallback;
        r4 = r0.mTrackingEdges;
        r1 = r1 & r4;
        r3.onEdgeTouched(r1, r2);
        goto L_0x0025;
    L_0x0055:
        r3 = r0.mDragState;
        if (r3 != r4) goto L_0x0025;
    L_0x0059:
        r3 = (int) r7;
        r1 = (int) r1;
        r1 = r0.findTopChildUnder(r3, r1);
        r3 = r0.mCapturedView;
        if (r1 != r3) goto L_0x0025;
    L_0x0063:
        r0.tryCaptureViewForDrag(r1, r2);
        goto L_0x0025;
    L_0x0067:
        r2 = r0.mInitialMotionX;
        if (r2 == 0) goto L_0x0025;
    L_0x006b:
        r2 = r0.mInitialMotionY;
        if (r2 != 0) goto L_0x0070;
    L_0x006f:
        goto L_0x0025;
    L_0x0070:
        r2 = r18.getPointerCount();
        r3 = 0;
    L_0x0075:
        if (r3 >= r2) goto L_0x00f1;
    L_0x0077:
        r4 = r1.getPointerId(r3);
        r7 = r0.isValidPointerForActionMove(r4);
        if (r7 != 0) goto L_0x0083;
    L_0x0081:
        goto L_0x00ee;
    L_0x0083:
        r7 = r1.getX(r3);
        r8 = r1.getY(r3);
        r9 = r0.mInitialMotionX;
        r9 = r9[r4];
        r9 = r7 - r9;
        r10 = r0.mInitialMotionY;
        r10 = r10[r4];
        r10 = r8 - r10;
        r7 = (int) r7;
        r8 = (int) r8;
        r7 = r0.findTopChildUnder(r7, r8);
        if (r7 == 0) goto L_0x00a7;
    L_0x009f:
        r8 = r0.checkTouchSlop(r7, r9, r10);
        if (r8 == 0) goto L_0x00a7;
    L_0x00a5:
        r8 = 1;
        goto L_0x00a8;
    L_0x00a7:
        r8 = 0;
    L_0x00a8:
        if (r8 == 0) goto L_0x00dd;
    L_0x00aa:
        r11 = r7.getLeft();
        r12 = (int) r9;
        r13 = r11 + r12;
        r14 = r0.mCallback;
        r12 = r14.clampViewPositionHorizontal(r7, r13, r12);
        r13 = r7.getTop();
        r14 = (int) r10;
        r15 = r13 + r14;
        r5 = r0.mCallback;
        r5 = r5.clampViewPositionVertical(r7, r15, r14);
        r14 = r0.mCallback;
        r14 = r14.getViewHorizontalDragRange(r7);
        r15 = r0.mCallback;
        r15 = r15.getViewVerticalDragRange(r7);
        if (r14 == 0) goto L_0x00d6;
    L_0x00d2:
        if (r14 <= 0) goto L_0x00dd;
    L_0x00d4:
        if (r12 != r11) goto L_0x00dd;
    L_0x00d6:
        if (r15 == 0) goto L_0x00f1;
    L_0x00d8:
        if (r15 <= 0) goto L_0x00dd;
    L_0x00da:
        if (r5 != r13) goto L_0x00dd;
    L_0x00dc:
        goto L_0x00f1;
    L_0x00dd:
        r0.reportNewEdgeDrags(r9, r10, r4);
        r5 = r0.mDragState;
        if (r5 != r6) goto L_0x00e5;
    L_0x00e4:
        goto L_0x00f1;
    L_0x00e5:
        if (r8 == 0) goto L_0x00ee;
    L_0x00e7:
        r4 = r0.tryCaptureViewForDrag(r7, r4);
        if (r4 == 0) goto L_0x00ee;
    L_0x00ed:
        goto L_0x00f1;
    L_0x00ee:
        r3 = r3 + 1;
        goto L_0x0075;
    L_0x00f1:
        r17.saveLastMotion(r18);
        goto L_0x0025;
    L_0x00f6:
        r17.cancel();
        goto L_0x0025;
    L_0x00fb:
        r2 = r18.getX();
        r3 = r18.getY();
        r5 = 0;
        r1 = r1.getPointerId(r5);
        r0.saveInitialMotion(r2, r3, r1);
        r2 = (int) r2;
        r3 = (int) r3;
        r2 = r0.findTopChildUnder(r2, r3);
        r3 = r0.mCapturedView;
        if (r2 != r3) goto L_0x011c;
    L_0x0115:
        r3 = r0.mDragState;
        if (r3 != r4) goto L_0x011c;
    L_0x0119:
        r0.tryCaptureViewForDrag(r2, r1);
    L_0x011c:
        r2 = r0.mInitialEdgesTouched;
        r2 = r2[r1];
        r3 = r0.mTrackingEdges;
        r3 = r3 & r2;
        if (r3 == 0) goto L_0x012d;
    L_0x0125:
        r3 = r0.mCallback;
        r4 = r0.mTrackingEdges;
        r2 = r2 & r4;
        r3.onEdgeTouched(r2, r1);
    L_0x012d:
        r1 = r0.mDragState;
        if (r1 != r6) goto L_0x0132;
    L_0x0131:
        r5 = 1;
    L_0x0132:
        return r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.ViewDragHelper.shouldInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0062  */
    public void processTouchEvent(@android.support.annotation.NonNull android.view.MotionEvent r10) {
        /*
        r9 = this;
        r0 = r10.getActionMasked();
        r1 = r10.getActionIndex();
        if (r0 != 0) goto L_0x000d;
    L_0x000a:
        r9.cancel();
    L_0x000d:
        r2 = r9.mVelocityTracker;
        if (r2 != 0) goto L_0x0017;
    L_0x0011:
        r2 = android.view.VelocityTracker.obtain();
        r9.mVelocityTracker = r2;
    L_0x0017:
        r2 = r9.mVelocityTracker;
        r2.addMovement(r10);
        r2 = 0;
        r3 = 1;
        switch(r0) {
            case 0: goto L_0x0149;
            case 1: goto L_0x013e;
            case 2: goto L_0x00b5;
            case 3: goto L_0x00a8;
            case 4: goto L_0x0021;
            case 5: goto L_0x006a;
            case 6: goto L_0x0023;
            default: goto L_0x0021;
        };
    L_0x0021:
        goto L_0x0172;
    L_0x0023:
        r0 = r10.getPointerId(r1);
        r1 = r9.mDragState;
        if (r1 != r3) goto L_0x0065;
    L_0x002b:
        r1 = r9.mActivePointerId;
        if (r0 != r1) goto L_0x0065;
    L_0x002f:
        r1 = r10.getPointerCount();
    L_0x0033:
        r3 = -1;
        if (r2 >= r1) goto L_0x005f;
    L_0x0036:
        r4 = r10.getPointerId(r2);
        r5 = r9.mActivePointerId;
        if (r4 != r5) goto L_0x003f;
    L_0x003e:
        goto L_0x005c;
    L_0x003f:
        r5 = r10.getX(r2);
        r6 = r10.getY(r2);
        r5 = (int) r5;
        r6 = (int) r6;
        r5 = r9.findTopChildUnder(r5, r6);
        r6 = r9.mCapturedView;
        if (r5 != r6) goto L_0x005c;
    L_0x0051:
        r5 = r9.mCapturedView;
        r4 = r9.tryCaptureViewForDrag(r5, r4);
        if (r4 == 0) goto L_0x005c;
    L_0x0059:
        r10 = r9.mActivePointerId;
        goto L_0x0060;
    L_0x005c:
        r2 = r2 + 1;
        goto L_0x0033;
    L_0x005f:
        r10 = -1;
    L_0x0060:
        if (r10 != r3) goto L_0x0065;
    L_0x0062:
        r9.releaseViewForPointerUp();
    L_0x0065:
        r9.clearMotionHistory(r0);
        goto L_0x0172;
    L_0x006a:
        r0 = r10.getPointerId(r1);
        r2 = r10.getX(r1);
        r10 = r10.getY(r1);
        r9.saveInitialMotion(r2, r10, r0);
        r1 = r9.mDragState;
        if (r1 != 0) goto L_0x0099;
    L_0x007d:
        r1 = (int) r2;
        r10 = (int) r10;
        r10 = r9.findTopChildUnder(r1, r10);
        r9.tryCaptureViewForDrag(r10, r0);
        r10 = r9.mInitialEdgesTouched;
        r10 = r10[r0];
        r1 = r9.mTrackingEdges;
        r1 = r1 & r10;
        if (r1 == 0) goto L_0x0172;
    L_0x008f:
        r1 = r9.mCallback;
        r2 = r9.mTrackingEdges;
        r10 = r10 & r2;
        r1.onEdgeTouched(r10, r0);
        goto L_0x0172;
    L_0x0099:
        r1 = (int) r2;
        r10 = (int) r10;
        r10 = r9.isCapturedViewUnder(r1, r10);
        if (r10 == 0) goto L_0x0172;
    L_0x00a1:
        r10 = r9.mCapturedView;
        r9.tryCaptureViewForDrag(r10, r0);
        goto L_0x0172;
    L_0x00a8:
        r10 = r9.mDragState;
        if (r10 != r3) goto L_0x00b0;
    L_0x00ac:
        r10 = 0;
        r9.dispatchViewReleased(r10, r10);
    L_0x00b0:
        r9.cancel();
        goto L_0x0172;
    L_0x00b5:
        r0 = r9.mDragState;
        if (r0 != r3) goto L_0x00f7;
    L_0x00b9:
        r0 = r9.mActivePointerId;
        r0 = r9.isValidPointerForActionMove(r0);
        if (r0 != 0) goto L_0x00c3;
    L_0x00c1:
        goto L_0x0172;
    L_0x00c3:
        r0 = r9.mActivePointerId;
        r0 = r10.findPointerIndex(r0);
        r1 = r10.getX(r0);
        r0 = r10.getY(r0);
        r2 = r9.mLastMotionX;
        r3 = r9.mActivePointerId;
        r2 = r2[r3];
        r1 = r1 - r2;
        r1 = (int) r1;
        r2 = r9.mLastMotionY;
        r3 = r9.mActivePointerId;
        r2 = r2[r3];
        r0 = r0 - r2;
        r0 = (int) r0;
        r2 = r9.mCapturedView;
        r2 = r2.getLeft();
        r2 = r2 + r1;
        r3 = r9.mCapturedView;
        r3 = r3.getTop();
        r3 = r3 + r0;
        r9.dragTo(r2, r3, r1, r0);
        r9.saveLastMotion(r10);
        goto L_0x0172;
    L_0x00f7:
        r0 = r10.getPointerCount();
    L_0x00fb:
        if (r2 >= r0) goto L_0x013a;
    L_0x00fd:
        r1 = r10.getPointerId(r2);
        r4 = r9.isValidPointerForActionMove(r1);
        if (r4 != 0) goto L_0x0108;
    L_0x0107:
        goto L_0x0137;
    L_0x0108:
        r4 = r10.getX(r2);
        r5 = r10.getY(r2);
        r6 = r9.mInitialMotionX;
        r6 = r6[r1];
        r6 = r4 - r6;
        r7 = r9.mInitialMotionY;
        r7 = r7[r1];
        r7 = r5 - r7;
        r9.reportNewEdgeDrags(r6, r7, r1);
        r8 = r9.mDragState;
        if (r8 != r3) goto L_0x0124;
    L_0x0123:
        goto L_0x013a;
    L_0x0124:
        r4 = (int) r4;
        r5 = (int) r5;
        r4 = r9.findTopChildUnder(r4, r5);
        r5 = r9.checkTouchSlop(r4, r6, r7);
        if (r5 == 0) goto L_0x0137;
    L_0x0130:
        r1 = r9.tryCaptureViewForDrag(r4, r1);
        if (r1 == 0) goto L_0x0137;
    L_0x0136:
        goto L_0x013a;
    L_0x0137:
        r2 = r2 + 1;
        goto L_0x00fb;
    L_0x013a:
        r9.saveLastMotion(r10);
        goto L_0x0172;
    L_0x013e:
        r10 = r9.mDragState;
        if (r10 != r3) goto L_0x0145;
    L_0x0142:
        r9.releaseViewForPointerUp();
    L_0x0145:
        r9.cancel();
        goto L_0x0172;
    L_0x0149:
        r0 = r10.getX();
        r1 = r10.getY();
        r10 = r10.getPointerId(r2);
        r2 = (int) r0;
        r3 = (int) r1;
        r2 = r9.findTopChildUnder(r2, r3);
        r9.saveInitialMotion(r0, r1, r10);
        r9.tryCaptureViewForDrag(r2, r10);
        r0 = r9.mInitialEdgesTouched;
        r0 = r0[r10];
        r1 = r9.mTrackingEdges;
        r1 = r1 & r0;
        if (r1 == 0) goto L_0x0172;
    L_0x016a:
        r1 = r9.mCallback;
        r2 = r9.mTrackingEdges;
        r0 = r0 & r2;
        r1.onEdgeTouched(r0, r10);
    L_0x0172:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.ViewDragHelper.processTouchEvent(android.view.MotionEvent):void");
    }

    private void reportNewEdgeDrags(float f, float f2, int i) {
        int i2 = 1;
        if (!checkNewEdgeDrag(f, f2, i, 1)) {
            i2 = 0;
        }
        if (checkNewEdgeDrag(f2, f, i, 4)) {
            i2 |= 4;
        }
        if (checkNewEdgeDrag(f, f2, i, 2)) {
            i2 |= 2;
        }
        if (checkNewEdgeDrag(f2, f, i, 8)) {
            i2 |= 8;
        }
        if (i2 != 0) {
            int[] iArr = this.mEdgeDragsInProgress;
            iArr[i] = iArr[i] | i2;
            this.mCallback.onEdgeDragStarted(i2, i);
        }
    }

    private boolean checkNewEdgeDrag(float f, float f2, int i, int i2) {
        f = Math.abs(f);
        f2 = Math.abs(f2);
        boolean z = false;
        if ((this.mInitialEdgesTouched[i] & i2) != i2 || (this.mTrackingEdges & i2) == 0 || (this.mEdgeDragsLocked[i] & i2) == i2 || (this.mEdgeDragsInProgress[i] & i2) == i2 || (f <= ((float) this.mTouchSlop) && f2 <= ((float) this.mTouchSlop))) {
            return false;
        }
        if (f >= f2 * 0.5f || !this.mCallback.onEdgeLock(i2)) {
            if ((this.mEdgeDragsInProgress[i] & i2) == 0 && f > ((float) this.mTouchSlop)) {
                z = true;
            }
            return z;
        }
        int[] iArr = this.mEdgeDragsLocked;
        iArr[i] = iArr[i] | i2;
        return false;
    }

    private boolean checkTouchSlop(View view, float f, float f2) {
        boolean z = false;
        if (view == null) {
            return false;
        }
        Object obj = this.mCallback.getViewHorizontalDragRange(view) > 0 ? 1 : null;
        Object obj2 = this.mCallback.getViewVerticalDragRange(view) > 0 ? 1 : null;
        if (obj != null && obj2 != null) {
            if ((f * f) + (f2 * f2) > ((float) (this.mTouchSlop * this.mTouchSlop))) {
                z = true;
            }
            return z;
        } else if (obj != null) {
            if (Math.abs(f) > ((float) this.mTouchSlop)) {
                z = true;
            }
            return z;
        } else if (obj2 == null) {
            return false;
        } else {
            if (Math.abs(f2) > ((float) this.mTouchSlop)) {
                z = true;
            }
            return z;
        }
    }

    public boolean checkTouchSlop(int i) {
        int length = this.mInitialMotionX.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (checkTouchSlop(i, i2)) {
                return true;
            }
        }
        return false;
    }

    public boolean checkTouchSlop(int i, int i2) {
        boolean z = false;
        if (!isPointerDown(i2)) {
            return false;
        }
        Object obj = (i & 1) == 1 ? 1 : null;
        Object obj2 = (i & 2) == 2 ? 1 : null;
        float f = this.mLastMotionX[i2] - this.mInitialMotionX[i2];
        float f2 = this.mLastMotionY[i2] - this.mInitialMotionY[i2];
        if (obj != null && obj2 != null) {
            if ((f * f) + (f2 * f2) > ((float) (this.mTouchSlop * this.mTouchSlop))) {
                z = true;
            }
            return z;
        } else if (obj != null) {
            if (Math.abs(f) > ((float) this.mTouchSlop)) {
                z = true;
            }
            return z;
        } else if (obj2 == null) {
            return false;
        } else {
            if (Math.abs(f2) > ((float) this.mTouchSlop)) {
                z = true;
            }
            return z;
        }
    }

    public boolean isEdgeTouched(int i) {
        int length = this.mInitialEdgesTouched.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (isEdgeTouched(i, i2)) {
                return true;
            }
        }
        return false;
    }

    public boolean isEdgeTouched(int i, int i2) {
        return isPointerDown(i2) && (i & this.mInitialEdgesTouched[i2]) != 0;
    }

    private void releaseViewForPointerUp() {
        this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxVelocity);
        dispatchViewReleased(clampMag(this.mVelocityTracker.getXVelocity(this.mActivePointerId), this.mMinVelocity, this.mMaxVelocity), clampMag(this.mVelocityTracker.getYVelocity(this.mActivePointerId), this.mMinVelocity, this.mMaxVelocity));
    }

    private void dragTo(int i, int i2, int i3, int i4) {
        int left = this.mCapturedView.getLeft();
        int top = this.mCapturedView.getTop();
        if (i3 != 0) {
            i = this.mCallback.clampViewPositionHorizontal(this.mCapturedView, i, i3);
            ViewCompat.offsetLeftAndRight(this.mCapturedView, i - left);
        }
        int i5 = i;
        if (i4 != 0) {
            i2 = this.mCallback.clampViewPositionVertical(this.mCapturedView, i2, i4);
            ViewCompat.offsetTopAndBottom(this.mCapturedView, i2 - top);
        }
        int i6 = i2;
        if (i3 != 0 || i4 != 0) {
            this.mCallback.onViewPositionChanged(this.mCapturedView, i5, i6, i5 - left, i6 - top);
        }
    }

    public boolean isCapturedViewUnder(int i, int i2) {
        return isViewUnder(this.mCapturedView, i, i2);
    }

    public boolean isViewUnder(@Nullable View view, int i, int i2) {
        boolean z = false;
        if (view == null) {
            return false;
        }
        if (i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom()) {
            z = true;
        }
        return z;
    }

    @Nullable
    public View findTopChildUnder(int i, int i2) {
        for (int childCount = this.mParentView.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.mParentView.getChildAt(this.mCallback.getOrderedChildIndex(childCount));
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    private int getEdgesTouched(int i, int i2) {
        int i3 = i < this.mParentView.getLeft() + this.mEdgeSize ? 1 : 0;
        if (i2 < this.mParentView.getTop() + this.mEdgeSize) {
            i3 |= 4;
        }
        if (i > this.mParentView.getRight() - this.mEdgeSize) {
            i3 |= 2;
        }
        return i2 > this.mParentView.getBottom() - this.mEdgeSize ? i3 | 8 : i3;
    }

    private boolean isValidPointerForActionMove(int i) {
        if (isPointerDown(i)) {
            return true;
        }
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Ignoring pointerId=");
        stringBuilder.append(i);
        stringBuilder.append(" because ACTION_DOWN was not received ");
        stringBuilder.append("for this pointer before ACTION_MOVE. It likely happened because ");
        stringBuilder.append(" ViewDragHelper did not receive all the events in the event stream.");
        Log.e(str, stringBuilder.toString());
        return false;
    }
}
