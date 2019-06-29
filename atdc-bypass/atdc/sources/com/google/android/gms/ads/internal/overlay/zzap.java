package com.google.android.gms.ads.internal.overlay;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.graphics.SurfaceTexture.OnFrameAvailableListener;
import android.opengl.GLES20;
import android.util.Log;
import com.google.android.gms.internal.zzzn;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

@zzzn
@TargetApi(14)
public final class zzap extends Thread implements OnFrameAvailableListener, zzao {
    private static final float[] zzPU = new float[]{-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f};
    private final float[] zzPR;
    private final zzam zzPV;
    private final float[] zzPW;
    private final float[] zzPX;
    private final float[] zzPY;
    private final float[] zzPZ;
    private final float[] zzQa;
    private final float[] zzQb;
    private float zzQc;
    private float zzQd;
    private float zzQe;
    private SurfaceTexture zzQf;
    private SurfaceTexture zzQg;
    private int zzQh;
    private int zzQi;
    private int zzQj;
    private FloatBuffer zzQk = ByteBuffer.allocateDirect(zzPU.length << 2).order(ByteOrder.nativeOrder()).asFloatBuffer();
    private final CountDownLatch zzQl;
    private final Object zzQm;
    private EGL10 zzQn;
    private EGLDisplay zzQo;
    private EGLContext zzQp;
    private EGLSurface zzQq;
    private volatile boolean zzQr;
    private volatile boolean zzQs;
    private int zzrW;
    private int zzrX;

    public zzap(Context context) {
        super("SphericalVideoProcessor");
        this.zzQk.put(zzPU).position(0);
        this.zzPR = new float[9];
        this.zzPW = new float[9];
        this.zzPX = new float[9];
        this.zzPY = new float[9];
        this.zzPZ = new float[9];
        this.zzQa = new float[9];
        this.zzQb = new float[9];
        this.zzQc = Float.NaN;
        this.zzPV = new zzam(context);
        this.zzPV.zza((zzao) this);
        this.zzQl = new CountDownLatch(1);
        this.zzQm = new Object();
    }

    private static void zza(float[] fArr, float f) {
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        double d = (double) f;
        fArr[4] = (float) Math.cos(d);
        fArr[5] = (float) (-Math.sin(d));
        fArr[6] = 0.0f;
        fArr[7] = (float) Math.sin(d);
        fArr[8] = (float) Math.cos(d);
    }

    private static void zza(float[] fArr, float[] fArr2, float[] fArr3) {
        fArr[0] = ((fArr2[0] * fArr3[0]) + (fArr2[1] * fArr3[3])) + (fArr2[2] * fArr3[6]);
        fArr[1] = ((fArr2[0] * fArr3[1]) + (fArr2[1] * fArr3[4])) + (fArr2[2] * fArr3[7]);
        fArr[2] = ((fArr2[0] * fArr3[2]) + (fArr2[1] * fArr3[5])) + (fArr2[2] * fArr3[8]);
        fArr[3] = ((fArr2[3] * fArr3[0]) + (fArr2[4] * fArr3[3])) + (fArr2[5] * fArr3[6]);
        fArr[4] = ((fArr2[3] * fArr3[1]) + (fArr2[4] * fArr3[4])) + (fArr2[5] * fArr3[7]);
        fArr[5] = ((fArr2[3] * fArr3[2]) + (fArr2[4] * fArr3[5])) + (fArr2[5] * fArr3[8]);
        fArr[6] = ((fArr2[6] * fArr3[0]) + (fArr2[7] * fArr3[3])) + (fArr2[8] * fArr3[6]);
        fArr[7] = ((fArr2[6] * fArr3[1]) + (fArr2[7] * fArr3[4])) + (fArr2[8] * fArr3[7]);
        fArr[8] = ((fArr2[6] * fArr3[2]) + (fArr2[7] * fArr3[5])) + (fArr2[8] * fArr3[8]);
    }

