package com.google.firebase.database;

import java.util.Iterator;

final class zzi implements Iterable<MutableData> {
    zzi(MutableData mutableData) {
    }

    public final Iterator<MutableData> iterator() {
        return new zzj(this);
    }
}
