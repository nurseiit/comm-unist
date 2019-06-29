package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.zzbs;
import java.util.ArrayList;

@zzzn
public final class zzgt {
    private final Object mLock = new Object();
    private final int zzxW;
    private final int zzxX;
    private final int zzxY;
    private final zzhg zzxZ;
    private final zzhp zzya;
    private ArrayList<String> zzyb = new ArrayList();
    private ArrayList<String> zzyc = new ArrayList();
    private ArrayList<zzhe> zzyd = new ArrayList();
    private int zzye = 0;
    private int zzyf = 0;
    private int zzyg = 0;
    private int zzyh;
    private String zzyi = "";
    private String zzyj = "";
    private String zzyk = "";

    public zzgt(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.zzxW = i;
        this.zzxX = i2;
        this.zzxY = i3;
        this.zzxZ = new zzhg(i4);
        this.zzya = new zzhp(i5, i6, i7);
    }

    private static String zza(ArrayList<String> arrayList, int i) {
        if (arrayList.isEmpty()) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList2.get(i2);
            i2++;
            stringBuffer.append((String) obj);
            stringBuffer.append(' ');
            if (stringBuffer.length() > 100) {
                break;
            }
        }
        stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        String stringBuffer2 = stringBuffer.toString();
        return stringBuffer2.length() < 100 ? stringBuffer2 : stringBuffer2.substring(0, 100);
    }

    private final void zzc(@Nullable String str, boolean z, float f, float f2, float f3, float f4) {
        if (str != null && str.length() >= this.zzxY) {
            synchronized (this.mLock) {
                this.zzyb.add(str);
                this.zzye += str.length();
                if (z) {
                    this.zzyc.add(str);
                    this.zzyd.add(new zzhe(f, f2, f3, f4, this.zzyc.size() - 1));
                }
            }
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgt)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzgt zzgt = (zzgt) obj;
        return zzgt.zzyi != null && zzgt.zzyi.equals(this.zzyi);
    }

    public final int getScore() {
        return this.zzyh;
    }

    public final int hashCode() {
        return this.zzyi.hashCode();
    }

    public final String toString() {
        int i = this.zzyf;
        int i2 = this.zzyh;
        int i3 = this.zzye;
        String valueOf = String.valueOf(zza(this.zzyb, 100));
        String valueOf2 = String.valueOf(zza(this.zzyc, 100));
        String str = this.zzyi;
        String str2 = this.zzyj;
        String str3 = this.zzyk;
        StringBuilder stringBuilder = new StringBuilder(((((String.valueOf(valueOf).length() + 165) + String.valueOf(valueOf2).length()) + String.valueOf(str).length()) + String.valueOf(str2).length()) + String.valueOf(str3).length());
        stringBuilder.append("ActivityContent fetchId: ");
        stringBuilder.append(i);
        stringBuilder.append(" score:");
        stringBuilder.append(i2);
        stringBuilder.append(" total_length:");
        stringBuilder.append(i3);
        stringBuilder.append("\n text: ");
        stringBuilder.append(valueOf);
        stringBuilder.append("\n viewableText");
        stringBuilder.append(valueOf2);
        stringBuilder.append("\n signture: ");
        stringBuilder.append(str);
        stringBuilder.append("\n viewableSignture: ");
        stringBuilder.append(str2);
        stringBuilder.append("\n viewableSignatureForVertical: ");
        stringBuilder.append(str3);
        return stringBuilder.toString();
    }

    public final void zza(String str, boolean z, float f, float f2, float f3, float f4) {
        zzc(str, z, f, f2, f3, f4);
        synchronized (this.mLock) {
            if (this.zzyg < 0) {
                zzajc.zzaC("ActivityContent: negative number of WebViews.");
            }
            zzcJ();
        }
    }

    public final void zzb(String str, boolean z, float f, float f2, float f3, float f4) {
        zzc(str, z, f, f2, f3, f4);
    }

    public final boolean zzcC() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzyg == 0;
        }
        return z;
    }

    public final String zzcD() {
        return this.zzyi;
    }

    public final String zzcE() {
        return this.zzyj;
    }

    public final String zzcF() {
        return this.zzyk;
    }

    public final void zzcG() {
        synchronized (this.mLock) {
            this.zzyh -= 100;
        }
    }

    public final void zzcH() {
        synchronized (this.mLock) {
            this.zzyg--;
        }
    }

    public final void zzcI() {
        synchronized (this.mLock) {
            this.zzyg++;
        }
    }

    public final void zzcJ() {
        synchronized (this.mLock) {
            int i = (this.zzye * this.zzxW) + (this.zzyf * this.zzxX);
            if (i > this.zzyh) {
                this.zzyh = i;
                if (((Boolean) zzbs.zzbL().zzd(zzmo.zzCZ)).booleanValue() && !zzbs.zzbD().zzhn()) {
                    this.zzyi = this.zzxZ.zza(this.zzyb);
                    this.zzyj = this.zzxZ.zza(this.zzyc);
                }
                if (((Boolean) zzbs.zzbL().zzd(zzmo.zzDb)).booleanValue() && !zzbs.zzbD().zzho()) {
                    this.zzyk = this.zzya.zza(this.zzyc, this.zzyd);
                }
            }
        }
    }

    /* Access modifiers changed, original: final */
    public final int zzcK() {
        return this.zzye;
    }

    public final void zzj(int i) {
        this.zzyf = i;
    }
}
