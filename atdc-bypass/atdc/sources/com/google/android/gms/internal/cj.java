package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import org.json.JSONException;

final class cj implements ch {
    cj() {
    }

    public final cm zzx(byte[] bArr) throws ca {
        if (bArr == null) {
            throw new ca("Cannot parse a null byte[]");
        } else if (bArr.length == 0) {
            throw new ca("Cannot parse a 0 length byte[]");
        } else {
            try {
                db zzfO = cb.zzfO(new String(bArr));
                if (zzfO != null) {
                    zzcvk.v("The container was successfully parsed from the resource");
                }
                return new cm(Status.zzaBm, 0, new cn(zzfO), ci.zzbKE.zzx(bArr).zzCR());
            } catch (JSONException unused) {
                throw new ca("The resource data is corrupted. The container cannot be extracted from the JSON data");
            } catch (ca unused2) {
                throw new ca("The resource data is invalid. The container cannot be extracted from the JSON data");
            }
        }
    }
}
