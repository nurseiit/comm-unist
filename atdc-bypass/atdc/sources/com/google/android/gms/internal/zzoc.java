package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONException;
import org.json.JSONObject;

@zzzn
public class zzoc implements zzny {
    private final Context mContext;
    private final Object mLock = new Object();
    private final zznz zzHX;
    @Nullable
    private final JSONObject zzIa;
    @Nullable
    private final zzoa zzIb;
    private final zzcu zzIc;
    boolean zzId;
    @Nullable
    private String zzIe;
    private WeakReference<View> zzIf = null;
    @Nullable
    private final zzaje zztW;
    @Nullable
    private zzyh zzuP;
    @Nullable
    private zzaev zzuk;

    public zzoc(Context context, zznz zznz, @Nullable zzyh zzyh, zzcu zzcu, @Nullable JSONObject jSONObject, @Nullable zzoa zzoa, @Nullable zzaje zzaje, @Nullable String str) {
        this.mContext = context;
        this.zzHX = zznz;
        this.zzuP = zzyh;
        this.zzIc = zzcu;
        this.zzIa = jSONObject;
        this.zzIb = zzoa;
        this.zztW = zzaje;
        this.zzIe = str;
    }

    private final JSONObject zza(Map<String, WeakReference<View>> map, View view) {
        JSONObject jSONObject = new JSONObject();
        if (map == null || view == null) {
            return jSONObject;
        }
        int[] zzh = zzh(view);
        for (Entry entry : map.entrySet()) {
            View view2 = (View) ((WeakReference) entry.getValue()).get();
            if (view2 != null) {
                int[] zzh2 = zzh(view2);
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                try {
                    Object zzb;
                    jSONObject3.put("width", zzm(view2.getMeasuredWidth()));
                    jSONObject3.put("height", zzm(view2.getMeasuredHeight()));
                    jSONObject3.put("x", zzm(zzh2[0] - zzh[0]));
                    jSONObject3.put("y", zzm(zzh2[1] - zzh[1]));
                    jSONObject3.put("relative_to", "ad_view");
                    jSONObject2.put("frame", jSONObject3);
                    Rect rect = new Rect();
                    if (view2.getLocalVisibleRect(rect)) {
                        zzb = zzb(rect);
                    } else {
                        jSONObject3 = new JSONObject();
                        jSONObject3.put("width", 0);
                        jSONObject3.put("height", 0);
                        jSONObject3.put("x", zzm(zzh2[0] - zzh[0]));
                        jSONObject3.put("y", zzm(zzh2[1] - zzh[1]));
                        jSONObject3.put("relative_to", "ad_view");
                        zzb = jSONObject3;
                    }
                    jSONObject2.put("visible_bounds", zzb);
                    if (view2 instanceof TextView) {
                        TextView textView = (TextView) view2;
                        jSONObject2.put("text_color", textView.getCurrentTextColor());
                        jSONObject2.put("font_size", (double) textView.getTextSize());
                        jSONObject2.put("text", textView.getText());
                    }
                    jSONObject.put((String) entry.getKey(), jSONObject2);
                } catch (JSONException unused) {
                    zzajc.zzaT("Unable to get asset views information");
                }
            }
        }
        return jSONObject;
    }

    private final void zza(View view, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, String str, JSONObject jSONObject4, JSONObject jSONObject5) {
        zzbo.zzcz("performClick must be called on the main UI thread.");
        try {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("ad", this.zzIa);
            if (jSONObject2 != null) {
                jSONObject6.put("asset_view_signal", jSONObject2);
            }
            if (jSONObject != null) {
                jSONObject6.put("ad_view_signal", jSONObject);
            }
            if (jSONObject4 != null) {
                jSONObject6.put("click_signal", jSONObject4);
            }
            if (jSONObject3 != null) {
                jSONObject6.put("scroll_view_signal", jSONObject3);
            }
            jSONObject = new JSONObject();
            jSONObject.put("asset_id", str);
            jSONObject.put("template", this.zzIb.zzej());
            boolean z = false;
            jSONObject.put("has_custom_click_handler", this.zzHX.zzs(this.zzIb.getCustomTemplateId()) != null);
            String str2 = "has_custom_click_handler";
            if (this.zzHX.zzs(this.zzIb.getCustomTemplateId()) != null) {
                z = true;
            }
            jSONObject6.put(str2, z);
            try {
                jSONObject2 = this.zzIa.optJSONObject("tracking_urls_and_actions");
                if (jSONObject2 == null) {
                    jSONObject2 = new JSONObject();
                }
                jSONObject.put("click_signals", this.zzIc.zzB().zza(this.mContext, jSONObject2.optString("click_string"), view));
            } catch (Exception e) {
                zzajc.zzb("Exception obtaining click signals", e);
            }
            jSONObject6.put("click", jSONObject);
            if (jSONObject5 != null) {
                jSONObject6.put("provided_signals", jSONObject5);
            }
            jSONObject6.put("ads_id", this.zzIe);
            this.zzuP.zza(new zzod(this, jSONObject6));
        } catch (JSONException e2) {
            zzajc.zzb("Unable to create click JSON.", e2);
        }
    }

