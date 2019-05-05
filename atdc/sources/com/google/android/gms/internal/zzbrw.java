package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.DriveFolder;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.zzm;
import java.util.Arrays;

public final class zzbrw extends zzm<DriveId> {
    public static final zzbrw zzaQO = new zzbrw();

    private zzbrw() {
        super("driveId", Arrays.asList(new String[]{"sqlId", "resourceId", "mimeType"}), Arrays.asList(new String[]{"dbInstanceId"}), 4100000);
    }

    /* Access modifiers changed, original: protected|final */
    public final boolean zzb(DataHolder dataHolder, int i, int i2) {
        for (String zzcv : zztk()) {
            if (!dataHolder.zzcv(zzcv)) {
                return false;
            }
        }
        return true;
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Object zzc(DataHolder dataHolder, int i, int i2) {
        long j = dataHolder.zzqN().getLong("dbInstanceId");
        boolean equals = DriveFolder.MIME_TYPE.equals(dataHolder.zzd(zzbrc.zzaQn.getName(), i, i2));
        String zzd = dataHolder.zzd("resourceId", i, i2);
        return new DriveId("generated-android-null".equals(zzd) ? null : zzd, Long.valueOf(dataHolder.zzb("sqlId", i, i2)).longValue(), j, equals);
    }
}
