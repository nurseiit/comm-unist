package org.altbeacon.beacon.distance;

import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;

public class AndroidModel {
    private static final String TAG = "AndroidModel";
    String mBuildNumber;
    String mManufacturer;
    String mModel;
    String mVersion;

    public AndroidModel(String str, String str2, String str3, String str4) {
        this.mVersion = str;
        this.mBuildNumber = str2;
        this.mModel = str3;
        this.mManufacturer = str4;
    }

    public static AndroidModel forThisDevice() {
        return new AndroidModel(VERSION.RELEASE, Build.ID, Build.MODEL, Build.MANUFACTURER);
    }

    public String getVersion() {
        return this.mVersion;
    }

    public void setVersion(String str) {
        this.mVersion = str;
    }

    public String getBuildNumber() {
        return this.mBuildNumber;
    }

    public String getModel() {
        return this.mModel;
    }

    public String getManufacturer() {
        return this.mManufacturer;
    }

    public void setBuildNumber(String str) {
        this.mBuildNumber = str;
    }

    public void setModel(String str) {
        this.mModel = str;
    }

    public void setManufacturer(String str) {
        this.mManufacturer = str;
    }

    public int matchScore(AndroidModel androidModel) {
        int equals = this.mManufacturer.equals(androidModel.mManufacturer);
        if (equals == true && this.mModel.equals(androidModel.mModel)) {
            equals = true;
        }
        if (equals == true && this.mBuildNumber.equals(androidModel.mBuildNumber)) {
            equals = true;
        }
        if (equals == 3 && this.mVersion.equals(androidModel.mVersion)) {
            equals = 4;
        }
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Score is ");
        stringBuilder.append(equals);
        stringBuilder.append(" for ");
        stringBuilder.append(this);
        stringBuilder.append(" compared to ");
        stringBuilder.append(androidModel);
        Log.d(str, stringBuilder.toString());
        return equals;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("");
        stringBuilder.append(this.mManufacturer);
        stringBuilder.append(";");
        stringBuilder.append(this.mModel);
        stringBuilder.append(";");
        stringBuilder.append(this.mBuildNumber);
        stringBuilder.append(";");
        stringBuilder.append(this.mVersion);
        return stringBuilder.toString();
    }
}
