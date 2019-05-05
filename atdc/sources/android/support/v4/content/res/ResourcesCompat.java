package android.support.v4.content.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.Resources.Theme;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.FontRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.v4.util.Preconditions;
import android.util.TypedValue;

public final class ResourcesCompat {
    private static final String TAG = "ResourcesCompat";

    public static abstract class FontCallback {
        public abstract void onFontRetrievalFailed(int i);

        public abstract void onFontRetrieved(@NonNull Typeface typeface);

        @RestrictTo({Scope.LIBRARY_GROUP})
        public final void callbackSuccessAsync(final Typeface typeface, @Nullable Handler handler) {
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.post(new Runnable() {
                public void run() {
                    FontCallback.this.onFontRetrieved(typeface);
                }
            });
        }

        @RestrictTo({Scope.LIBRARY_GROUP})
        public final void callbackFailAsync(final int i, @Nullable Handler handler) {
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.post(new Runnable() {
                public void run() {
                    FontCallback.this.onFontRetrievalFailed(i);
                }
            });
        }
    }

    @Nullable
    public static Drawable getDrawable(@NonNull Resources resources, @DrawableRes int i, @Nullable Theme theme) throws NotFoundException {
        if (VERSION.SDK_INT >= 21) {
            return resources.getDrawable(i, theme);
        }
        return resources.getDrawable(i);
    }

    @Nullable
    public static Drawable getDrawableForDensity(@NonNull Resources resources, @DrawableRes int i, int i2, @Nullable Theme theme) throws NotFoundException {
        if (VERSION.SDK_INT >= 21) {
            return resources.getDrawableForDensity(i, i2, theme);
        }
        if (VERSION.SDK_INT >= 15) {
            return resources.getDrawableForDensity(i, i2);
        }
        return resources.getDrawable(i);
    }

    @ColorInt
    public static int getColor(@NonNull Resources resources, @ColorRes int i, @Nullable Theme theme) throws NotFoundException {
        if (VERSION.SDK_INT >= 23) {
            return resources.getColor(i, theme);
        }
        return resources.getColor(i);
    }

    @Nullable
    public static ColorStateList getColorStateList(@NonNull Resources resources, @ColorRes int i, @Nullable Theme theme) throws NotFoundException {
        if (VERSION.SDK_INT >= 23) {
            return resources.getColorStateList(i, theme);
        }
        return resources.getColorStateList(i);
    }

