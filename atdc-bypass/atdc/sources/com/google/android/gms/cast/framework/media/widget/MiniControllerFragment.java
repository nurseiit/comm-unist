package com.google.android.gms.cast.framework.media.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.support.annotation.DrawableRes;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.google.android.gms.R;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.framework.media.uicontroller.UIMediaController;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzayo;

public class MiniControllerFragment extends Fragment implements ControlButtonsContainer {
    private static final zzayo zzarK = new zzayo("MiniControllerFragment");
    private UIMediaController zzawE;
    private boolean zzawG;
    private int zzawH;
    private int zzawI;
    private TextView zzawJ;
    private int zzawK;
    private int zzawL;
    private int zzawM;
    @DrawableRes
    private int zzawN;
    @DrawableRes
    private int zzawO;
    @DrawableRes
    private int zzawP;
    @DrawableRes
    private int zzawj;
    @DrawableRes
    private int zzawk;
    @DrawableRes
    private int zzawl;
    @DrawableRes
    private int zzawm;
    @DrawableRes
    private int zzawn;
    @DrawableRes
    private int zzawo;
    @DrawableRes
    private int zzawp;
    @DrawableRes
    private int zzawq;
    @DrawableRes
    private int zzawr;
    private int zzaws;
    private int[] zzawx;
    private ImageView[] zzawy = new ImageView[3];

