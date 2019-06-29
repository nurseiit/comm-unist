package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.roboguice.shaded.goole.common.primitives.Ints;

public class LinearLayoutCompat extends ViewGroup {
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private boolean mBaselineAligned;
    private int mBaselineAlignedChildIndex;
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity;
    private int[] mMaxAscent;
    private int[] mMaxDescent;
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    @RestrictTo({Scope.LIBRARY_GROUP})
    @Retention(RetentionPolicy.SOURCE)
    public @interface DividerMode {
    }

    public static class LayoutParams extends MarginLayoutParams {
        public int gravity;
        public float weight;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.LinearLayoutCompat_Layout);
            this.weight = obtainStyledAttributes.getFloat(R.styleable.LinearLayoutCompat_Layout_android_layout_weight, 0.0f);
            this.gravity = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.gravity = -1;
            this.weight = 0.0f;
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2);
            this.gravity = -1;
            this.weight = f;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = -1;
        }

        public LayoutParams(MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.gravity = -1;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = -1;
            this.weight = layoutParams.weight;
            this.gravity = layoutParams.gravity;
        }
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    @Retention(RetentionPolicy.SOURCE)
    public @interface OrientationMode {
    }

    /* Access modifiers changed, original: 0000 */
    public int getChildrenSkipCount(View view, int i) {
        return 0;
    }

    /* Access modifiers changed, original: 0000 */
    public int getLocationOffset(View view) {
        return 0;
    }

    /* Access modifiers changed, original: 0000 */
    public int getNextLocationOffset(View view) {
        return 0;
    }

    /* Access modifiers changed, original: 0000 */
    public int measureNullChild(int i) {
        return 0;
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public LinearLayoutCompat(Context context) {
        this(context, null);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = 8388659;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.LinearLayoutCompat, i, 0);
        int i2 = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (i2 >= 0) {
            setOrientation(i2);
        }
        i2 = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (i2 >= 0) {
            setGravity(i2);
        }
        boolean z = obtainStyledAttributes.getBoolean(R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.mWeightSum = obtainStyledAttributes.getFloat(R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.mBaselineAlignedChildIndex = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.mUseLargestChild = obtainStyledAttributes.getBoolean(R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(obtainStyledAttributes.getDrawable(R.styleable.LinearLayoutCompat_divider));
        this.mShowDividers = obtainStyledAttributes.getInt(R.styleable.LinearLayoutCompat_showDividers, 0);
        this.mDividerPadding = obtainStyledAttributes.getDimensionPixelSize(R.styleable.LinearLayoutCompat_dividerPadding, 0);
        obtainStyledAttributes.recycle();
    }

    public void setShowDividers(int i) {
        if (i != this.mShowDividers) {
            requestLayout();
        }
        this.mShowDividers = i;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable != this.mDivider) {
            this.mDivider = drawable;
            boolean z = false;
            if (drawable != null) {
                this.mDividerWidth = drawable.getIntrinsicWidth();
                this.mDividerHeight = drawable.getIntrinsicHeight();
            } else {
                this.mDividerWidth = 0;
                this.mDividerHeight = 0;
            }
            if (drawable == null) {
                z = true;
            }
            setWillNotDraw(z);
            requestLayout();
        }
    }

    public void setDividerPadding(int i) {
        this.mDividerPadding = i;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    /* Access modifiers changed, original: protected */
    public void onDraw(Canvas canvas) {
        if (this.mDivider != null) {
            if (this.mOrientation == 1) {
                drawDividersVertical(canvas);
            } else {
                drawDividersHorizontal(canvas);
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void drawDividersVertical(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        int i = 0;
        while (i < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(i);
            if (!(virtualChildAt == null || virtualChildAt.getVisibility() == 8 || !hasDividerBeforeChildAt(i))) {
                drawHorizontalDivider(canvas, (virtualChildAt.getTop() - ((LayoutParams) virtualChildAt.getLayoutParams()).topMargin) - this.mDividerHeight);
            }
            i++;
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 == null) {
                virtualChildCount = (getHeight() - getPaddingBottom()) - this.mDividerHeight;
            } else {
                virtualChildCount = virtualChildAt2.getBottom() + ((LayoutParams) virtualChildAt2.getLayoutParams()).bottomMargin;
            }
            drawHorizontalDivider(canvas, virtualChildCount);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void drawDividersHorizontal(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        int i = 0;
        while (i < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(i);
            if (!(virtualChildAt == null || virtualChildAt.getVisibility() == 8 || !hasDividerBeforeChildAt(i))) {
                int right;
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (isLayoutRtl) {
                    right = virtualChildAt.getRight() + layoutParams.rightMargin;
                } else {
                    right = (virtualChildAt.getLeft() - layoutParams.leftMargin) - this.mDividerWidth;
                }
                drawVerticalDivider(canvas, right);
            }
            i++;
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 != null) {
                LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                if (isLayoutRtl) {
                    virtualChildCount = (virtualChildAt2.getLeft() - layoutParams2.leftMargin) - this.mDividerWidth;
                } else {
                    virtualChildCount = virtualChildAt2.getRight() + layoutParams2.rightMargin;
                }
            } else if (isLayoutRtl) {
                virtualChildCount = getPaddingLeft();
            } else {
                virtualChildCount = (getWidth() - getPaddingRight()) - this.mDividerWidth;
            }
            drawVerticalDivider(canvas, virtualChildCount);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void drawHorizontalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i);
        this.mDivider.draw(canvas);
    }

    /* Access modifiers changed, original: 0000 */
    public void drawVerticalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(i, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    public void setBaselineAligned(boolean z) {
        this.mBaselineAligned = z;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.mUseLargestChild = z;
    }

    public int getBaseline() {
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        if (getChildCount() <= this.mBaselineAlignedChildIndex) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(this.mBaselineAlignedChildIndex);
        int baseline = childAt.getBaseline();
        if (baseline != -1) {
            int i = this.mBaselineChildTop;
            if (this.mOrientation == 1) {
                int i2 = this.mGravity & 112;
                if (i2 != 48) {
                    if (i2 == 16) {
                        i += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.mTotalLength) / 2;
                    } else if (i2 == 80) {
                        i = ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength;
                    }
                }
            }
            return (i + ((LayoutParams) childAt.getLayoutParams()).topMargin) + baseline;
        } else if (this.mBaselineAlignedChildIndex == 0) {
            return -1;
        } else {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i < 0 || i >= getChildCount()) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("base aligned child index out of range (0, ");
            stringBuilder.append(getChildCount());
            stringBuilder.append(")");
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        this.mBaselineAlignedChildIndex = i;
    }

    /* Access modifiers changed, original: 0000 */
    public View getVirtualChildAt(int i) {
        return getChildAt(i);
    }

    /* Access modifiers changed, original: 0000 */
    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    public void setWeightSum(float f) {
        this.mWeightSum = Math.max(0.0f, f);
    }

    /* Access modifiers changed, original: protected */
    public void onMeasure(int i, int i2) {
        if (this.mOrientation == 1) {
            measureVertical(i, i2);
        } else {
            measureHorizontal(i, i2);
        }
    }

    /* Access modifiers changed, original: protected */
    @RestrictTo({Scope.LIBRARY})
    public boolean hasDividerBeforeChildAt(int i) {
        boolean z = false;
        if (i == 0) {
            if ((this.mShowDividers & 1) != 0) {
                z = true;
            }
            return z;
        } else if (i == getChildCount()) {
            if ((this.mShowDividers & 4) != 0) {
                z = true;
            }
            return z;
        } else if ((this.mShowDividers & 2) == 0) {
            return false;
        } else {
            for (i--; i >= 0; i--) {
                if (getChildAt(i).getVisibility() != 8) {
                    z = true;
                    break;
                }
            }
            return z;
        }
    }

    /* Access modifiers changed, original: 0000 */
    /* JADX WARNING: Removed duplicated region for block: B:144:0x0331  */
    public void measureVertical(int r41, int r42) {
        /*
        r40 = this;
        r7 = r40;
        r8 = r41;
        r9 = r42;
        r10 = 0;
        r7.mTotalLength = r10;
        r11 = r40.getVirtualChildCount();
        r12 = android.view.View.MeasureSpec.getMode(r41);
        r13 = android.view.View.MeasureSpec.getMode(r42);
        r14 = r7.mBaselineAlignedChildIndex;
        r15 = r7.mUseLargestChild;
        r16 = 0;
        r17 = 1;
        r0 = 0;
        r1 = 0;
        r2 = 0;
        r3 = 0;
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r18 = 0;
        r19 = 1;
        r20 = 0;
    L_0x002a:
        r10 = 8;
        r22 = r4;
        if (r6 >= r11) goto L_0x0196;
    L_0x0030:
        r4 = r7.getVirtualChildAt(r6);
        if (r4 != 0) goto L_0x0047;
    L_0x0036:
        r4 = r7.mTotalLength;
        r10 = r7.measureNullChild(r6);
        r4 = r4 + r10;
        r7.mTotalLength = r4;
        r31 = r11;
        r28 = r13;
        r4 = r22;
        goto L_0x018c;
    L_0x0047:
        r24 = r1;
        r1 = r4.getVisibility();
        if (r1 != r10) goto L_0x005e;
    L_0x004f:
        r1 = r7.getChildrenSkipCount(r4, r6);
        r6 = r6 + r1;
        r31 = r11;
        r28 = r13;
        r4 = r22;
        r1 = r24;
        goto L_0x018c;
    L_0x005e:
        r1 = r7.hasDividerBeforeChildAt(r6);
        if (r1 == 0) goto L_0x006b;
    L_0x0064:
        r1 = r7.mTotalLength;
        r10 = r7.mDividerHeight;
        r1 = r1 + r10;
        r7.mTotalLength = r1;
    L_0x006b:
        r1 = r4.getLayoutParams();
        r10 = r1;
        r10 = (android.support.v7.widget.LinearLayoutCompat.LayoutParams) r10;
        r1 = r10.weight;
        r25 = r0 + r1;
        r1 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        if (r13 != r1) goto L_0x00a6;
    L_0x007a:
        r0 = r10.height;
        if (r0 != 0) goto L_0x00a6;
    L_0x007e:
        r0 = r10.weight;
        r0 = (r0 > r16 ? 1 : (r0 == r16 ? 0 : -1));
        if (r0 <= 0) goto L_0x00a6;
    L_0x0084:
        r0 = r7.mTotalLength;
        r1 = r10.topMargin;
        r1 = r1 + r0;
        r26 = r2;
        r2 = r10.bottomMargin;
        r1 = r1 + r2;
        r0 = java.lang.Math.max(r0, r1);
        r7.mTotalLength = r0;
        r8 = r4;
        r34 = r5;
        r31 = r11;
        r28 = r13;
        r32 = r22;
        r33 = r24;
        r30 = r26;
        r18 = 1;
        r13 = r6;
        goto L_0x0112;
    L_0x00a6:
        r26 = r2;
        r0 = r10.height;
        if (r0 != 0) goto L_0x00b7;
    L_0x00ac:
        r0 = r10.weight;
        r0 = (r0 > r16 ? 1 : (r0 == r16 ? 0 : -1));
        if (r0 <= 0) goto L_0x00b7;
    L_0x00b2:
        r0 = -2;
        r10.height = r0;
        r2 = 0;
        goto L_0x00b9;
    L_0x00b7:
        r2 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
    L_0x00b9:
        r23 = 0;
        r0 = (r25 > r16 ? 1 : (r25 == r16 ? 0 : -1));
        if (r0 != 0) goto L_0x00c4;
    L_0x00bf:
        r0 = r7.mTotalLength;
        r27 = r0;
        goto L_0x00c6;
    L_0x00c4:
        r27 = 0;
    L_0x00c6:
        r0 = r7;
        r28 = r13;
        r13 = r24;
        r24 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r1 = r4;
        r29 = r2;
        r30 = r26;
        r2 = r6;
        r31 = r11;
        r11 = r3;
        r3 = r8;
        r8 = r4;
        r33 = r13;
        r32 = r22;
        r13 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r4 = r23;
        r34 = r5;
        r5 = r9;
        r13 = r6;
        r6 = r27;
        r0.measureChildBeforeLayout(r1, r2, r3, r4, r5, r6);
        r0 = r29;
        r1 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        if (r0 == r1) goto L_0x00f1;
    L_0x00ef:
        r10.height = r0;
    L_0x00f1:
        r0 = r8.getMeasuredHeight();
        r1 = r7.mTotalLength;
        r2 = r1 + r0;
        r3 = r10.topMargin;
        r2 = r2 + r3;
        r3 = r10.bottomMargin;
        r2 = r2 + r3;
        r3 = r7.getNextLocationOffset(r8);
        r2 = r2 + r3;
        r1 = java.lang.Math.max(r1, r2);
        r7.mTotalLength = r1;
        if (r15 == 0) goto L_0x0111;
    L_0x010c:
        r3 = java.lang.Math.max(r0, r11);
        goto L_0x0112;
    L_0x0111:
        r3 = r11;
    L_0x0112:
        if (r14 < 0) goto L_0x011c;
    L_0x0114:
        r6 = r13 + 1;
        if (r14 != r6) goto L_0x011c;
    L_0x0118:
        r0 = r7.mTotalLength;
        r7.mBaselineChildTop = r0;
    L_0x011c:
        if (r13 >= r14) goto L_0x012c;
    L_0x011e:
        r0 = r10.weight;
        r0 = (r0 > r16 ? 1 : (r0 == r16 ? 0 : -1));
        if (r0 <= 0) goto L_0x012c;
    L_0x0124:
        r0 = new java.lang.RuntimeException;
        r1 = "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.";
        r0.<init>(r1);
        throw r0;
    L_0x012c:
        r0 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        if (r12 == r0) goto L_0x0139;
    L_0x0130:
        r0 = r10.width;
        r1 = -1;
        if (r0 != r1) goto L_0x0139;
    L_0x0135:
        r0 = 1;
        r20 = 1;
        goto L_0x013a;
    L_0x0139:
        r0 = 0;
    L_0x013a:
        r1 = r10.leftMargin;
        r2 = r10.rightMargin;
        r1 = r1 + r2;
        r2 = r8.getMeasuredWidth();
        r2 = r2 + r1;
        r4 = r30;
        r4 = java.lang.Math.max(r4, r2);
        r5 = r8.getMeasuredState();
        r6 = r33;
        r5 = android.view.View.combineMeasuredStates(r6, r5);
        if (r19 == 0) goto L_0x015d;
    L_0x0156:
        r6 = r10.width;
        r11 = -1;
        if (r6 != r11) goto L_0x015d;
    L_0x015b:
        r6 = 1;
        goto L_0x015e;
    L_0x015d:
        r6 = 0;
    L_0x015e:
        r10 = r10.weight;
        r10 = (r10 > r16 ? 1 : (r10 == r16 ? 0 : -1));
        if (r10 <= 0) goto L_0x0173;
    L_0x0164:
        if (r0 == 0) goto L_0x0169;
    L_0x0166:
        r10 = r32;
        goto L_0x016b;
    L_0x0169:
        r1 = r2;
        goto L_0x0166;
    L_0x016b:
        r0 = java.lang.Math.max(r10, r1);
        r10 = r0;
        r0 = r34;
        goto L_0x017e;
    L_0x0173:
        r10 = r32;
        if (r0 == 0) goto L_0x0178;
    L_0x0177:
        r2 = r1;
    L_0x0178:
        r1 = r34;
        r0 = java.lang.Math.max(r1, r2);
    L_0x017e:
        r1 = r7.getChildrenSkipCount(r8, r13);
        r1 = r1 + r13;
        r2 = r4;
        r19 = r6;
        r4 = r10;
        r6 = r1;
        r1 = r5;
        r5 = r0;
        r0 = r25;
    L_0x018c:
        r6 = r6 + 1;
        r13 = r28;
        r11 = r31;
        r8 = r41;
        goto L_0x002a;
    L_0x0196:
        r6 = r1;
        r4 = r2;
        r1 = r5;
        r31 = r11;
        r28 = r13;
        r2 = r22;
        r11 = r3;
        r3 = r7.mTotalLength;
        if (r3 <= 0) goto L_0x01b4;
    L_0x01a4:
        r3 = r31;
        r5 = r7.hasDividerBeforeChildAt(r3);
        if (r5 == 0) goto L_0x01b6;
    L_0x01ac:
        r5 = r7.mTotalLength;
        r8 = r7.mDividerHeight;
        r5 = r5 + r8;
        r7.mTotalLength = r5;
        goto L_0x01b6;
    L_0x01b4:
        r3 = r31;
    L_0x01b6:
        if (r15 == 0) goto L_0x020f;
    L_0x01b8:
        r5 = r28;
        r8 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        if (r5 == r8) goto L_0x01c4;
    L_0x01be:
        if (r5 != 0) goto L_0x01c1;
    L_0x01c0:
        goto L_0x01c4;
    L_0x01c1:
        r35 = r4;
        goto L_0x0213;
    L_0x01c4:
        r8 = 0;
        r7.mTotalLength = r8;
        r8 = 0;
    L_0x01c8:
        if (r8 >= r3) goto L_0x01c1;
    L_0x01ca:
        r13 = r7.getVirtualChildAt(r8);
        if (r13 != 0) goto L_0x01da;
    L_0x01d0:
        r13 = r7.mTotalLength;
        r14 = r7.measureNullChild(r8);
        r13 = r13 + r14;
        r7.mTotalLength = r13;
        goto L_0x01e5;
    L_0x01da:
        r14 = r13.getVisibility();
        if (r14 != r10) goto L_0x01e8;
    L_0x01e0:
        r13 = r7.getChildrenSkipCount(r13, r8);
        r8 = r8 + r13;
    L_0x01e5:
        r35 = r4;
        goto L_0x0208;
    L_0x01e8:
        r14 = r13.getLayoutParams();
        r14 = (android.support.v7.widget.LinearLayoutCompat.LayoutParams) r14;
        r10 = r7.mTotalLength;
        r21 = r10 + r11;
        r35 = r4;
        r4 = r14.topMargin;
        r21 = r21 + r4;
        r4 = r14.bottomMargin;
        r21 = r21 + r4;
        r4 = r7.getNextLocationOffset(r13);
        r4 = r21 + r4;
        r4 = java.lang.Math.max(r10, r4);
        r7.mTotalLength = r4;
    L_0x0208:
        r8 = r8 + 1;
        r4 = r35;
        r10 = 8;
        goto L_0x01c8;
    L_0x020f:
        r35 = r4;
        r5 = r28;
    L_0x0213:
        r4 = r7.mTotalLength;
        r8 = r40.getPaddingTop();
        r10 = r40.getPaddingBottom();
        r8 = r8 + r10;
        r4 = r4 + r8;
        r7.mTotalLength = r4;
        r4 = r7.mTotalLength;
        r8 = r40.getSuggestedMinimumHeight();
        r4 = java.lang.Math.max(r4, r8);
        r8 = 0;
        r4 = android.view.View.resolveSizeAndState(r4, r9, r8);
        r8 = 16777215; // 0xffffff float:2.3509886E-38 double:8.2890456E-317;
        r8 = r8 & r4;
        r10 = r7.mTotalLength;
        r8 = r8 - r10;
        if (r18 != 0) goto L_0x0282;
    L_0x0239:
        if (r8 == 0) goto L_0x0240;
    L_0x023b:
        r10 = (r0 > r16 ? 1 : (r0 == r16 ? 0 : -1));
        if (r10 <= 0) goto L_0x0240;
    L_0x023f:
        goto L_0x0282;
    L_0x0240:
        r0 = java.lang.Math.max(r1, r2);
        if (r15 == 0) goto L_0x027c;
    L_0x0246:
        r1 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        if (r5 == r1) goto L_0x027c;
    L_0x024a:
        r1 = 0;
    L_0x024b:
        if (r1 >= r3) goto L_0x027c;
    L_0x024d:
        r2 = r7.getVirtualChildAt(r1);
        if (r2 == 0) goto L_0x0279;
    L_0x0253:
        r5 = r2.getVisibility();
        r8 = 8;
        if (r5 != r8) goto L_0x025c;
    L_0x025b:
        goto L_0x0279;
    L_0x025c:
        r5 = r2.getLayoutParams();
        r5 = (android.support.v7.widget.LinearLayoutCompat.LayoutParams) r5;
        r5 = r5.weight;
        r5 = (r5 > r16 ? 1 : (r5 == r16 ? 0 : -1));
        if (r5 <= 0) goto L_0x0279;
    L_0x0268:
        r5 = r2.getMeasuredWidth();
        r8 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r5 = android.view.View.MeasureSpec.makeMeasureSpec(r5, r8);
        r10 = android.view.View.MeasureSpec.makeMeasureSpec(r11, r8);
        r2.measure(r5, r10);
    L_0x0279:
        r1 = r1 + 1;
        goto L_0x024b;
    L_0x027c:
        r1 = r35;
        r11 = r41;
        goto L_0x0376;
    L_0x0282:
        r2 = r7.mWeightSum;
        r2 = (r2 > r16 ? 1 : (r2 == r16 ? 0 : -1));
        if (r2 <= 0) goto L_0x028a;
    L_0x0288:
        r0 = r7.mWeightSum;
    L_0x028a:
        r2 = 0;
        r7.mTotalLength = r2;
        r11 = r0;
        r10 = r8;
        r0 = 0;
        r8 = r1;
        r1 = r35;
    L_0x0293:
        if (r0 >= r3) goto L_0x0365;
    L_0x0295:
        r13 = r7.getVirtualChildAt(r0);
        r14 = r13.getVisibility();
        r15 = 8;
        if (r14 != r15) goto L_0x02a7;
    L_0x02a1:
        r37 = r11;
        r11 = r41;
        goto L_0x035e;
    L_0x02a7:
        r14 = r13.getLayoutParams();
        r14 = (android.support.v7.widget.LinearLayoutCompat.LayoutParams) r14;
        r2 = r14.weight;
        r18 = (r2 > r16 ? 1 : (r2 == r16 ? 0 : -1));
        if (r18 <= 0) goto L_0x0308;
    L_0x02b3:
        r15 = (float) r10;
        r15 = r15 * r2;
        r15 = r15 / r11;
        r15 = (int) r15;
        r11 = r11 - r2;
        r10 = r10 - r15;
        r2 = r40.getPaddingLeft();
        r18 = r40.getPaddingRight();
        r2 = r2 + r18;
        r36 = r10;
        r10 = r14.leftMargin;
        r2 = r2 + r10;
        r10 = r14.rightMargin;
        r2 = r2 + r10;
        r10 = r14.width;
        r37 = r11;
        r11 = r41;
        r2 = getChildMeasureSpec(r11, r2, r10);
        r10 = r14.height;
        if (r10 != 0) goto L_0x02eb;
    L_0x02da:
        r10 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        if (r5 == r10) goto L_0x02df;
    L_0x02de:
        goto L_0x02ed;
    L_0x02df:
        if (r15 <= 0) goto L_0x02e2;
    L_0x02e1:
        goto L_0x02e3;
    L_0x02e2:
        r15 = 0;
    L_0x02e3:
        r15 = android.view.View.MeasureSpec.makeMeasureSpec(r15, r10);
        r13.measure(r2, r15);
        goto L_0x02fd;
    L_0x02eb:
        r10 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
    L_0x02ed:
        r18 = r13.getMeasuredHeight();
        r15 = r18 + r15;
        if (r15 >= 0) goto L_0x02f6;
    L_0x02f5:
        r15 = 0;
    L_0x02f6:
        r15 = android.view.View.MeasureSpec.makeMeasureSpec(r15, r10);
        r13.measure(r2, r15);
    L_0x02fd:
        r2 = r13.getMeasuredState();
        r2 = r2 & -256;
        r6 = android.view.View.combineMeasuredStates(r6, r2);
        goto L_0x030f;
    L_0x0308:
        r2 = r11;
        r11 = r41;
        r37 = r2;
        r36 = r10;
    L_0x030f:
        r2 = r14.leftMargin;
        r10 = r14.rightMargin;
        r2 = r2 + r10;
        r10 = r13.getMeasuredWidth();
        r10 = r10 + r2;
        r1 = java.lang.Math.max(r1, r10);
        r15 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        if (r12 == r15) goto L_0x032a;
    L_0x0321:
        r15 = r14.width;
        r38 = r1;
        r1 = -1;
        if (r15 != r1) goto L_0x032d;
    L_0x0328:
        r15 = 1;
        goto L_0x032e;
    L_0x032a:
        r38 = r1;
        r1 = -1;
    L_0x032d:
        r15 = 0;
    L_0x032e:
        if (r15 == 0) goto L_0x0331;
    L_0x0330:
        goto L_0x0332;
    L_0x0331:
        r2 = r10;
    L_0x0332:
        r2 = java.lang.Math.max(r8, r2);
        if (r19 == 0) goto L_0x033e;
    L_0x0338:
        r8 = r14.width;
        if (r8 != r1) goto L_0x033e;
    L_0x033c:
        r8 = 1;
        goto L_0x033f;
    L_0x033e:
        r8 = 0;
    L_0x033f:
        r10 = r7.mTotalLength;
        r15 = r13.getMeasuredHeight();
        r15 = r15 + r10;
        r1 = r14.topMargin;
        r15 = r15 + r1;
        r1 = r14.bottomMargin;
        r15 = r15 + r1;
        r1 = r7.getNextLocationOffset(r13);
        r15 = r15 + r1;
        r1 = java.lang.Math.max(r10, r15);
        r7.mTotalLength = r1;
        r19 = r8;
        r10 = r36;
        r1 = r38;
        r8 = r2;
    L_0x035e:
        r0 = r0 + 1;
        r11 = r37;
        r2 = 0;
        goto L_0x0293;
    L_0x0365:
        r11 = r41;
        r0 = r7.mTotalLength;
        r2 = r40.getPaddingTop();
        r5 = r40.getPaddingBottom();
        r2 = r2 + r5;
        r0 = r0 + r2;
        r7.mTotalLength = r0;
        r0 = r8;
    L_0x0376:
        if (r19 != 0) goto L_0x037d;
    L_0x0378:
        r2 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        if (r12 == r2) goto L_0x037d;
    L_0x037c:
        goto L_0x037e;
    L_0x037d:
        r0 = r1;
    L_0x037e:
        r1 = r40.getPaddingLeft();
        r2 = r40.getPaddingRight();
        r1 = r1 + r2;
        r0 = r0 + r1;
        r1 = r40.getSuggestedMinimumWidth();
        r0 = java.lang.Math.max(r0, r1);
        r0 = android.view.View.resolveSizeAndState(r0, r11, r6);
        r7.setMeasuredDimension(r0, r4);
        if (r20 == 0) goto L_0x039c;
    L_0x0399:
        r7.forceUniformWidth(r3, r9);
    L_0x039c:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.LinearLayoutCompat.measureVertical(int, int):void");
    }

    private void forceUniformWidth(int i, int i2) {
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(getMeasuredWidth(), Ints.MAX_POWER_OF_TWO);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.width == -1) {
                    int i4 = layoutParams.height;
                    layoutParams.height = virtualChildAt.getMeasuredHeight();
                    measureChildWithMargins(virtualChildAt, makeMeasureSpec, 0, i2, 0);
                    layoutParams.height = i4;
                }
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x0186  */
    /* JADX WARNING: Removed duplicated region for block: B:81:0x01d4  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x01c6  */
    /* JADX WARNING: Removed duplicated region for block: B:184:0x043d  */
    public void measureHorizontal(int r42, int r43) {
        /*
        r41 = this;
        r7 = r41;
        r8 = r42;
        r9 = r43;
        r10 = 0;
        r7.mTotalLength = r10;
        r11 = r41.getVirtualChildCount();
        r12 = android.view.View.MeasureSpec.getMode(r42);
        r13 = android.view.View.MeasureSpec.getMode(r43);
        r0 = r7.mMaxAscent;
        r14 = 4;
        if (r0 == 0) goto L_0x001e;
    L_0x001a:
        r0 = r7.mMaxDescent;
        if (r0 != 0) goto L_0x0026;
    L_0x001e:
        r0 = new int[r14];
        r7.mMaxAscent = r0;
        r0 = new int[r14];
        r7.mMaxDescent = r0;
    L_0x0026:
        r15 = r7.mMaxAscent;
        r6 = r7.mMaxDescent;
        r16 = 3;
        r5 = -1;
        r15[r16] = r5;
        r17 = 2;
        r15[r17] = r5;
        r18 = 1;
        r15[r18] = r5;
        r15[r10] = r5;
        r6[r16] = r5;
        r6[r17] = r5;
        r6[r18] = r5;
        r6[r10] = r5;
        r4 = r7.mBaselineAligned;
        r3 = r7.mUseLargestChild;
        r2 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        if (r12 != r2) goto L_0x004c;
    L_0x0049:
        r19 = 1;
        goto L_0x004e;
    L_0x004c:
        r19 = 0;
    L_0x004e:
        r20 = 0;
        r0 = 0;
        r1 = 0;
        r14 = 0;
        r21 = 0;
        r22 = 0;
        r23 = 0;
        r24 = 0;
        r25 = 0;
        r26 = 1;
        r27 = 0;
    L_0x0061:
        r28 = r6;
        r5 = 8;
        if (r1 >= r11) goto L_0x0202;
    L_0x0067:
        r6 = r7.getVirtualChildAt(r1);
        if (r6 != 0) goto L_0x0081;
    L_0x006d:
        r5 = r7.mTotalLength;
        r6 = r7.measureNullChild(r1);
        r5 = r5 + r6;
        r7.mTotalLength = r5;
    L_0x0076:
        r30 = r0;
        r0 = r1;
        r31 = r3;
        r35 = r4;
        r1 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        goto L_0x01ed;
    L_0x0081:
        r10 = r6.getVisibility();
        if (r10 != r5) goto L_0x008d;
    L_0x0087:
        r5 = r7.getChildrenSkipCount(r6, r1);
        r1 = r1 + r5;
        goto L_0x0076;
    L_0x008d:
        r5 = r7.hasDividerBeforeChildAt(r1);
        if (r5 == 0) goto L_0x009a;
    L_0x0093:
        r5 = r7.mTotalLength;
        r10 = r7.mDividerWidth;
        r5 = r5 + r10;
        r7.mTotalLength = r5;
    L_0x009a:
        r5 = r6.getLayoutParams();
        r10 = r5;
        r10 = (android.support.v7.widget.LinearLayoutCompat.LayoutParams) r10;
        r5 = r10.weight;
        r30 = r0 + r5;
        if (r12 != r2) goto L_0x00f0;
    L_0x00a7:
        r0 = r10.width;
        if (r0 != 0) goto L_0x00f0;
    L_0x00ab:
        r0 = r10.weight;
        r0 = (r0 > r20 ? 1 : (r0 == r20 ? 0 : -1));
        if (r0 <= 0) goto L_0x00f0;
    L_0x00b1:
        if (r19 == 0) goto L_0x00be;
    L_0x00b3:
        r0 = r7.mTotalLength;
        r5 = r10.leftMargin;
        r2 = r10.rightMargin;
        r5 = r5 + r2;
        r0 = r0 + r5;
        r7.mTotalLength = r0;
        goto L_0x00cc;
    L_0x00be:
        r0 = r7.mTotalLength;
        r2 = r10.leftMargin;
        r2 = r2 + r0;
        r5 = r10.rightMargin;
        r2 = r2 + r5;
        r0 = java.lang.Math.max(r0, r2);
        r7.mTotalLength = r0;
    L_0x00cc:
        if (r4 == 0) goto L_0x00e1;
    L_0x00ce:
        r0 = 0;
        r2 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r0);
        r6.measure(r2, r2);
        r33 = r1;
        r31 = r3;
        r35 = r4;
        r8 = r6;
        r29 = -2;
        goto L_0x0162;
    L_0x00e1:
        r33 = r1;
        r31 = r3;
        r35 = r4;
        r8 = r6;
        r1 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r22 = 1;
        r29 = -2;
        goto L_0x0164;
    L_0x00f0:
        r0 = r10.width;
        if (r0 != 0) goto L_0x00ff;
    L_0x00f4:
        r0 = r10.weight;
        r0 = (r0 > r20 ? 1 : (r0 == r20 ? 0 : -1));
        if (r0 <= 0) goto L_0x00ff;
    L_0x00fa:
        r5 = -2;
        r10.width = r5;
        r2 = 0;
        goto L_0x0102;
    L_0x00ff:
        r5 = -2;
        r2 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
    L_0x0102:
        r0 = (r30 > r20 ? 1 : (r30 == r20 ? 0 : -1));
        if (r0 != 0) goto L_0x010b;
    L_0x0106:
        r0 = r7.mTotalLength;
        r29 = r0;
        goto L_0x010d;
    L_0x010b:
        r29 = 0;
    L_0x010d:
        r32 = 0;
        r0 = r7;
        r33 = r1;
        r1 = r6;
        r34 = r2;
        r2 = r33;
        r31 = r3;
        r3 = r8;
        r35 = r4;
        r4 = r29;
        r8 = -1;
        r29 = -2;
        r5 = r9;
        r8 = r6;
        r9 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        r6 = r32;
        r0.measureChildBeforeLayout(r1, r2, r3, r4, r5, r6);
        r0 = r34;
        if (r0 == r9) goto L_0x0130;
    L_0x012e:
        r10.width = r0;
    L_0x0130:
        r0 = r8.getMeasuredWidth();
        if (r19 == 0) goto L_0x0147;
    L_0x0136:
        r1 = r7.mTotalLength;
        r2 = r10.leftMargin;
        r2 = r2 + r0;
        r3 = r10.rightMargin;
        r2 = r2 + r3;
        r3 = r7.getNextLocationOffset(r8);
        r2 = r2 + r3;
        r1 = r1 + r2;
        r7.mTotalLength = r1;
        goto L_0x015c;
    L_0x0147:
        r1 = r7.mTotalLength;
        r2 = r1 + r0;
        r3 = r10.leftMargin;
        r2 = r2 + r3;
        r3 = r10.rightMargin;
        r2 = r2 + r3;
        r3 = r7.getNextLocationOffset(r8);
        r2 = r2 + r3;
        r1 = java.lang.Math.max(r1, r2);
        r7.mTotalLength = r1;
    L_0x015c:
        if (r31 == 0) goto L_0x0162;
    L_0x015e:
        r14 = java.lang.Math.max(r0, r14);
    L_0x0162:
        r1 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
    L_0x0164:
        if (r13 == r1) goto L_0x016f;
    L_0x0166:
        r0 = r10.height;
        r2 = -1;
        if (r0 != r2) goto L_0x016f;
    L_0x016b:
        r0 = 1;
        r27 = 1;
        goto L_0x0170;
    L_0x016f:
        r0 = 0;
    L_0x0170:
        r2 = r10.topMargin;
        r3 = r10.bottomMargin;
        r2 = r2 + r3;
        r3 = r8.getMeasuredHeight();
        r3 = r3 + r2;
        r4 = r8.getMeasuredState();
        r6 = r25;
        r4 = android.view.View.combineMeasuredStates(r6, r4);
        if (r35 == 0) goto L_0x01b0;
    L_0x0186:
        r5 = r8.getBaseline();
        r6 = -1;
        if (r5 == r6) goto L_0x01b0;
    L_0x018d:
        r6 = r10.gravity;
        if (r6 >= 0) goto L_0x0194;
    L_0x0191:
        r6 = r7.mGravity;
        goto L_0x0196;
    L_0x0194:
        r6 = r10.gravity;
    L_0x0196:
        r6 = r6 & 112;
        r9 = 4;
        r6 = r6 >> r9;
        r6 = r6 & -2;
        r6 = r6 >> 1;
        r9 = r15[r6];
        r9 = java.lang.Math.max(r9, r5);
        r15[r6] = r9;
        r9 = r28[r6];
        r5 = r3 - r5;
        r5 = java.lang.Math.max(r9, r5);
        r28[r6] = r5;
    L_0x01b0:
        r5 = r21;
        r5 = java.lang.Math.max(r5, r3);
        if (r26 == 0) goto L_0x01bf;
    L_0x01b8:
        r6 = r10.height;
        r9 = -1;
        if (r6 != r9) goto L_0x01bf;
    L_0x01bd:
        r6 = 1;
        goto L_0x01c0;
    L_0x01bf:
        r6 = 0;
    L_0x01c0:
        r9 = r10.weight;
        r9 = (r9 > r20 ? 1 : (r9 == r20 ? 0 : -1));
        if (r9 <= 0) goto L_0x01d4;
    L_0x01c6:
        if (r0 == 0) goto L_0x01cb;
    L_0x01c8:
        r10 = r24;
        goto L_0x01cd;
    L_0x01cb:
        r2 = r3;
        goto L_0x01c8;
    L_0x01cd:
        r24 = java.lang.Math.max(r10, r2);
    L_0x01d1:
        r10 = r33;
        goto L_0x01e2;
    L_0x01d4:
        r10 = r24;
        if (r0 == 0) goto L_0x01d9;
    L_0x01d8:
        r3 = r2;
    L_0x01d9:
        r2 = r23;
        r23 = java.lang.Math.max(r2, r3);
        r24 = r10;
        goto L_0x01d1;
    L_0x01e2:
        r0 = r7.getChildrenSkipCount(r8, r10);
        r0 = r0 + r10;
        r25 = r4;
        r21 = r5;
        r26 = r6;
    L_0x01ed:
        r0 = r0 + 1;
        r1 = r0;
        r6 = r28;
        r0 = r30;
        r3 = r31;
        r4 = r35;
        r2 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r5 = -1;
        r8 = r42;
        r9 = r43;
        r10 = 0;
        goto L_0x0061;
    L_0x0202:
        r31 = r3;
        r35 = r4;
        r3 = r21;
        r2 = r23;
        r10 = r24;
        r6 = r25;
        r1 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r9 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        r29 = -2;
        r4 = r7.mTotalLength;
        if (r4 <= 0) goto L_0x0225;
    L_0x0218:
        r4 = r7.hasDividerBeforeChildAt(r11);
        if (r4 == 0) goto L_0x0225;
    L_0x021e:
        r4 = r7.mTotalLength;
        r8 = r7.mDividerWidth;
        r4 = r4 + r8;
        r7.mTotalLength = r4;
    L_0x0225:
        r4 = r15[r18];
        r8 = -1;
        if (r4 != r8) goto L_0x0237;
    L_0x022a:
        r4 = 0;
        r1 = r15[r4];
        if (r1 != r8) goto L_0x0237;
    L_0x022f:
        r1 = r15[r17];
        if (r1 != r8) goto L_0x0237;
    L_0x0233:
        r1 = r15[r16];
        if (r1 == r8) goto L_0x0267;
    L_0x0237:
        r1 = r15[r16];
        r4 = 0;
        r8 = r15[r4];
        r5 = r15[r18];
        r9 = r15[r17];
        r5 = java.lang.Math.max(r5, r9);
        r5 = java.lang.Math.max(r8, r5);
        r1 = java.lang.Math.max(r1, r5);
        r5 = r28[r16];
        r8 = r28[r4];
        r4 = r28[r18];
        r9 = r28[r17];
        r4 = java.lang.Math.max(r4, r9);
        r4 = java.lang.Math.max(r8, r4);
        r4 = java.lang.Math.max(r5, r4);
        r1 = r1 + r4;
        r21 = java.lang.Math.max(r3, r1);
        r3 = r21;
    L_0x0267:
        if (r31 == 0) goto L_0x02c8;
    L_0x0269:
        r1 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        if (r12 == r1) goto L_0x026f;
    L_0x026d:
        if (r12 != 0) goto L_0x02c8;
    L_0x026f:
        r1 = 0;
        r7.mTotalLength = r1;
        r1 = 0;
    L_0x0273:
        if (r1 >= r11) goto L_0x02c8;
    L_0x0275:
        r4 = r7.getVirtualChildAt(r1);
        if (r4 != 0) goto L_0x0285;
    L_0x027b:
        r4 = r7.mTotalLength;
        r5 = r7.measureNullChild(r1);
        r4 = r4 + r5;
        r7.mTotalLength = r4;
        goto L_0x0292;
    L_0x0285:
        r5 = r4.getVisibility();
        r8 = 8;
        if (r5 != r8) goto L_0x0295;
    L_0x028d:
        r4 = r7.getChildrenSkipCount(r4, r1);
        r1 = r1 + r4;
    L_0x0292:
        r36 = r1;
        goto L_0x02c5;
    L_0x0295:
        r5 = r4.getLayoutParams();
        r5 = (android.support.v7.widget.LinearLayoutCompat.LayoutParams) r5;
        if (r19 == 0) goto L_0x02ae;
    L_0x029d:
        r8 = r7.mTotalLength;
        r9 = r5.leftMargin;
        r9 = r9 + r14;
        r5 = r5.rightMargin;
        r9 = r9 + r5;
        r4 = r7.getNextLocationOffset(r4);
        r9 = r9 + r4;
        r8 = r8 + r9;
        r7.mTotalLength = r8;
        goto L_0x0292;
    L_0x02ae:
        r8 = r7.mTotalLength;
        r9 = r8 + r14;
        r36 = r1;
        r1 = r5.leftMargin;
        r9 = r9 + r1;
        r1 = r5.rightMargin;
        r9 = r9 + r1;
        r1 = r7.getNextLocationOffset(r4);
        r9 = r9 + r1;
        r1 = java.lang.Math.max(r8, r9);
        r7.mTotalLength = r1;
    L_0x02c5:
        r1 = r36 + 1;
        goto L_0x0273;
    L_0x02c8:
        r1 = r7.mTotalLength;
        r4 = r41.getPaddingLeft();
        r5 = r41.getPaddingRight();
        r4 = r4 + r5;
        r1 = r1 + r4;
        r7.mTotalLength = r1;
        r1 = r7.mTotalLength;
        r4 = r41.getSuggestedMinimumWidth();
        r1 = java.lang.Math.max(r1, r4);
        r4 = r42;
        r5 = 0;
        r8 = -1;
        r1 = android.view.View.resolveSizeAndState(r1, r4, r5);
        r5 = 16777215; // 0xffffff float:2.3509886E-38 double:8.2890456E-317;
        r5 = r5 & r1;
        r9 = r7.mTotalLength;
        r5 = r5 - r9;
        if (r22 != 0) goto L_0x0338;
    L_0x02f1:
        if (r5 == 0) goto L_0x02f8;
    L_0x02f3:
        r21 = (r0 > r20 ? 1 : (r0 == r20 ? 0 : -1));
        if (r21 <= 0) goto L_0x02f8;
    L_0x02f7:
        goto L_0x0338;
    L_0x02f8:
        r0 = java.lang.Math.max(r2, r10);
        if (r31 == 0) goto L_0x0334;
    L_0x02fe:
        r2 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        if (r12 == r2) goto L_0x0334;
    L_0x0302:
        r2 = 0;
    L_0x0303:
        if (r2 >= r11) goto L_0x0334;
    L_0x0305:
        r5 = r7.getVirtualChildAt(r2);
        if (r5 == 0) goto L_0x0331;
    L_0x030b:
        r8 = r5.getVisibility();
        r10 = 8;
        if (r8 != r10) goto L_0x0314;
    L_0x0313:
        goto L_0x0331;
    L_0x0314:
        r8 = r5.getLayoutParams();
        r8 = (android.support.v7.widget.LinearLayoutCompat.LayoutParams) r8;
        r8 = r8.weight;
        r8 = (r8 > r20 ? 1 : (r8 == r20 ? 0 : -1));
        if (r8 <= 0) goto L_0x0331;
    L_0x0320:
        r8 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r10 = android.view.View.MeasureSpec.makeMeasureSpec(r14, r8);
        r12 = r5.getMeasuredHeight();
        r12 = android.view.View.MeasureSpec.makeMeasureSpec(r12, r8);
        r5.measure(r10, r12);
    L_0x0331:
        r2 = r2 + 1;
        goto L_0x0303;
    L_0x0334:
        r5 = r43;
        goto L_0x04d1;
    L_0x0338:
        r3 = r7.mWeightSum;
        r3 = (r3 > r20 ? 1 : (r3 == r20 ? 0 : -1));
        if (r3 <= 0) goto L_0x0340;
    L_0x033e:
        r0 = r7.mWeightSum;
    L_0x0340:
        r15[r16] = r8;
        r15[r17] = r8;
        r15[r18] = r8;
        r3 = 0;
        r15[r3] = r8;
        r28[r16] = r8;
        r28[r17] = r8;
        r28[r18] = r8;
        r28[r3] = r8;
        r7.mTotalLength = r3;
        r10 = r2;
        r3 = -1;
        r2 = r0;
        r0 = 0;
    L_0x0357:
        if (r0 >= r11) goto L_0x047f;
    L_0x0359:
        r14 = r7.getVirtualChildAt(r0);
        if (r14 == 0) goto L_0x0472;
    L_0x035f:
        r8 = r14.getVisibility();
        r9 = 8;
        if (r8 != r9) goto L_0x0369;
    L_0x0367:
        goto L_0x0472;
    L_0x0369:
        r8 = r14.getLayoutParams();
        r8 = (android.support.v7.widget.LinearLayoutCompat.LayoutParams) r8;
        r9 = r8.weight;
        r21 = (r9 > r20 ? 1 : (r9 == r20 ? 0 : -1));
        if (r21 <= 0) goto L_0x03cf;
    L_0x0375:
        r4 = (float) r5;
        r4 = r4 * r9;
        r4 = r4 / r2;
        r4 = (int) r4;
        r2 = r2 - r9;
        r5 = r5 - r4;
        r9 = r41.getPaddingTop();
        r21 = r41.getPaddingBottom();
        r9 = r9 + r21;
        r37 = r2;
        r2 = r8.topMargin;
        r9 = r9 + r2;
        r2 = r8.bottomMargin;
        r9 = r9 + r2;
        r2 = r8.height;
        r38 = r5;
        r5 = r43;
        r2 = getChildMeasureSpec(r5, r9, r2);
        r9 = r8.width;
        if (r9 != 0) goto L_0x03ad;
    L_0x039c:
        r9 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        if (r12 == r9) goto L_0x03a1;
    L_0x03a0:
        goto L_0x03af;
    L_0x03a1:
        if (r4 <= 0) goto L_0x03a4;
    L_0x03a3:
        goto L_0x03a5;
    L_0x03a4:
        r4 = 0;
    L_0x03a5:
        r4 = android.view.View.MeasureSpec.makeMeasureSpec(r4, r9);
        r14.measure(r4, r2);
        goto L_0x03bf;
    L_0x03ad:
        r9 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
    L_0x03af:
        r21 = r14.getMeasuredWidth();
        r4 = r21 + r4;
        if (r4 >= 0) goto L_0x03b8;
    L_0x03b7:
        r4 = 0;
    L_0x03b8:
        r4 = android.view.View.MeasureSpec.makeMeasureSpec(r4, r9);
        r14.measure(r4, r2);
    L_0x03bf:
        r2 = r14.getMeasuredState();
        r4 = -16777216; // 0xffffffffff000000 float:-1.7014118E38 double:NaN;
        r2 = r2 & r4;
        r6 = android.view.View.combineMeasuredStates(r6, r2);
        r2 = r37;
        r4 = r38;
        goto L_0x03d2;
    L_0x03cf:
        r4 = r5;
        r5 = r43;
    L_0x03d2:
        if (r19 == 0) goto L_0x03f3;
    L_0x03d4:
        r9 = r7.mTotalLength;
        r21 = r14.getMeasuredWidth();
        r39 = r2;
        r2 = r8.leftMargin;
        r21 = r21 + r2;
        r2 = r8.rightMargin;
        r21 = r21 + r2;
        r2 = r7.getNextLocationOffset(r14);
        r21 = r21 + r2;
        r9 = r9 + r21;
        r7.mTotalLength = r9;
        r40 = r4;
    L_0x03f0:
        r2 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        goto L_0x0410;
    L_0x03f3:
        r39 = r2;
        r2 = r7.mTotalLength;
        r9 = r14.getMeasuredWidth();
        r9 = r9 + r2;
        r40 = r4;
        r4 = r8.leftMargin;
        r9 = r9 + r4;
        r4 = r8.rightMargin;
        r9 = r9 + r4;
        r4 = r7.getNextLocationOffset(r14);
        r9 = r9 + r4;
        r2 = java.lang.Math.max(r2, r9);
        r7.mTotalLength = r2;
        goto L_0x03f0;
    L_0x0410:
        if (r13 == r2) goto L_0x0419;
    L_0x0412:
        r2 = r8.height;
        r4 = -1;
        if (r2 != r4) goto L_0x0419;
    L_0x0417:
        r2 = 1;
        goto L_0x041a;
    L_0x0419:
        r2 = 0;
    L_0x041a:
        r4 = r8.topMargin;
        r9 = r8.bottomMargin;
        r4 = r4 + r9;
        r9 = r14.getMeasuredHeight();
        r9 = r9 + r4;
        r3 = java.lang.Math.max(r3, r9);
        if (r2 == 0) goto L_0x042b;
    L_0x042a:
        goto L_0x042c;
    L_0x042b:
        r4 = r9;
    L_0x042c:
        r2 = java.lang.Math.max(r10, r4);
        if (r26 == 0) goto L_0x0439;
    L_0x0432:
        r4 = r8.height;
        r10 = -1;
        if (r4 != r10) goto L_0x043a;
    L_0x0437:
        r4 = 1;
        goto L_0x043b;
    L_0x0439:
        r10 = -1;
    L_0x043a:
        r4 = 0;
    L_0x043b:
        if (r35 == 0) goto L_0x0468;
    L_0x043d:
        r14 = r14.getBaseline();
        if (r14 == r10) goto L_0x0468;
    L_0x0443:
        r10 = r8.gravity;
        if (r10 >= 0) goto L_0x044a;
    L_0x0447:
        r8 = r7.mGravity;
        goto L_0x044c;
    L_0x044a:
        r8 = r8.gravity;
    L_0x044c:
        r8 = r8 & 112;
        r21 = 4;
        r8 = r8 >> 4;
        r8 = r8 & -2;
        r8 = r8 >> 1;
        r10 = r15[r8];
        r10 = java.lang.Math.max(r10, r14);
        r15[r8] = r10;
        r10 = r28[r8];
        r9 = r9 - r14;
        r9 = java.lang.Math.max(r10, r9);
        r28[r8] = r9;
        goto L_0x046a;
    L_0x0468:
        r21 = 4;
    L_0x046a:
        r10 = r2;
        r26 = r4;
        r2 = r39;
        r4 = r40;
        goto L_0x0477;
    L_0x0472:
        r4 = r5;
        r5 = r43;
        r21 = 4;
    L_0x0477:
        r0 = r0 + 1;
        r5 = r4;
        r4 = r42;
        r8 = -1;
        goto L_0x0357;
    L_0x047f:
        r5 = r43;
        r0 = r7.mTotalLength;
        r2 = r41.getPaddingLeft();
        r4 = r41.getPaddingRight();
        r2 = r2 + r4;
        r0 = r0 + r2;
        r7.mTotalLength = r0;
        r0 = r15[r18];
        r2 = -1;
        if (r0 != r2) goto L_0x04a1;
    L_0x0494:
        r0 = 0;
        r4 = r15[r0];
        if (r4 != r2) goto L_0x04a1;
    L_0x0499:
        r0 = r15[r17];
        if (r0 != r2) goto L_0x04a1;
    L_0x049d:
        r0 = r15[r16];
        if (r0 == r2) goto L_0x04d0;
    L_0x04a1:
        r0 = r15[r16];
        r2 = 0;
        r4 = r15[r2];
        r8 = r15[r18];
        r9 = r15[r17];
        r8 = java.lang.Math.max(r8, r9);
        r4 = java.lang.Math.max(r4, r8);
        r0 = java.lang.Math.max(r0, r4);
        r4 = r28[r16];
        r2 = r28[r2];
        r8 = r28[r18];
        r9 = r28[r17];
        r8 = java.lang.Math.max(r8, r9);
        r2 = java.lang.Math.max(r2, r8);
        r2 = java.lang.Math.max(r4, r2);
        r0 = r0 + r2;
        r0 = java.lang.Math.max(r3, r0);
        r3 = r0;
    L_0x04d0:
        r0 = r10;
    L_0x04d1:
        if (r26 != 0) goto L_0x04d8;
    L_0x04d3:
        r2 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        if (r13 == r2) goto L_0x04d8;
    L_0x04d7:
        goto L_0x04d9;
    L_0x04d8:
        r0 = r3;
    L_0x04d9:
        r2 = r41.getPaddingTop();
        r3 = r41.getPaddingBottom();
        r2 = r2 + r3;
        r0 = r0 + r2;
        r2 = r41.getSuggestedMinimumHeight();
        r0 = java.lang.Math.max(r0, r2);
        r2 = -16777216; // 0xffffffffff000000 float:-1.7014118E38 double:NaN;
        r2 = r2 & r6;
        r1 = r1 | r2;
        r2 = r6 << 16;
        r0 = android.view.View.resolveSizeAndState(r0, r5, r2);
        r7.setMeasuredDimension(r1, r0);
        if (r27 == 0) goto L_0x04ff;
    L_0x04fa:
        r0 = r42;
        r7.forceUniformHeight(r11, r0);
    L_0x04ff:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.LinearLayoutCompat.measureHorizontal(int, int):void");
    }

    private void forceUniformHeight(int i, int i2) {
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(getMeasuredHeight(), Ints.MAX_POWER_OF_TWO);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.height == -1) {
                    int i4 = layoutParams.width;
                    layoutParams.width = virtualChildAt.getMeasuredWidth();
                    measureChildWithMargins(virtualChildAt, i2, 0, makeMeasureSpec, 0);
                    layoutParams.width = i4;
                }
            }
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void measureChildBeforeLayout(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    /* Access modifiers changed, original: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.mOrientation == 1) {
            layoutVertical(i, i2, i3, i4);
        } else {
            layoutHorizontal(i, i2, i3, i4);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void layoutVertical(int i, int i2, int i3, int i4) {
        int paddingTop;
        int paddingLeft = getPaddingLeft();
        int i5 = i3 - i;
        int paddingRight = i5 - getPaddingRight();
        int paddingRight2 = (i5 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        i5 = this.mGravity & 112;
        int i6 = this.mGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i5 == 16) {
            paddingTop = (((i4 - i2) - this.mTotalLength) / 2) + getPaddingTop();
        } else if (i5 != 80) {
            paddingTop = getPaddingTop();
        } else {
            paddingTop = ((getPaddingTop() + i4) - i2) - this.mTotalLength;
        }
        int i7 = 0;
        while (i7 < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(i7);
            if (virtualChildAt == null) {
                paddingTop += measureNullChild(i7);
            } else if (virtualChildAt.getVisibility() != 8) {
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                int i8 = layoutParams.gravity;
                if (i8 < 0) {
                    i8 = i6;
                }
                i8 = GravityCompat.getAbsoluteGravity(i8, ViewCompat.getLayoutDirection(this)) & 7;
                if (i8 == 1) {
                    i8 = ((((paddingRight2 - measuredWidth) / 2) + paddingLeft) + layoutParams.leftMargin) - layoutParams.rightMargin;
                } else if (i8 != 5) {
                    i8 = layoutParams.leftMargin + paddingLeft;
                } else {
                    i8 = (paddingRight - measuredWidth) - layoutParams.rightMargin;
                }
                i5 = i8;
                if (hasDividerBeforeChildAt(i7)) {
                    paddingTop += this.mDividerHeight;
                }
                int i9 = paddingTop + layoutParams.topMargin;
                LayoutParams layoutParams2 = layoutParams;
                setChildFrame(virtualChildAt, i5, i9 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                i7 += getChildrenSkipCount(virtualChildAt, i7);
                paddingTop = i9 + ((measuredHeight + layoutParams2.bottomMargin) + getNextLocationOffset(virtualChildAt));
            }
            i7++;
        }
    }

    /* Access modifiers changed, original: 0000 */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00b6  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00f6  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00bf  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x010a  */
    public void layoutHorizontal(int r28, int r29, int r30, int r31) {
        /*
        r27 = this;
        r6 = r27;
        r2 = android.support.v7.widget.ViewUtils.isLayoutRtl(r27);
        r7 = r27.getPaddingTop();
        r3 = r31 - r29;
        r4 = r27.getPaddingBottom();
        r8 = r3 - r4;
        r3 = r3 - r7;
        r4 = r27.getPaddingBottom();
        r9 = r3 - r4;
        r10 = r27.getVirtualChildCount();
        r3 = r6.mGravity;
        r4 = 8388615; // 0x800007 float:1.1754953E-38 double:4.1445265E-317;
        r3 = r3 & r4;
        r4 = r6.mGravity;
        r11 = r4 & 112;
        r12 = r6.mBaselineAligned;
        r13 = r6.mMaxAscent;
        r14 = r6.mMaxDescent;
        r4 = android.support.v4.view.ViewCompat.getLayoutDirection(r27);
        r3 = android.support.v4.view.GravityCompat.getAbsoluteGravity(r3, r4);
        r15 = 2;
        r5 = 1;
        if (r3 == r5) goto L_0x004e;
    L_0x0039:
        r4 = 5;
        if (r3 == r4) goto L_0x0041;
    L_0x003c:
        r0 = r27.getPaddingLeft();
        goto L_0x0059;
    L_0x0041:
        r3 = r27.getPaddingLeft();
        r3 = r3 + r30;
        r3 = r3 - r28;
        r0 = r6.mTotalLength;
        r0 = r3 - r0;
        goto L_0x0059;
    L_0x004e:
        r3 = r27.getPaddingLeft();
        r0 = r30 - r28;
        r1 = r6.mTotalLength;
        r0 = r0 - r1;
        r0 = r0 / r15;
        r0 = r0 + r3;
    L_0x0059:
        r1 = 0;
        if (r2 == 0) goto L_0x0063;
    L_0x005c:
        r2 = r10 + -1;
        r16 = r2;
        r17 = -1;
        goto L_0x0067;
    L_0x0063:
        r16 = 0;
        r17 = 1;
    L_0x0067:
        r3 = 0;
    L_0x0068:
        if (r3 >= r10) goto L_0x014a;
    L_0x006a:
        r1 = r17 * r3;
        r2 = r16 + r1;
        r1 = r6.getVirtualChildAt(r2);
        if (r1 != 0) goto L_0x0085;
    L_0x0074:
        r1 = r6.measureNullChild(r2);
        r0 = r0 + r1;
    L_0x0079:
        r26 = r7;
        r23 = r10;
        r24 = r11;
        r18 = 1;
        r20 = -1;
        goto L_0x013e;
    L_0x0085:
        r5 = r1.getVisibility();
        r15 = 8;
        if (r5 == r15) goto L_0x013a;
    L_0x008d:
        r15 = r1.getMeasuredWidth();
        r5 = r1.getMeasuredHeight();
        r20 = r1.getLayoutParams();
        r4 = r20;
        r4 = (android.support.v7.widget.LinearLayoutCompat.LayoutParams) r4;
        if (r12 == 0) goto L_0x00ad;
    L_0x009f:
        r22 = r3;
        r3 = r4.height;
        r23 = r10;
        r10 = -1;
        if (r3 == r10) goto L_0x00b1;
    L_0x00a8:
        r3 = r1.getBaseline();
        goto L_0x00b2;
    L_0x00ad:
        r22 = r3;
        r23 = r10;
    L_0x00b1:
        r3 = -1;
    L_0x00b2:
        r10 = r4.gravity;
        if (r10 >= 0) goto L_0x00b7;
    L_0x00b6:
        r10 = r11;
    L_0x00b7:
        r10 = r10 & 112;
        r24 = r11;
        r11 = 16;
        if (r10 == r11) goto L_0x00f6;
    L_0x00bf:
        r11 = 48;
        if (r10 == r11) goto L_0x00e3;
    L_0x00c3:
        r11 = 80;
        if (r10 == r11) goto L_0x00cc;
    L_0x00c7:
        r3 = r7;
        r11 = -1;
    L_0x00c9:
        r18 = 1;
        goto L_0x0104;
    L_0x00cc:
        r10 = r8 - r5;
        r11 = r4.bottomMargin;
        r10 = r10 - r11;
        r11 = -1;
        if (r3 == r11) goto L_0x00e1;
    L_0x00d4:
        r20 = r1.getMeasuredHeight();
        r20 = r20 - r3;
        r3 = 2;
        r21 = r14[r3];
        r21 = r21 - r20;
        r10 = r10 - r21;
    L_0x00e1:
        r3 = r10;
        goto L_0x00c9;
    L_0x00e3:
        r11 = -1;
        r10 = r4.topMargin;
        r10 = r10 + r7;
        if (r3 == r11) goto L_0x00f2;
    L_0x00e9:
        r18 = 1;
        r20 = r13[r18];
        r20 = r20 - r3;
        r10 = r10 + r20;
        goto L_0x00f4;
    L_0x00f2:
        r18 = 1;
    L_0x00f4:
        r3 = r10;
        goto L_0x0104;
    L_0x00f6:
        r11 = -1;
        r18 = 1;
        r3 = r9 - r5;
        r10 = 2;
        r3 = r3 / r10;
        r3 = r3 + r7;
        r10 = r4.topMargin;
        r3 = r3 + r10;
        r10 = r4.bottomMargin;
        r3 = r3 - r10;
    L_0x0104:
        r10 = r6.hasDividerBeforeChildAt(r2);
        if (r10 == 0) goto L_0x010d;
    L_0x010a:
        r10 = r6.mDividerWidth;
        r0 = r0 + r10;
    L_0x010d:
        r10 = r4.leftMargin;
        r10 = r10 + r0;
        r0 = r6.getLocationOffset(r1);
        r19 = r10 + r0;
        r0 = r6;
        r25 = r1;
        r11 = r2;
        r2 = r19;
        r19 = r22;
        r26 = r7;
        r20 = -1;
        r7 = r4;
        r4 = r15;
        r0.setChildFrame(r1, r2, r3, r4, r5);
        r0 = r7.rightMargin;
        r15 = r15 + r0;
        r0 = r25;
        r1 = r6.getNextLocationOffset(r0);
        r15 = r15 + r1;
        r10 = r10 + r15;
        r0 = r6.getChildrenSkipCount(r0, r11);
        r3 = r19 + r0;
        r0 = r10;
        goto L_0x013e;
    L_0x013a:
        r19 = r3;
        goto L_0x0079;
    L_0x013e:
        r3 = r3 + 1;
        r10 = r23;
        r11 = r24;
        r7 = r26;
        r5 = 1;
        r15 = 2;
        goto L_0x0068;
    L_0x014a:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.LinearLayoutCompat.layoutHorizontal(int, int, int, int):void");
    }

    private void setChildFrame(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    public void setOrientation(int i) {
        if (this.mOrientation != i) {
            this.mOrientation = i;
            requestLayout();
        }
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public void setGravity(int i) {
        if (this.mGravity != i) {
            if ((GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK & i) == 0) {
                i |= 8388611;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.mGravity = i;
            requestLayout();
        }
    }

    public int getGravity() {
        return this.mGravity;
    }

    public void setHorizontalGravity(int i) {
        i &= GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if ((GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK & this.mGravity) != i) {
            this.mGravity = i | (this.mGravity & -8388616);
            requestLayout();
        }
    }

    public void setVerticalGravity(int i) {
        i &= 112;
        if ((this.mGravity & 112) != i) {
            this.mGravity = i | (this.mGravity & -113);
            requestLayout();
        }
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* Access modifiers changed, original: protected */
    public LayoutParams generateDefaultLayoutParams() {
        if (this.mOrientation == 0) {
            return new LayoutParams(-2, -2);
        }
        return this.mOrientation == 1 ? new LayoutParams(-1, -2) : null;
    }

    /* Access modifiers changed, original: protected */
    public LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    /* Access modifiers changed, original: protected */
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(LinearLayoutCompat.class.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(LinearLayoutCompat.class.getName());
    }
}
