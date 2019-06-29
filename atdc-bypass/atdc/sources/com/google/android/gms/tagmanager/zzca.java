package com.google.android.gms.tagmanager;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.util.concurrent.LinkedBlockingQueue;

final class zzca extends Thread implements zzbz {
    private static zzca zzbES;
    private volatile boolean mClosed = false;
    private final Context mContext;
    private volatile boolean zzOZ = false;
    private final LinkedBlockingQueue<Runnable> zzbER = new LinkedBlockingQueue();
    private volatile zzcc zzbET;

    private zzca(Context context) {
        super("GAThread");
        if (context != null) {
            context = context.getApplicationContext();
        }
        this.mContext = context;
        start();
    }

    static zzca zzbs(Context context) {
        if (zzbES == null) {
            zzbES = new zzca(context);
        }
        return zzbES;
    }

    public final void run() {
        while (true) {
            boolean z = this.mClosed;
            try {
                Runnable runnable = (Runnable) this.zzbER.take();
                if (!this.zzOZ) {
                    runnable.run();
                }
            } catch (InterruptedException e) {
                zzdj.zzaS(e.toString());
            } catch (Throwable th) {
                String str = "Error on Google TagManager Thread: ";
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                PrintStream printStream = new PrintStream(byteArrayOutputStream);
                th.printStackTrace(printStream);
                printStream.flush();
                String valueOf = String.valueOf(new String(byteArrayOutputStream.toByteArray()));
                zzdj.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                zzdj.e("Google TagManager is shutting down.");
                this.zzOZ = true;
            }
        }
    }

    public final void zzfm(String str) {
        zzn(new zzcb(this, this, System.currentTimeMillis(), str));
    }

    public final void zzn(Runnable runnable) {
        this.zzbER.add(runnable);
    }
}
