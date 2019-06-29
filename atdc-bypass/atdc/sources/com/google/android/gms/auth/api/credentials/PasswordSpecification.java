package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.support.v4.media.TransportMediator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zzd;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.TreeSet;

public final class PasswordSpecification extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Creator<PasswordSpecification> CREATOR = new zzi();
    public static final PasswordSpecification zzalo = new zza().zzh(12, 16).zzbM("abcdefghijkmnopqrstxyzABCDEFGHJKLMNPQRSTXY3456789").zze("abcdefghijkmnopqrstxyz", 1).zze("ABCDEFGHJKLMNPQRSTXY", 1).zze("3456789", 1).zzmt();
    private static PasswordSpecification zzalp = new zza().zzh(12, 16).zzbM("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890").zze("abcdefghijklmnopqrstuvwxyz", 1).zze("ABCDEFGHIJKLMNOPQRSTUVWXYZ", 1).zze("1234567890", 1).zzmt();
    private final Random zzAO;
    private int zzaku;
    private String zzalq;
    private List<String> zzalr;
    private List<Integer> zzals;
    private int zzalt;
    private int zzalu;
    private final int[] zzalv;

    public static class zza {
        private final List<String> zzalr = new ArrayList();
        private final List<Integer> zzals = new ArrayList();
        private int zzalt = 12;
        private int zzalu = 16;
        private final TreeSet<Character> zzalw = new TreeSet();

        private static TreeSet<Character> zzq(String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                throw new zzb(String.valueOf(str2).concat(" cannot be null or empty"));
            }
            TreeSet treeSet = new TreeSet();
            for (char c : str.toCharArray()) {
                if (PasswordSpecification.zzc(c, 32, TransportMediator.KEYCODE_MEDIA_PLAY)) {
                    throw new zzb(String.valueOf(str2).concat(" must only contain ASCII printable characters"));
                }
                treeSet.add(Character.valueOf(c));
            }
            return treeSet;
        }

        public final zza zzbM(@NonNull String str) {
            this.zzalw.addAll(zzq(str, "allowedChars"));
            return this;
        }

        public final zza zze(@NonNull String str, int i) {
            this.zzalr.add(PasswordSpecification.zzb(zzq(str, "requiredChars")));
            this.zzals.add(Integer.valueOf(1));
            return this;
        }

        public final zza zzh(int i, int i2) {
            this.zzalt = 12;
            this.zzalu = 16;
            return this;
        }

        public final PasswordSpecification zzmt() {
            if (this.zzalw.isEmpty()) {
                throw new zzb("no allowed characters specified");
            }
            int i = 0;
            for (Integer intValue : this.zzals) {
                i += intValue.intValue();
            }
            if (i > this.zzalu) {
                throw new zzb("required character count cannot be greater than the max password size");
            }
            boolean[] zArr = new boolean[95];
            for (String toCharArray : this.zzalr) {
                for (char c : toCharArray.toCharArray()) {
                    int i2 = c - 32;
                    if (zArr[i2]) {
                        StringBuilder stringBuilder = new StringBuilder(58);
                        stringBuilder.append("character ");
                        stringBuilder.append(c);
                        stringBuilder.append(" occurs in more than one required character set");
                        throw new zzb(stringBuilder.toString());
                    }
                    zArr[i2] = true;
                }
            }
            return new PasswordSpecification(1, PasswordSpecification.zzb(this.zzalw), this.zzalr, this.zzals, this.zzalt, this.zzalu);
        }
    }

    public static class zzb extends Error {
        public zzb(String str) {
            super(str);
        }
    }

    PasswordSpecification(int i, String str, List<String> list, List<Integer> list2, int i2, int i3) {
        this.zzaku = i;
        this.zzalq = str;
        this.zzalr = Collections.unmodifiableList(list);
        this.zzals = Collections.unmodifiableList(list2);
        this.zzalt = i2;
        this.zzalu = i3;
        int[] iArr = new int[95];
        Arrays.fill(iArr, -1);
        int i4 = 0;
        for (String toCharArray : this.zzalr) {
            for (char c : toCharArray.toCharArray()) {
                iArr[c - 32] = i4;
            }
            i4++;
        }
        this.zzalv = iArr;
        this.zzAO = new SecureRandom();
    }

    private static String zzb(Collection<Character> collection) {
        char[] cArr = new char[collection.size()];
        int i = 0;
        for (Character charValue : collection) {
            int i2 = i + 1;
            cArr[i] = charValue.charValue();
            i = i2;
        }
        return new String(cArr);
    }

    private static boolean zzc(int i, int i2, int i3) {
        return i < 32 || i > TransportMediator.KEYCODE_MEDIA_PLAY;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.zzalq, false);
        zzd.zzb(parcel, 2, this.zzalr, false);
        zzd.zza(parcel, 3, this.zzals, false);
        zzd.zzc(parcel, 4, this.zzalt);
        zzd.zzc(parcel, 5, this.zzalu);
        zzd.zzc(parcel, 1000, this.zzaku);
        zzd.zzI(parcel, i);
    }
}
