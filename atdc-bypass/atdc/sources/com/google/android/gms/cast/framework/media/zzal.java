package com.google.android.gms.cast.framework.media;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.RadioButton;
import android.widget.TextView;
import com.google.android.gms.R;
import com.google.android.gms.cast.MediaTrack;
import java.util.ArrayList;
import java.util.List;

public final class zzal extends ArrayAdapter<MediaTrack> implements OnClickListener {
    private final Context mContext;
    private int zzauM;

    public zzal(Context context, List<MediaTrack> list, int i) {
        List list2;
        int i2 = R.layout.cast_tracks_chooser_dialog_row_layout;
        if (list2 == null) {
            list2 = new ArrayList();
        }
        super(context, i2, list2);
        this.zzauM = -1;
        this.mContext = context;
        this.zzauM = i;
    }

    public final View getView(int i, View view, ViewGroup viewGroup) {
        zzan zzan;
        if (view == null) {
            view = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.cast_tracks_chooser_dialog_row_layout, viewGroup, false);
            zzan = new zzan(this, (TextView) view.findViewById(R.id.text), (RadioButton) view.findViewById(R.id.radio));
            view.setTag(zzan);
        } else {
            zzan = (zzan) view.getTag();
        }
        if (zzan == null) {
            return null;
        }
        CharSequence string;
        zzan.zzauO.setTag(Integer.valueOf(i));
        zzan.zzauO.setChecked(this.zzauM == i);
        view.setOnClickListener(this);
        MediaTrack mediaTrack = (MediaTrack) getItem(i);
        String name = mediaTrack.getName();
        if (TextUtils.isEmpty(name)) {
            if (mediaTrack.getSubtype() == 2) {
                string = this.mContext.getString(R.string.cast_tracks_chooser_dialog_closed_captions);
            } else {
                if (!TextUtils.isEmpty(mediaTrack.getLanguage())) {
                    String displayLanguage = MediaUtils.getTrackLanguage(mediaTrack).getDisplayLanguage();
                    if (!TextUtils.isEmpty(displayLanguage)) {
                        string = displayLanguage;
                    }
                }
                name = this.mContext.getString(R.string.cast_tracks_chooser_dialog_default_track_name, new Object[]{Integer.valueOf(i + 1)});
            }
            zzan.zzauN.setText(string);
            return view;
        }
        string = name;
        zzan.zzauN.setText(string);
        return view;
    }

    public final void onClick(View view) {
        this.zzauM = ((Integer) ((zzan) view.getTag()).zzauO.getTag()).intValue();
        notifyDataSetChanged();
    }

    public final MediaTrack zzod() {
        return (this.zzauM < 0 || this.zzauM >= getCount()) ? null : (MediaTrack) getItem(this.zzauM);
    }
}
