package android.support.graphics.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.AnticipateOvershootInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.CycleInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({Scope.LIBRARY_GROUP})
public class AnimationUtilsCompat {
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0095  */
    public static android.view.animation.Interpolator loadInterpolator(android.content.Context r4, int r5) throws android.content.res.Resources.NotFoundException {
        /*
        r0 = android.os.Build.VERSION.SDK_INT;
        r1 = 21;
        if (r0 < r1) goto L_0x000b;
    L_0x0006:
        r4 = android.view.animation.AnimationUtils.loadInterpolator(r4, r5);
        return r4;
    L_0x000b:
        r0 = 0;
        r1 = 17563663; // 0x10c000f float:2.571398E-38 double:8.6776025E-317;
        if (r5 != r1) goto L_0x001e;
    L_0x0011:
        r4 = new android.support.v4.view.animation.FastOutLinearInInterpolator;	 Catch:{ XmlPullParserException -> 0x001c, IOException -> 0x001a }
        r4.<init>();	 Catch:{ XmlPullParserException -> 0x001c, IOException -> 0x001a }
        return r4;
    L_0x0017:
        r4 = move-exception;
        goto L_0x0093;
    L_0x001a:
        r4 = move-exception;
        goto L_0x0057;
    L_0x001c:
        r4 = move-exception;
        goto L_0x0075;
    L_0x001e:
        r1 = 17563661; // 0x10c000d float:2.5713975E-38 double:8.6776015E-317;
        if (r5 != r1) goto L_0x0029;
    L_0x0023:
        r4 = new android.support.v4.view.animation.FastOutSlowInInterpolator;	 Catch:{ XmlPullParserException -> 0x001c, IOException -> 0x001a }
        r4.<init>();	 Catch:{ XmlPullParserException -> 0x001c, IOException -> 0x001a }
        return r4;
    L_0x0029:
        r1 = 17563662; // 0x10c000e float:2.5713978E-38 double:8.677602E-317;
        if (r5 != r1) goto L_0x0034;
    L_0x002e:
        r4 = new android.support.v4.view.animation.LinearOutSlowInInterpolator;	 Catch:{ XmlPullParserException -> 0x001c, IOException -> 0x001a }
        r4.<init>();	 Catch:{ XmlPullParserException -> 0x001c, IOException -> 0x001a }
        return r4;
    L_0x0034:
        r1 = r4.getResources();	 Catch:{ XmlPullParserException -> 0x001c, IOException -> 0x001a }
        r1 = r1.getAnimation(r5);	 Catch:{ XmlPullParserException -> 0x001c, IOException -> 0x001a }
        r0 = r4.getResources();	 Catch:{ XmlPullParserException -> 0x0054, IOException -> 0x0051, all -> 0x004e }
        r2 = r4.getTheme();	 Catch:{ XmlPullParserException -> 0x0054, IOException -> 0x0051, all -> 0x004e }
        r4 = createInterpolatorFromXml(r4, r0, r2, r1);	 Catch:{ XmlPullParserException -> 0x0054, IOException -> 0x0051, all -> 0x004e }
        if (r1 == 0) goto L_0x004d;
    L_0x004a:
        r1.close();
    L_0x004d:
        return r4;
    L_0x004e:
        r4 = move-exception;
        r0 = r1;
        goto L_0x0093;
    L_0x0051:
        r4 = move-exception;
        r0 = r1;
        goto L_0x0057;
    L_0x0054:
        r4 = move-exception;
        r0 = r1;
        goto L_0x0075;
    L_0x0057:
        r1 = new android.content.res.Resources$NotFoundException;	 Catch:{ all -> 0x0017 }
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0017 }
        r2.<init>();	 Catch:{ all -> 0x0017 }
        r3 = "Can't load animation resource ID #0x";
        r2.append(r3);	 Catch:{ all -> 0x0017 }
        r5 = java.lang.Integer.toHexString(r5);	 Catch:{ all -> 0x0017 }
        r2.append(r5);	 Catch:{ all -> 0x0017 }
        r5 = r2.toString();	 Catch:{ all -> 0x0017 }
        r1.<init>(r5);	 Catch:{ all -> 0x0017 }
        r1.initCause(r4);	 Catch:{ all -> 0x0017 }
        throw r1;	 Catch:{ all -> 0x0017 }
    L_0x0075:
        r1 = new android.content.res.Resources$NotFoundException;	 Catch:{ all -> 0x0017 }
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0017 }
        r2.<init>();	 Catch:{ all -> 0x0017 }
        r3 = "Can't load animation resource ID #0x";
        r2.append(r3);	 Catch:{ all -> 0x0017 }
        r5 = java.lang.Integer.toHexString(r5);	 Catch:{ all -> 0x0017 }
        r2.append(r5);	 Catch:{ all -> 0x0017 }
        r5 = r2.toString();	 Catch:{ all -> 0x0017 }
        r1.<init>(r5);	 Catch:{ all -> 0x0017 }
        r1.initCause(r4);	 Catch:{ all -> 0x0017 }
        throw r1;	 Catch:{ all -> 0x0017 }
    L_0x0093:
        if (r0 == 0) goto L_0x0098;
    L_0x0095:
        r0.close();
    L_0x0098:
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.graphics.drawable.AnimationUtilsCompat.loadInterpolator(android.content.Context, int):android.view.animation.Interpolator");
    }

    private static Interpolator createInterpolatorFromXml(Context context, Resources resources, Theme theme, XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        Interpolator interpolator = null;
        while (true) {
            int next = xmlPullParser.next();
            if ((next != 3 || xmlPullParser.getDepth() > depth) && next != 1) {
                if (next == 2) {
                    AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
                    String name = xmlPullParser.getName();
                    if (name.equals("linearInterpolator")) {
                        interpolator = new LinearInterpolator();
                    } else {
                        AccelerateInterpolator accelerateInterpolator;
                        if (name.equals("accelerateInterpolator")) {
                            accelerateInterpolator = new AccelerateInterpolator(context, asAttributeSet);
                        } else if (name.equals("decelerateInterpolator")) {
                            accelerateInterpolator = new DecelerateInterpolator(context, asAttributeSet);
                        } else if (name.equals("accelerateDecelerateInterpolator")) {
                            interpolator = new AccelerateDecelerateInterpolator();
                        } else if (name.equals("cycleInterpolator")) {
                            accelerateInterpolator = new CycleInterpolator(context, asAttributeSet);
                        } else if (name.equals("anticipateInterpolator")) {
                            accelerateInterpolator = new AnticipateInterpolator(context, asAttributeSet);
                        } else if (name.equals("overshootInterpolator")) {
                            accelerateInterpolator = new OvershootInterpolator(context, asAttributeSet);
                        } else if (name.equals("anticipateOvershootInterpolator")) {
                            accelerateInterpolator = new AnticipateOvershootInterpolator(context, asAttributeSet);
                        } else if (name.equals("bounceInterpolator")) {
                            interpolator = new BounceInterpolator();
                        } else if (name.equals("pathInterpolator")) {
                            accelerateInterpolator = new PathInterpolatorCompat(context, asAttributeSet, xmlPullParser);
                        } else {
                            StringBuilder stringBuilder = new StringBuilder();
                            stringBuilder.append("Unknown interpolator name: ");
                            stringBuilder.append(xmlPullParser.getName());
                            throw new RuntimeException(stringBuilder.toString());
                        }
                        interpolator = accelerateInterpolator;
                    }
                }
            }
        }
        return interpolator;
    }
}
