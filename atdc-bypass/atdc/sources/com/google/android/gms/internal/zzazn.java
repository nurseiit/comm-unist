package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzf;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzi;
import java.util.ArrayList;

public final class zzazn {
    @Deprecated
    public static final Api<NoOptions> API = new Api("ClearcutLogger.API", zzajS, zzajR);
    private static zzf<zzbab> zzajR = new zzf();
    private static zza<zzbab, NoOptions> zzajS = new zzazo();
    private static final zzcqn[] zzazg = new zzcqn[0];
    private static final String[] zzazh = new String[0];
    private static final byte[][] zzazi = new byte[0][];
    private final String packageName;
    private final int zzazj;
    private String zzazk;
    private int zzazl;
    private String zzazm;
    private String zzazn;
    private final boolean zzazo;
    private int zzazp;
    private final zzazt zzazq;
    private final zze zzazr;
    private zzazs zzazs;
    private final zzazq zzazt;

    public zzazn(Context context, int i, String str, String str2, String str3, boolean z, zzazt zzazt, zze zze, zzazs zzazs, zzazq zzazq) {
        this.zzazl = -1;
        this.zzazp = 0;
        this.packageName = context.getPackageName();
        this.zzazj = zzap(context);
        this.zzazl = -1;
        this.zzazk = str;
        this.zzazm = null;
        this.zzazn = null;
        this.zzazo = z;
        this.zzazq = zzazt;
        this.zzazr = zze;
        this.zzazs = new zzazs();
        this.zzazp = 0;
        this.zzazt = zzazq;
        if (z) {
            zzbo.zzb(true, (Object) "can't be anonymous with an upload account");
        }
    }

    public zzazn(Context context, String str, String str2) {
        this(context, -1, str, null, null, false, zzazw.zzaq(context), zzi.zzrY(), null, new zzbah(context));
    }

    private static int zzap(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (NameNotFoundException unused) {
            Log.wtf("ClearcutLogger", "This can't happen.");
            return 0;
        }
    }

    private static int[] zzb(ArrayList<Integer> arrayList) {
        if (arrayList == null) {
            return null;
        }
        int[] iArr = new int[arrayList.size()];
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            int i3 = i2 + 1;
            iArr[i2] = ((Integer) obj).intValue();
            i2 = i3;
        }
        return iArr;
    }

    public final zzazp zze(byte[] bArr) {
        return new zzazp(this, bArr, null);
    }
}
