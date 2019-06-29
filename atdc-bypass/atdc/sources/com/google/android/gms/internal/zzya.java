package com.google.android.gms.internal;

import java.util.List;
import org.json.JSONObject;

@zzzn
public final class zzya extends zzafp {
    private final zzxy zzQP;
    private final zzafg zzQQ;
    private final zzaai zzQR = this.zzQQ.zzXY;

    public zzya(zzafg zzafg, zzxy zzxy) {
        this.zzQQ = zzafg;
        this.zzQP = zzxy;
    }

    public final void onStop() {
    }

    public final void zzbd() {
        zzir zzir = this.zzQQ.zzUj.zzSz;
        int i = this.zzQR.orientation;
        long j = this.zzQR.zzMg;
        String str = this.zzQQ.zzUj.zzSC;
        long j2 = this.zzQR.zzTp;
        zziv zziv = this.zzQQ.zzvX;
        long j3 = this.zzQR.zzTn;
        long j4 = this.zzQQ.zzXR;
        long j5 = j2;
        j2 = this.zzQR.zzTs;
        String str2 = this.zzQR.zzTt;
        JSONObject jSONObject = this.zzQQ.zzXL;
        boolean z = this.zzQQ.zzXY.zzTG;
        zzaak zzaak = this.zzQQ.zzXY.zzTH;
        String str3 = str2;
        zzaka zzaka = null;
        long j6 = j4;
        List list = null;
        int i2 = 0;
        long j7 = j3;
        List list2 = null;
        List list3 = null;
        zziv zziv2 = zziv;
        boolean z2 = false;
        long j8 = j5;
        j5 = j2;
        zzua zzua = null;
        zzut zzut = null;
        zzaff zzaff = r1;
        String str4 = null;
        zzub zzub = null;
        zzud zzud = null;
        long j9 = j7;
        long j10 = j6;
        long j11 = j5;
        zzaff zzaff2 = new zzaff(zzir, zzaka, list, i2, list2, list3, i, j, str, z2, zzua, zzut, str4, zzub, zzud, j8, zziv2, j9, j10, j11, str3, jSONObject, null, null, null, null, z, zzaak, null, null, null, this.zzQQ.zzXX);
        zzagz.zzZr.post(new zzyb(this, zzaff));
    }
}
