package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.content.res.Resources;
import android.graphics.Rect;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.MarginLayoutParams;
import com.google.android.gms.R;
import com.google.android.gms.internal.ik;
import org.roboguice.shaded.goole.common.primitives.Ints;

final class zzk {
    private final Rect zzatr = new Rect();
    private final int zzats;
    private final int zzatt;
    private final int zzatu;
    private final int zzatv;
    private final zza zzatw;

    zzk(zza zza) {
        this.zzatw = (zza) ik.zzu(zza);
        Resources resources = zza.getResources();
        this.zzats = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_inner_radius);
        this.zzatt = resources.getDimensionPixelOffset(R.dimen.cast_libraries_material_featurehighlight_inner_margin);
        this.zzatu = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_text_max_width);
        this.zzatv = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_text_horizontal_offset);
    }

    private final int zza(View view, int i, int i2, int i3, int i4) {
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view.getLayoutParams();
        int i5 = i3 / 2;
        i4 = i4 - i <= i2 - i4 ? (i4 - i5) + this.zzatv : (i4 - i5) - this.zzatv;
        return i4 - marginLayoutParams.leftMargin < i ? i + marginLayoutParams.leftMargin : (i4 + i3) + marginLayoutParams.rightMargin > i2 ? (i2 - i3) - marginLayoutParams.rightMargin : i4;
    }

    private final void zza(View view, int i, int i2) {
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view.getLayoutParams();
        view.measure(MeasureSpec.makeMeasureSpec(Math.min((i - marginLayoutParams.leftMargin) - marginLayoutParams.rightMargin, this.zzatu), Ints.MAX_POWER_OF_TWO), MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE));
    }

    /* Access modifiers changed, original: final */
    public final void zza(Rect rect, Rect rect2) {
        View zznO = this.zzatw.zznO();
        int i = 0;
        if (rect.isEmpty() || rect2.isEmpty()) {
            zznO.layout(0, 0, 0, 0);
        } else {
            int centerY = rect.centerY();
            int centerX = rect.centerX();
            if (centerY < rect2.centerY()) {
                i = 1;
            }
            int max = Math.max(this.zzats * 2, rect.height()) / 2;
            int i2 = (centerY + max) + this.zzatt;
            int zza;
            if (i != 0) {
                zza(zznO, rect2.width(), rect2.bottom - i2);
                zza = zza(zznO, rect2.left, rect2.right, zznO.getMeasuredWidth(), centerX);
                zznO.layout(zza, i2, zznO.getMeasuredWidth() + zza, zznO.getMeasuredHeight() + i2);
            } else {
                i2 = (centerY - max) - this.zzatt;
                zza(zznO, rect2.width(), i2 - rect2.top);
                zza = zza(zznO, rect2.left, rect2.right, zznO.getMeasuredWidth(), centerX);
                zznO.layout(zza, i2 - zznO.getMeasuredHeight(), zznO.getMeasuredWidth() + zza, i2);
            }
        }
        this.zzatr.set(zznO.getLeft(), zznO.getTop(), zznO.getRight(), zznO.getBottom());
        this.zzatw.zznP().zzb(rect, this.zzatr);
        this.zzatw.zznQ().zzc(rect);
    }
}
