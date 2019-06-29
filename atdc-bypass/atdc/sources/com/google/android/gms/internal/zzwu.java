package com.google.android.gms.internal;

import org.json.JSONException;
import org.json.JSONObject;

@zzzn
public class zzwu {
    private final zzaka zzJH;
    private final String zzOf;

    public zzwu(zzaka zzaka) {
        this(zzaka, "");
    }

    public zzwu(zzaka zzaka, String str) {
        this.zzJH = zzaka;
        this.zzOf = str;
    }

    public final void zza(int i, int i2, int i3, int i4, float f, int i5) {
        try {
            this.zzJH.zzb("onScreenInfoChanged", new JSONObject().put("width", i).put("height", i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", (double) f).put("rotation", i5));
        } catch (JSONException e) {
            zzajc.zzb("Error occured while obtaining screen information.", e);
        }
    }

    public final void zzan(String str) {
        try {
            this.zzJH.zzb("onError", new JSONObject().put("message", str).put("action", this.zzOf));
        } catch (JSONException e) {
            zzajc.zzb("Error occurred while dispatching error event.", e);
        }
    }

    public final void zzao(String str) {
        try {
            this.zzJH.zzb("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (JSONException e) {
            zzajc.zzb("Error occured while dispatching ready Event.", e);
        }
    }

    public final void zzap(String str) {
        try {
            this.zzJH.zzb("onStateChanged", new JSONObject().put("state", str));
        } catch (JSONException e) {
            zzajc.zzb("Error occured while dispatching state change.", e);
        }
    }

    public final void zzb(int i, int i2, int i3, int i4) {
        try {
            this.zzJH.zzb("onSizeChanged", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            zzajc.zzb("Error occured while dispatching size change.", e);
        }
    }

    public final void zzc(int i, int i2, int i3, int i4) {
        try {
            this.zzJH.zzb("onDefaultPositionReceived", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            zzajc.zzb("Error occured while dispatching default position.", e);
        }
    }
}
