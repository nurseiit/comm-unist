package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.CalendarContract.Events;
import android.text.TextUtils;
import com.google.android.gms.R;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.plus.PlusShare;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.util.Map;

@zzzn
public final class zzwh extends zzwu {
    private final Context mContext;
    private final Map<String, String> zzHa;
    private String zzNs = zzal(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION);
    private long zzNt = zzam("start_ticks");
    private long zzNu = zzam("end_ticks");
    private String zzNv = zzal("summary");
    private String zzNw = zzal(Param.LOCATION);

    public zzwh(zzaka zzaka, Map<String, String> map) {
        super(zzaka, "createCalendarEvent");
        this.zzHa = map;
        this.mContext = zzaka.zzis();
    }

    private final String zzal(String str) {
        return TextUtils.isEmpty((CharSequence) this.zzHa.get(str)) ? "" : (String) this.zzHa.get(str);
    }

    private final long zzam(String str) {
        str = (String) this.zzHa.get(str);
        if (str == null) {
            return -1;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    /* Access modifiers changed, original: final */
    @TargetApi(14)
    public final Intent createIntent() {
        Intent data = new Intent("android.intent.action.EDIT").setData(Events.CONTENT_URI);
        data.putExtra("title", this.zzNs);
        data.putExtra("eventLocation", this.zzNw);
        data.putExtra(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, this.zzNv);
        if (this.zzNt > -1) {
            data.putExtra("beginTime", this.zzNt);
        }
        if (this.zzNu > -1) {
            data.putExtra("endTime", this.zzNu);
        }
        data.setFlags(DriveFile.MODE_READ_ONLY);
        return data;
    }

    public final void execute() {
        if (this.mContext == null) {
            zzan("Activity context is not available.");
            return;
        }
        zzbs.zzbz();
        if (zzagz.zzH(this.mContext).zzdH()) {
            zzbs.zzbz();
            Builder zzG = zzagz.zzG(this.mContext);
            Resources resources = zzbs.zzbD().getResources();
            zzG.setTitle(resources != null ? resources.getString(R.string.s5) : "Create calendar event");
            zzG.setMessage(resources != null ? resources.getString(R.string.s6) : "Allow Ad to create a calendar event?");
            zzG.setPositiveButton(resources != null ? resources.getString(R.string.s3) : "Accept", new zzwi(this));
            zzG.setNegativeButton(resources != null ? resources.getString(R.string.s4) : "Decline", new zzwj(this));
            zzG.create().show();
            return;
        }
        zzan("This feature is not available on the device.");
    }
}
