package com.lotecs.util;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.google.firebase.auth.PhoneAuthProvider;
import com.scottyab.aescrypt.AESCrypt;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.StringTokenizer;
import java.util.UUID;
import javax.security.auth.x500.X500Principal;
import kr.ac.unist.atdc.R;
import org.json.JSONObject;

public class AndroidUtil {
    private static final X500Principal DEBUG_DN = new X500Principal("CN=Android Debug,O=Android,C=US");

    public static boolean isDebuggable(Context context) {
        int i = 0;
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures;
            int length = signatureArr.length;
            boolean z = false;
            while (i < length) {
                try {
                    boolean equals = ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[i].toByteArray()))).getSubjectX500Principal().equals(DEBUG_DN);
                    if (equals) {
                        return equals;
                    }
                    i++;
                    z = equals;
                } catch (NameNotFoundException | CertificateException unused) {
                    return z;
                }
            }
            return z;
        } catch (NameNotFoundException | CertificateException unused2) {
            return false;
        }
    }

    public static boolean isNetworkStat(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(0);
        NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(1);
        NetworkInfo networkInfo3 = connectivityManager.getNetworkInfo(6);
        boolean isConnected = networkInfo3 != null ? networkInfo3.isConnected() : false;
        if (networkInfo != null) {
            if (networkInfo.isConnected() || networkInfo2.isConnected() || isConnected) {
                return true;
            }
        } else if (networkInfo2.isConnected() || isConnected) {
            return true;
        }
        return false;
    }

    public static boolean is_network_setting(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(0);
        NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(1);
        if (networkInfo2 != null && networkInfo2.getState() == State.CONNECTED) {
            return true;
        }
        if (networkInfo == null || networkInfo.getState() != State.CONNECTED) {
            return false;
        }
        return true;
    }

    public static void showAlert(Context context, String str, String str2) {
        Builder builder = new Builder(context);
        builder.setTitle(str);
        builder.setMessage(str2);
        builder.setNeutralButton(context.getString(R.string.ok), new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        builder.show();
    }

    public static String getStringApiVaule(Context context, String str) {
        return context.getSharedPreferences(str, 4).getString(str, "");
    }

    public static void saveStringApiVaule(Context context, String str, String str2) {
        Editor edit = context.getSharedPreferences(str, 4).edit();
        edit.putString(str, str2);
        edit.apply();
    }

    public static void saveBooleanApiValue(Context context, String str, boolean z) {
        Editor edit = context.getSharedPreferences(str, 4).edit();
        edit.putBoolean(str, z);
        edit.apply();
    }

    public static boolean getBooleanApiValue(Context context, String str, boolean z) {
        return context.getSharedPreferences(str, 4).getBoolean(str, z);
    }

    public static String getStringApiVauleDec(Context context, String str, String str2) {
        String stringApiVaule = getStringApiVaule(context, str);
        if (stringApiVaule == null || stringApiVaule.compareTo("") == 0) {
            return "";
        }
        try {
            return AESCrypt.decrypt(str2, stringApiVaule).trim();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static void saveStringApiVauleEnc(Context context, String str, String str2, String str3) {
        try {
            saveStringApiVaule(context, str, AESCrypt.encrypt(str3, str2));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static ArrayList<String> stringToken(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        StringTokenizer stringTokenizer = new StringTokenizer(str, str2);
        while (stringTokenizer.hasMoreElements()) {
            arrayList.add(stringTokenizer.nextToken());
        }
        return arrayList;
    }

    public static String device_id(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(PhoneAuthProvider.PROVIDER_ID);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("");
        stringBuilder.append(telephonyManager.getDeviceId());
        String stringBuilder2 = stringBuilder.toString();
        StringBuilder stringBuilder3 = new StringBuilder();
        stringBuilder3.append("");
        stringBuilder3.append(telephonyManager.getSimSerialNumber());
        String stringBuilder4 = stringBuilder3.toString();
        stringBuilder3 = new StringBuilder();
        stringBuilder3.append("");
        stringBuilder3.append(Secure.getString(context.getContentResolver(), "android_id"));
        return new UUID((long) stringBuilder3.toString().hashCode(), (((long) stringBuilder2.hashCode()) << 32) | ((long) stringBuilder4.hashCode())).toString();
    }

    public static String mac_address(Context context) {
        String macAddress;
        WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
        WifiInfo connectionInfo = wifiManager.getConnectionInfo();
        if (connectionInfo.getMacAddress() != null) {
            macAddress = connectionInfo.getMacAddress();
        } else {
            wifiManager.setWifiEnabled(true);
            Log.i("DEBUG_TAG", "============wifi사용");
            macAddress = connectionInfo.getMacAddress();
        }
        return macAddress.replace(":", "");
    }

    public static void writeToCache(String str, JSONObject jSONObject) {
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(new File(str)));
            objectOutputStream.writeObject(jSONObject);
            objectOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static JSONObject readFromCache(String str) {
        IOException e;
        ClassNotFoundException e2;
        JSONObject jSONObject = null;
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream(new File(str)));
            JSONObject jSONObject2 = (JSONObject) objectInputStream.readObject();
            try {
                objectInputStream.close();
                return jSONObject2;
            } catch (IOException e3) {
                IOException iOException = e3;
                jSONObject = jSONObject2;
                e = iOException;
                e.printStackTrace();
                return jSONObject;
            } catch (ClassNotFoundException e4) {
                ClassNotFoundException classNotFoundException = e4;
                jSONObject = jSONObject2;
                e2 = classNotFoundException;
                e2.printStackTrace();
                return jSONObject;
            }
        } catch (IOException e5) {
            e = e5;
            e.printStackTrace();
            return jSONObject;
        } catch (ClassNotFoundException e6) {
            e2 = e6;
            e2.printStackTrace();
            return jSONObject;
        }
    }

    public static void hideKeyboard(Context context, View view) {
        ((InputMethodManager) context.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }
}
