package com.google.android.gms.internal;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;
import java.util.Map.Entry;

final class zzai {
    public String key;
    public long size;
    public String zza;
    public long zzb;
    public long zzc;
    public long zzd;
    public long zze;
    public Map<String, String> zzf;

    private zzai() {
    }

    public zzai(String str, zzc zzc) {
        this.key = str;
        this.size = (long) zzc.data.length;
        this.zza = zzc.zza;
        this.zzb = zzc.zzb;
        this.zzc = zzc.zzc;
        this.zzd = zzc.zzd;
        this.zze = zzc.zze;
        this.zzf = zzc.zzf;
    }

    public static zzai zzf(InputStream inputStream) throws IOException {
        zzai zzai = new zzai();
        if (zzag.zzb(inputStream) != 538247942) {
            throw new IOException();
        }
        zzai.key = zzag.zzd(inputStream);
        zzai.zza = zzag.zzd(inputStream);
        if (zzai.zza.equals("")) {
            zzai.zza = null;
        }
        zzai.zzb = zzag.zzc(inputStream);
        zzai.zzc = zzag.zzc(inputStream);
        zzai.zzd = zzag.zzc(inputStream);
        zzai.zze = zzag.zzc(inputStream);
        zzai.zzf = zzag.zze(inputStream);
        return zzai;
    }

    public final boolean zza(OutputStream outputStream) {
        try {
            zzag.zza(outputStream, 538247942);
            zzag.zza(outputStream, this.key);
            zzag.zza(outputStream, this.zza == null ? "" : this.zza);
            zzag.zza(outputStream, this.zzb);
            zzag.zza(outputStream, this.zzc);
            zzag.zza(outputStream, this.zzd);
            zzag.zza(outputStream, this.zze);
            Map map = this.zzf;
            if (map != null) {
                zzag.zza(outputStream, map.size());
                for (Entry entry : map.entrySet()) {
                    zzag.zza(outputStream, (String) entry.getKey());
                    zzag.zza(outputStream, (String) entry.getValue());
                }
            } else {
                zzag.zza(outputStream, 0);
            }
            outputStream.flush();
            return true;
        } catch (IOException e) {
            zzab.zzb("%s", e.toString());
            return false;
        }
    }
}
