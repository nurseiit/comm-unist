package com.google.android.gms.awareness.fence;

import android.app.PendingIntent;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.internal.zzbiy;
import com.google.android.gms.internal.zzbjj;
import com.google.android.gms.internal.zzbjt;
import java.util.ArrayList;

public interface FenceUpdateRequest {

    public static class Builder {
        private final ArrayList<zzbjt> zzanP = new ArrayList();

        public Builder addFence(String str, AwarenessFence awarenessFence, PendingIntent pendingIntent) {
            zzbo.zzcF(str);
            zzbo.zzu(awarenessFence);
            zzbo.zzu(pendingIntent);
            this.zzanP.add(zzbjt.zza(str, 0, (zzbiy) awarenessFence, pendingIntent));
            return this;
        }

        public FenceUpdateRequest build() {
            return new zzbjj(this.zzanP);
        }

        public Builder removeFence(PendingIntent pendingIntent) {
            zzbo.zzu(pendingIntent);
            this.zzanP.add(zzbjt.zza(pendingIntent));
            return this;
        }

        public Builder removeFence(String str) {
            zzbo.zzcF(str);
            this.zzanP.add(zzbjt.zzcN(str));
            return this;
        }
    }
}
