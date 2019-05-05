package com.google.firebase.iid;

public final class zzk {
    private static final Object zzuF = new Object();
    private final zzr zzckH;

    zzk(zzr zzr) {
        this.zzckH = zzr;
    }

    /* Access modifiers changed, original: final */
    /* JADX WARNING: Missing block: B:13:0x0027, code skipped:
            return null;
     */
    @android.support.annotation.Nullable
    public final java.lang.String zzJV() {
        /*
        r5 = this;
        r0 = zzuF;
        monitor-enter(r0);
        r1 = r5.zzckH;	 Catch:{ all -> 0x0028 }
        r1 = r1.zzbho;	 Catch:{ all -> 0x0028 }
        r2 = "topic_operaion_queue";
        r3 = 0;
        r1 = r1.getString(r2, r3);	 Catch:{ all -> 0x0028 }
        if (r1 == 0) goto L_0x0026;
    L_0x0010:
        r2 = ",";
        r1 = r1.split(r2);	 Catch:{ all -> 0x0028 }
        r2 = r1.length;	 Catch:{ all -> 0x0028 }
        r4 = 1;
        if (r2 <= r4) goto L_0x0026;
    L_0x001a:
        r2 = r1[r4];	 Catch:{ all -> 0x0028 }
        r2 = android.text.TextUtils.isEmpty(r2);	 Catch:{ all -> 0x0028 }
        if (r2 != 0) goto L_0x0026;
    L_0x0022:
        r1 = r1[r4];	 Catch:{ all -> 0x0028 }
        monitor-exit(r0);	 Catch:{ all -> 0x0028 }
        return r1;
    L_0x0026:
        monitor-exit(r0);	 Catch:{ all -> 0x0028 }
        return r3;
    L_0x0028:
        r1 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0028 }
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.zzk.zzJV():java.lang.String");
    }

    /* Access modifiers changed, original: final */
    public final void zzhf(String str) {
        synchronized (zzuF) {
            String string = this.zzckH.zzbho.getString("topic_operaion_queue", "");
            String valueOf = String.valueOf(",");
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(string).length() + String.valueOf(valueOf).length()) + String.valueOf(str).length());
            stringBuilder.append(string);
            stringBuilder.append(valueOf);
            stringBuilder.append(str);
            this.zzckH.zzbho.edit().putString("topic_operaion_queue", stringBuilder.toString()).apply();
        }
    }

    /* Access modifiers changed, original: final */
    public final boolean zzhj(String str) {
        synchronized (zzuF) {
            String string = this.zzckH.zzbho.getString("topic_operaion_queue", "");
            String valueOf = String.valueOf(",");
            String valueOf2 = String.valueOf(str);
            if (string.startsWith(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf))) {
                valueOf = String.valueOf(",");
                str = String.valueOf(str);
                this.zzckH.zzbho.edit().putString("topic_operaion_queue", string.substring((str.length() != 0 ? valueOf.concat(str) : new String(valueOf)).length())).apply();
                return true;
            }
            return false;
        }
    }
}
