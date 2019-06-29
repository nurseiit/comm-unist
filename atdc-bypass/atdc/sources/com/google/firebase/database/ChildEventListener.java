package com.google.firebase.database;

public interface ChildEventListener {
    void onCancelled(DatabaseError databaseError);

    void onChildAdded(DataSnapshot dataSnapshot, String str);

    void onChildChanged(DataSnapshot dataSnapshot, String str);

    void onChildMoved(DataSnapshot dataSnapshot, String str);

    void onChildRemoved(DataSnapshot dataSnapshot);
}
