package com.google.android.gms.internal;

import java.util.Map;

final class ot implements oy {
    private /* synthetic */ op zzcbf;
    private /* synthetic */ boolean zzcbj;

    ot(op opVar, boolean z) {
        this.zzcbf = opVar;
        this.zzcbj = z;
    }

    public final void zzC(Map<String, Object> map) {
        this.zzcbf.zzcaN = oz.Connected;
        String str = (String) map.get("s");
        if (str.equals("ok")) {
            this.zzcbf.zzcba = 0;
            this.zzcbf.zzcaH.zzaB(true);
            if (this.zzcbj) {
                this.zzcbf.zzGh();
                return;
            }
        }
        this.zzcbf.zzcaU = null;
        this.zzcbf.zzcaV = true;
        this.zzcbf.zzcaH.zzaB(false);
        String str2 = (String) map.get("d");
        wl zza = this.zzcbf.zzbZE;
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 26) + String.valueOf(str2).length());
        stringBuilder.append("Authentication failed: ");
        stringBuilder.append(str);
        stringBuilder.append(" (");
        stringBuilder.append(str2);
        stringBuilder.append(")");
        zza.zzb(stringBuilder.toString(), null, new Object[0]);
        this.zzcbf.zzcaM.close();
        if (str.equals("invalid_token")) {
            this.zzcbf.zzcba = this.zzcbf.zzcba + 1;
            if (((long) this.zzcbf.zzcba) >= 3) {
                this.zzcbf.zzcaX.zzGB();
                this.zzcbf.zzbZE.zze("Provided authentication credentials are invalid. This usually indicates your FirebaseApp instance was not initialized correctly. Make sure your google-services.json file has the correct firebase_url and api_key. You can re-download google-services.json from https://console.firebase.google.com/.", null);
            }
        }
    }
}
