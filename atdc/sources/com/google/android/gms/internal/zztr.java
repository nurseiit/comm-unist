package com.google.android.gms.internal;

import android.os.Parcel;
import android.util.Base64;
import com.bumptech.glide.load.Key;
import java.io.IOException;

@zzzn
final class zztr {
    final int zzKt;
    final String zztV;
    final zzir zzuT;

    private zztr(zzir zzir, String str, int i) {
        this.zzuT = zzir;
        this.zztV = str;
        this.zzKt = i;
    }

    zztr(zztn zztn) {
        this(zztn.zzeI(), zztn.getAdUnitId(), zztn.getNetworkType());
    }

    static zztr zzab(String str) throws IOException {
        String[] split = str.split("\u0000");
        if (split.length != 3) {
            throw new IOException("Incorrect field count for QueueSeed.");
        }
        Parcel obtain = Parcel.obtain();
        try {
            String str2 = new String(Base64.decode(split[0], 0), Key.STRING_CHARSET_NAME);
            int parseInt = Integer.parseInt(split[1]);
            byte[] decode = Base64.decode(split[2], 0);
            obtain.unmarshall(decode, 0, decode.length);
            obtain.setDataPosition(0);
            zztr zztr = new zztr((zzir) zzir.CREATOR.createFromParcel(obtain), str2, parseInt);
            obtain.recycle();
            return zztr;
        } catch (Throwable th) {
            obtain.recycle();
        }
    }

    /* Access modifiers changed, original: final */
    /* JADX WARNING: Missing exception handler attribute for start block: B:6:0x0062 */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Can't wrap try/catch for region: R(5:6|7|11|10|8) */
    /* JADX WARNING: Missing block: B:7:?, code skipped:
            com.google.android.gms.internal.zzajc.e("QueueSeed encode failed because UTF-8 is not available.");
     */
    /* JADX WARNING: Missing block: B:8:0x006c, code skipped:
            return "";
     */
    /* JADX WARNING: Missing block: B:9:0x006d, code skipped:
            r0.recycle();
     */
    public final java.lang.String zzeW() {
        /*
        r6 = this;
        r0 = android.os.Parcel.obtain();
        r1 = r6.zztV;	 Catch:{ UnsupportedEncodingException -> 0x0062 }
        r2 = "UTF-8";
        r1 = r1.getBytes(r2);	 Catch:{ UnsupportedEncodingException -> 0x0062 }
        r2 = 0;
        r1 = android.util.Base64.encodeToString(r1, r2);	 Catch:{ UnsupportedEncodingException -> 0x0062 }
        r3 = r6.zzKt;	 Catch:{ UnsupportedEncodingException -> 0x0062 }
        r3 = java.lang.Integer.toString(r3);	 Catch:{ UnsupportedEncodingException -> 0x0062 }
        r4 = r6.zzuT;	 Catch:{ UnsupportedEncodingException -> 0x0062 }
        r4.writeToParcel(r0, r2);	 Catch:{ UnsupportedEncodingException -> 0x0062 }
        r4 = r0.marshall();	 Catch:{ UnsupportedEncodingException -> 0x0062 }
        r2 = android.util.Base64.encodeToString(r4, r2);	 Catch:{ UnsupportedEncodingException -> 0x0062 }
        r4 = java.lang.String.valueOf(r1);	 Catch:{ UnsupportedEncodingException -> 0x0062 }
        r4 = r4.length();	 Catch:{ UnsupportedEncodingException -> 0x0062 }
        r4 = r4 + 2;
        r5 = java.lang.String.valueOf(r3);	 Catch:{ UnsupportedEncodingException -> 0x0062 }
        r5 = r5.length();	 Catch:{ UnsupportedEncodingException -> 0x0062 }
        r4 = r4 + r5;
        r5 = java.lang.String.valueOf(r2);	 Catch:{ UnsupportedEncodingException -> 0x0062 }
        r5 = r5.length();	 Catch:{ UnsupportedEncodingException -> 0x0062 }
        r4 = r4 + r5;
        r5 = new java.lang.StringBuilder;	 Catch:{ UnsupportedEncodingException -> 0x0062 }
        r5.<init>(r4);	 Catch:{ UnsupportedEncodingException -> 0x0062 }
        r5.append(r1);	 Catch:{ UnsupportedEncodingException -> 0x0062 }
        r1 = "\u0000";
        r5.append(r1);	 Catch:{ UnsupportedEncodingException -> 0x0062 }
        r5.append(r3);	 Catch:{ UnsupportedEncodingException -> 0x0062 }
        r1 = "\u0000";
        r5.append(r1);	 Catch:{ UnsupportedEncodingException -> 0x0062 }
        r5.append(r2);	 Catch:{ UnsupportedEncodingException -> 0x0062 }
        r1 = r5.toString();	 Catch:{ UnsupportedEncodingException -> 0x0062 }
        r0.recycle();
        return r1;
    L_0x0060:
        r1 = move-exception;
        goto L_0x006d;
    L_0x0062:
        r1 = "QueueSeed encode failed because UTF-8 is not available.";
        com.google.android.gms.internal.zzajc.e(r1);	 Catch:{ all -> 0x0060 }
        r0.recycle();
        r0 = "";
        return r0;
    L_0x006d:
        r0.recycle();
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zztr.zzeW():java.lang.String");
    }
}
