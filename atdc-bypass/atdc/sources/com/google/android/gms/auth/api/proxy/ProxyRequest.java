package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Patterns;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.zzbo;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

@KeepForSdkWithMembers
public class ProxyRequest extends zza {
    public static final Creator<ProxyRequest> CREATOR = new zza();
    public static final int HTTP_METHOD_DELETE = 3;
    public static final int HTTP_METHOD_GET = 0;
    public static final int HTTP_METHOD_HEAD = 4;
    public static final int HTTP_METHOD_OPTIONS = 5;
    public static final int HTTP_METHOD_PATCH = 7;
    public static final int HTTP_METHOD_POST = 1;
    public static final int HTTP_METHOD_PUT = 2;
    public static final int HTTP_METHOD_TRACE = 6;
    public static final int LAST_CODE = 7;
    public static final int VERSION_CODE = 2;
    public final byte[] body;
    public final int httpMethod;
    public final long timeoutMillis;
    public final String url;
    private int versionCode;
    private Bundle zzalF;

    @KeepForSdkWithMembers
    public static class Builder {
        private long zzWC = 3000;
        private String zzalG;
        private int zzalH = ProxyRequest.HTTP_METHOD_GET;
        private byte[] zzalI = null;
        private Bundle zzalJ = new Bundle();

        public Builder(String str) {
            zzbo.zzcF(str);
            if (Patterns.WEB_URL.matcher(str).matches()) {
                this.zzalG = str;
                return;
            }
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 51);
            stringBuilder.append("The supplied url [ ");
            stringBuilder.append(str);
            stringBuilder.append("] is not match Patterns.WEB_URL!");
            throw new IllegalArgumentException(stringBuilder.toString());
        }

        public ProxyRequest build() {
            if (this.zzalI == null) {
                this.zzalI = new byte[0];
            }
            return new ProxyRequest(2, this.zzalG, this.zzalH, this.zzWC, this.zzalI, this.zzalJ);
        }

        public Builder putHeader(String str, String str2) {
            zzbo.zzh(str, "Header name cannot be null or empty!");
            Bundle bundle = this.zzalJ;
            if (str2 == null) {
                str2 = "";
            }
            bundle.putString(str, str2);
            return this;
        }

        public Builder setBody(byte[] bArr) {
            this.zzalI = bArr;
            return this;
        }

        public Builder setHttpMethod(int i) {
            boolean z = i >= 0 && i <= ProxyRequest.LAST_CODE;
            zzbo.zzb(z, (Object) "Unrecognized http method code.");
            this.zzalH = i;
            return this;
        }

        public Builder setTimeoutMillis(long j) {
            zzbo.zzb(j >= 0, (Object) "The specified timeout must be non-negative.");
            this.zzWC = j;
            return this;
        }
    }

    ProxyRequest(int i, String str, int i2, long j, byte[] bArr, Bundle bundle) {
        this.versionCode = i;
        this.url = str;
        this.httpMethod = i2;
        this.timeoutMillis = j;
        this.body = bArr;
        this.zzalF = bundle;
    }

    public Map<String, String> getHeaderMap() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(this.zzalF.size());
        for (String str : this.zzalF.keySet()) {
            linkedHashMap.put(str, this.zzalF.getString(str));
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public String toString() {
        String str = this.url;
        int i = this.httpMethod;
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 42);
        stringBuilder.append("ProxyRequest[ url: ");
        stringBuilder.append(str);
        stringBuilder.append(", method: ");
        stringBuilder.append(i);
        stringBuilder.append(" ]");
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 1, this.url, false);
        zzd.zzc(parcel, 2, this.httpMethod);
        zzd.zza(parcel, 3, this.timeoutMillis);
        zzd.zza(parcel, 4, this.body, false);
        zzd.zza(parcel, 5, this.zzalF, false);
        zzd.zzc(parcel, 1000, this.versionCode);
        zzd.zzI(parcel, i);
    }
}
