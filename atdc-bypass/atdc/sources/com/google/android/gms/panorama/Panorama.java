package com.google.android.gms.panorama;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzf;
import com.google.android.gms.internal.zzcqe;
import com.google.android.gms.internal.zzcql;

public final class Panorama {
    public static final Api<NoOptions> API = new Api("Panorama.API", zzajS, zzajR);
    public static final PanoramaApi PanoramaApi = new zzcqe();
    public static final zzf<zzcql> zzajR = new zzf();
    private static zza<zzcql, NoOptions> zzajS = new zzb();

    private Panorama() {
    }
}
