package com.google.android.gms.games.leaderboard;

import android.os.Bundle;

public final class zza {
    private final Bundle mBundle;

    public zza(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.mBundle = bundle;
    }

    public final Bundle asBundle() {
        return this.mBundle;
    }
}
