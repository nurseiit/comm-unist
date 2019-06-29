package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;

public interface zzks extends IInterface {
    float getAspectRatio() throws RemoteException;

    int getPlaybackState() throws RemoteException;

    boolean isCustomControlsEnabled() throws RemoteException;

    boolean isMuted() throws RemoteException;

    void mute(boolean z) throws RemoteException;

    void pause() throws RemoteException;

    void play() throws RemoteException;

    void zza(zzkv zzkv) throws RemoteException;

    float zzdv() throws RemoteException;

    float zzdw() throws RemoteException;
}
