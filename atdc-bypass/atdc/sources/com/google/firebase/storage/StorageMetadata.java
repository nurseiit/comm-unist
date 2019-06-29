package com.google.firebase.storage;

import android.net.Uri;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.abv;
import com.google.android.gms.internal.abz;
import com.google.android.gms.internal.ace;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class StorageMetadata {
    private String mPath;
    private String zzapZ;
    private String zzcoA;
    private String zzcoB;
    private long zzcoC;
    private String zzcoD;
    private String zzcoE;
    private String zzcoF;
    private String zzcoG;
    private String zzcoH;
    private Map<String, String> zzcoI;
    private String[] zzcoJ;
    private StorageReference zzcoe;
    private FirebaseStorage zzcow;
    private String zzcox;
    private String zzcoy;
    private String zzcoz;

    public static class Builder {
        private StorageMetadata zzcoK;
        private boolean zzcoL;

        public Builder() {
            this.zzcoK = new StorageMetadata();
        }

        public Builder(StorageMetadata storageMetadata) {
            this.zzcoK = new StorageMetadata(storageMetadata, false, null);
        }

        private Builder(JSONObject jSONObject) throws JSONException {
            this.zzcoK = new StorageMetadata();
            if (jSONObject != null) {
                zzt(jSONObject);
                this.zzcoL = true;
            }
        }

        Builder(JSONObject jSONObject, StorageReference storageReference) throws JSONException {
            this(jSONObject);
            this.zzcoK.zzcoe = storageReference;
        }

        private final void zzt(JSONObject jSONObject) throws JSONException {
            this.zzcoK.zzcoy = jSONObject.optString("generation");
            this.zzcoK.mPath = jSONObject.optString("name");
            this.zzcoK.zzcox = jSONObject.optString("bucket");
            this.zzcoK.zzcoz = jSONObject.optString("metageneration");
            this.zzcoK.zzcoA = jSONObject.optString("timeCreated");
            this.zzcoK.zzcoB = jSONObject.optString("updated");
            this.zzcoK.zzcoC = jSONObject.optLong("size");
            this.zzcoK.zzcoD = jSONObject.optString("md5Hash");
            this.zzcoK.zzhH(jSONObject.optString("downloadTokens"));
            setContentType(jSONObject.optString("contentType"));
            if (jSONObject.has("metadata")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("metadata");
                Iterator keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    String str = (String) keys.next();
                    setCustomMetadata(str, jSONObject2.getString(str));
                }
            }
            setCacheControl(jSONObject.optString("cacheControl"));
            setContentDisposition(jSONObject.optString("contentDisposition"));
            setContentEncoding(jSONObject.optString("'contentEncoding"));
            setContentLanguage(jSONObject.optString("'contentLanguage"));
        }

        public StorageMetadata build() {
            return new StorageMetadata(this.zzcoK, this.zzcoL, null);
        }

        public Builder setCacheControl(String str) {
            this.zzcoK.zzcoE = str;
            return this;
        }

        public Builder setContentDisposition(String str) {
            this.zzcoK.zzcoF = str;
            return this;
        }

        public Builder setContentEncoding(String str) {
            this.zzcoK.zzcoG = str;
            return this;
        }

        public Builder setContentLanguage(String str) {
            this.zzcoK.zzcoH = str;
            return this;
        }

        public Builder setContentType(String str) {
            this.zzcoK.zzapZ = str;
            return this;
        }

        public Builder setCustomMetadata(String str, String str2) {
            if (this.zzcoK.zzcoI == null) {
                this.zzcoK.zzcoI = new HashMap();
            }
            this.zzcoK.zzcoI.put(str, str2);
            return this;
        }
    }

    public StorageMetadata() {
        this.mPath = null;
        this.zzcow = null;
        this.zzcoe = null;
        this.zzcox = null;
        this.zzcoy = null;
        this.zzapZ = null;
        this.zzcoz = null;
        this.zzcoA = null;
        this.zzcoB = null;
        this.zzcoD = null;
        this.zzcoE = null;
        this.zzcoF = null;
        this.zzcoG = null;
        this.zzcoH = null;
        this.zzcoI = null;
        this.zzcoJ = null;
    }

    private StorageMetadata(@NonNull StorageMetadata storageMetadata, boolean z) {
        this.mPath = null;
        this.zzcow = null;
        this.zzcoe = null;
        this.zzcox = null;
        this.zzcoy = null;
        this.zzapZ = null;
        this.zzcoz = null;
        this.zzcoA = null;
        this.zzcoB = null;
        this.zzcoD = null;
        this.zzcoE = null;
        this.zzcoF = null;
        this.zzcoG = null;
        this.zzcoH = null;
        this.zzcoI = null;
        this.zzcoJ = null;
        zzbo.zzu(storageMetadata);
        this.mPath = storageMetadata.mPath;
        this.zzcow = storageMetadata.zzcow;
        this.zzcoe = storageMetadata.zzcoe;
        this.zzcox = storageMetadata.zzcox;
        this.zzapZ = storageMetadata.zzapZ;
        this.zzcoE = storageMetadata.zzcoE;
        this.zzcoF = storageMetadata.zzcoF;
        this.zzcoG = storageMetadata.zzcoG;
        this.zzcoH = storageMetadata.zzcoH;
        if (storageMetadata.zzcoI != null) {
            this.zzcoI = new HashMap(storageMetadata.zzcoI);
        }
        this.zzcoJ = storageMetadata.zzcoJ;
        if (z) {
            this.zzcoD = storageMetadata.zzcoD;
            this.zzcoC = storageMetadata.zzcoC;
            this.zzcoB = storageMetadata.zzcoB;
            this.zzcoA = storageMetadata.zzcoA;
            this.zzcoz = storageMetadata.zzcoz;
            this.zzcoy = storageMetadata.zzcoy;
        }
    }

    /* synthetic */ StorageMetadata(StorageMetadata storageMetadata, boolean z, zzc zzc) {
        this(storageMetadata, z);
    }

    private final void zzhH(@Nullable String str) {
        if (!TextUtils.isEmpty(str)) {
            this.zzcoJ = str.split(",");
        }
    }

    @Nullable
    public String getBucket() {
        return this.zzcox;
    }

    @Nullable
    public String getCacheControl() {
        return this.zzcoE;
    }

    @Nullable
    public String getContentDisposition() {
        return this.zzcoF;
    }

    @Nullable
    public String getContentEncoding() {
        return this.zzcoG;
    }

    @Nullable
    public String getContentLanguage() {
        return this.zzcoH;
    }

    public String getContentType() {
        return this.zzapZ;
    }

    public long getCreationTimeMillis() {
        return abz.zzhL(this.zzcoA);
    }

    public String getCustomMetadata(@NonNull String str) {
        return (this.zzcoI == null || TextUtils.isEmpty(str)) ? null : (String) this.zzcoI.get(str);
    }

    @NonNull
    public Set<String> getCustomMetadataKeys() {
        return this.zzcoI == null ? Collections.emptySet() : this.zzcoI.keySet();
    }

    @Nullable
    public Uri getDownloadUrl() {
        List downloadUrls = getDownloadUrls();
        return (downloadUrls == null || downloadUrls.size() <= 0) ? null : (Uri) downloadUrls.get(0);
    }

    @Nullable
    public List<Uri> getDownloadUrls() {
        ArrayList arrayList = new ArrayList();
        if (!(this.zzcoJ == null || this.zzcoe == null)) {
            try {
                String zzv = ace.zzg(this.zzcoe.getStorage().getApp()).zzv(this.zzcoe.zzKP());
                if (!TextUtils.isEmpty(zzv)) {
                    for (CharSequence charSequence : this.zzcoJ) {
                        if (!TextUtils.isEmpty(charSequence)) {
                            StringBuilder stringBuilder = new StringBuilder((String.valueOf(zzv).length() + 17) + String.valueOf(charSequence).length());
                            stringBuilder.append(zzv);
                            stringBuilder.append("?alt=media&token=");
                            stringBuilder.append(charSequence);
                            arrayList.add(Uri.parse(stringBuilder.toString()));
                        }
                    }
                }
            } catch (RemoteException e) {
                Log.e("StorageMetadata", "Unexpected error getting DownloadUrls.", e);
            }
        }
        return arrayList;
    }

    @Nullable
    public String getGeneration() {
        return this.zzcoy;
    }

    @Nullable
    public String getMd5Hash() {
        return this.zzcoD;
    }

    @Nullable
    public String getMetadataGeneration() {
        return this.zzcoz;
    }

    @Nullable
    public String getName() {
        String path = getPath();
        if (TextUtils.isEmpty(path)) {
            return null;
        }
        int lastIndexOf = path.lastIndexOf(47);
        if (lastIndexOf != -1) {
            path = path.substring(lastIndexOf + 1);
        }
        return path;
    }

    @NonNull
    public String getPath() {
        return this.mPath != null ? this.mPath : "";
    }

    @Nullable
    public StorageReference getReference() {
        if (this.zzcoe != null || this.zzcow == null) {
            return this.zzcoe;
        }
        String bucket = getBucket();
        String path = getPath();
        if (TextUtils.isEmpty(bucket) || TextUtils.isEmpty(path)) {
            return null;
        }
        try {
            return new StorageReference(new android.net.Uri.Builder().scheme("gs").authority(bucket).encodedPath(abv.zzhI(path)).build(), this.zzcow);
        } catch (UnsupportedEncodingException e) {
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(bucket).length() + 38) + String.valueOf(path).length());
            stringBuilder.append("Unable to create a valid default Uri. ");
            stringBuilder.append(bucket);
            stringBuilder.append(path);
            Log.e("StorageMetadata", stringBuilder.toString(), e);
            throw new IllegalStateException(e);
        }
    }

    public long getSizeBytes() {
        return this.zzcoC;
    }

    public long getUpdatedTimeMillis() {
        return abz.zzhL(this.zzcoB);
    }

    /* Access modifiers changed, original: final */
    @NonNull
    public final JSONObject zzKN() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (getContentType() != null) {
            jSONObject.put("contentType", getContentType());
        }
        if (this.zzcoI != null) {
            jSONObject.put("metadata", new JSONObject(this.zzcoI));
        }
        if (getCacheControl() != null) {
            jSONObject.put("cacheControl", getCacheControl());
        }
        if (getContentDisposition() != null) {
            jSONObject.put("contentDisposition", getContentDisposition());
        }
        if (getContentEncoding() != null) {
            jSONObject.put("'contentEncoding", getContentEncoding());
        }
        if (getContentLanguage() != null) {
            jSONObject.put("'contentLanguage", getContentLanguage());
        }
        return jSONObject;
    }
}
