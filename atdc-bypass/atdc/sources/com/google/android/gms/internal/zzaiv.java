package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.WebSettings;
import java.util.concurrent.Callable;

final class zzaiv implements Callable<String> {
    private /* synthetic */ Context zzaay;
    private /* synthetic */ Context zztF;

    zzaiv(zzaiu zzaiu, Context context, Context context2) {
        this.zzaay = context;
        this.zztF = context2;
    }

    public final /* synthetic */ Object call() throws Exception {
        SharedPreferences sharedPreferences;
        int i = 0;
        if (this.zzaay != null) {
            zzafr.v("Attempting to read user agent from Google Play Services.");
            sharedPreferences = this.zzaay.getSharedPreferences("admob_user_agent", 0);
        } else {
            zzafr.v("Attempting to read user agent from local cache.");
            sharedPreferences = this.zztF.getSharedPreferences("admob_user_agent", 0);
            i = 1;
        }
        Object string = sharedPreferences.getString("user_agent", "");
        if (TextUtils.isEmpty(string)) {
            zzafr.v("Reading user agent from WebSettings");
            string = WebSettings.getDefaultUserAgent(this.zztF);
            if (i != 0) {
                sharedPreferences.edit().putString("user_agent", string).apply();
                zzafr.v("Persisting user agent.");
            }
        }
        return string;
    }
}
