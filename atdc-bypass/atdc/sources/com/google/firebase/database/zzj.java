package com.google.firebase.database;

import java.util.Iterator;
import java.util.NoSuchElementException;

final class zzj implements Iterator<MutableData> {
    zzj(zzi zzi) {
    }

    public final boolean hasNext() {
        return false;
    }

    public final /* synthetic */ Object next() {
        throw new NoSuchElementException();
    }

    public final void remove() {
        throw new UnsupportedOperationException("remove called on immutable collection");
    }
}
