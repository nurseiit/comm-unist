package com.google.android.gms.internal;

import com.google.android.gms.fitness.FitnessStatusCodes;
import java.io.IOException;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpTrace;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public final class zzak implements zzan {
    private HttpClient zzaA;

    public zzak(HttpClient httpClient) {
        this.zzaA = httpClient;
    }

    private static void zza(HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase, zzp<?> zzp) throws zza {
        byte[] zzg = zzp.zzg();
        if (zzg != null) {
            httpEntityEnclosingRequestBase.setEntity(new ByteArrayEntity(zzg));
        }
    }

    private static void zza(HttpUriRequest httpUriRequest, Map<String, String> map) {
        for (String str : map.keySet()) {
            httpUriRequest.setHeader(str, (String) map.get(str));
        }
    }

    public final HttpResponse zza(zzp<?> zzp, Map<String, String> map) throws IOException, zza {
        HttpUriRequest httpGet;
        switch (zzp.getMethod()) {
            case -1:
                httpGet = new HttpGet(zzp.getUrl());
                break;
            case 0:
                httpGet = new HttpGet(zzp.getUrl());
                break;
            case 1:
                httpGet = new HttpPost(zzp.getUrl());
                httpGet.addHeader("Content-Type", zzp.zzf());
                break;
            case 2:
                httpGet = new HttpPut(zzp.getUrl());
                httpGet.addHeader("Content-Type", zzp.zzf());
                break;
            case 3:
                httpGet = new HttpDelete(zzp.getUrl());
                break;
            case 4:
                httpGet = new HttpHead(zzp.getUrl());
                break;
            case 5:
                httpGet = new HttpOptions(zzp.getUrl());
                break;
            case 6:
                httpGet = new HttpTrace(zzp.getUrl());
                break;
            case 7:
                httpGet = new zzal(zzp.getUrl());
                httpGet.addHeader("Content-Type", zzp.zzf());
                break;
            default:
                throw new IllegalStateException("Unknown request method.");
        }
        zza((HttpEntityEnclosingRequestBase) httpGet, (zzp) zzp);
        zza(httpGet, (Map) map);
        zza(httpGet, zzp.getHeaders());
        HttpParams params = httpGet.getParams();
        int zzi = zzp.zzi();
        HttpConnectionParams.setConnectionTimeout(params, FitnessStatusCodes.NEEDS_OAUTH_PERMISSIONS);
        HttpConnectionParams.setSoTimeout(params, zzi);
        return this.zzaA.execute(httpGet);
    }
}
