package com.lotecs.attendcheck.domain;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class AppInfo implements Parcelable {
    public static final Creator<AppInfo> CREATOR = new Creator<AppInfo>() {
        public AppInfo createFromParcel(Parcel parcel) {
            return new AppInfo(parcel);
        }

        public AppInfo[] newArray(int i) {
            return new AppInfo[i];
        }
    };
    private int count;
    private String iddi;
    private String idno;
    private String name;
    private String pass;
    private String psnm;
    private int refresh_time;
    private String unnm;
    private String uuid;

    public int describeContents() {
        return 0;
    }

    public String getPass() {
        return this.pass;
    }

    public void setPass(String str) {
        this.pass = str;
    }

    public AppInfo(Parcel parcel) {
        readFromParcel(parcel);
    }

    public String getIdno() {
        return this.idno;
    }

    public void setIdno(String str) {
        this.idno = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getIddi() {
        return this.iddi;
    }

    public void setIddi(String str) {
        this.iddi = str;
    }

    public String getUnnm() {
        return this.unnm;
    }

    public void setUnnm(String str) {
        this.unnm = str;
    }

    public String getPsnm() {
        return this.psnm;
    }

    public void setPsnm(String str) {
        this.psnm = str;
    }

    public String getUuid() {
        return this.uuid;
    }

    public void setUuid(String str) {
        this.uuid = str;
    }

    public int getCount() {
        return this.count;
    }

    public void setCount(int i) {
        this.count = i;
    }

    public int getRefresh_time() {
        return this.refresh_time;
    }

    public void setRefresh_time(int i) {
        this.refresh_time = i;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.idno);
        parcel.writeString(this.name);
        parcel.writeString(this.iddi);
        parcel.writeString(this.unnm);
        parcel.writeString(this.pass);
        parcel.writeString(this.psnm);
        parcel.writeString(this.uuid);
        parcel.writeInt(this.count);
        parcel.writeInt(this.refresh_time);
    }

    private void readFromParcel(Parcel parcel) {
        this.idno = parcel.readString();
        this.name = parcel.readString();
        this.iddi = parcel.readString();
        this.unnm = parcel.readString();
        this.pass = parcel.readString();
        this.psnm = parcel.readString();
        this.uuid = parcel.readString();
        this.count = parcel.readInt();
        this.refresh_time = parcel.readInt();
    }
}
