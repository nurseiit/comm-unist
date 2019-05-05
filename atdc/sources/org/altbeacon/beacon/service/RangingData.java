package org.altbeacon.beacon.service;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.Collection;
import org.altbeacon.beacon.Beacon;
import org.altbeacon.beacon.BeaconManager;
import org.altbeacon.beacon.Region;

public class RangingData implements Parcelable {
    public static final Creator<RangingData> CREATOR = new Creator<RangingData>() {
        public RangingData createFromParcel(Parcel parcel) {
            return new RangingData(parcel, null);
        }

        public RangingData[] newArray(int i) {
            return new RangingData[i];
        }
    };
    private static final String TAG = "RangingData";
    private Collection<Beacon> beacons;
    private Region region;

    public int describeContents() {
        return 0;
    }

    public RangingData(Collection<Beacon> collection, Region region) {
        synchronized (collection) {
            this.beacons = collection;
        }
        this.region = region;
    }

    public Collection<Beacon> getBeacons() {
        return this.beacons;
    }

    public Region getRegion() {
        return this.region;
    }

    public void writeToParcel(Parcel parcel, int i) {
        BeaconManager.logDebug(TAG, "writing RangingData");
        parcel.writeParcelableArray((Parcelable[]) this.beacons.toArray(new Parcelable[0]), i);
        parcel.writeParcelable(this.region, i);
        BeaconManager.logDebug(TAG, "done writing RangingData");
    }

    private RangingData(Parcel parcel) {
        BeaconManager.logDebug(TAG, "parsing RangingData");
        Parcelable[] readParcelableArray = parcel.readParcelableArray(getClass().getClassLoader());
        this.beacons = new ArrayList(readParcelableArray.length);
        for (Parcelable parcelable : readParcelableArray) {
            this.beacons.add((Beacon) parcelable);
        }
        this.region = (Region) parcel.readParcelable(getClass().getClassLoader());
    }
}
