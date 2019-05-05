package org.altbeacon.beacon;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.altbeacon.beacon.client.BeaconDataFactory;
import org.altbeacon.beacon.client.NullBeaconDataFactory;
import org.altbeacon.beacon.distance.DistanceCalculator;

public class Beacon implements Parcelable {
    public static final Creator<Beacon> CREATOR = new Creator<Beacon>() {
        public Beacon createFromParcel(Parcel parcel) {
            return new Beacon(parcel);
        }

        public Beacon[] newArray(int i) {
            return new Beacon[i];
        }
    };
    private static final String TAG = "Beacon";
    protected static BeaconDataFactory beaconDataFactory = new NullBeaconDataFactory();
    protected static DistanceCalculator sDistanceCalculator;
    protected int mBeaconTypeCode;
    protected String mBluetoothAddress;
    protected String mBluetoothName;
    protected List<Long> mDataFields;
    protected Double mDistance;
    protected List<Identifier> mIdentifiers;
    protected int mManufacturer;
    protected int mRssi;
    private Double mRunningAverageRssi;
    protected int mTxPower;

    public static class Builder {
        protected Beacon mBeacon = new Beacon();
        private Identifier mId1;
        private Identifier mId2;
        private Identifier mId3;

        public Beacon build() {
            if (this.mId1 != null) {
                this.mBeacon.mIdentifiers.add(this.mId1);
                if (this.mId2 != null) {
                    this.mBeacon.mIdentifiers.add(this.mId2);
                    if (this.mId3 != null) {
                        this.mBeacon.mIdentifiers.add(this.mId3);
                    }
                }
            }
            return this.mBeacon;
        }

        public Builder setIdentifiers(List<Identifier> list) {
            this.mId1 = null;
            this.mId2 = null;
            this.mId3 = null;
            this.mBeacon.mIdentifiers = list;
            return this;
        }

        public Builder setId1(String str) {
            this.mId1 = Identifier.parse(str);
            return this;
        }

        public Builder setId2(String str) {
            this.mId2 = Identifier.parse(str);
            return this;
        }

        public Builder setId3(String str) {
            this.mId3 = Identifier.parse(str);
            return this;
        }

        public Builder setRssi(int i) {
            this.mBeacon.mRssi = i;
            return this;
        }

        public Builder setTxPower(int i) {
            this.mBeacon.mTxPower = i;
            return this;
        }

        public Builder setBeaconTypeCode(int i) {
            this.mBeacon.mBeaconTypeCode = i;
            return this;
        }

        public Builder setBluetoothAddress(String str) {
            this.mBeacon.mBluetoothAddress = str;
            return this;
        }

        public Builder setDataFields(List<Long> list) {
            this.mBeacon.mDataFields = list;
            return this;
        }

        public Builder setManufacturer(int i) {
            this.mBeacon.mManufacturer = i;
            return this;
        }

        public Builder setBluetoothName(String str) {
            this.mBeacon.mBluetoothName = str;
            return this;
        }
    }

    public int describeContents() {
        return 0;
    }

    public static void setDistanceCalculator(DistanceCalculator distanceCalculator) {
        sDistanceCalculator = distanceCalculator;
    }

    public static DistanceCalculator getDistanceCalculator() {
        return sDistanceCalculator;
    }

