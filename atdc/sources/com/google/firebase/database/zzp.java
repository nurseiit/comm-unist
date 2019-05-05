package com.google.firebase.database;

final class zzp implements ValueEventListener {
    private /* synthetic */ ValueEventListener zzbZl;
    private /* synthetic */ Query zzbZm;

    zzp(Query query, ValueEventListener valueEventListener) {
        this.zzbZm = query;
        this.zzbZl = valueEventListener;
    }

    public final void onCancelled(DatabaseError databaseError) {
        this.zzbZl.onCancelled(databaseError);
    }

    public final void onDataChange(DataSnapshot dataSnapshot) {
        this.zzbZm.removeEventListener((ValueEventListener) this);
        this.zzbZl.onDataChange(dataSnapshot);
    }
}
