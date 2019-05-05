package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzbs;
import com.google.android.gms.common.internal.zzbo;
import java.util.List;

@zzzn
public final class zzno extends RelativeLayout {
    private static final float[] zzHx = new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f};
    @Nullable
    private AnimationDrawable zzHy;

    public zzno(Context context, zznn zznn, LayoutParams layoutParams) {
        super(context);
        zzbo.zzu(zznn);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(zzHx, null, null));
        shapeDrawable.getPaint().setColor(zznn.getBackgroundColor());
        setLayoutParams(layoutParams);
        zzbs.zzbB().setBackground(this, shapeDrawable);
        layoutParams = new LayoutParams(-2, -2);
        if (!TextUtils.isEmpty(zznn.getText())) {
            LayoutParams layoutParams2 = new LayoutParams(-2, -2);
            TextView textView = new TextView(context);
            textView.setLayoutParams(layoutParams2);
            textView.setId(1195835393);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setText(zznn.getText());
            textView.setTextColor(zznn.getTextColor());
            textView.setTextSize((float) zznn.getTextSize());
            zzji.zzds();
            int zzc = zzaiy.zzc(context, 4);
            zzji.zzds();
            textView.setPadding(zzc, 0, zzaiy.zzc(context, 4), 0);
            addView(textView);
            layoutParams.addRule(1, textView.getId());
        }
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(layoutParams);
        imageView.setId(1195835394);
        List<Drawable> zzec = zznn.zzec();
        if (zzec.size() > 1) {
            this.zzHy = new AnimationDrawable();
            for (Drawable addFrame : zzec) {
                this.zzHy.addFrame(addFrame, zznn.zzed());
            }
            zzbs.zzbB().setBackground(imageView, this.zzHy);
        } else if (zzec.size() == 1) {
            imageView.setImageDrawable((Drawable) zzec.get(0));
        }
        addView(imageView);
    }

    public final void onAttachedToWindow() {
        if (this.zzHy != null) {
            this.zzHy.start();
        }
        super.onAttachedToWindow();
    }
}
