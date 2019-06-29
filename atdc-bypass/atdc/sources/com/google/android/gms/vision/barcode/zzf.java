package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.vision.barcode.Barcode.Address;
import com.google.android.gms.vision.barcode.Barcode.ContactInfo;
import com.google.android.gms.vision.barcode.Barcode.Email;
import com.google.android.gms.vision.barcode.Barcode.PersonName;
import com.google.android.gms.vision.barcode.Barcode.Phone;

public final class zzf implements Creator<ContactInfo> {
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int zzd = zzb.zzd(parcel);
        PersonName personName = null;
        String str = personName;
        String str2 = str;
        Phone[] phoneArr = str2;
        Email[] emailArr = phoneArr;
        String[] strArr = emailArr;
        Address[] addressArr = strArr;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    personName = (PersonName) zzb.zza(parcel, readInt, PersonName.CREATOR);
                    break;
                case 3:
                    str = zzb.zzq(parcel, readInt);
                    break;
                case 4:
                    str2 = zzb.zzq(parcel, readInt);
                    break;
                case 5:
                    phoneArr = (Phone[]) zzb.zzb(parcel, readInt, Phone.CREATOR);
                    break;
                case 6:
                    emailArr = (Email[]) zzb.zzb(parcel, readInt, Email.CREATOR);
                    break;
                case 7:
                    strArr = zzb.zzA(parcel, readInt);
                    break;
                case 8:
                    addressArr = (Address[]) zzb.zzb(parcel, readInt, Address.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, readInt);
                    break;
            }
        }
        zzb.zzF(parcel, zzd);
        return new ContactInfo(personName, str, str2, phoneArr, emailArr, strArr, addressArr);
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new ContactInfo[i];
    }
}
