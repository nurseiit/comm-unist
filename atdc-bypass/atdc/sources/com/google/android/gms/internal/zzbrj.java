package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.DriveSpace;
import com.google.android.gms.drive.metadata.internal.zzl;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;

public final class zzbrj extends zzl<DriveSpace> {
    public zzbrj(int i) {
        super("spaces", Arrays.asList(new String[]{"inDriveSpace", "isAppData", "inGooglePhotosSpace"}), Collections.emptySet(), 7000000);
    }

    /* Access modifiers changed, original: protected|final */
    /* renamed from: zzd */
    public final Collection<DriveSpace> zzc(DataHolder dataHolder, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        if (dataHolder.zze("inDriveSpace", i, i2)) {
            arrayList.add(DriveSpace.zzaMl);
        }
        if (dataHolder.zze("isAppData", i, i2)) {
            arrayList.add(DriveSpace.zzaMm);
        }
        if (dataHolder.zze("inGooglePhotosSpace", i, i2)) {
            arrayList.add(DriveSpace.zzaMn);
        }
        return arrayList;
    }
}
