package com.google.android.gms.internal;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.R;
import com.google.android.gms.ads.internal.zzbs;
import java.util.Map;

@zzzn
public final class zzwn extends zzwu {
    private final Context mContext;
    private final Map<String, String> zzHa;

    public zzwn(zzaka zzaka, Map<String, String> map) {
        super(zzaka, "storePicture");
        this.zzHa = map;
        this.mContext = zzaka.zzis();
    }

    public final void execute() {
        if (this.mContext == null) {
            zzan("Activity context is not available");
            return;
        }
        zzbs.zzbz();
        if (zzagz.zzH(this.mContext).zzdG()) {
            String str = (String) this.zzHa.get("iurl");
            String lastPathSegment;
            if (TextUtils.isEmpty(str)) {
                zzan("Image url cannot be empty.");
                return;
            } else if (URLUtil.isValidUrl(str)) {
                lastPathSegment = Uri.parse(str).getLastPathSegment();
                zzbs.zzbz();
                if (zzagz.zzaK(lastPathSegment)) {
                    Resources resources = zzbs.zzbD().getResources();
                    zzbs.zzbz();
                    Builder zzG = zzagz.zzG(this.mContext);
                    zzG.setTitle(resources != null ? resources.getString(R.string.s1) : "Save image");
                    zzG.setMessage(resources != null ? resources.getString(R.string.s2) : "Allow Ad to store image in Picture gallery?");
                    zzG.setPositiveButton(resources != null ? resources.getString(R.string.s3) : "Accept", new zzwo(this, str, lastPathSegment));
                    zzG.setNegativeButton(resources != null ? resources.getString(R.string.s4) : "Decline", new zzwp(this));
                    zzG.create().show();
                    return;
                }
                str = "Image type not recognized: ";
                lastPathSegment = String.valueOf(lastPathSegment);
                zzan(lastPathSegment.length() != 0 ? str.concat(lastPathSegment) : new String(str));
                return;
            } else {
                lastPathSegment = "Invalid image url: ";
                str = String.valueOf(str);
                zzan(str.length() != 0 ? lastPathSegment.concat(str) : new String(lastPathSegment));
                return;
            }
        }
        zzan("Feature is not supported by the device.");
    }
}
