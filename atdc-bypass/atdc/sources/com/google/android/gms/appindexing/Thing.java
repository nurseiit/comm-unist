package com.google.android.gms.appindexing;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.plus.PlusShare;
import java.util.ArrayList;

@Deprecated
public class Thing {
    final Bundle zzajQ;

    @Deprecated
    public static class Builder {
        final Bundle mBundle = new Bundle();

        public Thing build() {
            return new Thing(this.mBundle);
        }

        public Builder put(String str, Thing thing) {
            zzbo.zzu(str);
            if (thing != null) {
                this.mBundle.putParcelable(str, thing.zzajQ);
            }
            return this;
        }

        public Builder put(String str, String str2) {
            zzbo.zzu(str);
            if (str2 != null) {
                this.mBundle.putString(str, str2);
            }
            return this;
        }

        public Builder put(String str, boolean z) {
            zzbo.zzu(str);
            this.mBundle.putBoolean(str, z);
            return this;
        }

        public Builder put(String str, Thing[] thingArr) {
            zzbo.zzu(str);
            if (thingArr != null) {
                ArrayList arrayList = new ArrayList();
                for (Thing thing : thingArr) {
                    if (thing != null) {
                        arrayList.add(thing.zzajQ);
                    }
                }
                this.mBundle.putParcelableArray(str, (Parcelable[]) arrayList.toArray(new Bundle[arrayList.size()]));
            }
            return this;
        }

        public Builder put(String str, String[] strArr) {
            zzbo.zzu(str);
            if (strArr != null) {
                this.mBundle.putStringArray(str, strArr);
            }
            return this;
        }

        public Builder setDescription(String str) {
            put(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, str);
            return this;
        }

        public Builder setId(String str) {
            if (str != null) {
                put("id", str);
            }
            return this;
        }

        public Builder setName(String str) {
            zzbo.zzu(str);
            put("name", str);
            return this;
        }

        public Builder setType(String str) {
            put("type", str);
            return this;
        }

        public Builder setUrl(Uri uri) {
            zzbo.zzu(uri);
            put(PlusShare.KEY_CALL_TO_ACTION_URL, uri.toString());
            return this;
        }
    }

    Thing(Bundle bundle) {
        this.zzajQ = bundle;
    }

    public final Bundle zzmn() {
        return this.zzajQ;
    }
}
