package com.google.android.gms.location.places;

import android.os.Bundle;
import android.support.annotation.Nullable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzbe;
import com.google.android.gms.location.places.internal.zzag;
import com.google.android.gms.location.places.internal.zzai;
import java.util.Comparator;

public class PlaceLikelihoodBuffer extends AbstractDataBuffer<PlaceLikelihood> implements Result {
    private static final Comparator<zzag> zzbjE = new zzi();
    private final Status mStatus;
    private final int zzBM;
    private final String zzbjs;

    public PlaceLikelihoodBuffer(DataHolder dataHolder, int i) {
        super(dataHolder);
        this.mStatus = PlacesStatusCodes.zzaH(dataHolder.getStatusCode());
        switch (i) {
            case 100:
            case 101:
            case 102:
            case 103:
            case 104:
            case 105:
            case 106:
            case 107:
            case 108:
                this.zzBM = i;
                String string = (dataHolder == null || dataHolder.zzqN() == null) ? null : dataHolder.zzqN().getString("com.google.android.gms.location.places.PlaceLikelihoodBuffer.ATTRIBUTIONS_EXTRA_KEY");
                this.zzbjs = string;
                return;
            default:
                StringBuilder stringBuilder = new StringBuilder(27);
                stringBuilder.append("invalid source: ");
                stringBuilder.append(i);
                throw new IllegalArgumentException(stringBuilder.toString());
        }
    }

    public static int zzz(Bundle bundle) {
        return bundle.getInt("com.google.android.gms.location.places.PlaceLikelihoodBuffer.SOURCE_EXTRA_KEY");
    }

    public PlaceLikelihood get(int i) {
        return new zzai(this.zzaCX, i);
    }

    @Nullable
    public CharSequence getAttributions() {
        return this.zzbjs;
    }

    public Status getStatus() {
        return this.mStatus;
    }

    public String toString() {
        return zzbe.zzt(this).zzg("status", getStatus()).zzg("attributions", this.zzbjs).toString();
    }
}
