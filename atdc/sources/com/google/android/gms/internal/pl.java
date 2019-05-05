package com.google.android.gms.internal;

final class pl implements pk, yi {
    final /* synthetic */ pg zzcbQ;
    private yd zzcbR;

    private pl(pg pgVar, yd ydVar) {
        this.zzcbQ = pgVar;
        this.zzcbR = ydVar;
        this.zzcbR.zza((yi) this);
    }

    /* synthetic */ pl(pg pgVar, yd ydVar, ph phVar) {
        this(pgVar, ydVar);
    }

    public final void close() {
        this.zzcbR.close();
    }

    public final void connect() {
        try {
            this.zzcbR.connect();
        } catch (yj e) {
            if (this.zzcbQ.zzbZE.zzIH()) {
                this.zzcbQ.zzbZE.zzb("Error connecting", e, new Object[0]);
            }
            this.zzcbR.close();
            try {
                this.zzcbR.zzJs();
            } catch (InterruptedException e2) {
                this.zzcbQ.zzbZE.zzd("Interrupted while shutting down websocket threads", e2);
            }
        }
    }

    public final void onClose() {
        this.zzcbQ.zzbZs.execute(new po(this));
    }

    public final void zzGy() {
        this.zzcbQ.zzbZs.execute(new pm(this));
    }

    public final void zza(yj yjVar) {
        this.zzcbQ.zzbZs.execute(new pp(this, yjVar));
    }

    public final void zza(yl ylVar) {
        String text = ylVar.getText();
        if (this.zzcbQ.zzbZE.zzIH()) {
            wl zzb = this.zzcbQ.zzbZE;
            String str = "ws message: ";
            String valueOf = String.valueOf(text);
            zzb.zzb(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), null, new Object[0]);
        }
        this.zzcbQ.zzbZs.execute(new pn(this, text));
    }

    public final void zzgM(String str) {
        this.zzcbR.zzgM(str);
    }
}
