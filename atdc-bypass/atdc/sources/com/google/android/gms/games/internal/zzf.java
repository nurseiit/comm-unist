package com.google.android.gms.games.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.zzc;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessage;
import com.google.android.gms.games.video.VideoCapabilities;

public interface zzf extends IInterface {
    void onCaptureOverlayStateChanged(int i) throws RemoteException;

    void onInvitationRemoved(String str) throws RemoteException;

    void onLeftRoom(int i, String str) throws RemoteException;

    void onP2PConnected(String str) throws RemoteException;

    void onP2PDisconnected(String str) throws RemoteException;

    void onRealTimeMessageReceived(RealTimeMessage realTimeMessage) throws RemoteException;

    void onRequestRemoved(String str) throws RemoteException;

    void onTurnBasedMatchRemoved(String str) throws RemoteException;

    void zzA(DataHolder dataHolder) throws RemoteException;

    void zzB(DataHolder dataHolder) throws RemoteException;

    void zzC(DataHolder dataHolder) throws RemoteException;

    void zzD(DataHolder dataHolder) throws RemoteException;

    void zzE(DataHolder dataHolder) throws RemoteException;

    void zzF(DataHolder dataHolder) throws RemoteException;

    void zzG(DataHolder dataHolder) throws RemoteException;

    void zzH(DataHolder dataHolder) throws RemoteException;

    void zzI(DataHolder dataHolder) throws RemoteException;

    void zzJ(DataHolder dataHolder) throws RemoteException;

    void zza(int i, VideoCapabilities videoCapabilities) throws RemoteException;

    void zza(DataHolder dataHolder, DataHolder dataHolder2) throws RemoteException;

    void zza(DataHolder dataHolder, zzc zzc) throws RemoteException;

    void zza(DataHolder dataHolder, String str, zzc zzc, zzc zzc2, zzc zzc3) throws RemoteException;

    void zza(DataHolder dataHolder, String[] strArr) throws RemoteException;

    void zzb(int i, int i2, String str) throws RemoteException;

    void zzb(int i, Bundle bundle) throws RemoteException;

    void zzb(DataHolder dataHolder, String[] strArr) throws RemoteException;

    void zzc(int i, Bundle bundle) throws RemoteException;

    void zzc(DataHolder dataHolder, String[] strArr) throws RemoteException;

    void zzd(int i, Bundle bundle) throws RemoteException;

    void zzd(DataHolder dataHolder, String[] strArr) throws RemoteException;

    void zze(DataHolder dataHolder, String[] strArr) throws RemoteException;

    void zzf(DataHolder dataHolder) throws RemoteException;

    void zzf(DataHolder dataHolder, String[] strArr) throws RemoteException;

    void zzg(int i, String str) throws RemoteException;

    void zzg(DataHolder dataHolder) throws RemoteException;

    void zzh(int i, String str) throws RemoteException;

    void zzh(int i, boolean z) throws RemoteException;

    void zzh(DataHolder dataHolder) throws RemoteException;

    void zzi(int i, String str) throws RemoteException;

    void zzi(DataHolder dataHolder) throws RemoteException;

    void zzj(int i, String str) throws RemoteException;

    void zzj(DataHolder dataHolder) throws RemoteException;

    void zzk(DataHolder dataHolder) throws RemoteException;

    void zzl(DataHolder dataHolder) throws RemoteException;

    void zzm(DataHolder dataHolder) throws RemoteException;

    void zzn(DataHolder dataHolder) throws RemoteException;

    void zzo(DataHolder dataHolder) throws RemoteException;

    void zzp(DataHolder dataHolder) throws RemoteException;

    void zzq(DataHolder dataHolder) throws RemoteException;

    void zzr(DataHolder dataHolder) throws RemoteException;

    void zzs(DataHolder dataHolder) throws RemoteException;

    void zzt(DataHolder dataHolder) throws RemoteException;

    void zzu(DataHolder dataHolder) throws RemoteException;

    void zzuq() throws RemoteException;

    void zzv(DataHolder dataHolder) throws RemoteException;

    void zzw(DataHolder dataHolder) throws RemoteException;

    void zzx(DataHolder dataHolder) throws RemoteException;

    void zzy(DataHolder dataHolder) throws RemoteException;

    void zzz(DataHolder dataHolder) throws RemoteException;
}
