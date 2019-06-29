package com.google.android.gms.search;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzf;
import com.google.android.gms.internal.zzcsy;
import com.google.android.gms.internal.zzcsz;

public class SearchAuth {
    public static final Api<NoOptions> API = new Api("SearchAuth.API", zzbCz, zzajR);
    public static final SearchAuthApi SearchAuthApi = new zzcsz();
    private static zzf<zzcsy> zzajR = new zzf();
    private static final zza<zzcsy, NoOptions> zzbCz = new zzb();

    public static class StatusCodes {
        public static final int AUTH_DISABLED = 10000;
        public static final int AUTH_THROTTLED = 10001;
        public static final int DEVELOPER_ERROR = 10;
        public static final int INTERNAL_ERROR = 8;
        public static final int SUCCESS = 0;
    }

    private SearchAuth() {
    }
}
