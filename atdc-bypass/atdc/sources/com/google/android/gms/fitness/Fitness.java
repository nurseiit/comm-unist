package com.google.android.gms.fitness;

import android.content.Intent;
import android.os.Build.VERSION;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzbup;
import com.google.android.gms.internal.zzbut;
import com.google.android.gms.internal.zzbux;
import com.google.android.gms.internal.zzbva;
import com.google.android.gms.internal.zzbve;
import com.google.android.gms.internal.zzbvg;
import com.google.android.gms.internal.zzbvk;
import com.google.android.gms.internal.zzbvo;
import com.google.android.gms.internal.zzbxj;
import com.google.android.gms.internal.zzbxk;
import com.google.android.gms.internal.zzbxs;
import com.google.android.gms.internal.zzbxx;
import com.google.android.gms.internal.zzbya;
import com.google.android.gms.internal.zzbyk;
import com.google.android.gms.internal.zzbyl;
import com.google.android.gms.internal.zzbys;
import com.google.android.gms.internal.zzbyz;
import com.google.android.gms.internal.zzbzj;
import java.util.concurrent.TimeUnit;

public class Fitness {
    public static final String ACTION_TRACK = "vnd.google.fitness.TRACK";
    public static final String ACTION_VIEW = "vnd.google.fitness.VIEW";
    public static final String ACTION_VIEW_GOAL = "vnd.google.fitness.VIEW_GOAL";
    @Deprecated
    public static final Void API = null;
    public static final Api<NoOptions> BLE_API = zzbup.API;
    public static final BleApi BleApi = (VERSION.SDK_INT >= 18 ? new zzbxk() : new zzbzj());
    public static final Api<NoOptions> CONFIG_API = zzbut.API;
    public static final ConfigApi ConfigApi = new zzbxs();
    public static final String EXTRA_END_TIME = "vnd.google.fitness.end_time";
    public static final String EXTRA_START_TIME = "vnd.google.fitness.start_time";
    public static final Api<NoOptions> GOALS_API = zzbux.API;
    public static final GoalsApi GoalsApi = new zzbxx();
    public static final Api<NoOptions> HISTORY_API = zzbva.API;
    public static final HistoryApi HistoryApi = new zzbya();
    public static final Api<NoOptions> RECORDING_API = zzbvg.API;
    public static final RecordingApi RecordingApi = new zzbyl();
    public static final Scope SCOPE_ACTIVITY_READ = new Scope(Scopes.FITNESS_ACTIVITY_READ);
    public static final Scope SCOPE_ACTIVITY_READ_WRITE = new Scope(Scopes.FITNESS_ACTIVITY_READ_WRITE);
    public static final Scope SCOPE_BODY_READ = new Scope(Scopes.FITNESS_BODY_READ);
    public static final Scope SCOPE_BODY_READ_WRITE = new Scope(Scopes.FITNESS_BODY_READ_WRITE);
    public static final Scope SCOPE_LOCATION_READ = new Scope(Scopes.FITNESS_LOCATION_READ);
    public static final Scope SCOPE_LOCATION_READ_WRITE = new Scope(Scopes.FITNESS_LOCATION_READ_WRITE);
    public static final Scope SCOPE_NUTRITION_READ = new Scope(Scopes.FITNESS_NUTRITION_READ);
    public static final Scope SCOPE_NUTRITION_READ_WRITE = new Scope(Scopes.FITNESS_NUTRITION_READ_WRITE);
    public static final Api<NoOptions> SENSORS_API = zzbvk.API;
    public static final Api<NoOptions> SESSIONS_API = zzbvo.API;
    public static final SensorsApi SensorsApi = new zzbys();
    public static final SessionsApi SessionsApi = new zzbyz();
    private static Api<NoOptions> zzaMc = zzbve.API;
    private static zzbxj zzaSY = new zzbyk();

    private Fitness() {
    }

    public static long getEndTime(Intent intent, TimeUnit timeUnit) {
        long longExtra = intent.getLongExtra(EXTRA_END_TIME, -1);
        return longExtra == -1 ? -1 : timeUnit.convert(longExtra, TimeUnit.MILLISECONDS);
    }

    public static long getStartTime(Intent intent, TimeUnit timeUnit) {
        long longExtra = intent.getLongExtra(EXTRA_START_TIME, -1);
        return longExtra == -1 ? -1 : timeUnit.convert(longExtra, TimeUnit.MILLISECONDS);
    }
}
