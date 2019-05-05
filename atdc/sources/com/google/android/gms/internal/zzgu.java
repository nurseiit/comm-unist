package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.zzbs;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@zzzn
public final class zzgu {
    private final Object mLock = new Object();
    private int zzyl;
    private List<zzgt> zzym = new LinkedList();

    public final boolean zza(zzgt zzgt) {
        synchronized (this.mLock) {
            if (this.zzym.contains(zzgt)) {
                return true;
            }
            return false;
        }
    }

    public final boolean zzb(zzgt zzgt) {
        synchronized (this.mLock) {
            Iterator it = this.zzym.iterator();
            while (it.hasNext()) {
                zzgt zzgt2 = (zzgt) it.next();
                if (!((Boolean) zzbs.zzbL().zzd(zzmo.zzCZ)).booleanValue() || zzbs.zzbD().zzhn()) {
                    if (((Boolean) zzbs.zzbL().zzd(zzmo.zzDb)).booleanValue() && !zzbs.zzbD().zzho() && zzgt != zzgt2 && zzgt2.zzcF().equals(zzgt.zzcF())) {
                        it.remove();
                        return true;
                    }
                } else if (zzgt != zzgt2 && zzgt2.zzcD().equals(zzgt.zzcD())) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }
    }

    public final void zzc(zzgt zzgt) {
        synchronized (this.mLock) {
            int size;
            if (this.zzym.size() >= 10) {
                size = this.zzym.size();
                StringBuilder stringBuilder = new StringBuilder(41);
                stringBuilder.append("Queue is full, current size = ");
                stringBuilder.append(size);
                zzajc.zzaC(stringBuilder.toString());
                this.zzym.remove(0);
            }
            size = this.zzyl;
            this.zzyl = size + 1;
            zzgt.zzj(size);
            this.zzym.add(zzgt);
        }
    }

    @Nullable
    public final zzgt zzcL() {
        synchronized (this.mLock) {
            zzgt zzgt = null;
            if (this.zzym.size() == 0) {
                zzajc.zzaC("Queue empty");
                return null;
            }
            int i = 0;
            if (this.zzym.size() >= 2) {
                int i2 = Integer.MIN_VALUE;
                int i3 = 0;
                for (zzgt zzgt2 : this.zzym) {
                    int score = zzgt2.getScore();
                    if (score > i2) {
                        i = i3;
                        zzgt = zzgt2;
                        i2 = score;
                    }
                    i3++;
                }
                this.zzym.remove(i);
                return zzgt;
            }
            zzgt zzgt3 = (zzgt) this.zzym.get(0);
            zzgt3.zzcG();
            return zzgt3;
        }
    }
}
