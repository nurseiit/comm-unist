package com.google.android.gms.internal;

import com.google.android.gms.wallet.WalletConstants;
import com.google.firebase.appindexing.Indexable;
import com.lotecs.util.ErrorCode;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

final class cv implements cw {
    private HttpURLConnection zzbKR;
    private InputStream zzbKS = null;

    cv() {
    }

    public final void close() {
        HttpURLConnection httpURLConnection = this.zzbKR;
        try {
            if (this.zzbKS != null) {
                this.zzbKS.close();
            }
        } catch (IOException e) {
            String str = "HttpUrlConnectionNetworkClient: Error when closing http input stream: ";
            String valueOf = String.valueOf(e.getMessage());
            zzcvk.zzb(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), e);
        }
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    public final InputStream zzfU(String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setReadTimeout(Indexable.MAX_STRING_LENGTH);
        httpURLConnection.setConnectTimeout(Indexable.MAX_STRING_LENGTH);
        this.zzbKR = httpURLConnection;
        httpURLConnection = this.zzbKR;
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode == 200) {
            this.zzbKS = httpURLConnection.getInputStream();
            return this.zzbKS;
        }
        StringBuilder stringBuilder = new StringBuilder(25);
        stringBuilder.append("Bad response: ");
        stringBuilder.append(responseCode);
        str = stringBuilder.toString();
        if (responseCode == WalletConstants.ERROR_CODE_INVALID_PARAMETERS) {
            throw new FileNotFoundException(str);
        } else if (responseCode == ErrorCode.ERROR_CODE_URL) {
            throw new da(str);
        } else {
            throw new IOException(str);
        }
    }
}
