package com.lotecs.attendcheck.domain;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class AttendInfo implements Parcelable {
    public static final Creator<AttendInfo> CREATOR = new Creator<AttendInfo>() {
        public AttendInfo createFromParcel(Parcel parcel) {
            return new AttendInfo(parcel);
        }

        public AttendInfo[] newArray(int i) {
            return new AttendInfo[i];
        }
    };
    private String cnt;
    private String content;
    private String days;
    private String idno;
    private String mac;
    private String name;
    private String psco;
    private String rmco;
    private String sjco;
    private String ssid;
    private String time;
    private int type;
    private String yyse;

    public int describeContents() {
        return 0;
    }

    public AttendInfo(Parcel parcel) {
        readFromParcel(parcel);
    }

    public String getYyse() {
        return this.yyse;
    }

    public void setYyse(String str) {
        this.yyse = str;
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

    public String getRmco() {
        return this.rmco;
    }

    public void setRmco(String str) {
        this.rmco = str;
    }

    public String getTime() {
        return this.time;
    }

    public void setTime(String str) {
        this.time = str;
    }

    public String getPsco() {
        return this.psco;
    }

    public void setPsco(String str) {
        this.psco = str;
    }

    public String getSjco() {
        return this.sjco;
    }

    public void setSjco(String str) {
        this.sjco = str;
    }

    public String getSsid() {
        return this.ssid;
    }

    public void setSsid(String str) {
        this.ssid = str;
    }

    public String getMac() {
        return this.mac;
    }

    public void setMac(String str) {
        this.mac = str;
    }

    public String getDays() {
        return this.days;
    }

    public void setDays(String str) {
        this.days = str;
    }

    public String getCnt() {
        return this.cnt;
    }

    public void setCnt(String str) {
        this.cnt = str;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int i) {
        this.type = i;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.yyse);
        parcel.writeString(this.idno);
        parcel.writeString(this.name);
        parcel.writeString(this.time);
        parcel.writeString(this.rmco);
        parcel.writeString(this.psco);
        parcel.writeString(this.sjco);
        parcel.writeString(this.ssid);
        parcel.writeString(this.mac);
        parcel.writeString(this.days);
        parcel.writeString(this.cnt);
        parcel.writeString(this.content);
        parcel.writeInt(this.type);
    }

    private void readFromParcel(Parcel parcel) {
        this.yyse = parcel.readString();
        this.idno = parcel.readString();
        this.name = parcel.readString();
        this.time = parcel.readString();
        this.rmco = parcel.readString();
        this.psco = parcel.readString();
        this.sjco = parcel.readString();
        this.ssid = parcel.readString();
        this.mac = parcel.readString();
        this.days = parcel.readString();
        this.cnt = parcel.readString();
        this.content = parcel.readString();
        this.type = parcel.readInt();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("AttendInfo{yyse='");
        stringBuilder.append(this.yyse);
        stringBuilder.append('\'');
        stringBuilder.append(", idno='");
        stringBuilder.append(this.idno);
        stringBuilder.append('\'');
        stringBuilder.append(", name='");
        stringBuilder.append(this.name);
        stringBuilder.append('\'');
        stringBuilder.append(", time='");
        stringBuilder.append(this.time);
        stringBuilder.append('\'');
        stringBuilder.append(", rmco='");
        stringBuilder.append(this.rmco);
        stringBuilder.append('\'');
        stringBuilder.append(", psco='");
        stringBuilder.append(this.psco);
        stringBuilder.append('\'');
        stringBuilder.append(", sjco='");
        stringBuilder.append(this.sjco);
        stringBuilder.append('\'');
        stringBuilder.append(", ssid='");
        stringBuilder.append(this.ssid);
        stringBuilder.append('\'');
        stringBuilder.append(", mac='");
        stringBuilder.append(this.mac);
        stringBuilder.append('\'');
        stringBuilder.append(", days='");
        stringBuilder.append(this.days);
        stringBuilder.append('\'');
        stringBuilder.append(", cnt='");
        stringBuilder.append(this.cnt);
        stringBuilder.append('\'');
        stringBuilder.append(", content='");
        stringBuilder.append(this.content);
        stringBuilder.append('\'');
        stringBuilder.append(", type=");
        stringBuilder.append(this.type);
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}
