package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import com.google.android.gms.nearby.messages.Strategy;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

@zzzn
public final class zzajd implements zzajb {
    @Nullable
    private final String zzJP;

    public zzajd() {
        this(null);
    }

    public zzajd(@Nullable String str) {
        this.zzJP = str;
    }

    @WorkerThread
    public final void zzaN(String str) {
        StringBuilder stringBuilder;
        String str2;
        String valueOf;
        HttpURLConnection httpURLConnection;
        try {
            str2 = "Pinging URL: ";
            valueOf = String.valueOf(str);
            zzajc.zzaC(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            zzji.zzds();
            zzaiy.zza(true, httpURLConnection, this.zzJP);
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode < 200 || responseCode >= Strategy.TTL_SECONDS_DEFAULT) {
                StringBuilder stringBuilder2 = new StringBuilder(String.valueOf(str).length() + 65);
                stringBuilder2.append("Received non-success response code ");
                stringBuilder2.append(responseCode);
                stringBuilder2.append(" from pinging URL: ");
                stringBuilder2.append(str);
                zzajc.zzaT(stringBuilder2.toString());
            }
            httpURLConnection.disconnect();
        } catch (IndexOutOfBoundsException e) {
            str2 = String.valueOf(e.getMessage());
            stringBuilder = new StringBuilder((String.valueOf(str).length() + 32) + String.valueOf(str2).length());
            valueOf = "Error while parsing ping URL: ";
            stringBuilder.append(valueOf);
            stringBuilder.append(str);
            stringBuilder.append(". ");
            stringBuilder.append(str2);
            zzajc.zzaT(stringBuilder.toString());
        } catch (IOException e2) {
            str2 = String.valueOf(e2.getMessage());
            stringBuilder = new StringBuilder((String.valueOf(str).length() + 27) + String.valueOf(str2).length());
            valueOf = "Error while pinging URL: ";
            stringBuilder.append(valueOf);
            stringBuilder.append(str);
            stringBuilder.append(". ");
            stringBuilder.append(str2);
            zzajc.zzaT(stringBuilder.toString());
        } catch (RuntimeException e3) {
            str2 = String.valueOf(e3.getMessage());
            stringBuilder = new StringBuilder((String.valueOf(str).length() + 27) + String.valueOf(str2).length());
            valueOf = "Error while pinging URL: ";
            stringBuilder.append(valueOf);
            stringBuilder.append(str);
            stringBuilder.append(". ");
            stringBuilder.append(str2);
            zzajc.zzaT(stringBuilder.toString());
        } catch (Throwable th) {
            httpURLConnection.disconnect();
        }
    }
}