    private static void zzar(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 21);
            stringBuilder.append(str);
            stringBuilder.append(": glError ");
            stringBuilder.append(glGetError);
            Log.e("SphericalVideoRenderer", stringBuilder.toString());
        }
    }

    private static void zzb(float[] fArr, float f) {
        double d = (double) f;
        fArr[0] = (float) Math.cos(d);
        fArr[1] = (float) (-Math.sin(d));
        fArr[2] = 0.0f;
        fArr[3] = (float) Math.sin(d);
        fArr[4] = (float) Math.cos(d);
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
    }

    private static int zzc(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        zzar("createShader");
        if (glCreateShader == 0) {
            return glCreateShader;
        }
        GLES20.glShaderSource(glCreateShader, str);
        zzar("shaderSource");
        GLES20.glCompileShader(glCreateShader);
        zzar("compileShader");
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        zzar("getShaderiv");
        if (iArr[0] != 0) {
            return glCreateShader;
        }
        StringBuilder stringBuilder = new StringBuilder(37);
        stringBuilder.append("Could not compile shader ");
        stringBuilder.append(i);
        stringBuilder.append(":");
        Log.e("SphericalVideoRenderer", stringBuilder.toString());
        Log.e("SphericalVideoRenderer", GLES20.glGetShaderInfoLog(glCreateShader));
        GLES20.glDeleteShader(glCreateShader);
        zzar("deleteShader");
        return 0;
    }

    private final void zzgh() {
        float[] fArr;
        float f;
        while (this.zzQj > 0) {
            this.zzQf.updateTexImage();
            this.zzQj--;
        }
        if (this.zzPV.zza(this.zzPR)) {
            if (Float.isNaN(this.zzQc)) {
                fArr = this.zzPR;
                float[] fArr2 = new float[]{0.0f, 1.0f, 0.0f};
                float[] fArr3 = new float[]{((fArr[0] * fArr2[0]) + (fArr[1] * fArr2[1])) + (fArr[2] * fArr2[2]), ((fArr[3] * fArr2[0]) + (fArr[4] * fArr2[1])) + (fArr[5] * fArr2[2]), ((fArr[6] * fArr2[0]) + (fArr[7] * fArr2[1])) + (fArr[8] * fArr2[2])};
                this.zzQc = -(((float) Math.atan2((double) fArr3[1], (double) fArr3[0])) - 1.5707964f);
            }
            fArr = this.zzQa;
            f = this.zzQc + this.zzQd;
        } else {
            zza(this.zzPR, -1.5707964f);
            fArr = this.zzQa;
            f = this.zzQd;
        }
        zzb(fArr, f);
        zza(this.zzPW, 1.5707964f);
        zza(this.zzPX, this.zzQa, this.zzPW);
        zza(this.zzPY, this.zzPR, this.zzPX);
        zza(this.zzPZ, this.zzQe);
        zza(this.zzQb, this.zzPZ, this.zzPY);
        GLES20.glUniformMatrix3fv(this.zzQi, 1, false, this.zzQb, 0);
        GLES20.glDrawArrays(5, 0, 4);
        zzar("drawArrays");
        GLES20.glFinish();
        this.zzQn.eglSwapBuffers(this.zzQo, this.zzQq);
    }

    private final boolean zzgi() {
        int i = 0;
        if (!(this.zzQq == null || this.zzQq == EGL10.EGL_NO_SURFACE)) {
            i = this.zzQn.eglDestroySurface(this.zzQo, this.zzQq) | (this.zzQn.eglMakeCurrent(this.zzQo, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT) | 0);
            this.zzQq = null;
        }
        if (this.zzQp != null) {
            i |= this.zzQn.eglDestroyContext(this.zzQo, this.zzQp);
            this.zzQp = null;
        }
        if (this.zzQo == null) {
            return i;
        }
        i |= this.zzQn.eglTerminate(this.zzQo);
        this.zzQo = null;
        return i;
    }

    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.zzQj++;
        synchronized (this.zzQm) {
            this.zzQm.notifyAll();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:49:0x01e2  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x01e0  */
    /* JADX WARNING: Removed duplicated region for block: B:99:0x02dc  */
    /* JADX WARNING: Removed duplicated region for block: B:98:0x02d7  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00c8  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00bd  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00d3  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x01e0  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x01e2  */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x01e5 A:{SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:98:0x02d7  */
    /* JADX WARNING: Removed duplicated region for block: B:99:0x02dc  */
    /* JADX WARNING: Missing exception handler attribute for start block: B:90:0x029c */
    public final void run() {
        /*
        r12 = this;
        r0 = r12.zzQg;
        if (r0 != 0) goto L_0x000f;
    L_0x0004:
        r0 = "SphericalVideoProcessor started with no output texture.";
        com.google.android.gms.internal.zzajc.e(r0);
        r0 = r12.zzQl;
        r0.countDown();
        return;
    L_0x000f:
        r0 = javax.microedition.khronos.egl.EGLContext.getEGL();
        r0 = (javax.microedition.khronos.egl.EGL10) r0;
        r12.zzQn = r0;
        r0 = r12.zzQn;
        r1 = javax.microedition.khronos.egl.EGL10.EGL_DEFAULT_DISPLAY;
        r0 = r0.eglGetDisplay(r1);
        r12.zzQo = r0;
        r0 = r12.zzQo;
        r1 = javax.microedition.khronos.egl.EGL10.EGL_NO_DISPLAY;
        r2 = 0;
        r3 = 1;
        r4 = 0;
        if (r0 != r1) goto L_0x002d;
    L_0x002a:
        r0 = 0;
        goto L_0x00a4;
    L_0x002d:
        r0 = 2;
        r0 = new int[r0];
        r1 = r12.zzQn;
        r5 = r12.zzQo;
        r0 = r1.eglInitialize(r5, r0);
        if (r0 != 0) goto L_0x003b;
    L_0x003a:
        goto L_0x002a;
    L_0x003b:
        r0 = new int[r3];
        r1 = new javax.microedition.khronos.egl.EGLConfig[r3];
        r5 = 11;
        r7 = new int[r5];
        r7 = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12325, 16, 12344};
        r5 = r12.zzQn;
        r6 = r12.zzQo;
        r9 = 1;
        r8 = r1;
        r10 = r0;
        r5 = r5.eglChooseConfig(r6, r7, r8, r9, r10);
        if (r5 == 0) goto L_0x005a;
    L_0x0053:
        r0 = r0[r4];
        if (r0 <= 0) goto L_0x005a;
    L_0x0057:
        r0 = r1[r4];
        goto L_0x005b;
    L_0x005a:
        r0 = r2;
    L_0x005b:
        if (r0 != 0) goto L_0x005e;
    L_0x005d:
        goto L_0x002a;
    L_0x005e:
        r1 = 3;
        r1 = new int[r1];
        r1 = {12440, 2, 12344};
        r5 = r12.zzQn;
        r6 = r12.zzQo;
        r7 = javax.microedition.khronos.egl.EGL10.EGL_NO_CONTEXT;
        r1 = r5.eglCreateContext(r6, r0, r7, r1);
        r12.zzQp = r1;
        r1 = r12.zzQp;
        if (r1 == 0) goto L_0x002a;
    L_0x0074:
        r1 = r12.zzQp;
        r5 = javax.microedition.khronos.egl.EGL10.EGL_NO_CONTEXT;
        if (r1 != r5) goto L_0x007b;
    L_0x007a:
        goto L_0x002a;
    L_0x007b:
        r1 = r12.zzQn;
        r5 = r12.zzQo;
        r6 = r12.zzQg;
        r0 = r1.eglCreateWindowSurface(r5, r0, r6, r2);
        r12.zzQq = r0;
        r0 = r12.zzQq;
        if (r0 == 0) goto L_0x002a;
    L_0x008b:
        r0 = r12.zzQq;
        r1 = javax.microedition.khronos.egl.EGL10.EGL_NO_SURFACE;
        if (r0 != r1) goto L_0x0092;
    L_0x0091:
        goto L_0x002a;
    L_0x0092:
        r0 = r12.zzQn;
        r1 = r12.zzQo;
        r5 = r12.zzQq;
        r6 = r12.zzQq;
        r7 = r12.zzQp;
        r0 = r0.eglMakeCurrent(r1, r5, r6, r7);
        if (r0 != 0) goto L_0x00a3;
    L_0x00a2:
        goto L_0x002a;
    L_0x00a3:
        r0 = 1;
    L_0x00a4:
        r1 = 35633; // 0x8b31 float:4.9932E-41 double:1.7605E-319;
        r5 = com.google.android.gms.internal.zzmo.zzEn;
        r6 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r6 = r6.zzd(r5);
        r6 = (java.lang.String) r6;
        r7 = r5.zzdI();
        r6 = r6.equals(r7);
        if (r6 != 0) goto L_0x00c8;
    L_0x00bd:
        r6 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r5 = r6.zzd(r5);
        r5 = (java.lang.String) r5;
        goto L_0x00ca;
    L_0x00c8:
        r5 = "attribute highp vec3 aPosition;varying vec3 pos;void main() {  gl_Position = vec4(aPosition, 1.0);  pos = aPosition;}";
    L_0x00ca:
        r1 = zzc(r1, r5);
        if (r1 != 0) goto L_0x00d3;
    L_0x00d0:
        r6 = 0;
        goto L_0x0155;
    L_0x00d3:
        r5 = 35632; // 0x8b30 float:4.9931E-41 double:1.76045E-319;
        r6 = com.google.android.gms.internal.zzmo.zzEo;
        r7 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r7 = r7.zzd(r6);
        r7 = (java.lang.String) r7;
        r8 = r6.zzdI();
        r7 = r7.equals(r8);
        if (r7 != 0) goto L_0x00f7;
    L_0x00ec:
        r7 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r6 = r7.zzd(r6);
        r6 = (java.lang.String) r6;
        goto L_0x00f9;
    L_0x00f7:
        r6 = "#extension GL_OES_EGL_image_external : require\n#define INV_PI 0.3183\nprecision highp float;varying vec3 pos;uniform samplerExternalOES uSplr;uniform mat3 uVMat;uniform float uFOVx;uniform float uFOVy;void main() {  vec3 ray = vec3(pos.x * tan(uFOVx), pos.y * tan(uFOVy), -1);  ray = (uVMat * ray).xyz;  ray = normalize(ray);  vec2 texCrd = vec2(    0.5 + atan(ray.x, - ray.z) * INV_PI * 0.5, acos(ray.y) * INV_PI);  gl_FragColor = vec4(texture2D(uSplr, texCrd).xyz, 1.0);}";
    L_0x00f9:
        r5 = zzc(r5, r6);
        if (r5 != 0) goto L_0x0100;
    L_0x00ff:
        goto L_0x00d0;
    L_0x0100:
        r6 = android.opengl.GLES20.glCreateProgram();
        r7 = "createProgram";
        zzar(r7);
        if (r6 == 0) goto L_0x0155;
    L_0x010b:
        android.opengl.GLES20.glAttachShader(r6, r1);
        r1 = "attachShader";
        zzar(r1);
        android.opengl.GLES20.glAttachShader(r6, r5);
        r1 = "attachShader";
        zzar(r1);
        android.opengl.GLES20.glLinkProgram(r6);
        r1 = "linkProgram";
        zzar(r1);
        r1 = new int[r3];
        r5 = 35714; // 0x8b82 float:5.0046E-41 double:1.7645E-319;
        android.opengl.GLES20.glGetProgramiv(r6, r5, r1, r4);
        r5 = "getProgramiv";
        zzar(r5);
        r1 = r1[r4];
        if (r1 == r3) goto L_0x014d;
    L_0x0134:
        r1 = "SphericalVideoRenderer";
        r5 = "Could not link program: ";
        android.util.Log.e(r1, r5);
        r1 = "SphericalVideoRenderer";
        r5 = android.opengl.GLES20.glGetProgramInfoLog(r6);
        android.util.Log.e(r1, r5);
        android.opengl.GLES20.glDeleteProgram(r6);
        r1 = "deleteProgram";
        zzar(r1);
        goto L_0x00d0;
    L_0x014d:
        android.opengl.GLES20.glValidateProgram(r6);
        r1 = "validateProgram";
        zzar(r1);
    L_0x0155:
        r12.zzQh = r6;
        r1 = r12.zzQh;
        android.opengl.GLES20.glUseProgram(r1);
        r1 = "useProgram";
        zzar(r1);
        r1 = r12.zzQh;
        r5 = "aPosition";
        r1 = android.opengl.GLES20.glGetAttribLocation(r1, r5);
        r7 = 3;
        r8 = 5126; // 0x1406 float:7.183E-42 double:2.5326E-320;
        r9 = 0;
        r10 = 12;
        r11 = r12.zzQk;
        r6 = r1;
        android.opengl.GLES20.glVertexAttribPointer(r6, r7, r8, r9, r10, r11);
        r5 = "vertexAttribPointer";
        zzar(r5);
        android.opengl.GLES20.glEnableVertexAttribArray(r1);
        r1 = "enableVertexAttribArray";
        zzar(r1);
        r1 = new int[r3];
        android.opengl.GLES20.glGenTextures(r3, r1, r4);
        r5 = "genTextures";
        zzar(r5);
        r1 = r1[r4];
        r5 = 36197; // 0x8d65 float:5.0723E-41 double:1.78837E-319;
        android.opengl.GLES20.glBindTexture(r5, r1);
        r6 = "bindTextures";
        zzar(r6);
        r6 = 10240; // 0x2800 float:1.4349E-41 double:5.059E-320;
        r7 = 9729; // 0x2601 float:1.3633E-41 double:4.807E-320;
        android.opengl.GLES20.glTexParameteri(r5, r6, r7);
        r6 = "texParameteri";
        zzar(r6);
        r6 = 10241; // 0x2801 float:1.435E-41 double:5.0597E-320;
        android.opengl.GLES20.glTexParameteri(r5, r6, r7);
        r6 = "texParameteri";
        zzar(r6);
        r6 = 10242; // 0x2802 float:1.4352E-41 double:5.06E-320;
        r7 = 33071; // 0x812f float:4.6342E-41 double:1.6339E-319;
        android.opengl.GLES20.glTexParameteri(r5, r6, r7);
        r6 = "texParameteri";
        zzar(r6);
        r6 = 10243; // 0x2803 float:1.4354E-41 double:5.0607E-320;
        android.opengl.GLES20.glTexParameteri(r5, r6, r7);
        r5 = "texParameteri";
        zzar(r5);
        r5 = r12.zzQh;
        r6 = "uVMat";
        r5 = android.opengl.GLES20.glGetUniformLocation(r5, r6);
        r12.zzQi = r5;
        r5 = 9;
        r5 = new float[r5];
        r5 = {1065353216, 0, 0, 0, 1065353216, 0, 0, 0, 1065353216};
        r6 = r12.zzQi;
        android.opengl.GLES20.glUniformMatrix3fv(r6, r3, r4, r5, r4);
        r5 = r12.zzQh;
        if (r5 == 0) goto L_0x01e2;
    L_0x01e0:
        r5 = 1;
        goto L_0x01e3;
    L_0x01e2:
        r5 = 0;
    L_0x01e3:
        if (r0 == 0) goto L_0x02c1;
    L_0x01e5:
        if (r5 != 0) goto L_0x01e9;
    L_0x01e7:
        goto L_0x02c1;
    L_0x01e9:
        r0 = new android.graphics.SurfaceTexture;
        r0.<init>(r1);
        r12.zzQf = r0;
        r0 = r12.zzQf;
        r0.setOnFrameAvailableListener(r12);
        r0 = r12.zzQl;
        r0.countDown();
        r0 = r12.zzPV;
        r0.start();
        r12.zzQr = r3;	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
    L_0x0201:
        r0 = r12.zzQs;	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
        if (r0 != 0) goto L_0x026b;
    L_0x0205:
        r12.zzgh();	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
        r0 = r12.zzQr;	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
        if (r0 == 0) goto L_0x0252;
    L_0x020c:
        r0 = r12.zzrW;	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
        r1 = r12.zzrX;	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
        android.opengl.GLES20.glViewport(r4, r4, r0, r1);	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
        r0 = "viewport";
        zzar(r0);	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
        r0 = r12.zzQh;	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
        r1 = "uFOVx";
        r0 = android.opengl.GLES20.glGetUniformLocation(r0, r1);	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
        r1 = r12.zzQh;	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
        r3 = "uFOVy";
        r1 = android.opengl.GLES20.glGetUniformLocation(r1, r3);	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
        r3 = r12.zzrW;	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
        r5 = r12.zzrX;	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
        r6 = 1063216883; // 0x3f5f66f3 float:0.87266463 double:5.25298936E-315;
        if (r3 <= r5) goto L_0x0241;
    L_0x0231:
        android.opengl.GLES20.glUniform1f(r0, r6);	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
        r0 = r12.zzrX;	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
        r0 = (float) r0;	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
        r0 = r0 * r6;
        r3 = r12.zzrW;	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
        r3 = (float) r3;	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
        r0 = r0 / r3;
        android.opengl.GLES20.glUniform1f(r1, r0);	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
        goto L_0x0250;
    L_0x0241:
        r3 = r12.zzrW;	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
        r3 = (float) r3;	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
        r3 = r3 * r6;
        r5 = r12.zzrX;	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
        r5 = (float) r5;	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
        r3 = r3 / r5;
        android.opengl.GLES20.glUniform1f(r0, r3);	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
        android.opengl.GLES20.glUniform1f(r1, r6);	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
    L_0x0250:
        r12.zzQr = r4;	 Catch:{ IllegalStateException -> 0x029c, Throwable -> 0x027d }
    L_0x0252:
        r0 = r12.zzQm;	 Catch:{ InterruptedException -> 0x0201 }
        monitor-enter(r0);	 Catch:{ InterruptedException -> 0x0201 }
        r1 = r12.zzQs;	 Catch:{ all -> 0x0268 }
        if (r1 != 0) goto L_0x0266;
    L_0x0259:
        r1 = r12.zzQr;	 Catch:{ all -> 0x0268 }
        if (r1 != 0) goto L_0x0266;
    L_0x025d:
        r1 = r12.zzQj;	 Catch:{ all -> 0x0268 }
        if (r1 != 0) goto L_0x0266;
    L_0x0261:
        r1 = r12.zzQm;	 Catch:{ all -> 0x0268 }
        r1.wait();	 Catch:{ all -> 0x0268 }
    L_0x0266:
        monitor-exit(r0);	 Catch:{ all -> 0x0268 }
        goto L_0x0201;
    L_0x0268:
        r1 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x0268 }
        throw r1;	 Catch:{ InterruptedException -> 0x0201 }
    L_0x026b:
        r0 = r12.zzPV;
        r0.stop();
        r0 = r12.zzQf;
        r0.setOnFrameAvailableListener(r2);
        r12.zzQf = r2;
        r12.zzgi();
        return;
    L_0x027b:
        r0 = move-exception;
        goto L_0x02b1;
    L_0x027d:
        r0 = move-exception;
        r1 = "SphericalVideoProcessor died.";
        com.google.android.gms.internal.zzajc.zzb(r1, r0);	 Catch:{ all -> 0x027b }
        r1 = com.google.android.gms.ads.internal.zzbs.zzbD();	 Catch:{ all -> 0x027b }
        r3 = "SphericalVideoProcessor.run.2";
        r1.zza(r0, r3);	 Catch:{ all -> 0x027b }
        r0 = r12.zzPV;
        r0.stop();
        r0 = r12.zzQf;
        r0.setOnFrameAvailableListener(r2);
        r12.zzQf = r2;
        r12.zzgi();
        return;
    L_0x029c:
        r0 = "SphericalVideoProcessor halted unexpectedly.";
        com.google.android.gms.internal.zzajc.zzaT(r0);	 Catch:{ all -> 0x027b }
        r0 = r12.zzPV;
        r0.stop();
        r0 = r12.zzQf;
        r0.setOnFrameAvailableListener(r2);
        r12.zzQf = r2;
        r12.zzgi();
        return;
    L_0x02b1:
        r1 = r12.zzPV;
        r1.stop();
        r1 = r12.zzQf;
        r1.setOnFrameAvailableListener(r2);
        r12.zzQf = r2;
        r12.zzgi();
        throw r0;
    L_0x02c1:
        r0 = r12.zzQn;
        r0 = r0.eglGetError();
        r0 = android.opengl.GLUtils.getEGLErrorString(r0);
        r1 = "EGL initialization failed: ";
        r0 = java.lang.String.valueOf(r0);
        r2 = r0.length();
        if (r2 == 0) goto L_0x02dc;
    L_0x02d7:
        r0 = r1.concat(r0);
        goto L_0x02e1;
    L_0x02dc:
        r0 = new java.lang.String;
        r0.<init>(r1);
    L_0x02e1:
        com.google.android.gms.internal.zzajc.e(r0);
        r1 = com.google.android.gms.ads.internal.zzbs.zzbD();
        r2 = new java.lang.Throwable;
        r2.<init>(r0);
        r0 = "SphericalVideoProcessor.run.1";
        r1.zza(r2, r0);
        r12.zzgi();
        r0 = r12.zzQl;
        r0.countDown();
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzap.run():void");
    }

    public final void zza(SurfaceTexture surfaceTexture, int i, int i2) {
        this.zzrW = i;
        this.zzrX = i2;
        this.zzQg = surfaceTexture;
    }

    public final void zzb(float f, float f2) {
        int i;
        if (this.zzrW > this.zzrX) {
            f = (f * 1.7453293f) / ((float) this.zzrW);
            f2 *= 1.7453293f;
            i = this.zzrW;
        } else {
            f = (f * 1.7453293f) / ((float) this.zzrX);
            f2 *= 1.7453293f;
            i = this.zzrX;
        }
        f2 /= (float) i;
        this.zzQd -= f;
        this.zzQe -= f2;
        if (this.zzQe < -1.5707964f) {
            this.zzQe = -1.5707964f;
        }
        if (this.zzQe > 1.5707964f) {
            this.zzQe = 1.5707964f;
        }
    }

    public final void zzf(int i, int i2) {
        synchronized (this.zzQm) {
            this.zzrW = i;
            this.zzrX = i2;
            this.zzQr = true;
            this.zzQm.notifyAll();
        }
    }

    public final void zzfO() {
        synchronized (this.zzQm) {
            this.zzQm.notifyAll();
        }
    }

    public final void zzgf() {
        synchronized (this.zzQm) {
            this.zzQs = true;
            this.zzQg = null;
            this.zzQm.notifyAll();
        }
    }

    public final SurfaceTexture zzgg() {
        if (this.zzQg == null) {
            return null;
        }
        try {
            this.zzQl.await();
        } catch (InterruptedException unused) {
        }
        return this.zzQf;
    }
}
