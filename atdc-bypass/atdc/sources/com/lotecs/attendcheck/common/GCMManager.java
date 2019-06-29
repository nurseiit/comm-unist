package com.lotecs.attendcheck.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.AsyncTask;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import java.io.IOException;

public class GCMManager {
    private static final int PLAY_SERVICES_RESOLUTION_REQUEST = 9000;
    private static final String PROPERTY_APP_VERSION = "appVersion";
    public static final String PROPERTY_REG_ID = "registration_id";
    private static final String TAG = "GCMManager";
    private final Context context;
    private GoogleCloudMessaging gcm;
    private OnRegistrationIDCallback onRegistrationIDCallback;
    private String regId;
    private final String senderId;

    public interface OnRegistrationIDCallback {
        void registrationFailed(String str);

        void registrationSuccess(String str);
    }

    public GCMManager(Context context, String str, OnRegistrationIDCallback onRegistrationIDCallback) {
        this.context = context;
        this.senderId = str;
        this.onRegistrationIDCallback = onRegistrationIDCallback;
        setup();
    }

    private void setup() {
        this.gcm = GoogleCloudMessaging.getInstance(this.context);
        this.regId = getRegistrationId();
        if (checkPlayServices()) {
            registerInBackground();
        } else {
            this.onRegistrationIDCallback.registrationFailed("Google Play Service is not available.");
        }
    }

    public boolean checkPlayServices() {
        int isGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.context);
        if (isGooglePlayServicesAvailable == 0) {
            return true;
        }
        try {
            if (GooglePlayServicesUtil.isUserRecoverableError(isGooglePlayServicesAvailable)) {
                GooglePlayServicesUtil.getErrorDialog(isGooglePlayServicesAvailable, null, 9000).show();
            } else {
                Log.i(TAG, "This device is not supported.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    private void registerInBackground() {
        new AsyncTask<Void, Void, String>() {
            /* Access modifiers changed, original: protected|varargs */
            public String doInBackground(Void... voidArr) {
                try {
                    if (GCMManager.this.gcm == null) {
                        GCMManager.this.gcm = GoogleCloudMessaging.getInstance(GCMManager.this.context);
                    }
                    GCMManager.this.regId = GCMManager.this.gcm.register(GCMManager.this.senderId);
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Device registered, registration ID=");
                    stringBuilder.append(GCMManager.this.regId);
                    String stringBuilder2 = stringBuilder.toString();
                    GCMManager.this.storeRegistrationId(GCMManager.this.regId);
                    return stringBuilder2;
                } catch (IOException e) {
                    StringBuilder stringBuilder3 = new StringBuilder();
                    stringBuilder3.append("Error :");
                    stringBuilder3.append(e.getMessage());
                    return stringBuilder3.toString();
                }
            }

            /* Access modifiers changed, original: protected */
            public void onPostExecute(String str) {
                Log.i(GCMManager.TAG, str);
                if (GCMManager.this.regId == null || GCMManager.this.regId.isEmpty()) {
                    GCMManager.this.onRegistrationIDCallback.registrationFailed(str);
                } else {
                    GCMManager.this.onRegistrationIDCallback.registrationSuccess(GCMManager.this.regId);
                }
            }
        }.execute(new Void[0]);
    }

    public void storeRegistrationId(String str) {
        SharedPreferences gCMPreferences = getGCMPreferences();
        int appVersion = getAppVersion(this.context);
        String str2 = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Saving regId on app version ");
        stringBuilder.append(appVersion);
        Log.i(str2, stringBuilder.toString());
        Editor edit = gCMPreferences.edit();
        edit.putString(PROPERTY_REG_ID, str);
        edit.putInt(PROPERTY_APP_VERSION, appVersion);
        edit.apply();
    }

    public String getRegistrationId() {
        SharedPreferences gCMPreferences = getGCMPreferences();
        String string = gCMPreferences.getString(PROPERTY_REG_ID, "");
        if (string.isEmpty()) {
            Log.i(TAG, "Registration not found.");
            return "";
        } else if (gCMPreferences.getInt(PROPERTY_APP_VERSION, Integer.MIN_VALUE) == getAppVersion(this.context)) {
            return string;
        } else {
            Log.i(TAG, "App version changed.");
            return "";
        }
    }

    private SharedPreferences getGCMPreferences() {
        return this.context.getSharedPreferences(TAG, 0);
    }

    private static int getAppVersion(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (NameNotFoundException e) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Could not get package name: ");
            stringBuilder.append(e);
            throw new RuntimeException(stringBuilder.toString());
        }
    }

    public void setOnRegistrationIDCallback(OnRegistrationIDCallback onRegistrationIDCallback) {
        this.onRegistrationIDCallback = onRegistrationIDCallback;
    }
}
