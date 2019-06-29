package com.google.android.gms.internal;

import java.util.Map;

final class zzaih extends zzar {
    private /* synthetic */ byte[] zzaah;
    private /* synthetic */ Map zzaai;

    zzaih(zzaie zzaie, int i, String str, zzv zzv, zzu zzu, byte[] bArr, Map map) {
        this.zzaah = bArr;
        this.zzaai = map;
        super(i, str, zzv, zzu);
    }

    public final Map<String, String> getHeaders() throws zza {
        return this.zzaai == null ? super.getHeaders() : this.zzaai;
    }

    public final byte[] zzg() throws zza {
        return this.zzaah == null ? super.zzg() : this.zzaah;
    }
}
