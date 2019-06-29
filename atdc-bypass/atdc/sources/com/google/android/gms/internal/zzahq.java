package com.google.android.gms.internal;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.view.MotionEvent;
import com.google.android.gms.ads.internal.zzbs;
import java.util.ArrayList;
import java.util.List;

@zzzn
public final class zzahq {
    private final Context mContext;
    private int mState;
    private final float zzNX;
    private String zzZB;
    private float zzZC;
    private float zzZD;
    private float zzZE;
    private String zztV;
    private String zzwH;

    public zzahq(Context context) {
        this.mState = 0;
        this.mContext = context;
        this.zzNX = context.getResources().getDisplayMetrics().density;
    }

    public zzahq(Context context, String str) {
        this(context);
        this.zzZB = str;
    }

    private static int zza(List<String> list, String str, boolean z) {
        if (!z) {
            return -1;
        }
        list.add(str);
        return list.size() - 1;
    }

    private final void zza(int i, float f, float f2) {
        if (i == 0) {
            this.mState = 0;
            this.zzZC = f;
            this.zzZD = f2;
            this.zzZE = f2;
        } else if (this.mState != -1) {
            if (i == 2) {
                if (f2 > this.zzZD) {
                    this.zzZD = f2;
                } else if (f2 < this.zzZE) {
                    this.zzZE = f2;
                }
                if (this.zzZD - this.zzZE > this.zzNX * 30.0f) {
                    this.mState = -1;
                    return;
                }
                if (this.mState == 0 || this.mState == 2 ? f - this.zzZC < this.zzNX * 50.0f : !(this.mState == 1 || this.mState == 3) || f - this.zzZC > this.zzNX * -50.0f) {
                    this.zzZC = f;
                    this.mState++;
                }
                if (this.mState == 1 || this.mState == 3) {
                    if (f > this.zzZC) {
                        this.zzZC = f;
                    }
                } else if (this.mState == 2 && f < this.zzZC) {
                    this.zzZC = f;
                }
            } else if (i == 1 && this.mState == 4) {
                showDialog();
            }
        }
    }

    /* JADX WARNING: Missing block: B:11:0x006c, code skipped:
            if (android.text.TextUtils.isEmpty(r0) == false) goto L_0x0071;
     */
    private final void zzhY() {
        /*
        r5 = this;
        r0 = r5.mContext;
        r0 = r0 instanceof android.app.Activity;
        if (r0 != 0) goto L_0x000c;
    L_0x0006:
        r0 = "Can not create dialog without Activity Context";
        com.google.android.gms.internal.zzajc.zzaS(r0);
        return;
    L_0x000c:
        r0 = r5.zzZB;
        r1 = android.text.TextUtils.isEmpty(r0);
        if (r1 != 0) goto L_0x006f;
    L_0x0014:
        r1 = "\\+";
        r2 = "%20";
        r0 = r0.replaceAll(r1, r2);
        r1 = new android.net.Uri$Builder;
        r1.<init>();
        r0 = r1.encodedQuery(r0);
        r0 = r0.build();
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        com.google.android.gms.ads.internal.zzbs.zzbz();
        r0 = com.google.android.gms.internal.zzagz.zzg(r0);
        r2 = r0.keySet();
        r2 = r2.iterator();
    L_0x003d:
        r3 = r2.hasNext();
        if (r3 == 0) goto L_0x0060;
    L_0x0043:
        r3 = r2.next();
        r3 = (java.lang.String) r3;
        r1.append(r3);
        r4 = " = ";
        r1.append(r4);
        r3 = r0.get(r3);
        r3 = (java.lang.String) r3;
        r1.append(r3);
        r3 = "\n\n";
        r1.append(r3);
        goto L_0x003d;
    L_0x0060:
        r0 = r1.toString();
        r0 = r0.trim();
        r1 = android.text.TextUtils.isEmpty(r0);
        if (r1 != 0) goto L_0x006f;
    L_0x006e:
        goto L_0x0071;
    L_0x006f:
        r0 = "No debug information";
    L_0x0071:
        r1 = new android.app.AlertDialog$Builder;
        r2 = r5.mContext;
        r1.<init>(r2);
        r1.setMessage(r0);
        r2 = "Ad Information";
        r1.setTitle(r2);
        r2 = "Share";
        r3 = new com.google.android.gms.internal.zzahs;
        r3.<init>(r5, r0);
        r1.setPositiveButton(r2, r3);
        r0 = "Close";
        r2 = new com.google.android.gms.internal.zzaht;
        r2.<init>(r5);
        r1.setNegativeButton(r0, r2);
        r0 = r1.create();
        r0.show();
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzahq.zzhY():void");
    }

    private final void zzhZ() {
        zzajc.zzaC("Debug mode [Creative Preview] selected.");
        zzagt.zza(new zzahu(this));
    }

    private final void zzia() {
        zzajc.zzaC("Debug mode [Troubleshooting] selected.");
        zzagt.zza(new zzahv(this));
    }

    public final void setAdUnitId(String str) {
        this.zztV = str;
    }

    public final void showDialog() {
        if (!((Boolean) zzbs.zzbL().zzd(zzmo.zzGs)).booleanValue()) {
            if (!((Boolean) zzbs.zzbL().zzd(zzmo.zzGr)).booleanValue()) {
                zzhY();
                return;
            }
        }
        if (this.mContext instanceof Activity) {
            List arrayList = new ArrayList();
            int zza = zza(arrayList, "Ad Information", true);
            int zza2 = zza(arrayList, "Creative Preview", ((Boolean) zzbs.zzbL().zzd(zzmo.zzGr)).booleanValue());
            int zza3 = zza(arrayList, "Troubleshooting", ((Boolean) zzbs.zzbL().zzd(zzmo.zzGs)).booleanValue());
            Builder builder = new Builder(this.mContext, zzbs.zzbB().zzhX());
            builder.setTitle("Select a Debug Mode").setItems((CharSequence[]) arrayList.toArray(new String[0]), new zzahr(this, zza, zza2, zza3));
            builder.create().show();
            return;
        }
        zzajc.zzaS("Can not create dialog without Activity Context");
    }

    public final void zzaO(String str) {
        this.zzwH = str;
    }

    public final void zzaP(String str) {
        this.zzZB = str;
    }

    public final void zzf(MotionEvent motionEvent) {
        int historySize = motionEvent.getHistorySize();
        for (int i = 0; i < historySize; i++) {
            zza(motionEvent.getActionMasked(), motionEvent.getHistoricalX(0, i), motionEvent.getHistoricalY(0, i));
        }
        zza(motionEvent.getActionMasked(), motionEvent.getX(), motionEvent.getY());
    }
}
