package com.google.android.gms.vision.barcode;

import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.vision.barcode.Barcode.CalendarEvent;
import com.google.android.gms.vision.barcode.Barcode.ContactInfo;
import com.google.android.gms.vision.barcode.Barcode.DriverLicense;
import com.google.android.gms.vision.barcode.Barcode.Email;
import com.google.android.gms.vision.barcode.Barcode.GeoPoint;
import com.google.android.gms.vision.barcode.Barcode.Phone;
import com.google.android.gms.vision.barcode.Barcode.Sms;
import com.google.android.gms.vision.barcode.Barcode.UrlBookmark;
import com.google.android.gms.vision.barcode.Barcode.WiFi;

public final class zzb implements Creator<Barcode> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        Parcel parcel2 = parcel;
        int zzd = com.google.android.gms.common.internal.safeparcel.zzb.zzd(parcel);
        String str = null;
        String str2 = str;
        Point[] pointArr = str2;
        Email email = pointArr;
        Phone phone = email;
        Sms sms = phone;
        WiFi wiFi = sms;
        UrlBookmark urlBookmark = wiFi;
        GeoPoint geoPoint = urlBookmark;
        CalendarEvent calendarEvent = geoPoint;
        ContactInfo contactInfo = calendarEvent;
        DriverLicense driverLicense = contactInfo;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel2, readInt);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 4:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel2, readInt);
                    break;
                case 5:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel2, readInt);
                    break;
                case 6:
                    pointArr = (Point[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel2, readInt, Point.CREATOR);
                    break;
                case 7:
                    email = (Email) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel2, readInt, Email.CREATOR);
                    break;
                case 8:
                    phone = (Phone) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel2, readInt, Phone.CREATOR);
                    break;
                case 9:
                    sms = (Sms) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel2, readInt, Sms.CREATOR);
                    break;
                case 10:
                    wiFi = (WiFi) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel2, readInt, WiFi.CREATOR);
                    break;
                case 11:
                    urlBookmark = (UrlBookmark) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel2, readInt, UrlBookmark.CREATOR);
                    break;
                case 12:
                    geoPoint = (GeoPoint) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel2, readInt, GeoPoint.CREATOR);
                    break;
                case 13:
                    calendarEvent = (CalendarEvent) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel2, readInt, CalendarEvent.CREATOR);
                    break;
                case 14:
                    contactInfo = (ContactInfo) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel2, readInt, ContactInfo.CREATOR);
                    break;
                case 15:
                    driverLicense = (DriverLicense) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel2, readInt, DriverLicense.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel2, readInt);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.zzb.zzF(parcel2, zzd);
        return new Barcode(i, str, str2, i2, pointArr, email, phone, sms, wiFi, urlBookmark, geoPoint, calendarEvent, contactInfo, driverLicense);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new Barcode[i];
    }
}
