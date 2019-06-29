package com.google.android.gms.internal;

import android.widget.TextView;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import java.util.ArrayList;
import java.util.List;

public final class zzawe extends UIController {
    private final TextView mView;
    private final List<String> zzavC = new ArrayList();

    public zzawe(TextView textView, List<String> list) {
        this.mView = textView;
        this.zzavC.addAll(list);
    }

    public final void onMediaStatusUpdated() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession()) {
            MediaInfo mediaInfo = remoteMediaClient.getMediaStatus().getMediaInfo();
            if (mediaInfo != null) {
                MediaMetadata metadata = mediaInfo.getMetadata();
                if (metadata != null) {
                    for (String str : this.zzavC) {
                        if (metadata.containsKey(str)) {
                            this.mView.setText(metadata.getString(str));
                            break;
                        }
                    }
                }
            }
        }
    }
}
