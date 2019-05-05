package com.google.android.gms.ads.internal;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.internal.zzaff;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzaka;
import com.google.android.gms.internal.zzos;
import com.google.android.gms.internal.zzot;
import com.google.android.gms.internal.zzrd;
import com.google.android.gms.internal.zzvc;
import com.google.android.gms.internal.zzvf;
import com.google.android.gms.internal.zzzn;
import java.io.ByteArrayOutputStream;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

@zzzn
public final class zzar {
    static zzrd zza(@Nullable zzvc zzvc, @Nullable zzvf zzvf, zzab zzab) {
        return new zzaw(zzvc, zzab, zzvf);
    }

    private static String zza(@Nullable Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (bitmap == null) {
            zzajc.zzaT("Bitmap is null. Returning empty string");
            return "";
        }
        bitmap.compress(CompressFormat.PNG, 100, byteArrayOutputStream);
        String encodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
        String valueOf = String.valueOf("data:image/png;base64,");
        encodeToString = String.valueOf(encodeToString);
        return encodeToString.length() != 0 ? valueOf.concat(encodeToString) : new String(valueOf);
    }

    static String zza(@Nullable zzos zzos) {
        if (zzos == null) {
            zzajc.zzaT("Image is null. Returning empty string");
            return "";
        }
        try {
            Uri uri = zzos.getUri();
            if (uri != null) {
                return uri.toString();
            }
        } catch (RemoteException unused) {
            zzajc.zzaT("Unable to get image uri. Trying data uri next");
        }
        return zzb(zzos);
    }

