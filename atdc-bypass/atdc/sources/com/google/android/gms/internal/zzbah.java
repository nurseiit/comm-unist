package com.google.android.gms.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.util.Log;
import com.bumptech.glide.load.Key;
import com.google.android.gms.common.internal.zzbo;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

public final class zzbah implements zzazq {
    private static final Charset UTF_8 = Charset.forName(Key.STRING_CHARSET_NAME);
    static Boolean zzazO;
    private zzbai zzazP;

    public zzbah(Context context) {
        this(new zzbai(context));
    }

    private zzbah(zzbai zzbai) {
        this.zzazP = (zzbai) zzbo.zzu(zzbai);
    }

    private static zzbaj zzcr(String str) {
        if (str == null) {
            return null;
        }
        String str2 = "";
        int indexOf = str.indexOf(44);
        int i = 0;
        if (indexOf >= 0) {
            str2 = str.substring(0, indexOf);
            i = indexOf + 1;
        }
        String str3 = str2;
        int indexOf2 = str.indexOf(47, i);
        String str4;
        if (indexOf2 <= 0) {
            str2 = "LogSamplerImpl";
            str4 = "Failed to parse the rule: ";
            str = String.valueOf(str);
            Log.e(str2, str.length() != 0 ? str4.concat(str) : new String(str4));
            return null;
        }
        try {
            long parseLong = Long.parseLong(str.substring(i, indexOf2));
            long parseLong2 = Long.parseLong(str.substring(indexOf2 + 1));
            if (parseLong >= 0 && parseLong2 >= 0) {
                return new zzbaj(str3, parseLong, parseLong2);
            }
            StringBuilder stringBuilder = new StringBuilder(72);
            stringBuilder.append("negative values not supported: ");
            stringBuilder.append(parseLong);
            stringBuilder.append("/");
            stringBuilder.append(parseLong2);
            Log.e("LogSamplerImpl", stringBuilder.toString());
            return null;
        } catch (NumberFormatException e) {
            str4 = "LogSamplerImpl";
            String str5 = "parseLong() failed while parsing: ";
            str = String.valueOf(str);
            Log.e(str4, str.length() != 0 ? str5.concat(str) : new String(str5), e);
            return null;
        }
    }

    public final boolean zzg(String str, int i) {
        String str2 = null;
        Object valueOf = (str == null || str.isEmpty()) ? i >= 0 ? String.valueOf(i) : null : str;
        if (valueOf == null) {
            return true;
        }
        String valueOf2;
        zzbai zzbai = this.zzazP;
        long j = zzbai.zzazQ == null ? 0 : hi.getLong(zzbai.zzazQ, "android_id", 0);
        zzbai zzbai2 = this.zzazP;
        if (zzbai2.zzazQ != null) {
            ContentResolver contentResolver = zzbai2.zzazQ;
            String valueOf3 = String.valueOf("gms:playlog:service:sampling_");
            valueOf2 = String.valueOf(valueOf);
            str2 = hi.zza(contentResolver, valueOf2.length() != 0 ? valueOf3.concat(valueOf2) : new String(valueOf3), null);
        }
        zzbaj zzcr = zzcr(str2);
        if (zzcr == null) {
            return true;
        }
        byte[] array;
        valueOf2 = zzcr.zzazR;
        if (valueOf2 == null || valueOf2.isEmpty()) {
            array = ByteBuffer.allocate(8).putLong(j).array();
        } else {
            array = valueOf2.getBytes(UTF_8);
            ByteBuffer allocate = ByteBuffer.allocate(array.length + 8);
            allocate.put(array);
            allocate.putLong(j);
            array = allocate.array();
        }
        j = zzbac.zzf(array);
        long j2 = zzcr.zzazS;
        long j3 = zzcr.zzazT;
        if (j2 < 0 || j3 < 0) {
            StringBuilder stringBuilder = new StringBuilder(72);
            stringBuilder.append("negative values not supported: ");
            stringBuilder.append(j2);
            stringBuilder.append("/");
            stringBuilder.append(j3);
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        if (j3 > 0) {
            if (j < 0) {
                j = ((Long.MAX_VALUE % j3) + 1) + ((j & Long.MAX_VALUE) % j3);
            }
            if (j % j3 < j2) {
                return true;
            }
        }
        return false;
    }
}
