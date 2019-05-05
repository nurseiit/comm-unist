package com.google.android.gms.games.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.zzc;
import com.google.android.gms.fitness.FitnessStatusCodes;
import com.google.android.gms.games.GamesActivityResultCodes;
import com.google.android.gms.games.GamesStatusCodes;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.multiplayer.ParticipantResult;
import com.google.android.gms.games.multiplayer.realtime.RoomEntity;
import com.google.android.gms.games.snapshot.zze;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzef;
import com.google.android.gms.location.places.PlacesStatusCodes;
import com.google.android.gms.nearby.connection.ConnectionsStatusCodes;
import com.google.android.gms.safetynet.SafetyNetStatusCodes;

public final class zzk extends zzed implements zzj {
    zzk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.games.internal.IGamesService");
    }

    public final void zzC(long j) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeLong(j);
        zzb(FitnessStatusCodes.CONFLICTING_DATA_TYPE, zzZ);
    }

    public final void zzD(long j) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeLong(j);
        zzb(5059, zzZ);
    }

    public final void zzE(long j) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeLong(j);
        zzb(ConnectionsStatusCodes.STATUS_PAYLOAD_IO_ERROR, zzZ);
    }

    public final void zzF(long j) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeLong(j);
        zzb(GamesActivityResultCodes.RESULT_SIGN_IN_FAILED, zzZ);
    }

    public final void zzG(long j) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeLong(j);
        zzb(SafetyNetStatusCodes.STRICT_MODE_VERIFY_APPS_NOT_AVAILABLE, zzZ);
    }

    public final void zzH(long j) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeLong(j);
        zzb(22027, zzZ);
    }

    public final int zza(zzf zzf, byte[] bArr, String str, String str2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeByteArray(bArr);
        zzZ.writeString(str);
        zzZ.writeString(str2);
        Parcel zza = zza(5033, zzZ);
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    public final Intent zza(int i, byte[] bArr, int i2, String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeInt(i);
        zzZ.writeByteArray(bArr);
        zzZ.writeInt(i2);
        zzZ.writeString(str);
        Parcel zza = zza(10012, zzZ);
        Intent intent = (Intent) zzef.zza(zza, Intent.CREATOR);
        zza.recycle();
        return intent;
    }

    public final Intent zza(PlayerEntity playerEntity) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) playerEntity);
        Parcel zza = zza(15503, zzZ);
        Intent intent = (Intent) zzef.zza(zza, Intent.CREATOR);
        zza.recycle();
        return intent;
    }

    public final Intent zza(RoomEntity roomEntity, int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) roomEntity);
        zzZ.writeInt(i);
        Parcel zza = zza(9011, zzZ);
        Intent intent = (Intent) zzef.zza(zza, Intent.CREATOR);
        zza.recycle();
        return intent;
    }

    public final Intent zza(String str, boolean z, boolean z2, int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, z);
        zzef.zza(zzZ, z2);
        zzZ.writeInt(i);
        Parcel zza = zza(SafetyNetStatusCodes.SAFE_BROWSING_MISSING_API_KEY, zzZ);
        Intent intent = (Intent) zzef.zza(zza, Intent.CREATOR);
        zza.recycle();
        return intent;
    }

    public final void zza(IBinder iBinder, Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeStrongBinder(iBinder);
        zzef.zza(zzZ, (Parcelable) bundle);
        zzb(FitnessStatusCodes.UNKNOWN_AUTH_ERROR, zzZ);
    }

    public final void zza(zzc zzc) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (Parcelable) zzc);
        zzb(12019, zzZ);
    }

    public final void zza(zzf zzf) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzb(FitnessStatusCodes.INCONSISTENT_DATA_TYPE, zzZ);
    }

    public final void zza(zzf zzf, int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeInt(i);
        zzb(10016, zzZ);
    }

    public final void zza(zzf zzf, int i, int i2, int i3) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeInt(i);
        zzZ.writeInt(i2);
        zzZ.writeInt(i3);
        zzb(10009, zzZ);
    }

    public final void zza(zzf zzf, int i, int i2, String[] strArr, Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeInt(i);
        zzZ.writeInt(i2);
        zzZ.writeStringArray(strArr);
        zzef.zza(zzZ, (Parcelable) bundle);
        zzb(ConnectionsStatusCodes.STATUS_CONNECTION_REJECTED, zzZ);
    }

    public final void zza(zzf zzf, int i, boolean z, boolean z2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeInt(i);
        zzef.zza(zzZ, z);
        zzef.zza(zzZ, z2);
        zzb(FitnessStatusCodes.INCONSISTENT_PACKAGE_NAME, zzZ);
    }

    public final void zza(zzf zzf, int i, int[] iArr) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeInt(i);
        zzZ.writeIntArray(iArr);
        zzb(10018, zzZ);
    }

    public final void zza(zzf zzf, long j) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeLong(j);
        zzb(5058, zzZ);
    }

    public final void zza(zzf zzf, Bundle bundle, int i, int i2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzef.zza(zzZ, (Parcelable) bundle);
        zzZ.writeInt(i);
        zzZ.writeInt(i2);
        zzb(FitnessStatusCodes.INVALID_DATA_POINT, zzZ);
    }

    public final void zza(zzf zzf, IBinder iBinder, int i, String[] strArr, Bundle bundle, boolean z, long j) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeStrongBinder(iBinder);
        zzZ.writeInt(i);
        zzZ.writeStringArray(strArr);
        zzef.zza(zzZ, (Parcelable) bundle);
        zzef.zza(zzZ, false);
        zzZ.writeLong(j);
        zzb(5030, zzZ);
    }

    public final void zza(zzf zzf, IBinder iBinder, String str, boolean z, long j) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeStrongBinder(iBinder);
        zzZ.writeString(str);
        zzef.zza(zzZ, false);
        zzZ.writeLong(j);
        zzb(5031, zzZ);
    }

    public final void zza(zzf zzf, String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzb(5032, zzZ);
    }

    public final void zza(zzf zzf, String str, int i, int i2, int i3, boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzZ.writeInt(i);
        zzZ.writeInt(i2);
        zzZ.writeInt(i3);
        zzef.zza(zzZ, z);
        zzb(FitnessStatusCodes.DATASET_TIMESTAMP_INCONSISTENT_WITH_UPDATE_TIME_RANGE, zzZ);
    }

    public final void zza(zzf zzf, String str, int i, IBinder iBinder, Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzZ.writeInt(i);
        zzZ.writeStrongBinder(iBinder);
        zzef.zza(zzZ, (Parcelable) bundle);
        zzb(5025, zzZ);
    }

    public final void zza(zzf zzf, String str, int i, boolean z, boolean z2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzZ.writeInt(i);
        zzef.zza(zzZ, z);
        zzef.zza(zzZ, z2);
        zzb(9020, zzZ);
    }

    public final void zza(zzf zzf, String str, long j, String str2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzZ.writeLong(j);
        zzZ.writeString(str2);
        zzb(GamesStatusCodes.STATUS_INVALID_REAL_TIME_ROOM_ID, zzZ);
    }

    public final void zza(zzf zzf, String str, IBinder iBinder, Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzZ.writeStrongBinder(iBinder);
        zzef.zza(zzZ, (Parcelable) bundle);
        zzb(FitnessStatusCodes.DATA_TYPE_NOT_ALLOWED_FOR_API, zzZ);
    }

    public final void zza(zzf zzf, String str, zze zze, zzc zzc) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzef.zza(zzZ, (Parcelable) zze);
        zzef.zza(zzZ, (Parcelable) zzc);
        zzb(SafetyNetStatusCodes.RECAPTCHA_INVALID_SITEKEY, zzZ);
    }

    public final void zza(zzf zzf, String str, String str2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzb(ConnectionsStatusCodes.STATUS_ENDPOINT_UNKNOWN, zzZ);
    }

    public final void zza(zzf zzf, String str, String str2, int i, int i2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(null);
        zzZ.writeString(str2);
        zzZ.writeInt(i);
        zzZ.writeInt(i2);
        zzb(8001, zzZ);
    }

    public final void zza(zzf zzf, String str, String str2, zze zze, zzc zzc) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzef.zza(zzZ, (Parcelable) zze);
        zzef.zza(zzZ, (Parcelable) zzc);
        zzb(12033, zzZ);
    }

    public final void zza(zzf zzf, String str, boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzef.zza(zzZ, z);
        zzb(GamesStatusCodes.STATUS_MATCH_ERROR_INVALID_MATCH_RESULTS, zzZ);
    }

    public final void zza(zzf zzf, String str, boolean z, int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzef.zza(zzZ, z);
        zzZ.writeInt(i);
        zzb(15001, zzZ);
    }

    public final void zza(zzf zzf, String str, byte[] bArr, String str2, ParticipantResult[] participantResultArr) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzZ.writeByteArray(bArr);
        zzZ.writeString(str2);
        zzZ.writeTypedArray(participantResultArr, 0);
        zzb(ConnectionsStatusCodes.STATUS_BLUETOOTH_ERROR, zzZ);
    }

    public final void zza(zzf zzf, String str, byte[] bArr, ParticipantResult[] participantResultArr) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzZ.writeByteArray(bArr);
        zzZ.writeTypedArray(participantResultArr, 0);
        zzb(ConnectionsStatusCodes.STATUS_ALREADY_HAVE_ACTIVE_STRATEGY, zzZ);
    }

    public final void zza(zzf zzf, boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzef.zza(zzZ, z);
        zzb(GamesStatusCodes.STATUS_MULTIPLAYER_ERROR_NOT_TRUSTED_TESTER, zzZ);
    }

    public final void zza(zzf zzf, boolean z, String[] strArr) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzef.zza(zzZ, z);
        zzZ.writeStringArray(strArr);
        zzb(12031, zzZ);
    }

    public final void zza(zzf zzf, int[] iArr, int i, boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeIntArray(iArr);
        zzZ.writeInt(i);
        zzef.zza(zzZ, z);
        zzb(SafetyNetStatusCodes.OS_VERSION_NOT_SUPPORTED, zzZ);
    }

    public final void zza(zzf zzf, String[] strArr) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeStringArray(strArr);
        zzb(GamesActivityResultCodes.RESULT_NETWORK_FAILURE, zzZ);
    }

    public final void zza(zzf zzf, String[] strArr, boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeStringArray(strArr);
        zzef.zza(zzZ, z);
        zzb(12029, zzZ);
    }

    public final void zza(zzh zzh, long j) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzh);
        zzZ.writeLong(j);
        zzb(15501, zzZ);
    }

    public final void zza(String str, IBinder iBinder, Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeStrongBinder(iBinder);
        zzef.zza(zzZ, (Parcelable) bundle);
        zzb(13002, zzZ);
    }

    public final void zza(String str, zzf zzf) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzef.zza(zzZ, (IInterface) zzf);
        zzb(20001, zzZ);
    }

    public final int zzb(byte[] bArr, String str, String[] strArr) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeByteArray(bArr);
        zzZ.writeString(str);
        zzZ.writeStringArray(strArr);
        Parcel zza = zza(5034, zzZ);
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    public final Intent zzb(int i, int i2, boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeInt(i);
        zzZ.writeInt(i2);
        zzef.zza(zzZ, z);
        Parcel zza = zza(PlacesStatusCodes.INVALID_APP, zzZ);
        Intent intent = (Intent) zzef.zza(zza, Intent.CREATOR);
        zza.recycle();
        return intent;
    }

    public final Intent zzb(int[] iArr) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeIntArray(iArr);
        Parcel zza = zza(12030, zzZ);
        Intent intent = (Intent) zzef.zza(zza, Intent.CREATOR);
        zza.recycle();
        return intent;
    }

    public final void zzb(zzf zzf) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzb(5026, zzZ);
    }

    public final void zzb(zzf zzf, int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeInt(i);
        zzb(22016, zzZ);
    }

    public final void zzb(zzf zzf, long j) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeLong(j);
        zzb(ConnectionsStatusCodes.STATUS_ENDPOINT_IO_ERROR, zzZ);
    }

    public final void zzb(zzf zzf, String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzb(ConnectionsStatusCodes.STATUS_NOT_CONNECTED_TO_ENDPOINT, zzZ);
    }

    public final void zzb(zzf zzf, String str, int i, int i2, int i3, boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzZ.writeInt(i);
        zzZ.writeInt(i2);
        zzZ.writeInt(i3);
        zzef.zza(zzZ, z);
        zzb(FitnessStatusCodes.INVALID_SESSION_TIMESTAMPS, zzZ);
    }

    public final void zzb(zzf zzf, String str, int i, IBinder iBinder, Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzZ.writeInt(i);
        zzZ.writeStrongBinder(iBinder);
        zzef.zza(zzZ, (Parcelable) bundle);
        zzb(GamesStatusCodes.STATUS_PARTICIPANT_NOT_CONNECTED, zzZ);
    }

    public final void zzb(zzf zzf, String str, IBinder iBinder, Bundle bundle) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzZ.writeStrongBinder(iBinder);
        zzef.zza(zzZ, (Parcelable) bundle);
        zzb(FitnessStatusCodes.REQUIRES_APP_WHITELISTING, zzZ);
    }

    public final void zzb(zzf zzf, String str, String str2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzZ.writeString(str2);
        zzb(SafetyNetStatusCodes.SAFE_BROWSING_API_NOT_INITIALIZED, zzZ);
    }

    public final void zzb(zzf zzf, String str, boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzef.zza(zzZ, z);
        zzb(13006, zzZ);
    }

    public final void zzb(zzf zzf, boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzef.zza(zzZ, z);
        zzb(GamesStatusCodes.STATUS_MATCH_ERROR_OUT_OF_DATE_VERSION, zzZ);
    }

    public final void zzb(zzf zzf, String[] strArr) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeStringArray(strArr);
        zzb(GamesActivityResultCodes.RESULT_SEND_REQUEST_FAILED, zzZ);
    }

    public final void zzba(int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeInt(i);
        zzb(5036, zzZ);
    }

    public final Intent zzc(int i, int i2, boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeInt(i);
        zzZ.writeInt(i2);
        zzef.zza(zzZ, z);
        Parcel zza = zza(GamesStatusCodes.STATUS_VIDEO_OUT_OF_DISK_SPACE, zzZ);
        Intent intent = (Intent) zzef.zza(zza, Intent.CREATOR);
        zza.recycle();
        return intent;
    }

    public final void zzc(zzf zzf) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzb(21007, zzZ);
    }

    public final void zzc(zzf zzf, long j) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeLong(j);
        zzb(10001, zzZ);
    }

    public final void zzc(zzf zzf, String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzb(8006, zzZ);
    }

    public final void zzc(zzf zzf, boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzef.zza(zzZ, z);
        zzb(8027, zzZ);
    }

    public final void zzd(zzf zzf) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzb(22028, zzZ);
    }

    public final void zzd(zzf zzf, long j) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeLong(j);
        zzb(SafetyNetStatusCodes.INVALID_ADMIN_APPLICATION, zzZ);
    }

    public final void zzd(zzf zzf, String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzb(ConnectionsStatusCodes.STATUS_OUT_OF_ORDER_API_CALL, zzZ);
    }

    public final void zzd(zzf zzf, boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzef.zza(zzZ, z);
        zzb(SafetyNetStatusCodes.SAFE_BROWSING_API_NOT_AVAILABLE, zzZ);
    }

    public final Intent zzdk(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        Parcel zza = zza(12034, zzZ);
        Intent intent = (Intent) zzef.zza(zza, Intent.CREATOR);
        zza.recycle();
        return intent;
    }

    public final void zzdm(String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzb(8002, zzZ);
    }

    public final void zze(zzf zzf, long j) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeLong(j);
        zzb(22026, zzZ);
    }

    public final void zze(zzf zzf, String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzb(8010, zzZ);
    }

    public final void zze(zzf zzf, boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzef.zza(zzZ, z);
        zzb(12016, zzZ);
    }

    public final void zzf(zzf zzf, String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzb(8014, zzZ);
    }

    public final void zzf(zzf zzf, boolean z) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzef.zza(zzZ, z);
        zzb(17001, zzZ);
    }

    public final void zzg(zzf zzf, String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzb(12020, zzZ);
    }

    public final void zzh(zzf zzf, String str) throws RemoteException {
        Parcel zzZ = zzZ();
        zzef.zza(zzZ, (IInterface) zzf);
        zzZ.writeString(str);
        zzb(SafetyNetStatusCodes.RECAPTCHA_INVALID_KEYTYPE, zzZ);
    }

    public final String zzhl() throws RemoteException {
        Parcel zza = zza(FitnessStatusCodes.DATA_TYPE_NOT_FOUND, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final Intent zzk(String str, int i, int i2) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeInt(i);
        zzZ.writeInt(i2);
        Parcel zza = zza(18001, zzZ);
        Intent intent = (Intent) zzef.zza(zza, Intent.CREATOR);
        zza.recycle();
        return intent;
    }

    public final void zzn(String str, int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeInt(i);
        zzb(12017, zzZ);
    }

    public final void zzo(String str, int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeInt(i);
        zzb(5029, zzZ);
    }

    public final Bundle zzoC() throws RemoteException {
        Parcel zza = zza(FitnessStatusCodes.APP_MISMATCH, zzZ());
        Bundle bundle = (Bundle) zzef.zza(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    public final void zzp(String str, int i) throws RemoteException {
        Parcel zzZ = zzZ();
        zzZ.writeString(str);
        zzZ.writeInt(i);
        zzb(5028, zzZ);
    }

    public final Intent zzuD() throws RemoteException {
        Parcel zza = zza(9010, zzZ());
        Intent intent = (Intent) zzef.zza(zza, Intent.CREATOR);
        zza.recycle();
        return intent;
    }

    public final Intent zzuE() throws RemoteException {
        Parcel zza = zza(9012, zzZ());
        Intent intent = (Intent) zzef.zza(zza, Intent.CREATOR);
        zza.recycle();
        return intent;
    }

    public final int zzuF() throws RemoteException {
        Parcel zza = zza(9019, zzZ());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    public final int zzuG() throws RemoteException {
        Parcel zza = zza(8024, zzZ());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    public final Intent zzuH() throws RemoteException {
        Parcel zza = zza(10015, zzZ());
        Intent intent = (Intent) zzef.zza(zza, Intent.CREATOR);
        zza.recycle();
        return intent;
    }

    public final int zzuI() throws RemoteException {
        Parcel zza = zza(10013, zzZ());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    public final int zzuJ() throws RemoteException {
        Parcel zza = zza(10023, zzZ());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    public final int zzuK() throws RemoteException {
        Parcel zza = zza(12035, zzZ());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    public final int zzuL() throws RemoteException {
        Parcel zza = zza(12036, zzZ());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    public final boolean zzuN() throws RemoteException {
        Parcel zza = zza(22030, zzZ());
        boolean zza2 = zzef.zza(zza);
        zza.recycle();
        return zza2;
    }

    public final void zzuP() throws RemoteException {
        zzb(FitnessStatusCodes.MISSING_BLE_PERMISSION, zzZ());
    }

    public final String zzuR() throws RemoteException {
        Parcel zza = zza(FitnessStatusCodes.AGGREGATION_NOT_SUPPORTED, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final DataHolder zzuS() throws RemoteException {
        Parcel zza = zza(FitnessStatusCodes.UNSUPPORTED_ACCOUNT, zzZ());
        DataHolder dataHolder = (DataHolder) zzef.zza(zza, DataHolder.CREATOR);
        zza.recycle();
        return dataHolder;
    }

    public final DataHolder zzuT() throws RemoteException {
        Parcel zza = zza(5502, zzZ());
        DataHolder dataHolder = (DataHolder) zzef.zza(zza, DataHolder.CREATOR);
        zza.recycle();
        return dataHolder;
    }

    public final Intent zzuU() throws RemoteException {
        Parcel zza = zza(19002, zzZ());
        Intent intent = (Intent) zzef.zza(zza, Intent.CREATOR);
        zza.recycle();
        return intent;
    }

    public final String zzus() throws RemoteException {
        Parcel zza = zza(FitnessStatusCodes.UNSUPPORTED_PLATFORM, zzZ());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    public final Intent zzuv() throws RemoteException {
        Parcel zza = zza(9003, zzZ());
        Intent intent = (Intent) zzef.zza(zza, Intent.CREATOR);
        zza.recycle();
        return intent;
    }

    public final Intent zzuw() throws RemoteException {
        Parcel zza = zza(PlacesStatusCodes.RATE_LIMIT_EXCEEDED, zzZ());
        Intent intent = (Intent) zzef.zza(zza, Intent.CREATOR);
        zza.recycle();
        return intent;
    }

    public final Intent zzux() throws RemoteException {
        Parcel zza = zza(9006, zzZ());
        Intent intent = (Intent) zzef.zza(zza, Intent.CREATOR);
        zza.recycle();
        return intent;
    }

    public final Intent zzuy() throws RemoteException {
        Parcel zza = zza(PlacesStatusCodes.KEY_EXPIRED, zzZ());
        Intent intent = (Intent) zzef.zza(zza, Intent.CREATOR);
        zza.recycle();
        return intent;
    }
}