    private static JSONObject zza(@Nullable Bundle bundle, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (bundle == null || TextUtils.isEmpty(str)) {
            return jSONObject;
        }
        JSONObject jSONObject2 = new JSONObject(str);
        Iterator keys = jSONObject2.keys();
        while (keys.hasNext()) {
            String str2 = (String) keys.next();
            if (bundle.containsKey(str2)) {
                Object obj;
                if ("image".equals(jSONObject2.getString(str2))) {
                    obj = bundle.get(str2);
                    if (obj instanceof Bitmap) {
                        obj = zza((Bitmap) obj);
                    } else {
                        str2 = "Invalid type. An image type extra should return a bitmap";
                        zzajc.zzaT(str2);
                    }
                } else if (bundle.get(str2) instanceof Bitmap) {
                    str2 = "Invalid asset type. Bitmap should be returned only for image type";
                    zzajc.zzaT(str2);
                } else {
                    obj = String.valueOf(bundle.get(str2));
                }
                jSONObject.put(str2, obj);
            }
        }
        return jSONObject;
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x010d  */
    public static boolean zza(com.google.android.gms.internal.zzaka r23, com.google.android.gms.internal.zzuh r24, java.util.concurrent.CountDownLatch r25) {
        /*
        r1 = r23;
        r2 = r24;
        r7 = r25;
        r8 = 0;
        r3 = r23.getView();	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        if (r3 != 0) goto L_0x0014;
    L_0x000d:
        r1 = "AdWebView is null";
    L_0x000f:
        com.google.android.gms.internal.zzajc.zzaT(r1);	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        goto L_0x010b;
    L_0x0014:
        r4 = 4;
        r3.setVisibility(r4);	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r3 = r2.zzMG;	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r3 = r3.zzLV;	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        if (r3 == 0) goto L_0x00fa;
    L_0x001e:
        r4 = r3.isEmpty();	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        if (r4 == 0) goto L_0x0026;
    L_0x0024:
        goto L_0x00fa;
    L_0x0026:
        r4 = r23.zziw();	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r5 = "/nativeExpressAssetsLoaded";
        r6 = new com.google.android.gms.ads.internal.zzau;	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r6.<init>(r7);	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r4.zza(r5, r6);	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r4 = r23.zziw();	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r5 = "/nativeExpressAssetsLoadingFailed";
        r6 = new com.google.android.gms.ads.internal.zzav;	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r6.<init>(r7);	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r4.zza(r5, r6);	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r4 = r2.zzMH;	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r4 = r4.zzfq();	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r5 = r2.zzMH;	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r5 = r5.zzfr();	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r6 = "2";
        r6 = r3.contains(r6);	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        if (r6 == 0) goto L_0x0099;
    L_0x0056:
        if (r4 == 0) goto L_0x0099;
    L_0x0058:
        r3 = new com.google.android.gms.internal.zznq;	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r10 = r4.getHeadline();	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r11 = r4.getImages();	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r12 = r4.getBody();	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r13 = r4.zzeh();	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r14 = r4.getCallToAction();	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r15 = r4.getStarRating();	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r17 = r4.getStore();	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r18 = r4.getPrice();	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r19 = 0;
        r20 = r4.getExtras();	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r21 = 0;
        r22 = 0;
        r9 = r3;
        r9.<init>(r10, r11, r12, r13, r14, r15, r17, r18, r19, r20, r21, r22);	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r4 = r2.zzMG;	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r4 = r4.zzLU;	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r5 = r23.zziw();	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r6 = new com.google.android.gms.ads.internal.zzas;	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r6.<init>(r3, r4, r1);	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
    L_0x0095:
        r5.zza(r6);	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        goto L_0x00d9;
    L_0x0099:
        r4 = "1";
        r3 = r3.contains(r4);	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        if (r3 == 0) goto L_0x00f6;
    L_0x00a1:
        if (r5 == 0) goto L_0x00f6;
    L_0x00a3:
        r3 = new com.google.android.gms.internal.zzns;	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r10 = r5.getHeadline();	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r11 = r5.getImages();	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r12 = r5.getBody();	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r13 = r5.zzem();	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r14 = r5.getCallToAction();	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r15 = r5.getAdvertiser();	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r16 = 0;
        r17 = r5.getExtras();	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r18 = 0;
        r19 = 0;
        r9 = r3;
        r9.<init>(r10, r11, r12, r13, r14, r15, r16, r17, r18, r19);	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r4 = r2.zzMG;	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r4 = r4.zzLU;	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r5 = r23.zziw();	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r6 = new com.google.android.gms.ads.internal.zzat;	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r6.<init>(r3, r4, r1);	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        goto L_0x0095;
    L_0x00d9:
        r3 = r2.zzMG;	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r3 = r3.zzLS;	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r2 = r2.zzMG;	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        r2 = r2.zzLT;	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        if (r2 == 0) goto L_0x00ec;
    L_0x00e3:
        r4 = "text/html";
        r5 = "UTF-8";
        r6 = 0;
        r1.loadDataWithBaseURL(r2, r3, r4, r5, r6);	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
        goto L_0x00f3;
    L_0x00ec:
        r2 = "text/html";
        r4 = "UTF-8";
        r1.loadData(r3, r2, r4);	 Catch:{ RemoteException -> 0x0104, RuntimeException -> 0x00fe }
    L_0x00f3:
        r1 = 1;
        r8 = 1;
        goto L_0x010b;
    L_0x00f6:
        r1 = "No matching template id and mapper";
        goto L_0x000f;
    L_0x00fa:
        r1 = "No template ids present in mediation response";
        goto L_0x000f;
    L_0x00fe:
        r0 = move-exception;
        r1 = r0;
        r25.countDown();
        throw r1;
    L_0x0104:
        r0 = move-exception;
        r1 = r0;
        r2 = "Unable to invoke load assets";
        com.google.android.gms.internal.zzajc.zzc(r2, r1);
    L_0x010b:
        if (r8 != 0) goto L_0x0110;
    L_0x010d:
        r25.countDown();
    L_0x0110:
        return r8;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.zzar.zza(com.google.android.gms.internal.zzaka, com.google.android.gms.internal.zzuh, java.util.concurrent.CountDownLatch):boolean");
    }

    private static String zzb(zzos zzos) {
        try {
            IObjectWrapper zzeg = zzos.zzeg();
            if (zzeg == null) {
                zzajc.zzaT("Drawable is null. Returning empty string");
                return "";
            }
            Drawable drawable = (Drawable) zzn.zzE(zzeg);
            if (drawable instanceof BitmapDrawable) {
                return zza(((BitmapDrawable) drawable).getBitmap());
            }
            zzajc.zzaT("Drawable is not an instance of BitmapDrawable. Returning empty string");
            return "";
        } catch (RemoteException unused) {
            zzajc.zzaT("Unable to get drawable. Returning empty string");
            return "";
        }
    }

    private static void zzb(zzaka zzaka) {
        OnClickListener zziL = zzaka.zziL();
        if (zziL != null) {
            zziL.onClick(zzaka.getView());
        }
    }

    @Nullable
    public static View zzd(@Nullable zzaff zzaff) {
        if (zzaff == null) {
            zzajc.e("AdState is null");
            return null;
        } else if (zze(zzaff) && zzaff.zzPg != null) {
            return zzaff.zzPg.getView();
        } else {
            try {
                IObjectWrapper view = zzaff.zzMH != null ? zzaff.zzMH.getView() : null;
                if (view != null) {
                    return (View) zzn.zzE(view);
                }
                zzajc.zzaT("View in mediation adapter is null.");
                return null;
            } catch (RemoteException e) {
                zzajc.zzc("Could not get View from mediation adapter.", e);
                return null;
            }
        }
    }

    @Nullable
    private static zzos zzd(Object obj) {
        return obj instanceof IBinder ? zzot.zzi((IBinder) obj) : null;
    }

    public static boolean zze(@Nullable zzaff zzaff) {
        return (zzaff == null || !zzaff.zzTo || zzaff.zzMG == null || zzaff.zzMG.zzLS == null) ? false : true;
    }
}
