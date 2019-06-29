package com.google.android.gms.internal;

import org.json.JSONObject;

final class zzaxb extends zzaxe {
    private /* synthetic */ zzawy zzaxd;
    private /* synthetic */ int zzaxf;
    private /* synthetic */ String zzaxg;
    private /* synthetic */ JSONObject zzaxh;

    zzaxb(zzawy zzawy, int i, String str, JSONObject jSONObject) {
        this.zzaxd = zzawy;
        this.zzaxf = i;
        this.zzaxg = str;
        this.zzaxh = jSONObject;
        super(zzawy);
    }

    public final void execute() {
        int i;
        switch (this.zzaxf) {
            case 2:
                i = 5;
                break;
            case 3:
                i = 1;
                break;
            case 4:
                i = 2;
                break;
            case 5:
                i = 3;
                break;
            case 6:
                i = 4;
                break;
            default:
                i = 0;
                break;
        }
        if (i == 0) {
            this.zzarw.zza(-1, 2001, null);
            zzawy.zzapq.zzf("sendPlayerRequest for unsupported playerState: %d", Integer.valueOf(this.zzaxf));
            return;
        }
        this.zzaxd.zza(this.zzaxg, i, this.zzaxh, this.zzarw);
    }
}
