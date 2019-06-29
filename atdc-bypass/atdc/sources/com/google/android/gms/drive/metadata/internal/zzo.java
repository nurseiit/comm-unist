package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.SearchableCollectionMetadataField;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

public final class zzo extends zzl<DriveId> implements SearchableCollectionMetadataField<DriveId> {
    public static final zzg zzaPP = new zzp();

    public zzo(int i) {
        super("parents", Collections.emptySet(), Arrays.asList(new String[]{"parentsExtra", "dbInstanceId", "parentsExtraHolder"}), 4100000);
    }

    private static void zzd(DataHolder dataHolder) {
        Bundle zzqN = dataHolder.zzqN();
        if (zzqN != null) {
            synchronized (dataHolder) {
                DataHolder dataHolder2 = (DataHolder) zzqN.getParcelable("parentsExtraHolder");
                if (dataHolder2 != null) {
                    dataHolder2.close();
                    zzqN.remove("parentsExtraHolder");
                }
            }
        }
    }

    /* Access modifiers changed, original: protected|final */
    /* renamed from: zzd */
    public final Collection<DriveId> zzc(DataHolder dataHolder, int i, int i2) {
        DataHolder dataHolder2 = dataHolder;
        Bundle zzqN = dataHolder.zzqN();
        List parcelableArrayList = zzqN.getParcelableArrayList("parentsExtra");
        if (parcelableArrayList == null) {
            if (zzqN.getParcelable("parentsExtraHolder") != null) {
                synchronized (dataHolder) {
                    DataHolder dataHolder3;
                    try {
                        dataHolder3 = (DataHolder) dataHolder.zzqN().getParcelable("parentsExtraHolder");
                        if (dataHolder3 != null) {
                            int count = dataHolder.getCount();
                            ArrayList arrayList = new ArrayList(count);
                            HashMap hashMap = new HashMap(count);
                            int i3 = 0;
                            for (int i4 = 0; i4 < count; i4++) {
                                int zzat = dataHolder2.zzat(i4);
                                ParentDriveIdSet parentDriveIdSet = new ParentDriveIdSet();
                                arrayList.add(parentDriveIdSet);
                                hashMap.put(Long.valueOf(dataHolder2.zzb("sqlId", i4, zzat)), parentDriveIdSet);
                            }
                            Bundle zzqN2 = dataHolder3.zzqN();
                            String string = zzqN2.getString("childSqlIdColumn");
                            String string2 = zzqN2.getString("parentSqlIdColumn");
                            String string3 = zzqN2.getString("parentResIdColumn");
                            int count2 = dataHolder3.getCount();
                            while (i3 < count2) {
                                int zzat2 = dataHolder3.zzat(i3);
                                ParentDriveIdSet parentDriveIdSet2 = (ParentDriveIdSet) hashMap.get(Long.valueOf(dataHolder3.zzb(string, i3, zzat2)));
                                int i5 = count2;
                                String str = string3;
                                parentDriveIdSet2.zzaPO.add(new zzq(dataHolder3.zzd(string3, i3, zzat2), dataHolder3.zzb(string2, i3, zzat2), 1));
                                i3++;
                                count2 = i5;
                                string3 = str;
                            }
                            dataHolder.zzqN().putParcelableArrayList("parentsExtra", arrayList);
                            dataHolder3.close();
                            dataHolder.zzqN().remove("parentsExtraHolder");
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                parcelableArrayList = zzqN.getParcelableArrayList("parentsExtra");
            }
            if (parcelableArrayList == null) {
                return null;
            }
        }
        return ((ParentDriveIdSet) parcelableArrayList.get(i)).zzB(zzqN.getLong("dbInstanceId"));
    }

    /* Access modifiers changed, original: protected|final */
    /* renamed from: zzr */
    public final Collection<DriveId> zzq(Bundle bundle) {
        Collection zzr = super.zzq(bundle);
        return zzr == null ? null : new HashSet(zzr);
    }
}
