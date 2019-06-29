package com.google.android.gms.common.data;

import java.util.ArrayList;

public abstract class zzg<T> extends AbstractDataBuffer<T> {
    private boolean zzaFO = false;
    private ArrayList<Integer> zzaFP;

    protected zzg(DataHolder dataHolder) {
        super(dataHolder);
    }

    private final int zzaw(int i) {
        if (i >= 0 && i < this.zzaFP.size()) {
            return ((Integer) this.zzaFP.get(i)).intValue();
        }
        StringBuilder stringBuilder = new StringBuilder(53);
        stringBuilder.append("Position ");
        stringBuilder.append(i);
        stringBuilder.append(" is out of bounds for this buffer");
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    private final void zzqT() {
        synchronized (this) {
            if (!this.zzaFO) {
                int i = this.zzaCX.zzaFG;
                this.zzaFP = new ArrayList();
                if (i > 0) {
                    this.zzaFP.add(Integer.valueOf(0));
                    String zzqS = zzqS();
                    Object zzd = this.zzaCX.zzd(zzqS, 0, this.zzaCX.zzat(0));
                    for (int i2 = 1; i2 < i; i2++) {
                        int zzat = this.zzaCX.zzat(i2);
                        String zzd2 = this.zzaCX.zzd(zzqS, i2, zzat);
                        if (zzd2 == null) {
                            StringBuilder stringBuilder = new StringBuilder(String.valueOf(zzqS).length() + 78);
                            stringBuilder.append("Missing value for markerColumn: ");
                            stringBuilder.append(zzqS);
                            stringBuilder.append(", at row: ");
                            stringBuilder.append(i2);
                            stringBuilder.append(", for window: ");
                            stringBuilder.append(zzat);
                            throw new NullPointerException(stringBuilder.toString());
                        }
                        if (!zzd2.equals(zzd)) {
                            this.zzaFP.add(Integer.valueOf(i2));
                            zzd = zzd2;
                        }
                    }
                }
                this.zzaFO = true;
            }
        }
    }

    public final T get(int i) {
        int i2;
        zzqT();
        int zzaw = zzaw(i);
        if (i < 0 || i == this.zzaFP.size()) {
            i2 = 0;
        } else {
            i2 = (i == this.zzaFP.size() - 1 ? this.zzaCX.zzaFG : ((Integer) this.zzaFP.get(i + 1)).intValue()) - ((Integer) this.zzaFP.get(i)).intValue();
            if (i2 == 1) {
                this.zzaCX.zzat(zzaw(i));
            }
        }
        return zzi(zzaw, i2);
    }

    public int getCount() {
        zzqT();
        return this.zzaFP.size();
    }

    public abstract T zzi(int i, int i2);

    public abstract String zzqS();
}
