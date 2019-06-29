package com.google.android.gms.cast.framework.media;

import android.app.AlertDialog;
import android.app.Dialog;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.DialogFragment;
import android.view.View;
import android.widget.ListView;
import android.widget.TabHost;
import android.widget.TabHost.TabSpec;
import com.google.android.gms.R;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaTrack;
import com.google.android.gms.cast.MediaTrack.Builder;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

public class TracksChooserDialogFragment extends DialogFragment {
    private Dialog mDialog;
    private long[] zzaqu;
    private List<MediaTrack> zzauH;
    private List<MediaTrack> zzauI;

    public static TracksChooserDialogFragment newInstance(MediaInfo mediaInfo, long[] jArr) {
        if (mediaInfo == null) {
            return null;
        }
        List mediaTracks = mediaInfo.getMediaTracks();
        if (mediaTracks == null) {
            return null;
        }
        ArrayList zza = zza(mediaTracks, 2);
        ArrayList zza2 = zza(mediaTracks, 1);
        if (zza.size() <= 1 && zza2.isEmpty()) {
            return null;
        }
        TracksChooserDialogFragment tracksChooserDialogFragment = new TracksChooserDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("extra_tracks_type_audio", zza);
        bundle.putParcelableArrayList("extra_tracks_type_text", zza2);
        bundle.putLongArray("extra_active_track_ids", jArr);
        tracksChooserDialogFragment.setArguments(bundle);
        return tracksChooserDialogFragment;
    }

    private static int zza(List<MediaTrack> list, long[] jArr, int i) {
        if (jArr == null || list == null) {
            return i;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            for (long j : jArr) {
                if (j == ((MediaTrack) list.get(i2)).getId()) {
                    return i2;
                }
            }
        }
        return i;
    }

    @NonNull
    private static ArrayList<MediaTrack> zza(List<MediaTrack> list, int i) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (MediaTrack mediaTrack : list) {
                if (mediaTrack.getType() == i) {
                    arrayList.add(mediaTrack);
                }
            }
        }
        return arrayList;
    }

    private final void zza(zzal zzal, zzal zzal2) {
        CastSession currentCastSession = CastContext.getSharedInstance(getContext()).getSessionManager().getCurrentCastSession();
        if (currentCastSession != null && currentCastSession.isConnected()) {
            RemoteMediaClient remoteMediaClient = currentCastSession.getRemoteMediaClient();
            if (remoteMediaClient != null && remoteMediaClient.hasMediaSession()) {
                ArrayList arrayList = new ArrayList();
                MediaTrack zzod = zzal.zzod();
                if (zzod.getId() != -1) {
                    arrayList.add(Long.valueOf(zzod.getId()));
                }
                zzod = zzal2.zzod();
                if (zzod != null) {
                    arrayList.add(Long.valueOf(zzod.getId()));
                }
                long[] activeTrackIds = remoteMediaClient.getMediaStatus().getActiveTrackIds();
                if (activeTrackIds != null && activeTrackIds.length > 0) {
                    HashSet hashSet = new HashSet();
                    for (MediaTrack id : this.zzauI) {
                        hashSet.add(Long.valueOf(id.getId()));
                    }
                    for (MediaTrack id2 : this.zzauH) {
                        hashSet.add(Long.valueOf(id2.getId()));
                    }
                    for (long j : activeTrackIds) {
                        if (!hashSet.contains(Long.valueOf(j))) {
                            arrayList.add(Long.valueOf(j));
                        }
                    }
                }
                activeTrackIds = new long[arrayList.size()];
                for (int i = 0; i < arrayList.size(); i++) {
                    activeTrackIds[i] = ((Long) arrayList.get(i)).longValue();
                }
                Arrays.sort(activeTrackIds);
                remoteMediaClient.setActiveMediaTracks(activeTrackIds);
                if (this.mDialog != null) {
                    this.mDialog.cancel();
                    this.mDialog = null;
                }
            }
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
        this.zzauH = getArguments().getParcelableArrayList("extra_tracks_type_text");
        if (!this.zzauH.isEmpty()) {
            this.zzauH.add(0, new Builder(-1, 1).setName(getActivity().getString(R.string.cast_tracks_chooser_dialog_none)).setSubtype(2).setContentId("").build());
        }
        this.zzauI = getArguments().getParcelableArrayList("extra_tracks_type_audio");
        this.zzaqu = getArguments().getLongArray("extra_active_track_ids");
    }

    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        TabSpec newTabSpec;
        int zza = zza(this.zzauH, this.zzaqu, 0);
        int zza2 = zza(this.zzauI, this.zzaqu, -1);
        zzal zzal = new zzal(getActivity(), this.zzauH, zza);
        zzal zzal2 = new zzal(getActivity(), this.zzauI, zza2);
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        View inflate = getActivity().getLayoutInflater().inflate(R.layout.cast_tracks_chooser_dialog_layout, null);
        ListView listView = (ListView) inflate.findViewById(R.id.text_list_view);
        ListView listView2 = (ListView) inflate.findViewById(R.id.audio_list_view);
        TabHost tabHost = (TabHost) inflate.findViewById(R.id.tab_host);
        tabHost.setup();
        if (zzal.getCount() == 0) {
            listView.setVisibility(4);
        } else {
            listView.setAdapter(zzal);
            newTabSpec = tabHost.newTabSpec("textTab");
            newTabSpec.setContent(R.id.text_list_view);
            newTabSpec.setIndicator(getActivity().getString(R.string.cast_tracks_chooser_dialog_subtitles));
            tabHost.addTab(newTabSpec);
        }
        if (zzal2.getCount() <= 1) {
            listView2.setVisibility(4);
        } else {
            listView2.setAdapter(zzal2);
            newTabSpec = tabHost.newTabSpec("audioTab");
            newTabSpec.setContent(R.id.audio_list_view);
            newTabSpec.setIndicator(getActivity().getString(R.string.cast_tracks_chooser_dialog_audio));
            tabHost.addTab(newTabSpec);
        }
        builder.setView(inflate).setPositiveButton(getActivity().getString(R.string.cast_tracks_chooser_dialog_ok), new zzak(this, zzal, zzal2)).setNegativeButton(R.string.cast_tracks_chooser_dialog_cancel, new zzaj(this));
        if (this.mDialog != null) {
            this.mDialog.cancel();
            this.mDialog = null;
        }
        this.mDialog = builder.create();
        return this.mDialog;
    }

    public void onDestroyView() {
        if (getDialog() != null && getRetainInstance()) {
            getDialog().setDismissMessage(null);
        }
        super.onDestroyView();
    }
}