    private final void zza(RelativeLayout relativeLayout, int i, int i2) {
        ImageView imageView = (ImageView) relativeLayout.findViewById(i);
        i2 = this.zzawx[i2];
        if (i2 == R.id.cast_button_type_empty) {
            imageView.setVisibility(4);
            return;
        }
        if (i2 != R.id.cast_button_type_custom) {
            if (i2 == R.id.cast_button_type_play_pause_toggle) {
                i2 = this.zzawj;
                int i3 = this.zzawk;
                int i4 = this.zzawl;
                if (this.zzawM == 1) {
                    i2 = this.zzawN;
                    i3 = this.zzawO;
                    i4 = this.zzawP;
                }
                Drawable zza = zzb.zza(getContext(), this.zzaws, i2);
                Drawable zza2 = zzb.zza(getContext(), this.zzaws, i3);
                Drawable zza3 = zzb.zza(getContext(), this.zzaws, i4);
                imageView.setImageDrawable(zza2);
                ProgressBar progressBar = new ProgressBar(getContext());
                LayoutParams layoutParams = new LayoutParams(-2, -2);
                layoutParams.addRule(8, i);
                layoutParams.addRule(6, i);
                layoutParams.addRule(5, i);
                layoutParams.addRule(7, i);
                layoutParams.addRule(15);
                progressBar.setLayoutParams(layoutParams);
                progressBar.setVisibility(8);
                Drawable indeterminateDrawable = progressBar.getIndeterminateDrawable();
                if (!(this.zzawL == 0 || indeterminateDrawable == null)) {
                    indeterminateDrawable.setColorFilter(this.zzawL, Mode.SRC_IN);
                }
                relativeLayout.addView(progressBar);
                this.zzawE.bindImageViewToPlayPauseToggle(imageView, zza, zza2, zza3, progressBar, true);
            } else if (i2 == R.id.cast_button_type_skip_previous) {
                imageView.setImageDrawable(zzb.zza(getContext(), this.zzaws, this.zzawm));
                imageView.setContentDescription(getResources().getString(R.string.cast_skip_prev));
                this.zzawE.bindViewToSkipPrev(imageView, 0);
            } else if (i2 == R.id.cast_button_type_skip_next) {
                imageView.setImageDrawable(zzb.zza(getContext(), this.zzaws, this.zzawn));
                imageView.setContentDescription(getResources().getString(R.string.cast_skip_next));
                this.zzawE.bindViewToSkipNext(imageView, 0);
            } else if (i2 == R.id.cast_button_type_rewind_30_seconds) {
                imageView.setImageDrawable(zzb.zza(getContext(), this.zzaws, this.zzawo));
                imageView.setContentDescription(getResources().getString(R.string.cast_rewind_30));
                this.zzawE.bindViewToRewind(imageView, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
            } else if (i2 == R.id.cast_button_type_forward_30_seconds) {
                imageView.setImageDrawable(zzb.zza(getContext(), this.zzaws, this.zzawp));
                imageView.setContentDescription(getResources().getString(R.string.cast_forward_30));
                this.zzawE.bindViewToForward(imageView, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
            } else if (i2 == R.id.cast_button_type_mute_toggle) {
                imageView.setImageDrawable(zzb.zza(getContext(), this.zzaws, this.zzawq));
                this.zzawE.bindImageViewToMuteToggle(imageView);
            } else if (i2 == R.id.cast_button_type_closed_caption) {
                imageView.setImageDrawable(zzb.zza(getContext(), this.zzaws, this.zzawr));
                this.zzawE.bindViewToClosedCaption(imageView);
            }
        }
    }

    public final ImageView getButtonImageViewAt(int i) throws IndexOutOfBoundsException {
        return this.zzawy[i];
    }

    public final int getButtonSlotCount() {
        return 3;
    }

    public final int getButtonTypeAt(int i) throws IndexOutOfBoundsException {
        return this.zzawx[i];
    }

    public UIMediaController getUIMediaController() {
        return this.zzawE;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.zzawE = new UIMediaController(getActivity());
        View inflate = layoutInflater.inflate(R.layout.cast_mini_controller, viewGroup);
        inflate.setVisibility(8);
        this.zzawE.bindViewVisibilityToMediaSession(inflate, 8);
        RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(R.id.container_current);
        if (this.zzawK != 0) {
            relativeLayout.setBackgroundResource(this.zzawK);
        }
        ImageView imageView = (ImageView) inflate.findViewById(R.id.icon_view);
        TextView textView = (TextView) inflate.findViewById(R.id.title_view);
        if (this.zzawH != 0) {
            textView.setTextAppearance(getActivity(), this.zzawH);
        }
        this.zzawJ = (TextView) inflate.findViewById(R.id.subtitle_view);
        if (this.zzawI != 0) {
            this.zzawJ.setTextAppearance(getActivity(), this.zzawI);
        }
        ProgressBar progressBar = (ProgressBar) inflate.findViewById(R.id.progressBar);
        if (this.zzawL != 0) {
            ((LayerDrawable) progressBar.getProgressDrawable()).setColorFilter(this.zzawL, Mode.SRC_IN);
        }
        this.zzawE.bindTextViewToMetadataOfCurrentItem(textView, MediaMetadata.KEY_TITLE);
        this.zzawE.bindTextViewToSmartSubtitle(this.zzawJ);
        this.zzawE.bindProgressBar(progressBar);
        this.zzawE.bindViewToLaunchExpandedController(relativeLayout);
        if (this.zzawG) {
            this.zzawE.bindImageViewToImageOfCurrentItem(imageView, new ImageHints(2, getResources().getDimensionPixelSize(R.dimen.cast_mini_controller_icon_width), getResources().getDimensionPixelSize(R.dimen.cast_mini_controller_icon_height)), R.drawable.cast_album_art_placeholder);
        } else {
            imageView.setVisibility(8);
        }
        this.zzawy[0] = (ImageView) relativeLayout.findViewById(R.id.button_0);
        this.zzawy[1] = (ImageView) relativeLayout.findViewById(R.id.button_1);
        this.zzawy[2] = (ImageView) relativeLayout.findViewById(R.id.button_2);
        zza(relativeLayout, R.id.button_0, 0);
        zza(relativeLayout, R.id.button_1, 1);
        zza(relativeLayout, R.id.button_2, 2);
        return inflate;
    }

    public void onDestroy() {
        if (this.zzawE != null) {
            this.zzawE.dispose();
            this.zzawE = null;
        }
        super.onDestroy();
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        super.onInflate(context, attributeSet, bundle);
        if (this.zzawx == null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CastMiniController, R.attr.castMiniControllerStyle, R.style.CastMiniController);
            this.zzawG = obtainStyledAttributes.getBoolean(R.styleable.CastMiniController_castShowImageThumbnail, true);
            int i = 0;
            this.zzawH = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castTitleTextAppearance, 0);
            this.zzawI = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castSubtitleTextAppearance, 0);
            this.zzawK = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castBackground, 0);
            this.zzawL = obtainStyledAttributes.getColor(R.styleable.CastMiniController_castProgressBarColor, 0);
            this.zzaws = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castButtonColor, 0);
            this.zzawj = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castPlayButtonDrawable, 0);
            this.zzawk = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castPauseButtonDrawable, 0);
            this.zzawl = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castStopButtonDrawable, 0);
            this.zzawN = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castPlayButtonDrawable, 0);
            this.zzawO = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castPauseButtonDrawable, 0);
            this.zzawP = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castStopButtonDrawable, 0);
            this.zzawm = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castSkipPreviousButtonDrawable, 0);
            this.zzawn = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castSkipNextButtonDrawable, 0);
            this.zzawo = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castRewind30ButtonDrawable, 0);
            this.zzawp = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castForward30ButtonDrawable, 0);
            this.zzawq = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castMuteToggleButtonDrawable, 0);
            this.zzawr = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castClosedCaptionsButtonDrawable, 0);
            int resourceId = obtainStyledAttributes.getResourceId(R.styleable.CastMiniController_castControlButtons, 0);
            if (resourceId != 0) {
                TypedArray obtainTypedArray = context.getResources().obtainTypedArray(resourceId);
                zzbo.zzaf(obtainTypedArray.length() == 3);
                this.zzawx = new int[obtainTypedArray.length()];
                for (resourceId = 0; resourceId < obtainTypedArray.length(); resourceId++) {
                    this.zzawx[resourceId] = obtainTypedArray.getResourceId(resourceId, 0);
                }
                obtainTypedArray.recycle();
                if (this.zzawG) {
                    this.zzawx[0] = R.id.cast_button_type_empty;
                }
                this.zzawM = 0;
                int[] iArr = this.zzawx;
                resourceId = iArr.length;
                while (i < resourceId) {
                    if (iArr[i] != R.id.cast_button_type_empty) {
                        this.zzawM++;
                    }
                    i++;
                }
            } else {
                zzarK.zzf("Unable to read attribute castControlButtons.", new Object[0]);
                this.zzawx = new int[]{R.id.cast_button_type_empty, R.id.cast_button_type_empty, R.id.cast_button_type_empty};
            }
            obtainStyledAttributes.recycle();
        }
    }
}
