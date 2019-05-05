package com.lotecs.attendcheck.domain;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ProCheckInfo extends Attend implements Parcelable {
    public static final Creator<ProCheckInfo> CREATOR = new Creator<ProCheckInfo>() {
        public ProCheckInfo createFromParcel(Parcel parcel) {
            return new ProCheckInfo(parcel);
        }

        public ProCheckInfo[] newArray(int i) {
            return new ProCheckInfo[i];
        }
    };
    private String date;
    private String order;
    private String proname;
    private String pronum;
    private String week;

    public int describeContents() {
        return 0;
    }

    public ProCheckInfo(Parcel parcel) {
        readFromParcel(parcel);
    }

    public ProCheckInfo(String str, String str2, String str3, String str4, String str5) {
        this.week = str;
        this.date = str2;
        this.proname = str3;
        this.pronum = str4;
        this.order = str5;
    }

    public String getWeek() {
        return this.week;
    }

    public void setWeek(String str) {
        this.week = str;
    }

    public String getDate() {
        return this.date;
    }

    public void setDate(String str) {
        this.date = str;
    }

    public void setProname(String str) {
        this.proname = str;
    }

    public String getPronum() {
        return this.pronum;
    }

    public void setPronum(String str) {
        this.pronum = str;
    }

    public String getOrder() {
        return this.order;
    }

    public void setOrder(String str) {
        this.order = str;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.week);
        parcel.writeString(this.date);
        parcel.writeString(this.proname);
        parcel.writeString(this.pronum);
        parcel.writeString(this.order);
    }

    private void readFromParcel(Parcel parcel) {
        this.week = parcel.readString();
        this.date = parcel.readString();
        this.proname = parcel.readString();
        this.pronum = parcel.readString();
        this.order = parcel.readString();
    }
}
