package com.google.android.gms.drive;

import android.content.IntentSender;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.drive.query.Filter;
import com.google.android.gms.drive.query.internal.FilterHolder;
import com.google.android.gms.drive.query.internal.zzk;
import com.google.android.gms.internal.zzbmh;
import com.google.android.gms.internal.zzbom;
import com.google.android.gms.internal.zzbqe;

public class OpenFileActivityBuilder {
    public static final String EXTRA_RESPONSE_DRIVE_ID = "response_drive_id";
    private String[] zzaMC;
    private Filter zzaMD;
    private DriveId zzaME;
    private String zzaoy;

    public IntentSender build(GoogleApiClient googleApiClient) {
        zzbo.zza(googleApiClient.isConnected(), (Object) "Client must be connected");
        if (this.zzaMC == null) {
            this.zzaMC = new String[0];
        }
        if (this.zzaMC.length <= 0 || this.zzaMD == null) {
            try {
                return ((zzbom) ((zzbmh) googleApiClient.zza(Drive.zzajR)).zzrf()).zza(new zzbqe(this.zzaoy, this.zzaMC, this.zzaME, this.zzaMD == null ? null : new FilterHolder(this.zzaMD)));
            } catch (RemoteException e) {
                throw new RuntimeException("Unable to connect Drive Play Service", e);
            }
        }
        throw new IllegalStateException("Cannot use a selection filter and set mimetypes simultaneously");
    }

    public OpenFileActivityBuilder setActivityStartFolder(DriveId driveId) {
        this.zzaME = (DriveId) zzbo.zzu(driveId);
        return this;
    }

    public OpenFileActivityBuilder setActivityTitle(String str) {
        this.zzaoy = (String) zzbo.zzu(str);
        return this;
    }

    public OpenFileActivityBuilder setMimeType(String[] strArr) {
        zzbo.zzb(strArr != null, (Object) "mimeTypes may not be null");
        this.zzaMC = strArr;
        return this;
    }

    public OpenFileActivityBuilder setSelectionFilter(Filter filter) {
        zzbo.zzb(filter != null, (Object) "filter may not be null");
        zzbo.zzb(1 ^ zzk.zza(filter), (Object) "FullTextSearchFilter cannot be used as a selection filter");
        this.zzaMD = filter;
        return this;
    }
}
