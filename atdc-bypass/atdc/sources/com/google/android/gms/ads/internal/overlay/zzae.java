package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import com.google.android.gms.internal.zzaiy;
import com.google.android.gms.internal.zzji;
import com.google.android.gms.internal.zzzn;

@zzzn
public final class zzae extends FrameLayout implements OnClickListener {
    private final ImageButton zzPG;
    private final zzaj zzPH;

    public zzae(Context context, zzaf zzaf, zzaj zzaj) {
        super(context);
        this.zzPH = zzaj;
        setOnClickListener(this);
        this.zzPG = new ImageButton(context);
        this.zzPG.setImageResource(17301527);
        this.zzPG.setBackgroundColor(0);
        this.zzPG.setOnClickListener(this);
        ImageButton imageButton = this.zzPG;
        zzji.zzds();
        int zzc = zzaiy.zzc(context, zzaf.paddingLeft);
        zzji.zzds();
        int zzc2 = zzaiy.zzc(context, 0);
        zzji.zzds();
        int zzc3 = zzaiy.zzc(context, zzaf.paddingRight);
        zzji.zzds();
        imageButton.setPadding(zzc, zzc2, zzc3, zzaiy.zzc(context, zzaf.paddingBottom));
        this.zzPG.setContentDescription("Interstitial close button");
        zzji.zzds();
        zzaiy.zzc(context, zzaf.size);
        imageButton = this.zzPG;
        zzji.zzds();
        zzc = zzaiy.zzc(context, (zzaf.size + zzaf.paddingLeft) + zzaf.paddingRight);
        zzji.zzds();
        addView(imageButton, new LayoutParams(zzc, zzaiy.zzc(context, zzaf.size + zzaf.paddingBottom), 17));
    }

    public final void onClick(View view) {
        if (this.zzPH != null) {
            this.zzPH.zzfJ();
        }
    }

    public final void zza(boolean z, boolean z2) {
        ImageButton imageButton;
        int i;
        if (!z2) {
            imageButton = this.zzPG;
            i = 0;
        } else if (z) {
            imageButton = this.zzPG;
            i = 4;
        } else {
            imageButton = this.zzPG;
            i = 8;
        }
        imageButton.setVisibility(i);
    }
}
