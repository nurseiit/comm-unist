package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import org.json.JSONException;

final class ck implements ch {
    ck() {
    }

    public final cm zzx(byte[] bArr) throws ca {
        if (bArr == null) {
            throw new ca("Cannot parse a null byte[]");
        } else if (bArr.length == 0) {
            throw new ca("Cannot parse a 0 length byte[]");
        } else {
            try {
                dj zzfP = cb.zzfP(new String(bArr));
                if (zzfP != null) {
                    zzcvk.v("The runtime configuration was successfully parsed from the resource");
                }
                return new cm(Status.zzaBm, 0, null, zzfP);
            } catch (JSONException unused) {
                throw new ca("The resource data is corrupted. The runtime configuration cannot be extracted from the JSON data");
            } catch (ca unused2) {
                throw new ca("The resource data is invalid. The runtime  configuration cannot be extracted from the JSON data");
            }
        }
    }
}
