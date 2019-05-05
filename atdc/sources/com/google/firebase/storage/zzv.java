package com.google.firebase.storage;

import java.io.InputStream;
import java.util.concurrent.Callable;

final class zzv implements Callable<InputStream> {
    private /* synthetic */ StreamDownloadTask zzcps;

    zzv(StreamDownloadTask streamDownloadTask) {
        this.zzcps = streamDownloadTask;
    }

    public final /* synthetic */ Object call() throws Exception {
        return this.zzcps.zzKW();
    }
}
