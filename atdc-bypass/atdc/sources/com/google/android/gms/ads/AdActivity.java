package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzji;
import com.google.android.gms.internal.zzwx;

@KeepForSdkWithMembers
public class AdActivity extends Activity {
    public static final String CLASS_NAME = "com.google.android.gms.ads.AdActivity";
    public static final String SIMPLE_CLASS_NAME = "AdActivity";
    private zzwx zzrP;

    private final void zzaa() {
        if (this.zzrP != null) {
            try {
                this.zzrP.zzaa();
            } catch (RemoteException e) {
                zzajc.zzc("Could not forward setContentViewSet to ad overlay:", e);
            }
        }
    }

    /* Access modifiers changed, original: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
        try {
            this.zzrP.onActivityResult(i, i2, intent);
        } catch (Exception e) {
            zzajc.zzc("Could not forward onActivityResult to ad overlay:", e);
        }
        super.onActivityResult(i, i2, intent);
    }

    public void onBackPressed() {
        boolean z = true;
        try {
            if (this.zzrP != null) {
                z = this.zzrP.zzfK();
            }
        } catch (RemoteException e) {
            zzajc.zzc("Could not forward onBackPressed to ad overlay:", e);
        }
        if (z) {
            super.onBackPressed();
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            this.zzrP.zzo(zzn.zzw(configuration));
        } catch (RemoteException e) {
            zzajc.zzc("Failed to wrap configuration.", e);
        }
    }

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzrP = zzji.zzdt().zzb((Activity) this);
        if (this.zzrP == null) {
            zzajc.zzaT("Could not create ad overlay.");
        } else {
            try {
                this.zzrP.onCreate(bundle);
                return;
            } catch (RemoteException e) {
                zzajc.zzc("Could not forward onCreate to ad overlay:", e);
            }
        }
        finish();
    }

    /* Access modifiers changed, original: protected */
    public void onDestroy() {
        try {
            if (this.zzrP != null) {
                this.zzrP.onDestroy();
            }
        } catch (RemoteException e) {
            zzajc.zzc("Could not forward onDestroy to ad overlay:", e);
        }
        super.onDestroy();
    }

    /* Access modifiers changed, original: protected */
    public void onPause() {
        try {
            if (this.zzrP != null) {
                this.zzrP.onPause();
            }
        } catch (RemoteException e) {
            zzajc.zzc("Could not forward onPause to ad overlay:", e);
            finish();
        }
        super.onPause();
    }

    /* Access modifiers changed, original: protected */
    public void onRestart() {
        super.onRestart();
        try {
            if (this.zzrP != null) {
                this.zzrP.onRestart();
            }
        } catch (RemoteException e) {
            zzajc.zzc("Could not forward onRestart to ad overlay:", e);
            finish();
        }
    }

    /* Access modifiers changed, original: protected */
    public void onResume() {
        super.onResume();
        try {
            if (this.zzrP != null) {
                this.zzrP.onResume();
            }
        } catch (RemoteException e) {
            zzajc.zzc("Could not forward onResume to ad overlay:", e);
            finish();
        }
    }

    /* Access modifiers changed, original: protected */
    public void onSaveInstanceState(Bundle bundle) {
        try {
            if (this.zzrP != null) {
                this.zzrP.onSaveInstanceState(bundle);
            }
        } catch (RemoteException e) {
            zzajc.zzc("Could not forward onSaveInstanceState to ad overlay:", e);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    /* Access modifiers changed, original: protected */
    public void onStart() {
        super.onStart();
        try {
            if (this.zzrP != null) {
                this.zzrP.onStart();
            }
        } catch (RemoteException e) {
            zzajc.zzc("Could not forward onStart to ad overlay:", e);
            finish();
        }
    }

    /* Access modifiers changed, original: protected */
    public void onStop() {
        try {
            if (this.zzrP != null) {
                this.zzrP.onStop();
            }
        } catch (RemoteException e) {
            zzajc.zzc("Could not forward onStop to ad overlay:", e);
            finish();
        }
        super.onStop();
    }

    public void setContentView(int i) {
        super.setContentView(i);
        zzaa();
    }

    public void setContentView(View view) {
        super.setContentView(view);
        zzaa();
    }

    public void setContentView(View view, LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        zzaa();
    }
}
