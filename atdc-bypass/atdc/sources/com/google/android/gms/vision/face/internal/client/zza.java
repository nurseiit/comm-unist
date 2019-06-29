package com.google.android.gms.vision.face.internal.client;

import android.content.Context;
import android.graphics.PointF;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.DynamiteModule.zzc;
import com.google.android.gms.internal.fb;
import com.google.android.gms.internal.fc;
import com.google.android.gms.vision.face.Face;
import com.google.android.gms.vision.face.Landmark;
import java.nio.ByteBuffer;

public final class zza extends fb<zze> {
    private final zzc zzbNz;

    public zza(Context context, zzc zzc) {
        super(context, "FaceNativeHandle");
        this.zzbNz = zzc;
        zzDR();
    }

    private static Landmark[] zza(FaceParcel faceParcel) {
        LandmarkParcel[] landmarkParcelArr = faceParcel.zzbNC;
        int i = 0;
        if (landmarkParcelArr == null) {
            return new Landmark[0];
        }
        Landmark[] landmarkArr = new Landmark[landmarkParcelArr.length];
        while (i < landmarkParcelArr.length) {
            LandmarkParcel landmarkParcel = landmarkParcelArr[i];
            landmarkArr[i] = new Landmark(new PointF(landmarkParcel.x, landmarkParcel.y), landmarkParcel.type);
            i++;
        }
        return landmarkArr;
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzDO() throws RemoteException {
        ((zze) zzDR()).zzDP();
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Object zza(DynamiteModule dynamiteModule, Context context) throws RemoteException, zzc {
        zzg zzg;
        IBinder zzcV = dynamiteModule.zzcV("com.google.android.gms.vision.face.ChimeraNativeFaceDetectorCreator");
        if (zzcV == null) {
            zzg = null;
        } else {
            IInterface queryLocalInterface = zzcV.queryLocalInterface("com.google.android.gms.vision.face.internal.client.INativeFaceDetectorCreator");
            zzg = queryLocalInterface instanceof zzg ? (zzg) queryLocalInterface : new zzh(zzcV);
        }
        return zzg.zza(zzn.zzw(context), this.zzbNz);
    }

    public final Face[] zzb(ByteBuffer byteBuffer, fc fcVar) {
        int i = 0;
        if (!isOperational()) {
            return new Face[0];
        }
        try {
            FaceParcel[] zzc = ((zze) zzDR()).zzc(zzn.zzw(byteBuffer), fcVar);
            Face[] faceArr = new Face[zzc.length];
            while (i < zzc.length) {
                FaceParcel faceParcel = zzc[i];
                faceArr[i] = new Face(faceParcel.id, new PointF(faceParcel.centerX, faceParcel.centerY), faceParcel.width, faceParcel.height, faceParcel.zzbNA, faceParcel.zzbNB, zza(faceParcel), faceParcel.zzbND, faceParcel.zzbNE, faceParcel.zzbNF);
                i++;
            }
            return faceArr;
        } catch (RemoteException e) {
            Log.e("FaceNativeHandle", "Could not call native face detector", e);
            return new Face[0];
        }
    }

    public final boolean zzbN(int i) {
        if (!isOperational()) {
            return false;
        }
        try {
            return ((zze) zzDR()).zzbN(i);
        } catch (RemoteException e) {
            Log.e("FaceNativeHandle", "Could not call native face detector", e);
            return false;
        }
    }
}
