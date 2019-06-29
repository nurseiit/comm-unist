package com.google.android.gms.ads.identifier;

import android.util.Log;
import com.google.android.gms.nearby.messages.Strategy;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

final class zza extends Thread {
    private /* synthetic */ String zzsD;

    zza(AdvertisingIdClient advertisingIdClient, String str) {
        this.zzsD = str;
    }

    public final void run() {
        Throwable e;
        String str;
        String valueOf;
        String str2;
        zzb zzb = new zzb();
        String str3 = this.zzsD;
        HttpURLConnection httpURLConnection;
        StringBuilder stringBuilder;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str3).openConnection();
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode < 200 || responseCode >= Strategy.TTL_SECONDS_DEFAULT) {
                stringBuilder = new StringBuilder(String.valueOf(str3).length() + 65);
                stringBuilder.append("Received non-success response code ");
                stringBuilder.append(responseCode);
                stringBuilder.append(" from pinging URL: ");
                stringBuilder.append(str3);
                Log.w("HttpUrlPinger", stringBuilder.toString());
            }
            httpURLConnection.disconnect();
        } catch (IndexOutOfBoundsException e2) {
            e = e2;
            str = "HttpUrlPinger";
            valueOf = String.valueOf(e.getMessage());
            stringBuilder = new StringBuilder((String.valueOf(str3).length() + 32) + String.valueOf(valueOf).length());
            str2 = "Error while parsing ping URL: ";
            stringBuilder.append(str2);
            stringBuilder.append(str3);
            stringBuilder.append(". ");
            stringBuilder.append(valueOf);
            Log.w(str, stringBuilder.toString(), e);
        } catch (IOException | RuntimeException e3) {
            e = e3;
            str = "HttpUrlPinger";
            valueOf = String.valueOf(e.getMessage());
            stringBuilder = new StringBuilder((String.valueOf(str3).length() + 27) + String.valueOf(valueOf).length());
            str2 = "Error while pinging URL: ";
            stringBuilder.append(str2);
            stringBuilder.append(str3);
            stringBuilder.append(". ");
            stringBuilder.append(valueOf);
            Log.w(str, stringBuilder.toString(), e);
        } catch (Throwable th) {
            httpURLConnection.disconnect();
        }
    }
}