    private final boolean zza(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4) {
        zzbo.zzcz("recordImpression must be called on the main UI thread.");
        this.zzId = true;
        try {
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put("ad", this.zzIa);
            jSONObject5.put("ads_id", this.zzIe);
            if (jSONObject2 != null) {
                jSONObject5.put("asset_view_signal", jSONObject2);
            }
            if (jSONObject != null) {
                jSONObject5.put("ad_view_signal", jSONObject);
            }
            if (jSONObject3 != null) {
                jSONObject5.put("scroll_view_signal", jSONObject3);
            }
            if (jSONObject4 != null) {
                jSONObject5.put("provided_signals", jSONObject4);
            }
            this.zzuP.zza(new zzoe(this, jSONObject5));
            this.zzuP.zza(new zzof(this.zzHX, this.zzIe));
            this.zzHX.zza((zzny) this);
            this.zzHX.zzaw();
            return true;
        } catch (JSONException e) {
            zzajc.zzb("Unable to create impression JSON.", e);
            return false;
        }
    }

    private final JSONObject zzb(Rect rect) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("width", zzm(rect.right - rect.left));
        jSONObject.put("height", zzm(rect.bottom - rect.top));
        jSONObject.put("x", zzm(rect.left));
        jSONObject.put("y", zzm(rect.top));
        jSONObject.put("relative_to", "self");
        return jSONObject;
    }

    private static int[] zzh(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr;
    }

    private final JSONObject zzi(View view) {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            Object zzb;
            int[] zzh = zzh(view);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("width", zzm(view.getMeasuredWidth()));
            jSONObject2.put("height", zzm(view.getMeasuredHeight()));
            jSONObject2.put("x", zzm(zzh[0]));
            jSONObject2.put("y", zzm(zzh[1]));
            jSONObject2.put("relative_to", "window");
            jSONObject.put("frame", jSONObject2);
            Rect rect = new Rect();
            if (view.getGlobalVisibleRect(rect)) {
                zzb = zzb(rect);
            } else {
                zzb = new JSONObject();
                zzb.put("width", 0);
                zzb.put("height", 0);
                zzb.put("x", zzm(zzh[0]));
                zzb.put("y", zzm(zzh[1]));
                zzb.put("relative_to", "window");
            }
            jSONObject.put("visible_bounds", zzb);
            return jSONObject;
        } catch (Exception unused) {
            zzajc.zzaT("Unable to get native ad view bounding box");
            return jSONObject;
        }
    }

    private static JSONObject zzj(View view) {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            zzbs.zzbz();
            jSONObject.put("contained_in_scroll_view", zzagz.zzp(view) != -1);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private final int zzm(int i) {
        zzji.zzds();
        return zzaiy.zzd(this.mContext, i);
    }

    public final Context getContext() {
        return this.mContext;
    }

    /* JADX WARNING: Missing block: B:11:0x0026, code skipped:
            r1.addRule(11);
     */
    @android.support.annotation.Nullable
    public android.view.View zza(android.view.View.OnClickListener r7, boolean r8) {
        /*
        r6 = this;
        r0 = r6.zzIb;
        r0 = r0.zzek();
        if (r0 != 0) goto L_0x000a;
    L_0x0008:
        r7 = 0;
        return r7;
    L_0x000a:
        r1 = new android.widget.RelativeLayout$LayoutParams;
        r2 = -2;
        r1.<init>(r2, r2);
        if (r8 != 0) goto L_0x0038;
    L_0x0012:
        r8 = r0.zzee();
        r2 = 9;
        r3 = 10;
        if (r8 == 0) goto L_0x0032;
    L_0x001c:
        r4 = 12;
        r5 = 11;
        switch(r8) {
            case 2: goto L_0x002e;
            case 3: goto L_0x002a;
            default: goto L_0x0023;
        };
    L_0x0023:
        r1.addRule(r3);
    L_0x0026:
        r1.addRule(r5);
        goto L_0x0038;
    L_0x002a:
        r1.addRule(r4);
        goto L_0x0035;
    L_0x002e:
        r1.addRule(r4);
        goto L_0x0026;
    L_0x0032:
        r1.addRule(r3);
    L_0x0035:
        r1.addRule(r2);
    L_0x0038:
        r8 = new com.google.android.gms.internal.zzno;
        r2 = r6.mContext;
        r8.<init>(r2, r0, r1);
        r8.setOnClickListener(r7);
        r7 = com.google.android.gms.internal.zzmo.zzFA;
        r0 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r7 = r0.zzd(r7);
        r7 = (java.lang.CharSequence) r7;
        r8.setContentDescription(r7);
        return r8;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzoc.zza(android.view.View$OnClickListener, boolean):android.view.View");
    }

    public final void zza(View view, zznw zznw) {
        LayoutParams layoutParams = new LayoutParams(-1, -1);
        View zzel = this.zzIb.zzel();
        if (zzel != null) {
            ViewParent parent = zzel.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(zzel);
            }
            ((FrameLayout) view).addView(zzel, layoutParams);
            this.zzHX.zza(zznw);
        } else if (this.zzIb instanceof zzob) {
            zzob zzob = (zzob) this.zzIb;
            if (zzob.getImages() != null && zzob.getImages().size() > 0) {
                Object obj = zzob.getImages().get(0);
                zzos zzi = obj instanceof IBinder ? zzot.zzi((IBinder) obj) : null;
                if (zzi != null) {
                    try {
                        IObjectWrapper zzeg = zzi.zzeg();
                        if (zzeg != null) {
                            Drawable drawable = (Drawable) zzn.zzE(zzeg);
                            ImageView imageView = new ImageView(this.mContext);
                            imageView.setImageDrawable(drawable);
                            imageView.setScaleType(ScaleType.CENTER_INSIDE);
                            ((FrameLayout) view).addView(imageView, layoutParams);
                        }
                    } catch (RemoteException unused) {
                        zzajc.zzaT("Could not get drawable from image");
                    }
                }
            }
        }
    }

    public final void zza(View view, String str, @Nullable Bundle bundle, Map<String, WeakReference<View>> map, View view2) {
        JSONObject jSONObject;
        Throwable e;
        JSONObject zza = zza((Map) map, view2);
        JSONObject zzi = zzi(view2);
        JSONObject zzj = zzj(view2);
        JSONObject jSONObject2 = null;
        try {
            JSONObject zza2 = zzbs.zzbz().zza(bundle, null);
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.put("click_point", zza2);
                jSONObject3.put("asset_id", str);
                jSONObject = jSONObject3;
            } catch (Exception e2) {
                e = e2;
                jSONObject2 = jSONObject3;
                zzajc.zzb("Error occured while grabbing click signals.", e);
                jSONObject = jSONObject2;
                zza(view, zzi, zza, zzj, str, jSONObject, null);
            }
        } catch (Exception e3) {
            e = e3;
            zzajc.zzb("Error occured while grabbing click signals.", e);
            jSONObject = jSONObject2;
            zza(view, zzi, zza, zzj, str, jSONObject, null);
        }
        zza(view, zzi, zza, zzj, str, jSONObject, null);
    }

    public void zza(View view, Map<String, WeakReference<View>> map) {
        zza(zzi(view), zza((Map) map, view), zzj(view), null);
    }

    public void zza(View view, Map<String, WeakReference<View>> map, Bundle bundle, View view2) {
        String str;
        zzbo.zzcz("performClick must be called on the main UI thread.");
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                if (view.equals((View) ((WeakReference) entry.getValue()).get())) {
                    str = (String) entry.getKey();
                    break;
                }
            }
        }
        if ("2".equals(this.zzIb.zzej())) {
            str = "2099";
            zza(view, str, bundle, map, view2);
            return;
        }
        if ("1".equals(this.zzIb.zzej())) {
            zza(view, "1099", bundle, map, view2);
        }
    }

    public void zza(View view, Map<String, WeakReference<View>> map, OnTouchListener onTouchListener, OnClickListener onClickListener) {
        if (((Boolean) zzbs.zzbL().zzd(zzmo.zzFy)).booleanValue()) {
            view.setOnTouchListener(onTouchListener);
            view.setClickable(true);
            view.setOnClickListener(onClickListener);
            if (map != null) {
                for (Entry value : map.entrySet()) {
                    View view2 = (View) ((WeakReference) value.getValue()).get();
                    if (view2 != null) {
                        view2.setOnTouchListener(onTouchListener);
                        view2.setClickable(true);
                        view2.setOnClickListener(onClickListener);
                    }
                }
            }
        }
    }

    public void zzb(View view, Map<String, WeakReference<View>> map) {
        if (!((Boolean) zzbs.zzbL().zzd(zzmo.zzFx)).booleanValue()) {
            view.setOnTouchListener(null);
            view.setClickable(false);
            view.setOnClickListener(null);
            if (map != null) {
                for (Entry value : map.entrySet()) {
                    View view2 = (View) ((WeakReference) value.getValue()).get();
                    if (view2 != null) {
                        view2.setOnTouchListener(null);
                        view2.setClickable(false);
                        view2.setOnClickListener(null);
                    }
                }
            }
        }
    }

    public final void zzc(Bundle bundle) {
        if (bundle == null) {
            zzajc.zzaC("Click data is null. No click is reported.");
            return;
        }
        zza(null, null, null, null, bundle.getBundle("click_signal").getString("asset_id"), null, zzbs.zzbz().zza(bundle, null));
    }

    public final void zzc(View view, Map<String, WeakReference<View>> map) {
        synchronized (this.mLock) {
            if (this.zzId) {
            } else if (!view.isShown()) {
            } else if (view.getGlobalVisibleRect(new Rect(), null)) {
                zza(view, (Map) map);
            }
        }
    }

    public final void zzd(MotionEvent motionEvent) {
        this.zzIc.zza(motionEvent);
    }

    public final void zzd(Map<String, WeakReference<View>> map) {
        if (this.zzIb.zzel() != null) {
            if ("2".equals(this.zzIb.zzej())) {
                zzbs.zzbD().zzb(this.mContext, this.zzHX.getAdUnitId(), this.zzIb.zzej(), map.containsKey("2011"));
            } else if ("1".equals(this.zzIb.zzej())) {
                zzbs.zzbD().zzb(this.mContext, this.zzHX.getAdUnitId(), this.zzIb.zzej(), map.containsKey("1009"));
            }
        }
    }

    public final boolean zzd(Bundle bundle) {
        return zza(null, null, null, zzbs.zzbz().zza(bundle, null));
    }

    public final void zze(Bundle bundle) {
        if (bundle == null) {
            zzajc.zzaC("Touch event data is null. No touch event is reported.");
            return;
        }
        this.zzIc.zzB().zza((int) bundle.getFloat("x"), (int) bundle.getFloat("y"), bundle.getInt("duration_ms"));
    }

    public boolean zzep() {
        zznn zzek = this.zzIb.zzek();
        return zzek != null && zzek.zzef();
    }

    public zzaka zzes() throws zzakm {
        if (this.zzIa == null || this.zzIa.optJSONObject("overlay") == null) {
            return null;
        }
        zzaka zza = zzbs.zzbA().zza(this.mContext, zziv.zzg(this.mContext), false, false, this.zzIc, this.zztW, null, null, null, zzig.zzde());
        zza.getView().setVisibility(8);
        this.zzuP.zza(new zzom(new zzog(zza)));
        return zza;
    }

    public void zzet() {
        this.zzuP.zzfd();
    }

    public final View zzeu() {
        return this.zzIf != null ? (View) this.zzIf.get() : null;
    }

    public final void zzev() {
        this.zzHX.zzaO();
    }

    @Nullable
    public final zzaev zzew() {
        if (!zzbs.zzbY().zzr(this.mContext)) {
            return null;
        }
        if (this.zzuk == null) {
            this.zzuk = new zzaev(this.mContext, this.zzHX.getAdUnitId());
        }
        return this.zzuk;
    }

    public final void zzg(View view) {
        this.zzIf = new WeakReference(view);
    }
}
