package com.google.android.gms.location;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzd;
import com.google.android.gms.common.internal.safeparcel.zze;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.drive.MetadataChangeSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class ActivityRecognitionResult extends zza implements ReflectedParcelable {
    public static final Creator<ActivityRecognitionResult> CREATOR = new zzb();
    private Bundle extras;
    private List<DetectedActivity> zzbhu;
    private long zzbhv;
    private long zzbhw;
    private int zzbhx;

    public ActivityRecognitionResult(DetectedActivity detectedActivity, long j, long j2) {
        this(detectedActivity, j, j2, 0, null);
    }

    private ActivityRecognitionResult(DetectedActivity detectedActivity, long j, long j2, int i, Bundle bundle) {
        this(Collections.singletonList(detectedActivity), j, j2, 0, null);
    }

    public ActivityRecognitionResult(List<DetectedActivity> list, long j, long j2) {
        this((List) list, j, j2, 0, null);
    }

    public ActivityRecognitionResult(List<DetectedActivity> list, long j, long j2, int i, Bundle bundle) {
        boolean z = false;
        boolean z2 = list != null && list.size() > 0;
        zzbo.zzb(z2, (Object) "Must have at least 1 detected activity");
        if (j > 0 && j2 > 0) {
            z = true;
        }
        zzbo.zzb(z, (Object) "Must set times");
        this.zzbhu = list;
        this.zzbhv = j;
        this.zzbhw = j2;
        this.zzbhx = i;
        this.extras = bundle;
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0029  */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x0028 A:{RETURN} */
    /* JADX WARNING: Missing block: B:7:0x0022, code skipped:
            if ((r0 instanceof com.google.android.gms.location.ActivityRecognitionResult) != false) goto L_0x001d;
     */
    public static com.google.android.gms.location.ActivityRecognitionResult extractResult(android.content.Intent r3) {
        /*
        r0 = hasResult(r3);
        r1 = 0;
        if (r0 == 0) goto L_0x0025;
    L_0x0007:
        r0 = r3.getExtras();
        r2 = "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT";
        r0 = r0.get(r2);
        r2 = r0 instanceof byte[];
        if (r2 == 0) goto L_0x0020;
    L_0x0015:
        r0 = (byte[]) r0;
        r2 = CREATOR;
        r0 = com.google.android.gms.common.internal.safeparcel.zze.zza(r0, r2);
    L_0x001d:
        r0 = (com.google.android.gms.location.ActivityRecognitionResult) r0;
        goto L_0x0026;
    L_0x0020:
        r2 = r0 instanceof com.google.android.gms.location.ActivityRecognitionResult;
        if (r2 == 0) goto L_0x0025;
    L_0x0024:
        goto L_0x001d;
    L_0x0025:
        r0 = r1;
    L_0x0026:
        if (r0 == 0) goto L_0x0029;
    L_0x0028:
        return r0;
    L_0x0029:
        r3 = zzj(r3);
        if (r3 == 0) goto L_0x0043;
    L_0x002f:
        r0 = r3.isEmpty();
        if (r0 == 0) goto L_0x0036;
    L_0x0035:
        return r1;
    L_0x0036:
        r0 = r3.size();
        r0 = r0 + -1;
        r3 = r3.get(r0);
        r3 = (com.google.android.gms.location.ActivityRecognitionResult) r3;
        return r3;
    L_0x0043:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.location.ActivityRecognitionResult.extractResult(android.content.Intent):com.google.android.gms.location.ActivityRecognitionResult");
    }

    public static boolean hasResult(Intent intent) {
        if (intent == null) {
            return false;
        }
        if (intent == null ? false : intent.hasExtra("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT")) {
            return true;
        }
        List zzj = zzj(intent);
        return (zzj == null || zzj.isEmpty()) ? false : true;
    }

    /* JADX WARNING: Missing block: B:9:0x000f, code skipped:
            return false;
     */
    private static boolean zzc(android.os.Bundle r5, android.os.Bundle r6) {
        /*
        r0 = 1;
        if (r5 != 0) goto L_0x0006;
    L_0x0003:
        if (r6 != 0) goto L_0x0006;
    L_0x0005:
        return r0;
    L_0x0006:
        r1 = 0;
        if (r5 != 0) goto L_0x000b;
    L_0x0009:
        if (r6 != 0) goto L_0x000f;
    L_0x000b:
        if (r5 == 0) goto L_0x0010;
    L_0x000d:
        if (r6 != 0) goto L_0x0010;
    L_0x000f:
        return r1;
    L_0x0010:
        r2 = r5.size();
        r3 = r6.size();
        if (r2 == r3) goto L_0x001b;
    L_0x001a:
        return r1;
    L_0x001b:
        r2 = r5.keySet();
        r2 = r2.iterator();
    L_0x0023:
        r3 = r2.hasNext();
        if (r3 == 0) goto L_0x0069;
    L_0x0029:
        r3 = r2.next();
        r3 = (java.lang.String) r3;
        r4 = r6.containsKey(r3);
        if (r4 != 0) goto L_0x0036;
    L_0x0035:
        return r1;
    L_0x0036:
        r4 = r5.get(r3);
        if (r4 != 0) goto L_0x0043;
    L_0x003c:
        r3 = r6.get(r3);
        if (r3 == 0) goto L_0x0023;
    L_0x0042:
        return r1;
    L_0x0043:
        r4 = r5.get(r3);
        r4 = r4 instanceof android.os.Bundle;
        if (r4 == 0) goto L_0x005a;
    L_0x004b:
        r4 = r5.getBundle(r3);
        r3 = r6.getBundle(r3);
        r3 = zzc(r4, r3);
        if (r3 != 0) goto L_0x0023;
    L_0x0059:
        return r1;
    L_0x005a:
        r4 = r5.get(r3);
        r3 = r6.get(r3);
        r3 = r4.equals(r3);
        if (r3 != 0) goto L_0x0023;
    L_0x0068:
        return r1;
    L_0x0069:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.location.ActivityRecognitionResult.zzc(android.os.Bundle, android.os.Bundle):boolean");
    }

    @Nullable
    private static List<ActivityRecognitionResult> zzj(Intent intent) {
        int i = 0;
        if (!(intent == null ? false : intent.hasExtra("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT_LIST"))) {
            return null;
        }
        Creator creator = CREATOR;
        ArrayList arrayList = (ArrayList) intent.getSerializableExtra("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT_LIST");
        if (arrayList == null) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        arrayList = arrayList;
        int size = arrayList.size();
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            arrayList2.add(zze.zza((byte[]) obj, creator));
        }
        return arrayList2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ActivityRecognitionResult activityRecognitionResult = (ActivityRecognitionResult) obj;
        return this.zzbhv == activityRecognitionResult.zzbhv && this.zzbhw == activityRecognitionResult.zzbhw && this.zzbhx == activityRecognitionResult.zzbhx && zzbe.equal(this.zzbhu, activityRecognitionResult.zzbhu) && zzc(this.extras, activityRecognitionResult.extras);
    }

    public int getActivityConfidence(int i) {
        for (DetectedActivity detectedActivity : this.zzbhu) {
            if (detectedActivity.getType() == i) {
                return detectedActivity.getConfidence();
            }
        }
        return 0;
    }

    public long getElapsedRealtimeMillis() {
        return this.zzbhw;
    }

    public DetectedActivity getMostProbableActivity() {
        return (DetectedActivity) this.zzbhu.get(0);
    }

    public List<DetectedActivity> getProbableActivities() {
        return this.zzbhu;
    }

    public long getTime() {
        return this.zzbhv;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.zzbhv), Long.valueOf(this.zzbhw), Integer.valueOf(this.zzbhx), this.zzbhu, this.extras});
    }

    public String toString() {
        String valueOf = String.valueOf(this.zzbhu);
        long j = this.zzbhv;
        long j2 = this.zzbhw;
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + MetadataChangeSet.CUSTOM_PROPERTY_SIZE_LIMIT_BYTES);
        stringBuilder.append("ActivityRecognitionResult [probableActivities=");
        stringBuilder.append(valueOf);
        stringBuilder.append(", timeMillis=");
        stringBuilder.append(j);
        stringBuilder.append(", elapsedRealtimeMillis=");
        stringBuilder.append(j2);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        i = zzd.zze(parcel);
        zzd.zzc(parcel, 1, this.zzbhu, false);
        zzd.zza(parcel, 2, this.zzbhv);
        zzd.zza(parcel, 3, this.zzbhw);
        zzd.zzc(parcel, 4, this.zzbhx);
        zzd.zza(parcel, 5, this.extras, false);
        zzd.zzI(parcel, i);
    }
}
