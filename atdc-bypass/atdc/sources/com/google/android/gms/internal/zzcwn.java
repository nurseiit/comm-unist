package com.google.android.gms.internal;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.RemoteException;
import android.support.annotation.WorkerThread;
import android.util.Pair;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.tagmanager.TagManagerService;
import com.google.android.gms.tagmanager.zzce;
import com.google.android.gms.tagmanager.zzcn;
import java.io.File;
import java.io.IOException;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class zzcwn {
    private static final Pattern zzbJe = Pattern.compile("(gtm-[a-z0-9]{1,10})\\.json", 2);
    private static volatile zzcwn zzbJf;
    private static zzc zzbJo = new zzcwo();
    private final Context mContext;
    private String zzbDw;
    private final ExecutorService zzbHL;
    private final ScheduledExecutorService zzbHM;
    private final zzcn zzbHN;
    private final zzce zzbHW;
    private final zzcxi zzbJg;
    private final zzcvs zzbJh;
    private final zza zzbJi;
    private final Object zzbJj = new Object();
    private String zzbJk;
    private int zzbJl = 1;
    private final Queue<Runnable> zzbJm = new LinkedList();
    private volatile boolean zzbJn = false;
    private volatile boolean zzuH = false;

    public static class zza {
        private final Context mContext;

        public zza(Context context) {
            this.mContext = context;
        }

        public final String[] zzCC() throws IOException {
            return this.mContext.getAssets().list("");
        }

        public final String[] zzfL(String str) throws IOException {
            return this.mContext.getAssets().list(str);
        }
    }

    public interface zzc {
        zzcwn zzb(Context context, zzcn zzcn, zzce zzce);
    }

    class zzb extends zzcve {
        private zzb() {
        }

        /* synthetic */ zzb(zzcwn zzcwn, zzcwo zzcwo) {
            this();
        }

        public final void zza(boolean z, String str) throws RemoteException {
            zzcwn.this.zzbHL.execute(new zzcwz(this, z, str));
        }
    }

    zzcwn(Context context, zzcn zzcn, zzce zzce, zzcxi zzcxi, ExecutorService executorService, ScheduledExecutorService scheduledExecutorService, zzcvs zzcvs, zza zza) {
        zzbo.zzu(context);
        zzbo.zzu(zzcn);
        this.mContext = context;
        this.zzbHN = zzcn;
        this.zzbHW = zzce;
        this.zzbJg = zzcxi;
        this.zzbHL = executorService;
        this.zzbHM = scheduledExecutorService;
        this.zzbJh = zzcvs;
        this.zzbJi = zza;
    }

    public static zzcwn zza(Context context, zzcn zzcn, zzce zzce) {
        zzbo.zzu(context);
        zzbo.zzu(context);
        zzcwn zzcwn = zzbJf;
        if (zzcwn != null) {
            return zzcwn;
        }
        synchronized (zzcwn.class) {
            zzcwn = zzbJf;
            if (zzcwn == null) {
                zzcwn zzb = zzbJo.zzb(context, zzcn, zzce);
                zzbJf = zzb;
                zzcwn = zzb;
            }
        }
        return zzcwn;
    }

    private static boolean zza(Context context, Class<? extends Service> cls) {
        try {
            ServiceInfo serviceInfo = context.getPackageManager().getServiceInfo(new ComponentName(context, cls), 4);
            if (serviceInfo != null && serviceInfo.enabled) {
                return true;
            }
        } catch (NameNotFoundException unused) {
        }
        return false;
    }

    private final Pair<String, String> zzf(String[] strArr) {
        zzcvk.v("Looking up container asset.");
        if (this.zzbDw != null && this.zzbJk != null) {
            return Pair.create(this.zzbDw, this.zzbJk);
        }
        int i = 0;
        try {
            String[] zzfL = this.zzbJi.zzfL("containers");
            Object obj = null;
            for (int i2 = 0; i2 < zzfL.length; i2++) {
                String format;
                Matcher matcher = zzbJe.matcher(zzfL[i2]);
                String valueOf;
                if (!matcher.matches()) {
                    format = String.format("Ignoring container asset %s (does not match %s)", new Object[]{zzfL[i2], zzbJe.pattern()});
                } else if (obj == null) {
                    this.zzbDw = matcher.group(1);
                    String valueOf2 = String.valueOf("containers");
                    format = String.valueOf(File.separator);
                    valueOf = String.valueOf(zzfL[i2]);
                    StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf2).length() + String.valueOf(format).length()) + String.valueOf(valueOf).length());
                    stringBuilder.append(valueOf2);
                    stringBuilder.append(format);
                    stringBuilder.append(valueOf);
                    this.zzbJk = stringBuilder.toString();
                    valueOf2 = "Asset found for container ";
                    format = String.valueOf(this.zzbDw);
                    zzcvk.v(format.length() != 0 ? valueOf2.concat(format) : new String(valueOf2));
                    obj = 1;
                } else {
                    format = "Extra container asset found, will not be loaded: ";
                    valueOf = String.valueOf(zzfL[i2]);
                    format = valueOf.length() != 0 ? format.concat(valueOf) : new String(format);
                }
                zzcvk.zzaT(format);
            }
            if (obj == null) {
                zzcvk.zzaT("No container asset found in /assets/containers. Checking top level /assets directory for container assets.");
                try {
                    zzfL = this.zzbJi.zzCC();
                    while (i < zzfL.length) {
                        Matcher matcher2 = zzbJe.matcher(zzfL[i]);
                        if (matcher2.matches()) {
                            String str;
                            String valueOf3;
                            if (obj == null) {
                                this.zzbDw = matcher2.group(1);
                                this.zzbJk = zzfL[i];
                                str = "Asset found for container ";
                                valueOf3 = String.valueOf(this.zzbDw);
                                zzcvk.v(valueOf3.length() != 0 ? str.concat(valueOf3) : new String(str));
                                zzcvk.zzaT("Loading container assets from top level /assets directory. Please move the container asset to /assets/containers");
                                obj = 1;
                            } else {
                                str = "Extra container asset found, will not be loaded: ";
                                valueOf3 = String.valueOf(zzfL[i]);
                                zzcvk.zzaT(valueOf3.length() != 0 ? str.concat(valueOf3) : new String(str));
                            }
                        }
                        i++;
                    }
                } catch (IOException e) {
                    zzcvk.zzb("Failed to enumerate assets.", e);
                    return Pair.create(null, null);
                }
            }
            return Pair.create(this.zzbDw, this.zzbJk);
        } catch (IOException e2) {
            zzcvk.zzb(String.format("Failed to enumerate assets in folder %s", new Object[]{"containers"}), e2);
            return Pair.create(null, null);
        }
    }

    @WorkerThread
    public final void initialize() {
        zzcvk.v("Initializing Tag Manager.");
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (this.zzbJj) {
            if (this.zzuH) {
                return;
            }
            try {
                if (zza(this.mContext, TagManagerService.class)) {
                    Pair zzf = zzf(null);
                    String str = (String) zzf.first;
                    String str2 = (String) zzf.second;
                    if (str == null || str2 == null) {
                        zzcvk.zzaT("Tag Manager's event handler WILL NOT be installed (no container loaded)");
                    } else {
                        String str3 = "Loading container ";
                        String valueOf = String.valueOf(str);
                        zzcvk.zzaS(valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
                        this.zzbHL.execute(new zzcwt(this, str, str2, null));
                        this.zzbHM.schedule(new zzcwu(this), 5000, TimeUnit.MILLISECONDS);
                        if (!this.zzbJn) {
                            zzcvk.zzaS("Installing Tag Manager event handler.");
                            this.zzbJn = true;
                            this.zzbHN.zza(new zzcwp(this));
                            try {
                                this.zzbHN.zza(new zzcwr(this));
                            } catch (RemoteException e) {
                                zzcup.zza("Error communicating with measurement proxy: ", e, this.mContext);
                            }
                            this.mContext.registerComponentCallbacks(new zzcww(this));
                            zzcvk.zzaS("Tag Manager event handler installed.");
                        }
                    }
                    this.zzuH = true;
                    long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                    StringBuilder stringBuilder = new StringBuilder(53);
                    stringBuilder.append("Tag Manager initilization took ");
                    stringBuilder.append(currentTimeMillis2);
                    stringBuilder.append("ms");
                    zzcvk.zzaS(stringBuilder.toString());
                    return;
                }
                zzcvk.zzaT("Tag Manager fails to initialize (TagManagerService not enabled in the manifest)");
                this.zzuH = true;
            } catch (RemoteException e2) {
                zzcup.zza("Error communicating with measurement proxy: ", e2, this.mContext);
            } catch (Throwable th) {
                this.zzuH = true;
            }
        }
    }

    @WorkerThread
    public final void zze(String[] strArr) {
        zzcvk.v("Initializing Tag Manager.");
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (this.zzbJj) {
            if (this.zzuH) {
                return;
            }
            try {
                if (zza(this.mContext, TagManagerService.class)) {
                    Pair zzf = zzf(null);
                    String str = (String) zzf.first;
                    String str2 = (String) zzf.second;
                    if (str == null || str2 == null) {
                        zzcvk.zzaT("Tag Manager's event handler WILL NOT be installed (no container loaded)");
                    } else {
                        String str3 = "Loading container ";
                        String valueOf = String.valueOf(str);
                        zzcvk.zzaS(valueOf.length() != 0 ? str3.concat(valueOf) : new String(str3));
                        this.zzbHL.execute(new zzcwt(this, str, str2, null));
                        this.zzbHM.schedule(new zzcwu(this), 5000, TimeUnit.MILLISECONDS);
                        if (!this.zzbJn) {
                            zzcvk.zzaS("Installing Tag Manager event handler.");
                            this.zzbJn = true;
                            this.zzbHN.zza(new zzcwp(this));
                            try {
                                this.zzbHN.zza(new zzcwr(this));
                            } catch (RemoteException e) {
                                zzcup.zza("Error communicating with measurement proxy: ", e, this.mContext);
                            }
                            this.mContext.registerComponentCallbacks(new zzcww(this));
                            zzcvk.zzaS("Tag Manager event handler installed.");
                        }
                    }
                    this.zzuH = true;
                    long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                    StringBuilder stringBuilder = new StringBuilder(53);
                    stringBuilder.append("Tag Manager initilization took ");
                    stringBuilder.append(currentTimeMillis2);
                    stringBuilder.append("ms");
                    zzcvk.zzaS(stringBuilder.toString());
                    return;
                }
                zzcvk.zzaT("Tag Manager fails to initialize (TagManagerService not enabled in the manifest)");
                this.zzuH = true;
            } catch (RemoteException e2) {
                zzcup.zza("Error communicating with measurement proxy: ", e2, this.mContext);
            } catch (Throwable th) {
                this.zzuH = true;
            }
        }
    }

    /* Access modifiers changed, original: final */
    public final void zzs(Uri uri) {
        this.zzbHL.execute(new zzcwy(this, uri));
    }
}