    protected Beacon(Parcel parcel) {
        this.mRunningAverageRssi = null;
        int readInt = parcel.readInt();
        this.mIdentifiers = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            this.mIdentifiers.add(Identifier.parse(parcel.readString()));
        }
        this.mDistance = Double.valueOf(parcel.readDouble());
        this.mRssi = parcel.readInt();
        this.mTxPower = parcel.readInt();
        this.mBluetoothAddress = parcel.readString();
        this.mBeaconTypeCode = parcel.readInt();
        readInt = parcel.readInt();
        this.mDataFields = new ArrayList(readInt);
        for (int i2 = 0; i2 < readInt; i2++) {
            this.mDataFields.add(Long.valueOf(parcel.readLong()));
        }
        this.mManufacturer = parcel.readInt();
        this.mBluetoothName = parcel.readString();
    }

    protected Beacon(Beacon beacon) {
        this.mRunningAverageRssi = null;
        this.mIdentifiers = new ArrayList(beacon.mIdentifiers.size());
        this.mDataFields = new ArrayList(beacon.mDataFields.size());
        for (int i = 0; i < beacon.mIdentifiers.size(); i++) {
            this.mIdentifiers.add(new Identifier((Identifier) beacon.mIdentifiers.get(i)));
        }
        this.mDistance = beacon.mDistance;
        this.mRunningAverageRssi = beacon.mRunningAverageRssi;
        this.mRssi = beacon.mRssi;
        this.mTxPower = beacon.mTxPower;
        this.mBluetoothAddress = beacon.mBluetoothAddress;
        this.mBeaconTypeCode = beacon.getBeaconTypeCode();
        this.mBluetoothName = beacon.mBluetoothName;
    }

    protected Beacon() {
        this.mRunningAverageRssi = null;
        this.mIdentifiers = new ArrayList(1);
        this.mDataFields = new ArrayList(1);
    }

    public void setRunningAverageRssi(double d) {
        this.mRunningAverageRssi = Double.valueOf(d);
        this.mDistance = null;
    }

    public void setRssi(int i) {
        this.mRssi = i;
    }

    public int getManufacturer() {
        return this.mManufacturer;
    }

    public Identifier getIdentifier(int i) {
        return (Identifier) this.mIdentifiers.get(i);
    }

    public Identifier getId1() {
        return (Identifier) this.mIdentifiers.get(0);
    }

    public Identifier getId2() {
        return (Identifier) this.mIdentifiers.get(1);
    }

    public Identifier getId3() {
        return (Identifier) this.mIdentifiers.get(2);
    }

    public List<Long> getDataFields() {
        return Collections.unmodifiableList(this.mDataFields);
    }

    public List<Identifier> getIdentifiers() {
        return Collections.unmodifiableList(this.mIdentifiers);
    }

    public double getDistance() {
        if (this.mDistance == null) {
            double d = (double) this.mRssi;
            if (this.mRunningAverageRssi != null) {
                d = this.mRunningAverageRssi.doubleValue();
            } else {
                BeaconManager.logDebug(TAG, "Not using running average RSSI because it is null");
            }
            this.mDistance = calculateDistance(this.mTxPower, d);
        }
        return this.mDistance.doubleValue();
    }

    public int getRssi() {
        return this.mRssi;
    }

    public int getTxPower() {
        return this.mTxPower;
    }

    public int getBeaconTypeCode() {
        return this.mBeaconTypeCode;
    }

    public String getBluetoothAddress() {
        return this.mBluetoothAddress;
    }

    public String getBluetoothName() {
        return this.mBluetoothName;
    }

    public int hashCode() {
        StringBuilder stringBuilder = new StringBuilder();
        int i = 1;
        for (Identifier identifier : this.mIdentifiers) {
            stringBuilder.append("id");
            stringBuilder.append(i);
            stringBuilder.append(": ");
            stringBuilder.append(identifier.toString());
            stringBuilder.append(" ");
            i++;
        }
        return stringBuilder.toString().hashCode();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Beacon)) {
            return false;
        }
        Beacon beacon = (Beacon) obj;
        if (this.mIdentifiers.size() != beacon.mIdentifiers.size()) {
            return false;
        }
        for (int i = 0; i < this.mIdentifiers.size(); i++) {
            if (!((Identifier) this.mIdentifiers.get(i)).equals(beacon.mIdentifiers.get(i))) {
                return false;
            }
        }
        return true;
    }

    public void requestData(BeaconDataNotifier beaconDataNotifier) {
        beaconDataFactory.requestBeaconData(this, beaconDataNotifier);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        int i = 1;
        for (Identifier identifier : this.mIdentifiers) {
            String str;
            if (i > 1) {
                stringBuilder.append(" ");
            }
            stringBuilder.append("id");
            stringBuilder.append(i);
            stringBuilder.append(": ");
            if (identifier == null) {
                str = "null";
            } else {
                str = identifier.toString();
            }
            stringBuilder.append(str);
            i++;
        }
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mIdentifiers.size());
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("serializing identifiers of size ");
        stringBuilder.append(this.mIdentifiers.size());
        BeaconManager.logDebug(str, stringBuilder.toString());
        for (Identifier identifier : this.mIdentifiers) {
            String str2;
            if (identifier == null) {
                str2 = null;
            } else {
                str2 = identifier.toString();
            }
            parcel.writeString(str2);
        }
        parcel.writeDouble(getDistance());
        parcel.writeInt(this.mRssi);
        parcel.writeInt(this.mTxPower);
        parcel.writeString(this.mBluetoothAddress);
        parcel.writeInt(this.mBeaconTypeCode);
        parcel.writeInt(this.mDataFields.size());
        for (Long longValue : this.mDataFields) {
            parcel.writeLong(longValue.longValue());
        }
        parcel.writeInt(this.mManufacturer);
        parcel.writeString(this.mBluetoothName);
    }

    protected static Double calculateDistance(int i, double d) {
        if (getDistanceCalculator() != null) {
            return Double.valueOf(getDistanceCalculator().calculateDistance(i, d));
        }
        Log.e(TAG, "Distance calculator not set.  Distance will bet set to -1");
        return Double.valueOf(-1.0d);
    }
}
