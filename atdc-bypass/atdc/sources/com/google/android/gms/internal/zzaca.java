package com.google.android.gms.internal;

import com.google.android.gms.plus.PlusShare;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

@zzzn
public final class zzaca {
    private int mErrorCode;
    private String zzD;
    private final String zzQx;
    private final String zzVA;
    private final String zzVB;
    private final boolean zzVC;
    private final boolean zzVD;
    private final String zzVE;
    private final List<String> zzVw;
    private final List<String> zzVx;
    private final String zzVy;
    private final String zzVz;

    public zzaca(int i, Map<String, String> map) {
        this.zzD = (String) map.get(PlusShare.KEY_CALL_TO_ACTION_URL);
        this.zzVz = (String) map.get("base_uri");
        this.zzVA = (String) map.get("post_parameters");
        this.zzVC = parseBoolean((String) map.get("drt_include"));
        this.zzVD = parseBoolean((String) map.get("pan_include"));
        this.zzVy = (String) map.get("activation_overlay_url");
        this.zzVx = zzau((String) map.get("check_packages"));
        this.zzQx = (String) map.get("request_id");
        this.zzVB = (String) map.get("type");
        this.zzVw = zzau((String) map.get("errors"));
        this.mErrorCode = i;
        this.zzVE = (String) map.get("fetched_ad");
    }

    private static boolean parseBoolean(String str) {
        return str != null && (str.equals("1") || str.equals("true"));
    }

    private static List<String> zzau(String str) {
        return str == null ? null : Arrays.asList(str.split(","));
    }

    public final int getErrorCode() {
        return this.mErrorCode;
    }

    public final String getRequestId() {
        return this.zzQx;
    }

    public final String getType() {
        return this.zzVB;
    }

    public final String getUrl() {
        return this.zzD;
    }

    public final void setUrl(String str) {
        this.zzD = str;
    }

    public final List<String> zzgH() {
        return this.zzVw;
    }

    public final String zzgI() {
        return this.zzVz;
    }

    public final String zzgJ() {
        return this.zzVA;
    }

    public final boolean zzgK() {
        return this.zzVC;
    }

    public final String zzgL() {
        return this.zzVE;
    }
}
