package org.altbeacon.beacon;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;

public class Region implements Parcelable {
    public static final Creator<Region> CREATOR = new Creator<Region>() {
        public Region createFromParcel(Parcel parcel) {
            return new Region(parcel);
        }

        public Region[] newArray(int i) {
            return new Region[i];
        }
    };
    private static final String TAG = "Region";
    protected List<Identifier> mIdentifiers;
    protected String mUniqueId;

    public int describeContents() {
        return 0;
    }

    public Region(String str, Identifier identifier, Identifier identifier2, Identifier identifier3) {
        this.mIdentifiers = new ArrayList(3);
        this.mIdentifiers.add(identifier);
        this.mIdentifiers.add(identifier2);
        this.mIdentifiers.add(identifier3);
        this.mUniqueId = str;
        if (str == null) {
            throw new NullPointerException("uniqueId may not be null");
        }
    }

    public Region(String str, ArrayList<Identifier> arrayList) {
        this.mIdentifiers = new ArrayList(3);
        this.mUniqueId = str;
        if (str == null) {
            throw new NullPointerException("uniqueId may not be null");
        }
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

    public Identifier getIdentifier(int i) {
        return (Identifier) this.mIdentifiers.get(i);
    }

    public String getUniqueId() {
        return this.mUniqueId;
    }

    public boolean matchesBeacon(Beacon beacon) {
        if (this.mIdentifiers.size() != beacon.mIdentifiers.size()) {
            return false;
        }
        int i = 0;
        while (i < this.mIdentifiers.size()) {
            if (this.mIdentifiers.get(i) != null && !((Identifier) this.mIdentifiers.get(i)).equals(beacon.mIdentifiers.get(i))) {
                return false;
            }
            i++;
        }
        return true;
    }

    public int hashCode() {
        return this.mUniqueId.hashCode();
    }

    public boolean equals(Object obj) {
        return obj instanceof Region ? ((Region) obj).mUniqueId.equals(this.mUniqueId) : false;
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
        parcel.writeString(this.mUniqueId);
        parcel.writeInt(this.mIdentifiers.size());
        for (Identifier identifier : this.mIdentifiers) {
            if (identifier != null) {
                parcel.writeString(identifier.toString());
            } else {
                parcel.writeString(null);
            }
        }
    }

    protected Region(Region region) {
        this.mIdentifiers = new ArrayList(region.mIdentifiers.size());
        for (int i = 0; i < region.mIdentifiers.size(); i++) {
            Identifier identifier = (Identifier) region.mIdentifiers.get(i);
            this.mIdentifiers.add(identifier != null ? new Identifier(identifier) : null);
        }
        this.mUniqueId = region.mUniqueId;
    }

    protected Region() {
    }

    protected Region(Parcel parcel) {
        this.mUniqueId = parcel.readString();
        int readInt = parcel.readInt();
        this.mIdentifiers = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            String readString = parcel.readString();
            if (readString == null) {
                this.mIdentifiers.add(null);
            } else {
                this.mIdentifiers.add(Identifier.parse(readString));
            }
        }
    }

    public Object clone() {
        return new Region(this);
    }
}
