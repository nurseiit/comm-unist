package com.google.firebase.database;

import com.google.android.gms.internal.xm;

public class Transaction {

    public interface Handler {
        Result doTransaction(MutableData mutableData);

        void onComplete(DatabaseError databaseError, boolean z, DataSnapshot dataSnapshot);
    }

    public static class Result {
        private boolean zzbZq;
        private xm zzbZr;

        private Result(boolean z, xm xmVar) {
            this.zzbZq = z;
            this.zzbZr = xmVar;
        }

        /* synthetic */ Result(boolean z, xm xmVar, zzt zzt) {
            this(z, xmVar);
        }

        public boolean isSuccess() {
            return this.zzbZq;
        }

        public final xm zzFn() {
            return this.zzbZr;
        }
    }

    public static Result abort() {
        return new Result(false, null, null);
    }

    public static Result success(MutableData mutableData) {
        return new Result(true, mutableData.zzFn(), null);
    }
}
