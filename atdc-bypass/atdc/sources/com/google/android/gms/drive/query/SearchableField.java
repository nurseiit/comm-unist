package com.google.android.gms.drive.query;

import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.SearchableCollectionMetadataField;
import com.google.android.gms.drive.metadata.SearchableMetadataField;
import com.google.android.gms.drive.metadata.SearchableOrderedMetadataField;
import com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties;
import com.google.android.gms.internal.zzbrc;
import com.google.android.gms.internal.zzbrp;
import java.util.Date;

public class SearchableField {
    public static final SearchableMetadataField<Boolean> IS_PINNED = zzbrc.zzaQf;
    public static final SearchableOrderedMetadataField<Date> LAST_VIEWED_BY_ME = zzbrp.zzaQJ;
    public static final SearchableMetadataField<String> MIME_TYPE = zzbrc.zzaQn;
    public static final SearchableOrderedMetadataField<Date> MODIFIED_DATE = zzbrp.zzaQK;
    public static final SearchableCollectionMetadataField<DriveId> PARENTS = zzbrc.zzaQs;
    public static final SearchableMetadataField<Boolean> STARRED = zzbrc.zzaQu;
    public static final SearchableMetadataField<String> TITLE = zzbrc.zzaQw;
    public static final SearchableMetadataField<Boolean> TRASHED = zzbrc.zzaQx;
    public static final SearchableOrderedMetadataField<Date> zzaQY = zzbrp.zzaQM;
    public static final SearchableMetadataField<AppVisibleCustomProperties> zzaQZ = zzbrc.zzaPS;
}
