package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.support.v4.media.TransportMediator;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.internal.zzajc;
import com.google.android.gms.internal.zzzn;

@zzzn
final class zzam implements SensorEventListener {
    private final SensorManager zzPM;
    private final Object zzPN = new Object();
    private final Display zzPO;
    private final float[] zzPP = new float[9];
    private final float[] zzPQ = new float[9];
    private float[] zzPR;
    private Handler zzPS;
    private zzao zzPT;

    zzam(Context context) {
        this.zzPM = (SensorManager) context.getSystemService("sensor");
        this.zzPO = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    private final void zze(int i, int i2) {
        float f = this.zzPQ[i];
        this.zzPQ[i] = this.zzPQ[i2];
        this.zzPQ[i2] = f;
    }

    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    public final void onSensorChanged(SensorEvent sensorEvent) {
        float[] fArr = sensorEvent.values;
        if (fArr[0] != 0.0f || fArr[1] != 0.0f || fArr[2] != 0.0f) {
            synchronized (this.zzPN) {
                if (this.zzPR == null) {
                    this.zzPR = new float[9];
                }
            }
            SensorManager.getRotationMatrixFromVector(this.zzPP, fArr);
            switch (this.zzPO.getRotation()) {
                case 1:
                    SensorManager.remapCoordinateSystem(this.zzPP, 2, 129, this.zzPQ);
                    break;
                case 2:
                    SensorManager.remapCoordinateSystem(this.zzPP, 129, TransportMediator.KEYCODE_MEDIA_RECORD, this.zzPQ);
                    break;
                case 3:
                    SensorManager.remapCoordinateSystem(this.zzPP, TransportMediator.KEYCODE_MEDIA_RECORD, 1, this.zzPQ);
                    break;
                default:
                    System.arraycopy(this.zzPP, 0, this.zzPQ, 0, 9);
                    break;
            }
            zze(1, 3);
            zze(2, 6);
            zze(5, 7);
            synchronized (this.zzPN) {
                System.arraycopy(this.zzPQ, 0, this.zzPR, 0, 9);
            }
            if (this.zzPT != null) {
                this.zzPT.zzfO();
            }
        }
    }

    /* Access modifiers changed, original: final */
    public final void start() {
        if (this.zzPS == null) {
            Sensor defaultSensor = this.zzPM.getDefaultSensor(11);
            if (defaultSensor == null) {
                zzajc.e("No Sensor of TYPE_ROTATION_VECTOR");
                return;
            }
            HandlerThread handlerThread = new HandlerThread("OrientationMonitor");
            handlerThread.start();
            this.zzPS = new Handler(handlerThread.getLooper());
            if (!this.zzPM.registerListener(this, defaultSensor, 0, this.zzPS)) {
                zzajc.e("SensorManager.registerListener failed.");
                stop();
            }
        }
    }

    /* Access modifiers changed, original: final */
    public final void stop() {
        if (this.zzPS != null) {
            this.zzPM.unregisterListener(this);
            this.zzPS.post(new zzan(this));
            this.zzPS = null;
        }
    }

    /* Access modifiers changed, original: final */
    public final void zza(zzao zzao) {
        this.zzPT = zzao;
    }

    /* Access modifiers changed, original: final */
    public final boolean zza(float[] fArr) {
        synchronized (this.zzPN) {
            if (this.zzPR == null) {
                return false;
            }
            System.arraycopy(this.zzPR, 0, fArr, 0, this.zzPR.length);
            return true;
        }
    }
}
