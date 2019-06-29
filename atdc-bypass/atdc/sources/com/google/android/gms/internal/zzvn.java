package com.google.android.gms.internal;

import android.location.Location;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAdOptions.Builder;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

@zzzn
public final class zzvn implements NativeMediationAdRequest {
    private final int zzAe;
    private final boolean zzAq;
    private final int zzMZ;
    private final Map<String, Boolean> zzNh = new HashMap();
    private final Date zzda;
    private final Set<String> zzdc;
    private final boolean zzdd;
    private final Location zzde;
    private final zzon zztS;
    private final List<String> zztT = new ArrayList();

    public zzvn(@Nullable Date date, int i, @Nullable Set<String> set, @Nullable Location location, boolean z, int i2, zzon zzon, List<String> list, boolean z2) {
        this.zzda = date;
        this.zzAe = i;
        this.zzdc = set;
        this.zzde = location;
        this.zzdd = z;
        this.zzMZ = i2;
        this.zztS = zzon;
        this.zzAq = z2;
        String str = "custom:";
        if (list != null) {
            for (String str2 : list) {
                if (str2.startsWith(str)) {
                    String[] split = str2.split(":", 3);
                    if (split.length == 3) {
                        Map map;
                        Object obj;
                        Object valueOf;
                        if ("true".equals(split[2])) {
                            map = this.zzNh;
                            obj = split[1];
                            valueOf = Boolean.valueOf(true);
                        } else if ("false".equals(split[2])) {
                            map = this.zzNh;
                            obj = split[1];
                            valueOf = Boolean.valueOf(false);
                        }
                        map.put(obj, valueOf);
                    }
                } else {
                    this.zztT.add(str2);
                }
            }
        }
    }

    public final Date getBirthday() {
        return this.zzda;
    }

    public final int getGender() {
        return this.zzAe;
    }

    public final Set<String> getKeywords() {
        return this.zzdc;
    }

    public final Location getLocation() {
        return this.zzde;
    }

    public final NativeAdOptions getNativeAdOptions() {
        if (this.zztS == null) {
            return null;
        }
        Builder requestMultipleImages = new Builder().setReturnUrlsForImageAssets(this.zztS.zzIn).setImageOrientation(this.zztS.zzIo).setRequestMultipleImages(this.zztS.zzIp);
        if (this.zztS.versionCode >= 2) {
            requestMultipleImages.setAdChoicesPlacement(this.zztS.zzIq);
        }
        if (this.zztS.versionCode >= 3 && this.zztS.zzIr != null) {
            requestMultipleImages.setVideoOptions(new VideoOptions(this.zztS.zzIr));
        }
        return requestMultipleImages.build();
    }

    public final boolean isAppInstallAdRequested() {
        return this.zztT != null && this.zztT.contains("2");
    }

    public final boolean isContentAdRequested() {
        return this.zztT != null && this.zztT.contains("1");
    }

    public final boolean isDesignedForFamilies() {
        return this.zzAq;
    }

    public final boolean isTesting() {
        return this.zzdd;
    }

    public final int taggedForChildDirectedTreatment() {
        return this.zzMZ;
    }

    public final Map<String, Boolean> zzfA() {
        return this.zzNh;
    }

    public final boolean zzfz() {
        return this.zztT != null && this.zztT.contains("3");
    }
}
