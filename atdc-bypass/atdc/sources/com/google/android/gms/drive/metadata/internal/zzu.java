package com.google.android.gms.drive.metadata.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.UserMetadata;
import java.util.Arrays;
import java.util.Collections;

public final class zzu extends zzm<UserMetadata> {
    public zzu(String str, int i) {
        super(str, Arrays.asList(new String[]{zzB(str, "permissionId"), zzB(str, "displayName"), zzB(str, "picture"), zzB(str, "isAuthenticatedUser"), zzB(str, "emailAddress")}), Collections.emptyList(), 6000000);
    }

    private static String zzB(String str, String str2) {
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(str).length() + 1) + String.valueOf(str2).length());
        stringBuilder.append(str);
        stringBuilder.append(".");
        stringBuilder.append(str2);
        return stringBuilder.toString();
    }

    private final String zzcT(String str) {
        return zzB(getName(), str);
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean zzb(DataHolder dataHolder, int i, int i2) {
        return dataHolder.zzcv(zzcT("permissionId")) && !dataHolder.zzh(zzcT("permissionId"), i, i2);
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Object zzc(DataHolder dataHolder, int i, int i2) {
        String zzd = dataHolder.zzd(zzcT("permissionId"), i, i2);
        if (zzd == null) {
            return null;
        }
        String zzd2 = dataHolder.zzd(zzcT("displayName"), i, i2);
        String zzd3 = dataHolder.zzd(zzcT("picture"), i, i2);
        Boolean valueOf = Boolean.valueOf(dataHolder.zze(zzcT("isAuthenticatedUser"), i, i2));
        return new UserMetadata(zzd, zzd2, zzd3, valueOf.booleanValue(), dataHolder.zzd(zzcT("emailAddress"), i, i2));
    }
}
