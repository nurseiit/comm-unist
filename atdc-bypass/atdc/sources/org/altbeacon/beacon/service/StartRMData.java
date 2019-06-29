package org.altbeacon.beacon.service;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import org.altbeacon.beacon.Region;

public class StartRMData implements Parcelable {
    public static final Creator<StartRMData> CREATOR = new Creator<StartRMData>() {
        public StartRMData createFromParcel(Parcel parcel) {
            return new StartRMData(parcel, null);
        }

        public StartRMData[] newArray(int i) {
            return new StartRMData[i];
        }
    };
    private long betweenScanPeriod;
    private String callbackPackageName;
    private Region region;
    private long scanPeriod;

    public int describeContents() {
        return 0;
    }

    public StartRMData(Region region, String str) {
        this.region = region;
        this.callbackPackageName = str;
    }

    public StartRMData(long j, long j2) {
        this.scanPeriod = j;
        this.betweenScanPeriod = j2;
    }

    public StartRMData(Region region, String str, long j, long j2) {
        this.scanPeriod = j;
        this.betweenScanPeriod = j2;
        this.region = region;
        this.callbackPackageName = str;
    }

    public long getScanPeriod() {
        return this.scanPeriod;
    }

    public long getBetweenScanPeriod() {
        return this.betweenScanPeriod;
    }

    public Region getRegionData() {
        return this.region;
    }

    public String getCallbackPackageName() {
        return this.callbackPackageName;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.region, i);
        parcel.writeString(this.callbackPackageName);
        parcel.writeLong(this.scanPeriod);
        parcel.writeLong(this.betweenScanPeriod);
    }

    private StartRMData(Parcel parcel) {
        this.region = (Region) parcel.readParcelable(getClass().getClassLoader());
        this.callbackPackageName = parcel.readString();
        this.scanPeriod = parcel.readLong();
        this.betweenScanPeriod = parcel.readLong();
    }
}
