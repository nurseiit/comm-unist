package com.google.android.gms.ads.mediation;

import android.os.Bundle;

public interface MediationAdapter {

    public static class zza {
        private int zzacL;

        public final zza zzB(int i) {
            this.zzacL = 1;
            return this;
        }

        public final Bundle zzjh() {
            Bundle bundle = new Bundle();
            bundle.putInt("capabilities", this.zzacL);
            return bundle;
        }
    }

    void onDestroy();

    void onPause();

    void onResume();
}
