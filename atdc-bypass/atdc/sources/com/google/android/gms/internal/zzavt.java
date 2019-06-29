package com.google.android.gms.internal;

import android.app.Activity;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.TracksChooserDialogFragment;

final class zzavt implements OnClickListener {
    private /* synthetic */ zzavs zzavq;

    zzavt(zzavs zzavs) {
        this.zzavq = zzavs;
    }

    public final void onClick(View view) {
        Activity activity = (Activity) this.zzavq.zzavm.get();
        if (activity != null) {
            RemoteMediaClient zzb = this.zzavq.getRemoteMediaClient();
            if (zzb != null && zzb.hasMediaSession() && (activity instanceof FragmentActivity)) {
                FragmentActivity fragmentActivity = (FragmentActivity) activity;
                FragmentTransaction beginTransaction = fragmentActivity.getSupportFragmentManager().beginTransaction();
                Fragment findFragmentByTag = fragmentActivity.getSupportFragmentManager().findFragmentByTag("TRACKS_CHOOSER_DIALOG_TAG");
                if (findFragmentByTag != null) {
                    beginTransaction.remove(findFragmentByTag);
                }
                beginTransaction.addToBackStack(null);
                TracksChooserDialogFragment newInstance = TracksChooserDialogFragment.newInstance(zzb.getMediaInfo(), zzb.getMediaStatus().getActiveTrackIds());
                if (newInstance != null) {
                    newInstance.show(beginTransaction, "TRACKS_CHOOSER_DIALOG_TAG");
                }
            }
        }
    }
}
