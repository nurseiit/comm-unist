package com.google.android.gms.internal;

import android.widget.TextView;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import java.util.ArrayList;
import java.util.List;

public final class zzawd extends UIController {
    private final TextView mView;
    private final List<String> zzavC = new ArrayList();

    public zzawd(TextView textView, List<String> list) {
        this.mView = textView;
        this.zzavC.addAll(list);
    }

    public final void onMediaStatusUpdated() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession()) {
            MediaQueueItem preloadedItem = remoteMediaClient.getPreloadedItem();
            if (preloadedItem != null) {
                MediaInfo media = preloadedItem.getMedia();
                if (media != null) {
                    MediaMetadata metadata = media.getMetadata();
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
}
