package com.google.android.gms.fitness;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zze;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.request.DataDeleteRequest;
import com.google.android.gms.fitness.request.DataReadRequest;
import com.google.android.gms.fitness.request.DataUpdateListenerRegistrationRequest;
import com.google.android.gms.fitness.request.DataUpdateRequest;
import com.google.android.gms.fitness.result.DailyTotalResult;
import com.google.android.gms.fitness.result.DataReadResult;
import java.util.concurrent.TimeUnit;

public interface HistoryApi {

    public static class ViewIntentBuilder {
        private final DataType zzaSZ;
        private DataSource zzaTa;
        private long zzaTb;
        private long zzaTc;
        private String zzaTd;
        private final Context zzqD;

        public ViewIntentBuilder(Context context, DataType dataType) {
            this.zzqD = context;
            this.zzaSZ = dataType;
        }

        public Intent build() {
            boolean z = true;
            zzbo.zza(this.zzaTb > 0, (Object) "Start time must be set");
            if (this.zzaTc <= this.zzaTb) {
                z = false;
            }
            zzbo.zza(z, (Object) "End time must be set and after start time");
            Intent intent = new Intent(Fitness.ACTION_VIEW);
            intent.setType(DataType.getMimeType(this.zzaTa.getDataType()));
            intent.putExtra(Fitness.EXTRA_START_TIME, this.zzaTb);
            intent.putExtra(Fitness.EXTRA_END_TIME, this.zzaTc);
            zze.zza(this.zzaTa, intent, DataSource.EXTRA_DATA_SOURCE);
            if (this.zzaTd != null) {
                Intent intent2 = new Intent(intent).setPackage(this.zzaTd);
                ResolveInfo resolveActivity = this.zzqD.getPackageManager().resolveActivity(intent2, 0);
                if (resolveActivity != null) {
                    intent2.setComponent(new ComponentName(this.zzaTd, resolveActivity.activityInfo.name));
                    return intent2;
                }
            }
            return intent;
        }

        public ViewIntentBuilder setDataSource(DataSource dataSource) {
            zzbo.zzb(dataSource.getDataType().equals(this.zzaSZ), "Data source %s is not for the data type %s", dataSource, this.zzaSZ);
            this.zzaTa = dataSource;
            return this;
        }

        public ViewIntentBuilder setPreferredApplication(String str) {
            this.zzaTd = str;
            return this;
        }

        public ViewIntentBuilder setTimeInterval(long j, long j2, TimeUnit timeUnit) {
            this.zzaTb = timeUnit.toMillis(j);
            this.zzaTc = timeUnit.toMillis(j2);
            return this;
        }
    }

    PendingResult<Status> deleteData(GoogleApiClient googleApiClient, DataDeleteRequest dataDeleteRequest);

    PendingResult<Status> insertData(GoogleApiClient googleApiClient, DataSet dataSet);

    PendingResult<DailyTotalResult> readDailyTotal(GoogleApiClient googleApiClient, DataType dataType);

    PendingResult<DailyTotalResult> readDailyTotalFromLocalDevice(GoogleApiClient googleApiClient, DataType dataType);

    @RequiresPermission(anyOf = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.BODY_SENSORS"}, conditional = true)
    PendingResult<DataReadResult> readData(GoogleApiClient googleApiClient, DataReadRequest dataReadRequest);

    @RequiresPermission(anyOf = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.BODY_SENSORS"}, conditional = true)
    PendingResult<Status> registerDataUpdateListener(GoogleApiClient googleApiClient, DataUpdateListenerRegistrationRequest dataUpdateListenerRegistrationRequest);

    PendingResult<Status> unregisterDataUpdateListener(GoogleApiClient googleApiClient, PendingIntent pendingIntent);

    PendingResult<Status> updateData(GoogleApiClient googleApiClient, DataUpdateRequest dataUpdateRequest);
}
