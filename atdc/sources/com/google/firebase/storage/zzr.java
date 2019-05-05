package com.google.firebase.storage;

final class zzr implements Runnable {
    private /* synthetic */ StorageTask zzcoZ;

    zzr(StorageTask storageTask) {
        this.zzcoZ = storageTask;
    }

    public final void run() {
        try {
            this.zzcoZ.run();
        } finally {
            this.zzcoZ.zzKU();
        }
    }
}
