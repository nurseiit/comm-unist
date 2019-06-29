package com.google.android.gms.location.places.ui;

import android.view.View;
import android.view.View.OnClickListener;

final class zzc implements OnClickListener {
    private /* synthetic */ PlaceAutocompleteFragment zzblt;

    zzc(PlaceAutocompleteFragment placeAutocompleteFragment) {
        this.zzblt = placeAutocompleteFragment;
    }

    public final void onClick(View view) {
        if (!this.zzblt.zzblp) {
            this.zzblt.zzwc();
        }
    }
}
