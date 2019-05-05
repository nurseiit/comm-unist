package com.google.android.gms.internal;

import android.os.Bundle;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.Key;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzd;
import com.google.android.gms.games.GamesStatusCodes;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.TreeMap;
import java.util.regex.Pattern;

public final class zzbhl implements zzbhd {
    private static final Charset UTF_8 = Charset.forName(Key.STRING_CHARSET_NAME);
    private static final Pattern zzaKs = Pattern.compile("^(1|true|t|yes|y|on)$", 2);
    private static final Pattern zzaKt = Pattern.compile("^(0|false|f|no|n|off|)$", 2);

    private static HashMap<String, TreeMap<String, byte[]>> zza(zzbia zzbia) {
        if (zzbia == null) {
            return null;
        }
        DataHolder zzsu = zzbia.zzsu();
        if (zzsu == null) {
            return null;
        }
        zzbig zzbig = (zzbig) new zzd(zzsu, zzbig.CREATOR).get(0);
        zzbia.zzsw();
        HashMap hashMap = new HashMap();
        for (String str : zzbig.zzsy().keySet()) {
            TreeMap treeMap = new TreeMap();
            hashMap.put(str, treeMap);
            Bundle bundle = zzbig.zzsy().getBundle(str);
            for (String str2 : bundle.keySet()) {
                treeMap.put(str2, bundle.getByteArray(str2));
            }
        }
        return hashMap;
    }

    private static Status zzaH(int i) {
        String str;
        if (i == -6508) {
            str = "SUCCESS_CACHE_STALE";
        } else if (i != GamesStatusCodes.STATUS_MATCH_ERROR_LOCALLY_MODIFIED) {
            switch (i) {
                case -6506:
                    str = "SUCCESS_CACHE";
                    break;
                case -6505:
                    str = "SUCCESS_FRESH";
                    break;
                default:
                    switch (i) {
                        case GamesStatusCodes.STATUS_MATCH_ERROR_INVALID_PARTICIPANT_STATE /*6500*/:
                            str = "NOT_AUTHORIZED_TO_FETCH";
                            break;
                        case GamesStatusCodes.STATUS_MATCH_ERROR_INACTIVE_MATCH /*6501*/:
                            str = "ANOTHER_FETCH_INFLIGHT";
                            break;
                        case GamesStatusCodes.STATUS_MATCH_ERROR_INVALID_MATCH_STATE /*6502*/:
                            str = "FETCH_THROTTLED";
                            break;
                        case GamesStatusCodes.STATUS_MATCH_ERROR_OUT_OF_DATE_VERSION /*6503*/:
                            str = "NOT_AVAILABLE";
                            break;
                        case GamesStatusCodes.STATUS_MATCH_ERROR_INVALID_MATCH_RESULTS /*6504*/:
                            str = "FAILURE_CACHE";
                            break;
                        default:
                            str = CommonStatusCodes.getStatusCodeString(i);
                            break;
                    }
            }
        } else {
            str = "FETCH_THROTTLED_STALE";
        }
        return new Status(i, str);
    }

    @Nullable
    static List<byte[]> zzb(@Nullable zzbia zzbia) {
        if (zzbia == null) {
            return null;
        }
        DataHolder zzsv = zzbia.zzsv();
        if (zzsv == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (zzbhu payload : new zzd(zzsv, zzbhu.CREATOR)) {
            arrayList.add(payload.getPayload());
        }
        zzbia.zzsx();
        return arrayList;
    }

    public final PendingResult<zzbhh> zza(GoogleApiClient googleApiClient, zzbhf zzbhf) {
        return (googleApiClient == null || zzbhf == null) ? null : googleApiClient.zzd(new zzbhm(this, googleApiClient, zzbhf));
    }
}
