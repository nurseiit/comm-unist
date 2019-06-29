package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.internal.zzn;
import com.google.android.gms.auth.api.signin.internal.zzo;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api.ApiOptions.Optional;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GoogleSignInOptions extends zza implements Optional, ReflectedParcelable {
    public static final Creator<GoogleSignInOptions> CREATOR = new zzd();
    public static final GoogleSignInOptions DEFAULT_GAMES_SIGN_IN = new Builder().requestScopes(SCOPE_GAMES, new Scope[0]).build();
    public static final GoogleSignInOptions DEFAULT_SIGN_IN = new Builder().requestId().requestProfile().build();
    private static Scope SCOPE_GAMES = new Scope(Scopes.GAMES);
    private static Comparator<Scope> zzalU = new zzc();
    public static final Scope zzalV = new Scope(Scopes.PROFILE);
    public static final Scope zzalW = new Scope("email");
    public static final Scope zzalX = new Scope("openid");
    private int versionCode;
    private Account zzajb;
    private final ArrayList<Scope> zzalY;
    private final boolean zzalZ;
    private boolean zzalh;
    private String zzali;
    private final boolean zzama;
    private String zzamb;
    private ArrayList<zzn> zzamc;
    private Map<Integer, zzn> zzamd;

    public static final class Builder {
        private Account zzajb;
        private boolean zzalZ;
        private boolean zzalh;
        private String zzali;
        private boolean zzama;
        private String zzamb;
        private Set<Scope> zzame = new HashSet();
        private Map<Integer, zzn> zzamf = new HashMap();

        public Builder(@NonNull GoogleSignInOptions googleSignInOptions) {
            zzbo.zzu(googleSignInOptions);
            this.zzame = new HashSet(googleSignInOptions.zzalY);
            this.zzalZ = googleSignInOptions.zzalZ;
            this.zzama = googleSignInOptions.zzama;
            this.zzalh = googleSignInOptions.zzalh;
            this.zzali = googleSignInOptions.zzali;
            this.zzajb = googleSignInOptions.zzajb;
            this.zzamb = googleSignInOptions.zzamb;
            this.zzamf = GoogleSignInOptions.zzw(googleSignInOptions.zzamc);
        }

        private final String zzbR(String str) {
            zzbo.zzcF(str);
            boolean z = this.zzali == null || this.zzali.equals(str);
            zzbo.zzb(z, (Object) "two different server client ids provided");
            return str;
        }

        public final Builder addExtension(GoogleSignInOptionsExtension googleSignInOptionsExtension) {
            if (this.zzamf.containsKey(Integer.valueOf(1))) {
                throw new IllegalStateException("Only one extension per type may be added");
            }
            this.zzamf.put(Integer.valueOf(1), new zzn(googleSignInOptionsExtension));
            return this;
        }

        public final GoogleSignInOptions build() {
            if (this.zzalh && (this.zzajb == null || !this.zzame.isEmpty())) {
                requestId();
            }
            return new GoogleSignInOptions(3, new ArrayList(this.zzame), this.zzajb, this.zzalh, this.zzalZ, this.zzama, this.zzali, this.zzamb, this.zzamf, null);
        }

        public final Builder requestEmail() {
            this.zzame.add(GoogleSignInOptions.zzalW);
            return this;
        }

        public final Builder requestId() {
            this.zzame.add(GoogleSignInOptions.zzalX);
            return this;
        }

        public final Builder requestIdToken(String str) {
            this.zzalh = true;
            this.zzali = zzbR(str);
            return this;
        }

        public final Builder requestProfile() {
            this.zzame.add(GoogleSignInOptions.zzalV);
            return this;
        }

        public final Builder requestScopes(Scope scope, Scope... scopeArr) {
            this.zzame.add(scope);
            this.zzame.addAll(Arrays.asList(scopeArr));
            return this;
        }

        public final Builder requestServerAuthCode(String str) {
            return requestServerAuthCode(str, false);
        }

        public final Builder requestServerAuthCode(String str, boolean z) {
            this.zzalZ = true;
            this.zzali = zzbR(str);
            this.zzama = z;
            return this;
        }

        public final Builder setAccountName(String str) {
            this.zzajb = new Account(zzbo.zzcF(str), "com.google");
            return this;
        }

        public final Builder setHostedDomain(String str) {
            this.zzamb = zzbo.zzcF(str);
            return this;
        }
    }

    GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, ArrayList<zzn> arrayList2) {
        this(i, (ArrayList) arrayList, account, z, z2, z3, str, str2, zzw(arrayList2));
    }

    private GoogleSignInOptions(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map<Integer, zzn> map) {
        this.versionCode = i;
        this.zzalY = arrayList;
        this.zzajb = account;
        this.zzalh = z;
        this.zzalZ = z2;
        this.zzama = z3;
        this.zzali = str;
        this.zzamb = str2;
        this.zzamc = new ArrayList(map.values());
        this.zzamd = map;
    }

    /* synthetic */ GoogleSignInOptions(int i, ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map map, zzc zzc) {
        this(3, arrayList, account, z, z2, z3, str, str2, map);
    }

    @Nullable
    public static GoogleSignInOptions zzbQ(@Nullable String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("scopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        String optString = jSONObject.optString("accountName", null);
        return new GoogleSignInOptions(3, new ArrayList(hashSet), !TextUtils.isEmpty(optString) ? new Account(optString, "com.google") : null, jSONObject.getBoolean("idTokenRequested"), jSONObject.getBoolean("serverAuthRequested"), jSONObject.getBoolean("forceCodeForRefreshToken"), jSONObject.optString("serverClientId", null), jSONObject.optString("hostedDomain", null), new HashMap());
    }

    private final JSONObject zzmz() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.zzalY, zzalU);
            ArrayList arrayList = this.zzalY;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                jSONArray.put(((Scope) obj).zzpp());
            }
            jSONObject.put("scopes", jSONArray);
            if (this.zzajb != null) {
                jSONObject.put("accountName", this.zzajb.name);
            }
            jSONObject.put("idTokenRequested", this.zzalh);
            jSONObject.put("forceCodeForRefreshToken", this.zzama);
            jSONObject.put("serverAuthRequested", this.zzalZ);
            if (!TextUtils.isEmpty(this.zzali)) {
                jSONObject.put("serverClientId", this.zzali);
            }
            if (!TextUtils.isEmpty(this.zzamb)) {
                jSONObject.put("hostedDomain", this.zzamb);
            }
            return jSONObject;
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    private static Map<Integer, zzn> zzw(@Nullable List<zzn> list) {
        HashMap hashMap = new HashMap();
        if (list == null) {
            return hashMap;
        }
        for (zzn zzn : list) {
            hashMap.put(Integer.valueOf(zzn.getType()), zzn);
        }
        return hashMap;
    }

    /* JADX WARNING: Missing block: B:20:0x0045, code skipped:
            if (r3.zzajb.equals(r4.zzajb) != false) goto L_0x0047;
     */
    /* JADX WARNING: Missing block: B:27:0x0060, code skipped:
            if (r3.zzali.equals(r4.zzali) != false) goto L_0x0062;
     */
    public boolean equals(java.lang.Object r4) {
        /*
        r3 = this;
        r0 = 0;
        if (r4 != 0) goto L_0x0004;
    L_0x0003:
        return r0;
    L_0x0004:
        r4 = (com.google.android.gms.auth.api.signin.GoogleSignInOptions) r4;	 Catch:{ ClassCastException -> 0x0076 }
        r1 = r3.zzamc;	 Catch:{ ClassCastException -> 0x0076 }
        r1 = r1.size();	 Catch:{ ClassCastException -> 0x0076 }
        if (r1 > 0) goto L_0x0076;
    L_0x000e:
        r1 = r4.zzamc;	 Catch:{ ClassCastException -> 0x0076 }
        r1 = r1.size();	 Catch:{ ClassCastException -> 0x0076 }
        if (r1 <= 0) goto L_0x0017;
    L_0x0016:
        return r0;
    L_0x0017:
        r1 = r3.zzalY;	 Catch:{ ClassCastException -> 0x0076 }
        r1 = r1.size();	 Catch:{ ClassCastException -> 0x0076 }
        r2 = r4.zzmA();	 Catch:{ ClassCastException -> 0x0076 }
        r2 = r2.size();	 Catch:{ ClassCastException -> 0x0076 }
        if (r1 != r2) goto L_0x0076;
    L_0x0027:
        r1 = r3.zzalY;	 Catch:{ ClassCastException -> 0x0076 }
        r2 = r4.zzmA();	 Catch:{ ClassCastException -> 0x0076 }
        r1 = r1.containsAll(r2);	 Catch:{ ClassCastException -> 0x0076 }
        if (r1 != 0) goto L_0x0034;
    L_0x0033:
        return r0;
    L_0x0034:
        r1 = r3.zzajb;	 Catch:{ ClassCastException -> 0x0076 }
        if (r1 != 0) goto L_0x003d;
    L_0x0038:
        r1 = r4.zzajb;	 Catch:{ ClassCastException -> 0x0076 }
        if (r1 != 0) goto L_0x0076;
    L_0x003c:
        goto L_0x0047;
    L_0x003d:
        r1 = r3.zzajb;	 Catch:{ ClassCastException -> 0x0076 }
        r2 = r4.zzajb;	 Catch:{ ClassCastException -> 0x0076 }
        r1 = r1.equals(r2);	 Catch:{ ClassCastException -> 0x0076 }
        if (r1 == 0) goto L_0x0076;
    L_0x0047:
        r1 = r3.zzali;	 Catch:{ ClassCastException -> 0x0076 }
        r1 = android.text.TextUtils.isEmpty(r1);	 Catch:{ ClassCastException -> 0x0076 }
        if (r1 == 0) goto L_0x0058;
    L_0x004f:
        r1 = r4.zzali;	 Catch:{ ClassCastException -> 0x0076 }
        r1 = android.text.TextUtils.isEmpty(r1);	 Catch:{ ClassCastException -> 0x0076 }
        if (r1 == 0) goto L_0x0076;
    L_0x0057:
        goto L_0x0062;
    L_0x0058:
        r1 = r3.zzali;	 Catch:{ ClassCastException -> 0x0076 }
        r2 = r4.zzali;	 Catch:{ ClassCastException -> 0x0076 }
        r1 = r1.equals(r2);	 Catch:{ ClassCastException -> 0x0076 }
        if (r1 == 0) goto L_0x0076;
    L_0x0062:
        r1 = r3.zzama;	 Catch:{ ClassCastException -> 0x0076 }
        r2 = r4.zzama;	 Catch:{ ClassCastException -> 0x0076 }
        if (r1 != r2) goto L_0x0076;
    L_0x0068:
        r1 = r3.zzalh;	 Catch:{ ClassCastException -> 0x0076 }
        r2 = r4.zzalh;	 Catch:{ ClassCastException -> 0x0076 }
        if (r1 != r2) goto L_0x0076;
    L_0x006e:
        r1 = r3.zzalZ;	 Catch:{ ClassCastException -> 0x0076 }
        r4 = r4.zzalZ;	 Catch:{ ClassCastException -> 0x0076 }
        if (r1 != r4) goto L_0x0076;
    L_0x0074:
        r4 = 1;
        return r4;
    L_0x0076:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.GoogleSignInOptions.equals(java.lang.Object):boolean");
    }

    public final Account getAccount() {
        return this.zzajb;
    }

    public Scope[] getScopeArray() {
        return (Scope[]) this.zzalY.toArray(new Scope[this.zzalY.size()]);
    }

    public final String getServerClientId() {
        return this.zzali;
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.zzalY;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            arrayList.add(((Scope) obj).zzpp());
        }
        Collections.sort(arrayList);
        return new zzo().zzo(arrayList).zzo(this.zzajb).zzo(this.zzali).zzP(this.zzama).zzP(this.zzalh).zzP(this.zzalZ).zzmJ();
    }

    public final boolean isIdTokenRequested() {
        return this.zzalh;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.versionCode);
        zzd.zzc(parcel, 2, zzmA(), false);
        zzd.zza(parcel, 3, this.zzajb, i, false);
        zzd.zza(parcel, 4, this.zzalh);
        zzd.zza(parcel, 5, this.zzalZ);
        zzd.zza(parcel, 6, this.zzama);
        zzd.zza(parcel, 7, this.zzali, false);
        zzd.zza(parcel, 8, this.zzamb, false);
        zzd.zzc(parcel, 9, this.zzamc, false);
        zzd.zzI(parcel, zze);
    }

    public final ArrayList<Scope> zzmA() {
        return new ArrayList(this.zzalY);
    }

    public final boolean zzmB() {
        return this.zzalZ;
    }

    public final String zzmC() {
        return zzmz().toString();
    }
}
