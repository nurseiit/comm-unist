package com.google.android.gms.internal;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

@zzzn
public final class zzajo {
    public static HttpURLConnection zzb(String str, int i) throws IOException {
        URL url = new URL(str);
        int i2 = 0;
        while (true) {
            i2++;
            if (i2 <= 20) {
                URLConnection openConnection = url.openConnection();
                openConnection.setConnectTimeout(i);
                openConnection.setReadTimeout(i);
                if (openConnection instanceof HttpURLConnection) {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
                    httpURLConnection.setInstanceFollowRedirects(false);
                    if (httpURLConnection.getResponseCode() / 100 != 3) {
                        return httpURLConnection;
                    }
                    String headerField = httpURLConnection.getHeaderField("Location");
                    if (headerField == null) {
                        throw new IOException("Missing Location header in redirect");
                    }
                    URL url2 = new URL(url, headerField);
                    String protocol = url2.getProtocol();
                    if (protocol == null) {
                        throw new IOException("Protocol is null");
                    } else if (protocol.equals("http") || protocol.equals("https")) {
                        protocol = "Redirecting to ";
                        headerField = String.valueOf(headerField);
                        zzajc.zzaC(headerField.length() != 0 ? protocol.concat(headerField) : new String(protocol));
                        httpURLConnection.disconnect();
                        url = url2;
                    } else {
                        String str2 = "Unsupported scheme: ";
                        String valueOf = String.valueOf(protocol);
                        throw new IOException(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
                    }
                }
                throw new IOException("Invalid protocol.");
            }
            throw new IOException("Too many redirects (20)");
        }
    }
}
