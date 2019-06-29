package com.google.android.gms.internal;

import android.content.res.Resources.NotFoundException;

class zzani<T extends zzanh> extends zzamg {
    private zzanj<T> zzagT;

    public zzani(zzamj zzamj, zzanj<T> zzanj) {
        super(zzamj);
        this.zzagT = zzanj;
    }

    /* JADX WARNING: Removed duplicated region for block: B:44:0x00d0 A:{ExcHandler: IOException | XmlPullParserException (r5_1 'e' java.lang.Throwable), Splitter:B:0:0x0000} */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00d0 A:{ExcHandler: IOException | XmlPullParserException (r5_1 'e' java.lang.Throwable), Splitter:B:0:0x0000} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:39:0x00c6, code skipped:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:41:?, code skipped:
            r2 = "Error parsing int configuration value";
     */
    /* JADX WARNING: Missing block: B:44:0x00d0, code skipped:
            r5 = move-exception;
     */
    /* JADX WARNING: Missing block: B:45:0x00d1, code skipped:
            zze("Error parsing tracker configuration file", r5);
     */
    private final T zza(android.content.res.XmlResourceParser r5) {
        /*
        r4 = this;
        r5.next();	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        r0 = r5.getEventType();	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
    L_0x0007:
        r1 = 1;
        if (r0 == r1) goto L_0x00d6;
    L_0x000a:
        r0 = r5.getEventType();	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        r1 = 2;
        if (r0 != r1) goto L_0x00ca;
    L_0x0011:
        r0 = r5.getName();	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        r0 = r0.toLowerCase();	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        r1 = "screenname";
        r1 = r0.equals(r1);	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        r2 = 0;
        if (r1 == 0) goto L_0x0043;
    L_0x0022:
        r0 = "name";
        r0 = r5.getAttributeValue(r2, r0);	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        r1 = r5.nextText();	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        r1 = r1.trim();	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        r2 = android.text.TextUtils.isEmpty(r0);	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        if (r2 != 0) goto L_0x00ca;
    L_0x0036:
        r2 = android.text.TextUtils.isEmpty(r1);	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        if (r2 != 0) goto L_0x00ca;
    L_0x003c:
        r2 = r4.zzagT;	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        r2.zzl(r0, r1);	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        goto L_0x00ca;
    L_0x0043:
        r1 = "string";
        r1 = r0.equals(r1);	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        if (r1 == 0) goto L_0x0067;
    L_0x004b:
        r0 = "name";
        r0 = r5.getAttributeValue(r2, r0);	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        r1 = r5.nextText();	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        r1 = r1.trim();	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        r2 = android.text.TextUtils.isEmpty(r0);	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        if (r2 != 0) goto L_0x00ca;
    L_0x005f:
        if (r1 == 0) goto L_0x00ca;
    L_0x0061:
        r2 = r4.zzagT;	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        r2.zzm(r0, r1);	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        goto L_0x00ca;
    L_0x0067:
        r1 = "bool";
        r1 = r0.equals(r1);	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        if (r1 == 0) goto L_0x009a;
    L_0x006f:
        r0 = "name";
        r0 = r5.getAttributeValue(r2, r0);	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        r1 = r5.nextText();	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        r1 = r1.trim();	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        r2 = android.text.TextUtils.isEmpty(r0);	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        if (r2 != 0) goto L_0x00ca;
    L_0x0083:
        r2 = android.text.TextUtils.isEmpty(r1);	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        if (r2 != 0) goto L_0x00ca;
    L_0x0089:
        r2 = java.lang.Boolean.parseBoolean(r1);	 Catch:{ NumberFormatException -> 0x0093 }
        r3 = r4.zzagT;	 Catch:{ NumberFormatException -> 0x0093 }
        r3.zze(r0, r2);	 Catch:{ NumberFormatException -> 0x0093 }
        goto L_0x00ca;
    L_0x0093:
        r0 = move-exception;
        r2 = "Error parsing bool configuration value";
    L_0x0096:
        r4.zzc(r2, r1, r0);	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        goto L_0x00ca;
    L_0x009a:
        r1 = "integer";
        r0 = r0.equals(r1);	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        if (r0 == 0) goto L_0x00ca;
    L_0x00a2:
        r0 = "name";
        r0 = r5.getAttributeValue(r2, r0);	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        r1 = r5.nextText();	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        r1 = r1.trim();	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        r2 = android.text.TextUtils.isEmpty(r0);	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        if (r2 != 0) goto L_0x00ca;
    L_0x00b6:
        r2 = android.text.TextUtils.isEmpty(r1);	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        if (r2 != 0) goto L_0x00ca;
    L_0x00bc:
        r2 = java.lang.Integer.parseInt(r1);	 Catch:{ NumberFormatException -> 0x00c6 }
        r3 = r4.zzagT;	 Catch:{ NumberFormatException -> 0x00c6 }
        r3.zzd(r0, r2);	 Catch:{ NumberFormatException -> 0x00c6 }
        goto L_0x00ca;
    L_0x00c6:
        r0 = move-exception;
        r2 = "Error parsing int configuration value";
        goto L_0x0096;
    L_0x00ca:
        r0 = r5.next();	 Catch:{ IOException | XmlPullParserException -> 0x00d0, IOException | XmlPullParserException -> 0x00d0 }
        goto L_0x0007;
    L_0x00d0:
        r5 = move-exception;
        r0 = "Error parsing tracker configuration file";
        r4.zze(r0, r5);
    L_0x00d6:
        r5 = r4.zzagT;
        r5 = r5.zzlm();
        return r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzani.zza(android.content.res.XmlResourceParser):com.google.android.gms.internal.zzanh");
    }

    public final T zzP(int i) {
        try {
            return zza(zzkp().zzkE().getResources().getXml(i));
        } catch (NotFoundException e) {
            zzd("inflate() called with unknown resourceId", e);
            return null;
        }
    }
}
