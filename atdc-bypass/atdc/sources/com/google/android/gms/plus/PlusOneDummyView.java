package com.google.android.gms.plus;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

public class PlusOneDummyView extends FrameLayout {
    public static final String TAG = "PlusOneDummyView";

    interface zzd {
        Drawable getDrawable(int i);

        boolean isValid();
    }

    static class zza implements zzd {
        private Context mContext;

        private zza(Context context) {
            this.mContext = context;
        }

        /* synthetic */ zza(Context context, zzd zzd) {
            this(context);
        }

        public final Drawable getDrawable(int i) {
            return this.mContext.getResources().getDrawable(17301508);
        }

        public final boolean isValid() {
            return true;
        }
    }

    static class zzb implements zzd {
        private Context mContext;

        private zzb(Context context) {
            this.mContext = context;
        }

        /* synthetic */ zzb(Context context, zzd zzd) {
            this(context);
        }

        public final Drawable getDrawable(int i) {
            try {
                String str;
                Resources resources = this.mContext.createPackageContext("com.google.android.gms", 4).getResources();
                String str2 = "com.google.android.gms";
                switch (i) {
                    case 0:
                        str = "ic_plusone_small";
                        break;
                    case 1:
                        str = "ic_plusone_medium";
                        break;
                    case 2:
                        str = "ic_plusone_tall";
                        break;
                    default:
                        str = "ic_plusone_standard";
                        break;
                }
                return resources.getDrawable(resources.getIdentifier(str, "drawable", str2));
            } catch (NameNotFoundException unused) {
                return null;
            }
        }

        public final boolean isValid() {
            try {
                this.mContext.createPackageContext("com.google.android.gms", 4).getResources();
                return true;
            } catch (NameNotFoundException unused) {
                return false;
            }
        }
    }

    static class zzc implements zzd {
        private Context mContext;

        private zzc(Context context) {
            this.mContext = context;
        }

        /* synthetic */ zzc(Context context, zzd zzd) {
            this(context);
        }

        public final Drawable getDrawable(int i) {
            String str;
            switch (i) {
                case 0:
                    str = "ic_plusone_small_off_client";
                    break;
                case 1:
                    str = "ic_plusone_medium_off_client";
                    break;
                case 2:
                    str = "ic_plusone_tall_off_client";
                    break;
                default:
                    str = "ic_plusone_standard_off_client";
                    break;
            }
            return this.mContext.getResources().getDrawable(this.mContext.getResources().getIdentifier(str, "drawable", this.mContext.getPackageName()));
        }

        public final boolean isValid() {
            return (this.mContext.getResources().getIdentifier("ic_plusone_small_off_client", "drawable", this.mContext.getPackageName()) == 0 || this.mContext.getResources().getIdentifier("ic_plusone_medium_off_client", "drawable", this.mContext.getPackageName()) == 0 || this.mContext.getResources().getIdentifier("ic_plusone_tall_off_client", "drawable", this.mContext.getPackageName()) == 0 || this.mContext.getResources().getIdentifier("ic_plusone_standard_off_client", "drawable", this.mContext.getPackageName()) == 0) ? false : true;
        }
    }

    public PlusOneDummyView(Context context, int i) {
        super(context);
        Button button = new Button(context);
        button.setEnabled(false);
        zzd zzb = new zzb(getContext(), null);
        if (!zzb.isValid()) {
            zzb = new zzc(getContext(), null);
        }
        if (!zzb.isValid()) {
            zzb = new zza(getContext(), null);
        }
        button.setBackgroundDrawable(zzb.getDrawable(i));
        Point point = new Point();
        int i2 = 20;
        int i3 = 24;
        switch (i) {
            case 0:
                i2 = 14;
                break;
            case 1:
                i3 = 32;
                break;
            case 2:
                i3 = 50;
                break;
            default:
                i2 = 24;
                i3 = 38;
                break;
        }
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        float applyDimension = TypedValue.applyDimension(1, (float) i3, displayMetrics);
        float applyDimension2 = TypedValue.applyDimension(1, (float) i2, displayMetrics);
        point.x = (int) (((double) applyDimension) + 0.5d);
        point.y = (int) (((double) applyDimension2) + 0.5d);
        addView(button, new LayoutParams(point.x, point.y, 17));
    }
}
