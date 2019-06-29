package com.google.firebase.storage;

import android.net.Uri;
import android.net.Uri.Builder;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.abz;
import com.google.firebase.FirebaseApp;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

public class FirebaseStorage {
    private static final Map<String, Map<String, FirebaseStorage>> zzcom = new HashMap();
    @NonNull
    private final FirebaseApp zzckw;
    @Nullable
    private final String zzcon;
    private long zzcoo = 600000;
    private long zzcop = 600000;
    private long zzcoq = 120000;

    private FirebaseStorage(@Nullable String str, @NonNull FirebaseApp firebaseApp) {
        this.zzcon = str;
        this.zzckw = firebaseApp;
    }

    @NonNull
    public static FirebaseStorage getInstance() {
        FirebaseApp instance = FirebaseApp.getInstance();
        zzbo.zzb(instance != null, (Object) "You must call FirebaseApp.initialize() first.");
        return getInstance(instance);
    }

    @NonNull
    public static FirebaseStorage getInstance(@NonNull FirebaseApp firebaseApp) {
        zzbo.zzb(firebaseApp != null, (Object) "Null is not a valid value for the FirebaseApp.");
        String storageBucket = firebaseApp.getOptions().getStorageBucket();
        if (storageBucket == null) {
            return zza(firebaseApp, null);
        }
        String str;
        String valueOf;
        try {
            str = "gs://";
            valueOf = String.valueOf(firebaseApp.getOptions().getStorageBucket());
            return zza(firebaseApp, abz.zzg(firebaseApp, valueOf.length() != 0 ? str.concat(valueOf) : new String(str)));
        } catch (UnsupportedEncodingException e) {
            str = "FirebaseStorage";
            valueOf = "Unable to parse bucket:";
            storageBucket = String.valueOf(storageBucket);
            Log.e(str, storageBucket.length() != 0 ? valueOf.concat(storageBucket) : new String(valueOf), e);
            throw new IllegalArgumentException("The storage Uri could not be parsed.");
        }
    }

    @NonNull
    public static FirebaseStorage getInstance(@NonNull FirebaseApp firebaseApp, @NonNull String str) {
        zzbo.zzb(firebaseApp != null, (Object) "Null is not a valid value for the FirebaseApp.");
        try {
            return zza(firebaseApp, abz.zzg(firebaseApp, str));
        } catch (UnsupportedEncodingException e) {
            String str2 = "FirebaseStorage";
            String str3 = "Unable to parse url:";
            str = String.valueOf(str);
            Log.e(str2, str.length() != 0 ? str3.concat(str) : new String(str3), e);
            throw new IllegalArgumentException("The storage Uri could not be parsed.");
        }
    }

    @NonNull
    public static FirebaseStorage getInstance(@NonNull String str) {
        FirebaseApp instance = FirebaseApp.getInstance();
        zzbo.zzb(instance != null, (Object) "You must call FirebaseApp.initialize() first.");
        return getInstance(instance, str);
    }

    private static FirebaseStorage zza(@NonNull FirebaseApp firebaseApp, @Nullable Uri uri) {
        Object host = uri != null ? uri.getHost() : null;
        if (uri == null || TextUtils.isEmpty(uri.getPath())) {
            FirebaseStorage firebaseStorage;
            synchronized (zzcom) {
                Map map = (Map) zzcom.get(firebaseApp.getName());
                if (map == null) {
                    map = new HashMap();
                    zzcom.put(firebaseApp.getName(), map);
                }
                firebaseStorage = (FirebaseStorage) map.get(host);
                if (firebaseStorage == null) {
                    firebaseStorage = new FirebaseStorage(host, firebaseApp);
                    map.put(host, firebaseStorage);
                }
            }
            return firebaseStorage;
        }
        throw new IllegalArgumentException("The storage Uri cannot contain a path element.");
    }

    @NonNull
    private final StorageReference zzu(@NonNull Uri uri) {
        zzbo.zzb((Object) uri, (Object) "uri must not be null");
        String str = this.zzcon;
        boolean z = TextUtils.isEmpty(str) || uri.getAuthority().equalsIgnoreCase(str);
        zzbo.zzb(z, (Object) "The supplied bucketname does not match the storage bucket of the current instance.");
        return new StorageReference(uri, this);
    }

    @NonNull
    public FirebaseApp getApp() {
        return this.zzckw;
    }

    public long getMaxDownloadRetryTimeMillis() {
        return this.zzcop;
    }

    public long getMaxOperationRetryTimeMillis() {
        return this.zzcoq;
    }

    public long getMaxUploadRetryTimeMillis() {
        return this.zzcoo;
    }

    @NonNull
    public StorageReference getReference() {
        if (!TextUtils.isEmpty(this.zzcon)) {
            return zzu(new Builder().scheme("gs").authority(this.zzcon).path("/").build());
        }
        throw new IllegalStateException("FirebaseApp was not initialized with a bucket name.");
    }

    @NonNull
    public StorageReference getReference(@NonNull String str) {
        zzbo.zzb(TextUtils.isEmpty(str) ^ 1, (Object) "location must not be null or empty");
        String toLowerCase = str.toLowerCase();
        if (!toLowerCase.startsWith("gs://") && !toLowerCase.startsWith("https://") && !toLowerCase.startsWith("http://")) {
            return getReference().child(str);
        }
        throw new IllegalArgumentException("location should not be a full URL.");
    }

    @NonNull
    public StorageReference getReferenceFromUrl(@NonNull String str) {
        zzbo.zzb(TextUtils.isEmpty(str) ^ 1, (Object) "location must not be null or empty");
        String toLowerCase = str.toLowerCase();
        if (toLowerCase.startsWith("gs://") || toLowerCase.startsWith("https://") || toLowerCase.startsWith("http://")) {
            try {
                Uri zzg = abz.zzg(this.zzckw, str);
                if (zzg != null) {
                    return zzu(zzg);
                }
                throw new IllegalArgumentException("The storage Uri could not be parsed.");
            } catch (UnsupportedEncodingException e) {
                String str2 = "FirebaseStorage";
                String str3 = "Unable to parse location:";
                str = String.valueOf(str);
                Log.e(str2, str.length() != 0 ? str3.concat(str) : new String(str3), e);
                throw new IllegalArgumentException("The storage Uri could not be parsed.");
            }
        }
        throw new IllegalArgumentException("The storage Uri could not be parsed.");
    }

    public void setMaxDownloadRetryTimeMillis(long j) {
        this.zzcop = j;
    }

    public void setMaxOperationRetryTimeMillis(long j) {
        this.zzcoq = j;
    }

    public void setMaxUploadRetryTimeMillis(long j) {
        this.zzcoo = j;
    }
}