    @Nullable
    public static Typeface getFont(@NonNull Context context, @FontRes int i) throws NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return loadFont(context, i, new TypedValue(), 0, null, null, false);
    }

    public static void getFont(@NonNull Context context, @FontRes int i, @NonNull FontCallback fontCallback, @Nullable Handler handler) throws NotFoundException {
        Preconditions.checkNotNull(fontCallback);
        if (context.isRestricted()) {
            fontCallback.callbackFailAsync(-4, handler);
            return;
        }
        loadFont(context, i, new TypedValue(), 0, fontCallback, handler, false);
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    public static Typeface getFont(@NonNull Context context, @FontRes int i, TypedValue typedValue, int i2, @Nullable FontCallback fontCallback) throws NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return loadFont(context, i, typedValue, i2, fontCallback, null, true);
    }

    private static Typeface loadFont(@NonNull Context context, int i, TypedValue typedValue, int i2, @Nullable FontCallback fontCallback, @Nullable Handler handler, boolean z) {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        Typeface loadFont = loadFont(context, resources, typedValue, i, i2, fontCallback, handler, z);
        if (loadFont != null || fontCallback != null) {
            return loadFont;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Font resource ID #0x");
        stringBuilder.append(Integer.toHexString(i));
        stringBuilder.append(" could not be retrieved.");
        throw new NotFoundException(stringBuilder.toString());
    }

    /* JADX WARNING: Removed duplicated region for block: B:36:0x00d1  */
    private static android.graphics.Typeface loadFont(@android.support.annotation.NonNull android.content.Context r14, android.content.res.Resources r15, android.util.TypedValue r16, int r17, int r18, @android.support.annotation.Nullable android.support.v4.content.res.ResourcesCompat.FontCallback r19, @android.support.annotation.Nullable android.os.Handler r20, boolean r21) {
        /*
        r3 = r15;
        r1 = r16;
        r4 = r17;
        r5 = r18;
        r9 = r19;
        r10 = r20;
        r2 = r1.string;
        if (r2 != 0) goto L_0x003e;
    L_0x000f:
        r2 = new android.content.res.Resources$NotFoundException;
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "Resource \"";
        r5.append(r6);
        r3 = r3.getResourceName(r4);
        r5.append(r3);
        r3 = "\" (";
        r5.append(r3);
        r3 = java.lang.Integer.toHexString(r17);
        r5.append(r3);
        r3 = ") is not a Font: ";
        r5.append(r3);
        r5.append(r1);
        r1 = r5.toString();
        r2.<init>(r1);
        throw r2;
    L_0x003e:
        r1 = r1.string;
        r11 = r1.toString();
        r1 = "res/";
        r1 = r11.startsWith(r1);
        r12 = 0;
        r13 = -3;
        if (r1 != 0) goto L_0x0054;
    L_0x004e:
        if (r9 == 0) goto L_0x0053;
    L_0x0050:
        r9.callbackFailAsync(r13, r10);
    L_0x0053:
        return r12;
    L_0x0054:
        r1 = android.support.v4.graphics.TypefaceCompat.findFromCache(r3, r4, r5);
        if (r1 == 0) goto L_0x0060;
    L_0x005a:
        if (r9 == 0) goto L_0x005f;
    L_0x005c:
        r9.callbackSuccessAsync(r1, r10);
    L_0x005f:
        return r1;
    L_0x0060:
        r1 = r11.toLowerCase();	 Catch:{ XmlPullParserException -> 0x00b7, IOException -> 0x009e }
        r2 = ".xml";
        r1 = r1.endsWith(r2);	 Catch:{ XmlPullParserException -> 0x00b7, IOException -> 0x009e }
        if (r1 == 0) goto L_0x008d;
    L_0x006c:
        r1 = r3.getXml(r4);	 Catch:{ XmlPullParserException -> 0x00b7, IOException -> 0x009e }
        r2 = android.support.v4.content.res.FontResourcesParserCompat.parse(r1, r3);	 Catch:{ XmlPullParserException -> 0x00b7, IOException -> 0x009e }
        if (r2 != 0) goto L_0x0083;
    L_0x0076:
        r1 = "ResourcesCompat";
        r2 = "Failed to find font-family tag";
        android.util.Log.e(r1, r2);	 Catch:{ XmlPullParserException -> 0x00b7, IOException -> 0x009e }
        if (r9 == 0) goto L_0x0082;
    L_0x007f:
        r9.callbackFailAsync(r13, r10);	 Catch:{ XmlPullParserException -> 0x00b7, IOException -> 0x009e }
    L_0x0082:
        return r12;
    L_0x0083:
        r1 = r14;
        r6 = r9;
        r7 = r10;
        r8 = r21;
        r1 = android.support.v4.graphics.TypefaceCompat.createFromResourcesFamilyXml(r1, r2, r3, r4, r5, r6, r7, r8);	 Catch:{ XmlPullParserException -> 0x00b7, IOException -> 0x009e }
        return r1;
    L_0x008d:
        r1 = r14;
        r1 = android.support.v4.graphics.TypefaceCompat.createFromResourcesFontFile(r1, r3, r4, r11, r5);	 Catch:{ XmlPullParserException -> 0x00b7, IOException -> 0x009e }
        if (r9 == 0) goto L_0x009d;
    L_0x0094:
        if (r1 == 0) goto L_0x009a;
    L_0x0096:
        r9.callbackSuccessAsync(r1, r10);	 Catch:{ XmlPullParserException -> 0x00b7, IOException -> 0x009e }
        goto L_0x009d;
    L_0x009a:
        r9.callbackFailAsync(r13, r10);	 Catch:{ XmlPullParserException -> 0x00b7, IOException -> 0x009e }
    L_0x009d:
        return r1;
    L_0x009e:
        r0 = move-exception;
        r1 = r0;
        r2 = "ResourcesCompat";
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "Failed to read xml resource ";
        r3.append(r4);
        r3.append(r11);
        r3 = r3.toString();
        android.util.Log.e(r2, r3, r1);
        goto L_0x00cf;
    L_0x00b7:
        r0 = move-exception;
        r1 = r0;
        r2 = "ResourcesCompat";
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "Failed to parse xml resource ";
        r3.append(r4);
        r3.append(r11);
        r3 = r3.toString();
        android.util.Log.e(r2, r3, r1);
    L_0x00cf:
        if (r9 == 0) goto L_0x00d4;
    L_0x00d1:
        r9.callbackFailAsync(r13, r10);
    L_0x00d4:
        return r12;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.content.res.ResourcesCompat.loadFont(android.content.Context, android.content.res.Resources, android.util.TypedValue, int, int, android.support.v4.content.res.ResourcesCompat$FontCallback, android.os.Handler, boolean):android.graphics.Typeface");
    }

    private ResourcesCompat() {
    }
}
