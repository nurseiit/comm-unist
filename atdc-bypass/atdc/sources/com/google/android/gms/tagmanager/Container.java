package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.eg;
import com.google.android.gms.internal.ek;
import com.google.android.gms.internal.eo;
import com.google.android.gms.internal.zzbn;
import com.google.android.gms.internal.zzbp;
import com.google.android.gms.internal.zzbq;
import com.google.android.gms.internal.zzbr;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class Container {
    private final Context mContext;
    private Map<String, FunctionCallTagCallback> zzbDA = new HashMap();
    private volatile long zzbDB;
    private volatile String zzbDC = "";
    private final String zzbDw;
    private final DataLayer zzbDx;
    private zzfc zzbDy;
    private Map<String, FunctionCallMacroCallback> zzbDz = new HashMap();

    public interface FunctionCallMacroCallback {
        Object getValue(String str, Map<String, Object> map);
    }

    public interface FunctionCallTagCallback {
        void execute(String str, Map<String, Object> map);
    }

    class zza implements zzan {
        private zza() {
        }

        /* synthetic */ zza(Container container, zzu zzu) {
            this();
        }

        public final Object zzd(String str, Map<String, Object> map) {
            FunctionCallMacroCallback zzeX = Container.this.zzeX(str);
            return zzeX == null ? null : zzeX.getValue(str, map);
        }
    }

    class zzb implements zzan {
        private zzb() {
        }

        /* synthetic */ zzb(Container container, zzu zzu) {
            this();
        }

        public final Object zzd(String str, Map<String, Object> map) {
            FunctionCallTagCallback zzeY = Container.this.zzeY(str);
            if (zzeY != null) {
                zzeY.execute(str, map);
            }
            return zzgk.zzCg();
        }
    }

    Container(Context context, DataLayer dataLayer, String str, long j, ek ekVar) {
        this.mContext = context;
        this.zzbDx = dataLayer;
        this.zzbDw = str;
        this.zzbDB = 0;
        zza(ekVar);
    }

    Container(Context context, DataLayer dataLayer, String str, long j, zzbq zzbq) {
        this.mContext = context;
        this.zzbDx = dataLayer;
        this.zzbDw = str;
        this.zzbDB = j;
        zzbn zzbn = zzbq.zzlB;
        if (zzbn == null) {
            throw new NullPointerException();
        }
        try {
            zza(eg.zza(zzbn));
        } catch (eo e) {
            String valueOf = String.valueOf(zzbn);
            String valueOf2 = String.valueOf(e.toString());
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 46) + String.valueOf(valueOf2).length());
            stringBuilder.append("Not loading resource: ");
            stringBuilder.append(valueOf);
            stringBuilder.append(" because it is invalid: ");
            stringBuilder.append(valueOf2);
            zzdj.e(stringBuilder.toString());
        }
        if (zzbq.zzlA != null) {
            zza(zzbq.zzlA);
        }
    }

    private final synchronized zzfc zzAJ() {
        return this.zzbDy;
    }

    private final void zza(ek ekVar) {
        this.zzbDC = ekVar.getVersion();
        String str = this.zzbDC;
        zzei.zzBD().zzBE().equals(zza.CONTAINER_DEBUG);
        ek ekVar2 = ekVar;
        zza(new zzfc(this.mContext, ekVar2, this.zzbDx, new zza(this, null), new zzb(this, null), new zzdr()));
        if (getBoolean("_gtm.loadEventEnabled")) {
            this.zzbDx.pushEvent("gtm.load", DataLayer.mapOf("gtm.id", this.zzbDw));
        }
    }

    private final synchronized void zza(zzfc zzfc) {
        this.zzbDy = zzfc;
    }

    private final void zza(zzbp[] zzbpArr) {
        ArrayList arrayList = new ArrayList();
        for (Object add : zzbpArr) {
            arrayList.add(add);
        }
        zzAJ().zzL(arrayList);
    }

    public boolean getBoolean(String str) {
        zzfc zzAJ = zzAJ();
        if (zzAJ == null) {
            str = "getBoolean called for closed container.";
        } else {
            try {
                return zzgk.zzf((zzbr) zzAJ.zzfs(str).getObject()).booleanValue();
            } catch (Exception e) {
                str = String.valueOf(e.getMessage());
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 66);
                stringBuilder.append("Calling getBoolean() threw an exception: ");
                stringBuilder.append(str);
                stringBuilder.append(" Returning default value.");
                str = stringBuilder.toString();
            }
        }
        zzdj.e(str);
        return zzgk.zzCe().booleanValue();
    }

    public String getContainerId() {
        return this.zzbDw;
    }

    public double getDouble(String str) {
        zzfc zzAJ = zzAJ();
        if (zzAJ == null) {
            str = "getDouble called for closed container.";
        } else {
            try {
                return zzgk.zze((zzbr) zzAJ.zzfs(str).getObject()).doubleValue();
            } catch (Exception e) {
                str = String.valueOf(e.getMessage());
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 65);
                stringBuilder.append("Calling getDouble() threw an exception: ");
                stringBuilder.append(str);
                stringBuilder.append(" Returning default value.");
                str = stringBuilder.toString();
            }
        }
        zzdj.e(str);
        return zzgk.zzCd().doubleValue();
    }

    public long getLastRefreshTime() {
        return this.zzbDB;
    }

    public long getLong(String str) {
        zzfc zzAJ = zzAJ();
        if (zzAJ == null) {
            str = "getLong called for closed container.";
        } else {
            try {
                return zzgk.zzd((zzbr) zzAJ.zzfs(str).getObject()).longValue();
            } catch (Exception e) {
                str = String.valueOf(e.getMessage());
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 63);
                stringBuilder.append("Calling getLong() threw an exception: ");
                stringBuilder.append(str);
                stringBuilder.append(" Returning default value.");
                str = stringBuilder.toString();
            }
        }
        zzdj.e(str);
        return zzgk.zzCc().longValue();
    }

    public String getString(String str) {
        zzfc zzAJ = zzAJ();
        if (zzAJ == null) {
            str = "getString called for closed container.";
        } else {
            try {
                return zzgk.zzb((zzbr) zzAJ.zzfs(str).getObject());
            } catch (Exception e) {
                str = String.valueOf(e.getMessage());
                StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 65);
                stringBuilder.append("Calling getString() threw an exception: ");
                stringBuilder.append(str);
                stringBuilder.append(" Returning default value.");
                str = stringBuilder.toString();
            }
        }
        zzdj.e(str);
        return zzgk.zzCg();
    }

    public boolean isDefault() {
        return getLastRefreshTime() == 0;
    }

    public void registerFunctionCallMacroCallback(String str, FunctionCallMacroCallback functionCallMacroCallback) {
        if (functionCallMacroCallback == null) {
            throw new NullPointerException("Macro handler must be non-null");
        }
        synchronized (this.zzbDz) {
            this.zzbDz.put(str, functionCallMacroCallback);
        }
    }

    public void registerFunctionCallTagCallback(String str, FunctionCallTagCallback functionCallTagCallback) {
        if (functionCallTagCallback == null) {
            throw new NullPointerException("Tag callback must be non-null");
        }
        synchronized (this.zzbDA) {
            this.zzbDA.put(str, functionCallTagCallback);
        }
    }

    /* Access modifiers changed, original: final */
    public final void release() {
        this.zzbDy = null;
    }

    public void unregisterFunctionCallMacroCallback(String str) {
        synchronized (this.zzbDz) {
            this.zzbDz.remove(str);
        }
    }

    public void unregisterFunctionCallTagCallback(String str) {
        synchronized (this.zzbDA) {
            this.zzbDA.remove(str);
        }
    }

    public final String zzAI() {
        return this.zzbDC;
    }

    /* Access modifiers changed, original: final */
    public final FunctionCallMacroCallback zzeX(String str) {
        FunctionCallMacroCallback functionCallMacroCallback;
        synchronized (this.zzbDz) {
            functionCallMacroCallback = (FunctionCallMacroCallback) this.zzbDz.get(str);
        }
        return functionCallMacroCallback;
    }

    public final FunctionCallTagCallback zzeY(String str) {
        FunctionCallTagCallback functionCallTagCallback;
        synchronized (this.zzbDA) {
            functionCallTagCallback = (FunctionCallTagCallback) this.zzbDA.get(str);
        }
        return functionCallTagCallback;
    }

    public final void zzeZ(String str) {
        zzAJ().zzeZ(str);
    }
}
