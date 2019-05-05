package com.google.android.gms.cast;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.internal.zzaye;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class CastDevice extends zza implements ReflectedParcelable {
    public static final int CAPABILITY_AUDIO_IN = 8;
    public static final int CAPABILITY_AUDIO_OUT = 4;
    public static final int CAPABILITY_MULTIZONE_GROUP = 32;
    public static final int CAPABILITY_VIDEO_IN = 2;
    public static final int CAPABILITY_VIDEO_OUT = 1;
    public static final Creator<CastDevice> CREATOR = new zzn();
    private int zzLe;
    private String zzapa;
    private String zzapb;
    private Inet4Address zzapc;
    private String zzapd;
    private String zzape;
    private String zzapf;
    private int zzapg;
    private List<WebImage> zzaph;
    private int zzapi;
    private String zzapj;
    private String zzapk;
    private int zzapl;

    CastDevice(String str, String str2, String str3, String str4, String str5, int i, List<WebImage> list, int i2, int i3, String str6, String str7, int i4) {
        List list2;
        this.zzapa = zzbX(str);
        this.zzapb = zzbX(str2);
        if (!TextUtils.isEmpty(this.zzapb)) {
            try {
                InetAddress byName = InetAddress.getByName(this.zzapb);
                if (byName instanceof Inet4Address) {
                    this.zzapc = (Inet4Address) byName;
                }
            } catch (UnknownHostException e) {
                String str8 = this.zzapb;
                str = String.valueOf(e.getMessage());
                StringBuilder stringBuilder = new StringBuilder((String.valueOf(str8).length() + 48) + String.valueOf(str).length());
                stringBuilder.append("Unable to convert host address (");
                stringBuilder.append(str8);
                stringBuilder.append(") to ipaddress: ");
                stringBuilder.append(str);
                Log.i("CastDevice", stringBuilder.toString());
            }
        }
        this.zzapd = zzbX(str3);
        this.zzape = zzbX(str4);
        this.zzapf = zzbX(str5);
        this.zzapg = i;
        if (list2 == null) {
            list2 = new ArrayList();
        }
        this.zzaph = list2;
        this.zzapi = i2;
        this.zzLe = i3;
        this.zzapj = zzbX(str6);
        this.zzapk = str7;
        this.zzapl = i4;
    }

    public static CastDevice getFromBundle(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        bundle.setClassLoader(CastDevice.class.getClassLoader());
        return (CastDevice) bundle.getParcelable("com.google.android.gms.cast.EXTRA_CAST_DEVICE");
    }

    private static String zzbX(String str) {
        return str == null ? "" : str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CastDevice)) {
            return false;
        }
        CastDevice castDevice = (CastDevice) obj;
        return this.zzapa == null ? castDevice.zzapa == null : zzaye.zza(this.zzapa, castDevice.zzapa) && zzaye.zza(this.zzapc, castDevice.zzapc) && zzaye.zza(this.zzape, castDevice.zzape) && zzaye.zza(this.zzapd, castDevice.zzapd) && zzaye.zza(this.zzapf, castDevice.zzapf) && this.zzapg == castDevice.zzapg && zzaye.zza(this.zzaph, castDevice.zzaph) && this.zzapi == castDevice.zzapi && this.zzLe == castDevice.zzLe && zzaye.zza(this.zzapj, castDevice.zzapj) && zzaye.zza(Integer.valueOf(this.zzapl), Integer.valueOf(castDevice.zzapl));
    }

    public String getDeviceId() {
        return this.zzapa.startsWith("__cast_nearby__") ? this.zzapa.substring(16) : this.zzapa;
    }

    public String getDeviceVersion() {
        return this.zzapf;
    }

    public String getFriendlyName() {
        return this.zzapd;
    }

    public WebImage getIcon(int i, int i2) {
        WebImage webImage = null;
        if (this.zzaph.isEmpty()) {
            return null;
        }
        if (i <= 0 || i2 <= 0) {
            return (WebImage) this.zzaph.get(0);
        }
        WebImage webImage2 = null;
        for (WebImage webImage3 : this.zzaph) {
            int width = webImage3.getWidth();
            int height = webImage3.getHeight();
            if (width < i || height < i2) {
                if (width < i && height < i2) {
                    if (webImage2 == null || (webImage2.getWidth() < width && webImage2.getHeight() < height)) {
                        webImage2 = webImage3;
                    }
                }
            } else if (webImage == null || (webImage.getWidth() > width && webImage.getHeight() > height)) {
                webImage = webImage3;
            }
        }
        return webImage != null ? webImage : webImage2 != null ? webImage2 : (WebImage) this.zzaph.get(0);
    }

    public List<WebImage> getIcons() {
        return Collections.unmodifiableList(this.zzaph);
    }

    public Inet4Address getIpAddress() {
        return this.zzapc;
    }

    public String getModelName() {
        return this.zzape;
    }

    public int getServicePort() {
        return this.zzapg;
    }

    public boolean hasCapabilities(int[] iArr) {
        if (iArr == null) {
            return false;
        }
        for (int hasCapability : iArr) {
            if (!hasCapability(hasCapability)) {
                return false;
            }
        }
        return true;
    }

    public boolean hasCapability(int i) {
        return (this.zzapi & i) == i;
    }

    public boolean hasIcons() {
        return !this.zzaph.isEmpty();
    }

    public int hashCode() {
        return this.zzapa == null ? 0 : this.zzapa.hashCode();
    }

    public boolean isOnLocalNetwork() {
        return !this.zzapa.startsWith("__cast_nearby__");
    }

    public boolean isSameDevice(CastDevice castDevice) {
        return castDevice == null ? false : this.zzapa == null ? castDevice.zzapa == null : zzaye.zza(this.zzapa, castDevice.zzapa);
    }

    public void putInBundle(Bundle bundle) {
        if (bundle != null) {
            bundle.putParcelable("com.google.android.gms.cast.EXTRA_CAST_DEVICE", this);
        }
    }

    public String toString() {
        return String.format("\"%s\" (%s)", new Object[]{this.zzapd, this.zzapa});
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zza(parcel, 2, this.zzapa, false);
        zzd.zza(parcel, 3, this.zzapb, false);
        zzd.zza(parcel, 4, getFriendlyName(), false);
        zzd.zza(parcel, 5, getModelName(), false);
        zzd.zza(parcel, 6, getDeviceVersion(), false);
        zzd.zzc(parcel, 7, getServicePort());
        zzd.zzc(parcel, 8, getIcons(), false);
        zzd.zzc(parcel, 9, this.zzapi);
        zzd.zzc(parcel, 10, this.zzLe);
        zzd.zza(parcel, 11, this.zzapj, false);
        zzd.zza(parcel, 12, this.zzapk, false);
        zzd.zzc(parcel, 13, this.zzapl);
        zzd.zzI(parcel, i);
    }
}
