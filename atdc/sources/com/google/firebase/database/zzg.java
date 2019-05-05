package com.google.firebase.database;

final class zzg implements Runnable {
    private /* synthetic */ FirebaseDatabase zzbYZ;

    zzg(FirebaseDatabase firebaseDatabase) {
        this.zzbYZ = firebaseDatabase;
    }

    public final void run() {
        this.zzbYZ.zzbYY.purgeOutstandingWrites();
    }
}
