package com.androidnetworking.widget;

import android.content.Context;
import android.support.v7.widget.AppCompatImageView;
import android.util.AttributeSet;
import com.androidnetworking.internal.ANImageLoader.ImageContainer;

public class ANImageView extends AppCompatImageView {
    private int mDefaultImageId;
    private int mErrorImageId;
    private ImageContainer mImageContainer;
    private String mUrl;

    public ANImageView(Context context) {
        this(context, null);
    }

    public ANImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ANImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setImageUrl(String str) {
        this.mUrl = str;
        loadImageIfNecessary(false);
    }

    public void setDefaultImageResId(int i) {
        this.mDefaultImageId = i;
    }

    public void setErrorImageResId(int i) {
        this.mErrorImageId = i;
    }

    /* Access modifiers changed, original: 0000 */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0051  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0041  */
    public void loadImageIfNecessary(final boolean r9) {
        /*
        r8 = this;
        r0 = r8.getWidth();
        r1 = r8.getHeight();
        r7 = r8.getScaleType();
        r2 = r8.getLayoutParams();
        r3 = 1;
        r4 = 0;
        if (r2 == 0) goto L_0x002a;
    L_0x0014:
        r2 = r8.getLayoutParams();
        r2 = r2.width;
        r5 = -2;
        if (r2 != r5) goto L_0x001f;
    L_0x001d:
        r2 = 1;
        goto L_0x0020;
    L_0x001f:
        r2 = 0;
    L_0x0020:
        r6 = r8.getLayoutParams();
        r6 = r6.height;
        if (r6 != r5) goto L_0x002b;
    L_0x0028:
        r5 = 1;
        goto L_0x002c;
    L_0x002a:
        r2 = 0;
    L_0x002b:
        r5 = 0;
    L_0x002c:
        if (r2 == 0) goto L_0x0031;
    L_0x002e:
        if (r5 == 0) goto L_0x0031;
    L_0x0030:
        goto L_0x0032;
    L_0x0031:
        r3 = 0;
    L_0x0032:
        if (r0 != 0) goto L_0x0039;
    L_0x0034:
        if (r1 != 0) goto L_0x0039;
    L_0x0036:
        if (r3 != 0) goto L_0x0039;
    L_0x0038:
        return;
    L_0x0039:
        r3 = r8.mUrl;
        r3 = android.text.TextUtils.isEmpty(r3);
        if (r3 == 0) goto L_0x0051;
    L_0x0041:
        r9 = r8.mImageContainer;
        if (r9 == 0) goto L_0x004d;
    L_0x0045:
        r9 = r8.mImageContainer;
        r9.cancelRequest();
        r9 = 0;
        r8.mImageContainer = r9;
    L_0x004d:
        r8.setDefaultImageOrNull();
        return;
    L_0x0051:
        r3 = r8.mImageContainer;
        if (r3 == 0) goto L_0x0074;
    L_0x0055:
        r3 = r8.mImageContainer;
        r3 = r3.getRequestUrl();
        if (r3 == 0) goto L_0x0074;
    L_0x005d:
        r3 = r8.mImageContainer;
        r3 = r3.getRequestUrl();
        r6 = r8.mUrl;
        r3 = r3.equals(r6);
        if (r3 == 0) goto L_0x006c;
    L_0x006b:
        return;
    L_0x006c:
        r3 = r8.mImageContainer;
        r3.cancelRequest();
        r8.setDefaultImageOrNull();
    L_0x0074:
        if (r2 == 0) goto L_0x0077;
    L_0x0076:
        r0 = 0;
    L_0x0077:
        if (r5 == 0) goto L_0x007b;
    L_0x0079:
        r6 = 0;
        goto L_0x007c;
    L_0x007b:
        r6 = r1;
    L_0x007c:
        r2 = com.androidnetworking.internal.ANImageLoader.getInstance();
        r3 = r8.mUrl;
        r4 = new com.androidnetworking.widget.ANImageView$1;
        r4.<init>(r9);
        r5 = r0;
        r9 = r2.get(r3, r4, r5, r6, r7);
        r8.mImageContainer = r9;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.androidnetworking.widget.ANImageView.loadImageIfNecessary(boolean):void");
    }

    private void setDefaultImageOrNull() {
        if (this.mDefaultImageId != 0) {
            setImageResource(this.mDefaultImageId);
        } else {
            setImageBitmap(null);
        }
    }

    /* Access modifiers changed, original: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        loadImageIfNecessary(true);
    }

    /* Access modifiers changed, original: protected */
    public void onDetachedFromWindow() {
        if (this.mImageContainer != null) {
            this.mImageContainer.cancelRequest();
            setImageBitmap(null);
            this.mImageContainer = null;
        }
        super.onDetachedFromWindow();
    }

    /* Access modifiers changed, original: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }
}
