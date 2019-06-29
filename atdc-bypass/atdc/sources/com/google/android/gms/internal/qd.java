package com.google.android.gms.internal;

import com.google.firebase.FirebaseApp;
import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.FirebaseDatabase;
import java.util.concurrent.ScheduledExecutorService;

public class qd {
    protected long cacheSize = 10485760;
    protected FirebaseApp zzbZt;
    private wm zzcaD;
    protected boolean zzcaE;
    private String zzcaG;
    private boolean zzccB = false;
    protected qk zzccO;
    protected pu zzccP;
    protected sd zzccQ;
    protected String zzccR;
    protected wn zzccS = wn.INFO;
    private boolean zzccT = false;
    private qt zzccU;

    private final ScheduledExecutorService zzFV() {
        sd sdVar = this.zzccQ;
        if (sdVar instanceof yu) {
            return ((yu) sdVar).zzFV();
        }
        throw new RuntimeException("Custom run loops are not supported!");
    }

    private final qt zzGM() {
        if (this.zzccU == null) {
            if (yp.zzJD()) {
                zzGN();
            } else {
                qt qtVar;
                if (ql.isActive()) {
                    qtVar = ql.INSTANCE;
                    yd.zza(ql.zzcdb, new qn(qtVar));
                } else {
                    qtVar = qp.INSTANCE;
                }
                this.zzccU = qtVar;
            }
        }
        return this.zzccU;
    }

    private final synchronized void zzGN() {
        this.zzccU = new mx(this.zzbZt);
    }

    /* Access modifiers changed, original: final */
    public final void stop() {
        this.zzccT = true;
        this.zzccO.shutdown();
        this.zzccQ.shutdown();
    }

    public final boolean zzFW() {
        return this.zzcaE;
    }

    /* Access modifiers changed, original: final|declared_synchronized */
    public final synchronized void zzGD() {
        if (!this.zzccB) {
            this.zzccB = true;
            if (this.zzcaD == null) {
                this.zzcaD = zzGM().zza(this, this.zzccS, null);
            }
            zzGM();
            if (this.zzcaG == null) {
                String zzc = zzGM().zzc(this);
                StringBuilder stringBuilder = new StringBuilder("Firebase/");
                stringBuilder.append("5/");
                stringBuilder.append(FirebaseDatabase.getSdkVersion());
                stringBuilder.append("/");
                stringBuilder.append(zzc);
                this.zzcaG = stringBuilder.toString();
            }
            if (this.zzccO == null) {
                this.zzccO = zzGM().zza(this);
            }
            if (this.zzccQ == null) {
                this.zzccQ = this.zzccU.zzb(this);
            }
            if (this.zzccR == null) {
                this.zzccR = "default";
            }
            if (this.zzccP == null) {
                this.zzccP = zzGM().zza(zzFV());
            }
        }
    }

    public final void zzGO() {
        if (this.zzccT) {
            this.zzccO.restart();
            this.zzccQ.restart();
            this.zzccT = false;
        }
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzGP() {
        if (this.zzccB) {
            throw new DatabaseException("Modifications to DatabaseConfig objects must occur before they are in use");
        }
    }

    public final wn zzGQ() {
        return this.zzccS;
    }

    public final oj zzGR() {
        return new oj(this.zzcaD, new qe(this.zzccP), zzFV(), this.zzcaE, FirebaseDatabase.getSdkVersion(), this.zzcaG);
    }

    public final long zzGS() {
        return this.cacheSize;
    }

    public final qk zzGT() {
        return this.zzccO;
    }

    public final String zzGU() {
        return this.zzccR;
    }

    public final on zza(ol olVar, oo ooVar) {
        return zzGM().zza(this, zzGR(), olVar, ooVar);
    }

    public final wl zzgP(String str) {
        return new wl(this.zzcaD, str);
    }

    /* Access modifiers changed, original: final */
    public final uh zzgQ(String str) {
        if (!this.zzcaE) {
            return new ug();
        }
        uh zza = this.zzccU.zza(this, str);
        if (zza != null) {
            return zza;
        }
        throw new IllegalArgumentException("You have enabled persistence, but persistence is not supported on this platform.");
    }

    public final String zzht() {
        return this.zzcaG;
    }
}
