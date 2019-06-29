package com.google.android.gms.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.PendingResults;
import com.google.android.gms.common.api.Status;
import java.util.ArrayList;
import java.util.TimeZone;

public final class zzazp {
    private boolean zzazA;
    private final aej zzazB;
    private boolean zzazC;
    private /* synthetic */ zzazn zzazD;
    private String zzazk;
    private int zzazl;
    private String zzazm;
    private String zzazn;
    private int zzazp;
    private final zzazr zzazu;
    private ArrayList<Integer> zzazv;
    private ArrayList<String> zzazw;
    private ArrayList<Integer> zzazx;
    private ArrayList<zzcqn> zzazy;
    private ArrayList<byte[]> zzazz;

    private zzazp(zzazn zzazn, byte[] bArr) {
        this(zzazn, bArr, null);
    }

    private zzazp(zzazn zzazn, byte[] bArr, zzazr zzazr) {
        this.zzazD = zzazn;
        this.zzazl = this.zzazD.zzazl;
        this.zzazk = this.zzazD.zzazk;
        this.zzazm = this.zzazD.zzazm;
        zzazn zzazn2 = this.zzazD;
        this.zzazn = null;
        this.zzazp = 0;
        this.zzazv = null;
        this.zzazw = null;
        this.zzazx = null;
        this.zzazy = null;
        this.zzazz = null;
        this.zzazA = true;
        this.zzazB = new aej();
        this.zzazC = false;
        this.zzazm = zzazn.zzazm;
        this.zzazn = null;
        this.zzazB.zzctQ = zzazn.zzazr.currentTimeMillis();
        this.zzazB.zzctR = zzazn.zzazr.elapsedRealtime();
        aej aej = this.zzazB;
        zzazn.zzazs;
        aej.zzcuc = (long) (TimeZone.getDefault().getOffset(this.zzazB.zzctQ) / 1000);
        if (bArr != null) {
            this.zzazB.zzctX = bArr;
        }
        this.zzazu = null;
    }

    public final zzazp zzai(int i) {
        this.zzazB.zzctT = i;
        return this;
    }

    public final zzazp zzaj(int i) {
        this.zzazB.zzrB = i;
        return this;
    }

    public final void zzoS() {
        zzoT();
    }

    @Deprecated
    public final PendingResult<Status> zzoT() {
        if (this.zzazC) {
            throw new IllegalStateException("do not reuse LogEventBuilder");
        }
        this.zzazC = true;
        zzazu zzazu = new zzazu(new zzbak(this.zzazD.packageName, this.zzazD.zzazj, this.zzazl, this.zzazk, this.zzazm, this.zzazn, this.zzazD.zzazo, 0), this.zzazB, null, null, zzazn.zzb(null), null, zzazn.zzb(null), null, null, this.zzazA);
        zzbak zzbak = zzazu.zzazE;
        return this.zzazD.zzazt.zzg(zzbak.zzazk, zzbak.zzazl) ? this.zzazD.zzazq.zza(zzazu) : PendingResults.immediatePendingResult(Status.zzaBm);
    }
}
