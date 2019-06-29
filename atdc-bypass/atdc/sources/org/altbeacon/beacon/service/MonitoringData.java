package org.altbeacon.beacon.service;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import org.altbeacon.beacon.Region;

public class MonitoringData implements Parcelable {
    public static final Creator<MonitoringData> CREATOR = new Creator<MonitoringData>() {
        public MonitoringData createFromParcel(Parcel parcel) {
            return new MonitoringData(parcel, null);
        }

        public MonitoringData[] newArray(int i) {
            return new MonitoringData[i];
        }
    };
    private static final String TAG = "MonitoringData";
    private boolean inside;
    private Region region;

    public int describeContents() {
        return 0;
    }

    public MonitoringData(boolean z, Region region) {
        this.inside = z;
        this.region = region;
    }

    public boolean isInside() {
        return this.inside;
    }

    public Region getRegion() {
        return this.region;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte((byte) this.inside);
        parcel.writeParcelable(this.region, i);
    }

    private MonitoringData(Parcel parcel) {
        boolean z = true;
        if (parcel.readByte() != (byte) 1) {
            z = false;
        }
        this.inside = z;
        this.region = (Region) parcel.readParcelable(getClass().getClassLoader());
    }
}
