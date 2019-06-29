package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzbo;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

final class zzaof {
    private int zzaiu;
    private ByteArrayOutputStream zzaiv = new ByteArrayOutputStream();
    private /* synthetic */ zzaoe zzaiw;

    public zzaof(zzaoe zzaoe) {
        this.zzaiw = zzaoe;
    }

    public final byte[] getPayload() {
        return this.zzaiv.toByteArray();
    }

    public final boolean zze(zzanx zzanx) {
        zzbo.zzu(zzanx);
        if (this.zzaiu + 1 > zzank.zzlt()) {
            return false;
        }
        String zza = this.zzaiw.zza(zzanx, false);
        if (zza == null) {
            this.zzaiw.zzkr().zza(zzanx, "Error formatting hit");
            return true;
        }
        byte[] bytes = zza.getBytes();
        int length = bytes.length;
        if (length > zzank.zzlp()) {
            this.zzaiw.zzkr().zza(zzanx, "Hit size exceeds the maximum size limit");
            return true;
        }
        if (this.zzaiv.size() > 0) {
            length++;
        }
        if (this.zzaiv.size() + length > ((Integer) zzans.zzahE.get()).intValue()) {
            return false;
        }
        try {
            if (this.zzaiv.size() > 0) {
                this.zzaiv.write(zzaoe.zzait);
            }
            this.zzaiv.write(bytes);
            this.zzaiu++;
            return true;
        } catch (IOException e) {
            this.zzaiw.zze("Failed to write payload when batching hits", e);
            return true;
        }
    }

    public final int zzlT() {
        return this.zzaiu;
    }
}
