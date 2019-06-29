package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;

@RestrictTo({Scope.LIBRARY})
public class ContentFrameLayout extends FrameLayout {
    private OnAttachListener mAttachListener;
    private final Rect mDecorPadding;
    private TypedValue mFixedHeightMajor;
    private TypedValue mFixedHeightMinor;
    private TypedValue mFixedWidthMajor;
    private TypedValue mFixedWidthMinor;
    private TypedValue mMinWidthMajor;
    private TypedValue mMinWidthMinor;

    public interface OnAttachListener {
        void onAttachedFromWindow();

        void onDetachedFromWindow();
    }

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mDecorPadding = new Rect();
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    public void dispatchFitSystemWindows(Rect rect) {
        fitSystemWindows(rect);
    }

    public void setAttachListener(OnAttachListener onAttachListener) {
        this.mAttachListener = onAttachListener;
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    public void setDecorPadding(int i, int i2, int i3, int i4) {
        this.mDecorPadding.set(i, i2, i3, i4);
        if (ViewCompat.isLaidOut(this)) {
            requestLayout();
        }
    }

    /* Access modifiers changed, original: protected */
    /* JADX WARNING: Removed duplicated region for block: B:62:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00fb  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x006e  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00c2  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00bf  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00d4  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x00ce  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00e7  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00f3  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00fb  */
    /* JADX WARNING: Removed duplicated region for block: B:62:? A:{SYNTHETIC, RETURN} */
    public void onMeasure(int r14, int r15) {
        /*
        r13 = this;
        r0 = r13.getContext();
        r0 = r0.getResources();
        r0 = r0.getDisplayMetrics();
        r1 = r0.widthPixels;
        r2 = r0.heightPixels;
        r3 = 1;
        r4 = 0;
        if (r1 >= r2) goto L_0x0016;
    L_0x0014:
        r1 = 1;
        goto L_0x0017;
    L_0x0016:
        r1 = 0;
    L_0x0017:
        r2 = android.view.View.MeasureSpec.getMode(r14);
        r5 = android.view.View.MeasureSpec.getMode(r15);
        r6 = 6;
        r7 = 5;
        r8 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        r9 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        if (r2 != r8) goto L_0x006a;
    L_0x0027:
        if (r1 == 0) goto L_0x002c;
    L_0x0029:
        r10 = r13.mFixedWidthMinor;
        goto L_0x002e;
    L_0x002c:
        r10 = r13.mFixedWidthMajor;
    L_0x002e:
        if (r10 == 0) goto L_0x006a;
    L_0x0030:
        r11 = r10.type;
        if (r11 == 0) goto L_0x006a;
    L_0x0034:
        r11 = r10.type;
        if (r11 != r7) goto L_0x003e;
    L_0x0038:
        r10 = r10.getDimension(r0);
        r10 = (int) r10;
        goto L_0x004f;
    L_0x003e:
        r11 = r10.type;
        if (r11 != r6) goto L_0x004e;
    L_0x0042:
        r11 = r0.widthPixels;
        r11 = (float) r11;
        r12 = r0.widthPixels;
        r12 = (float) r12;
        r10 = r10.getFraction(r11, r12);
        r10 = (int) r10;
        goto L_0x004f;
    L_0x004e:
        r10 = 0;
    L_0x004f:
        if (r10 <= 0) goto L_0x006a;
    L_0x0051:
        r11 = r13.mDecorPadding;
        r11 = r11.left;
        r12 = r13.mDecorPadding;
        r12 = r12.right;
        r11 = r11 + r12;
        r10 = r10 - r11;
        r14 = android.view.View.MeasureSpec.getSize(r14);
        r14 = java.lang.Math.min(r10, r14);
        r14 = android.view.View.MeasureSpec.makeMeasureSpec(r14, r9);
        r10 = r14;
        r14 = 1;
        goto L_0x006c;
    L_0x006a:
        r10 = r14;
        r14 = 0;
    L_0x006c:
        if (r5 != r8) goto L_0x00ae;
    L_0x006e:
        if (r1 == 0) goto L_0x0073;
    L_0x0070:
        r5 = r13.mFixedHeightMajor;
        goto L_0x0075;
    L_0x0073:
        r5 = r13.mFixedHeightMinor;
    L_0x0075:
        if (r5 == 0) goto L_0x00ae;
    L_0x0077:
        r11 = r5.type;
        if (r11 == 0) goto L_0x00ae;
    L_0x007b:
        r11 = r5.type;
        if (r11 != r7) goto L_0x0085;
    L_0x007f:
        r5 = r5.getDimension(r0);
        r5 = (int) r5;
        goto L_0x0096;
    L_0x0085:
        r11 = r5.type;
        if (r11 != r6) goto L_0x0095;
    L_0x0089:
        r11 = r0.heightPixels;
        r11 = (float) r11;
        r12 = r0.heightPixels;
        r12 = (float) r12;
        r5 = r5.getFraction(r11, r12);
        r5 = (int) r5;
        goto L_0x0096;
    L_0x0095:
        r5 = 0;
    L_0x0096:
        if (r5 <= 0) goto L_0x00ae;
    L_0x0098:
        r11 = r13.mDecorPadding;
        r11 = r11.top;
        r12 = r13.mDecorPadding;
        r12 = r12.bottom;
        r11 = r11 + r12;
        r5 = r5 - r11;
        r15 = android.view.View.MeasureSpec.getSize(r15);
        r15 = java.lang.Math.min(r5, r15);
        r15 = android.view.View.MeasureSpec.makeMeasureSpec(r15, r9);
    L_0x00ae:
        super.onMeasure(r10, r15);
        r5 = r13.getMeasuredWidth();
        r10 = android.view.View.MeasureSpec.makeMeasureSpec(r5, r9);
        if (r14 != 0) goto L_0x00f8;
    L_0x00bb:
        if (r2 != r8) goto L_0x00f8;
    L_0x00bd:
        if (r1 == 0) goto L_0x00c2;
    L_0x00bf:
        r14 = r13.mMinWidthMinor;
        goto L_0x00c4;
    L_0x00c2:
        r14 = r13.mMinWidthMajor;
    L_0x00c4:
        if (r14 == 0) goto L_0x00f8;
    L_0x00c6:
        r1 = r14.type;
        if (r1 == 0) goto L_0x00f8;
    L_0x00ca:
        r1 = r14.type;
        if (r1 != r7) goto L_0x00d4;
    L_0x00ce:
        r14 = r14.getDimension(r0);
        r14 = (int) r14;
        goto L_0x00e5;
    L_0x00d4:
        r1 = r14.type;
        if (r1 != r6) goto L_0x00e4;
    L_0x00d8:
        r1 = r0.widthPixels;
        r1 = (float) r1;
        r0 = r0.widthPixels;
        r0 = (float) r0;
        r14 = r14.getFraction(r1, r0);
        r14 = (int) r14;
        goto L_0x00e5;
    L_0x00e4:
        r14 = 0;
    L_0x00e5:
        if (r14 <= 0) goto L_0x00f1;
    L_0x00e7:
        r0 = r13.mDecorPadding;
        r0 = r0.left;
        r1 = r13.mDecorPadding;
        r1 = r1.right;
        r0 = r0 + r1;
        r14 = r14 - r0;
    L_0x00f1:
        if (r5 >= r14) goto L_0x00f8;
    L_0x00f3:
        r10 = android.view.View.MeasureSpec.makeMeasureSpec(r14, r9);
        goto L_0x00f9;
    L_0x00f8:
        r3 = 0;
    L_0x00f9:
        if (r3 == 0) goto L_0x00fe;
    L_0x00fb:
        super.onMeasure(r10, r15);
    L_0x00fe:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public TypedValue getMinWidthMajor() {
        if (this.mMinWidthMajor == null) {
            this.mMinWidthMajor = new TypedValue();
        }
        return this.mMinWidthMajor;
    }

    public TypedValue getMinWidthMinor() {
        if (this.mMinWidthMinor == null) {
            this.mMinWidthMinor = new TypedValue();
        }
        return this.mMinWidthMinor;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.mFixedWidthMajor == null) {
            this.mFixedWidthMajor = new TypedValue();
        }
        return this.mFixedWidthMajor;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.mFixedWidthMinor == null) {
            this.mFixedWidthMinor = new TypedValue();
        }
        return this.mFixedWidthMinor;
    }

    public TypedValue getFixedHeightMajor() {
        if (this.mFixedHeightMajor == null) {
            this.mFixedHeightMajor = new TypedValue();
        }
        return this.mFixedHeightMajor;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.mFixedHeightMinor == null) {
            this.mFixedHeightMinor = new TypedValue();
        }
        return this.mFixedHeightMinor;
    }

    /* Access modifiers changed, original: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mAttachListener != null) {
            this.mAttachListener.onAttachedFromWindow();
        }
    }

    /* Access modifiers changed, original: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mAttachListener != null) {
            this.mAttachListener.onDetachedFromWindow();
        }
    }
}
