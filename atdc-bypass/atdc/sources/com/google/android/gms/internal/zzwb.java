package com.google.android.gms.internal;

import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.AdRequest.Gender;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.zzb;
import java.util.Date;
import java.util.HashSet;

@zzzn
public final class zzwb {
    public static int zza(ErrorCode errorCode) {
        switch (zzwc.zzNn[errorCode.ordinal()]) {
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            default:
                return 0;
        }
    }

    public static AdSize zzb(zziv zziv) {
        r1 = new AdSize[6];
        int i = 0;
        r1[0] = AdSize.SMART_BANNER;
        r1[1] = AdSize.BANNER;
        r1[2] = AdSize.IAB_MRECT;
        r1[3] = AdSize.IAB_BANNER;
        r1[4] = AdSize.IAB_LEADERBOARD;
        r1[5] = AdSize.IAB_WIDE_SKYSCRAPER;
        while (i < 6) {
            if (r1[i].getWidth() == zziv.width && r1[i].getHeight() == zziv.height) {
                return r1[i];
            }
            i++;
        }
        return new AdSize(zzb.zza(zziv.width, zziv.height, zziv.zzAs));
    }

    public static MediationAdRequest zzn(zzir zzir) {
        Gender gender;
        HashSet hashSet = zzir.zzzP != null ? new HashSet(zzir.zzzP) : null;
        Date date = new Date(zzir.zzzN);
        switch (zzir.zzzO) {
            case 1:
                gender = Gender.MALE;
                break;
            case 2:
                gender = Gender.FEMALE;
                break;
            default:
                gender = Gender.UNKNOWN;
                break;
        }
        return new MediationAdRequest(date, gender, hashSet, zzir.zzzQ, zzir.zzzV);
    }
}
