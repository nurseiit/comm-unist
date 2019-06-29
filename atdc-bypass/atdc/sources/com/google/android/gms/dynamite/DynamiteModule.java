package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.common.zze;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

public final class DynamiteModule {
    private static Boolean zzaSF;
    private static zzj zzaSG;
    private static zzl zzaSH;
    private static String zzaSI;
    private static final ThreadLocal<zza> zzaSJ = new ThreadLocal();
    private static final zzh zzaSK = new zza();
    public static final zzd zzaSL = new zzb();
    private static zzd zzaSM = new zzc();
    public static final zzd zzaSN = new zzd();
    public static final zzd zzaSO = new zze();
    public static final zzd zzaSP = new zzf();
    private final Context zzaSQ;

    @DynamiteApi
    public static class DynamiteLoaderClassLoader {
        public static ClassLoader sClassLoader;
    }

    static class zza {
        public Cursor zzaSR;

        private zza() {
        }

        /* synthetic */ zza(zza zza) {
            this();
        }
    }

    public static class zzc extends Exception {
        private zzc(String str) {
            super(str);
        }

        private zzc(String str, Throwable th) {
            super(str, th);
        }

        /* synthetic */ zzc(String str, Throwable th, zza zza) {
            this(str, th);
        }
    }

    public interface zzd {
        zzi zza(Context context, String str, zzh zzh) throws zzc;
    }

    static class zzb implements zzh {
        private final int zzaSS;
        private final int zzaST = 0;

        public zzb(int i, int i2) {
            this.zzaSS = i;
        }

        public final int zzE(Context context, String str) {
            return this.zzaSS;
        }

        public final int zzb(Context context, String str, boolean z) {
            return 0;
        }
    }

    private DynamiteModule(Context context) {
        this.zzaSQ = (Context) zzbo.zzu(context);
    }

    public static int zzE(Context context, String str) {
        String valueOf;
        try {
            ClassLoader classLoader = context.getApplicationContext().getClassLoader();
            valueOf = String.valueOf("com.google.android.gms.dynamite.descriptors.");
            String valueOf2 = String.valueOf("ModuleDescriptor");
            StringBuilder stringBuilder = new StringBuilder(((String.valueOf(valueOf).length() + 1) + String.valueOf(str).length()) + String.valueOf(valueOf2).length());
            stringBuilder.append(valueOf);
            stringBuilder.append(str);
            stringBuilder.append(".");
            stringBuilder.append(valueOf2);
            Class loadClass = classLoader.loadClass(stringBuilder.toString());
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (declaredField.get(null).equals(str)) {
                return declaredField2.getInt(null);
            }
            valueOf = String.valueOf(declaredField.get(null));
            StringBuilder stringBuilder2 = new StringBuilder((String.valueOf(valueOf).length() + 51) + String.valueOf(str).length());
            stringBuilder2.append("Module descriptor id '");
            stringBuilder2.append(valueOf);
            stringBuilder2.append("' didn't match expected id '");
            stringBuilder2.append(str);
            stringBuilder2.append("'");
            Log.e("DynamiteModule", stringBuilder2.toString());
            return 0;
        } catch (ClassNotFoundException unused) {
            StringBuilder stringBuilder3 = new StringBuilder(String.valueOf(str).length() + 45);
            stringBuilder3.append("Local module descriptor class for ");
            stringBuilder3.append(str);
            stringBuilder3.append(" not found.");
            Log.w("DynamiteModule", stringBuilder3.toString());
            return 0;
        } catch (Exception e) {
            str = "DynamiteModule";
            valueOf = "Failed to load module descriptor class: ";
            String valueOf3 = String.valueOf(e.getMessage());
            Log.e(str, valueOf3.length() != 0 ? valueOf.concat(valueOf3) : new String(valueOf));
            return 0;
        }
    }

    public static int zzF(Context context, String str) {
        return zzb(context, str, false);
    }

    private static DynamiteModule zzG(Context context, String str) {
        String str2 = "DynamiteModule";
        String str3 = "Selected local version of ";
        str = String.valueOf(str);
        Log.i(str2, str.length() != 0 ? str3.concat(str) : new String(str3));
        return new DynamiteModule(context.getApplicationContext());
    }

    private static Context zza(Context context, String str, int i, Cursor cursor, zzl zzl) {
        try {
            return (Context) zzn.zzE(zzl.zza(zzn.zzw(context), str, i, zzn.zzw(cursor)));
        } catch (Exception e) {
            str = "DynamiteModule";
            String str2 = "Failed to load DynamiteLoader: ";
            String valueOf = String.valueOf(e.toString());
            Log.e(str, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
            return null;
        }
    }

    /* JADX WARNING: Missing block: B:17:0x0080, code skipped:
            if (r1.zzaSR != null) goto L_0x0082;
     */
    /* JADX WARNING: Missing block: B:43:0x00e1, code skipped:
            if (r1.zzaSR != null) goto L_0x0082;
     */
    public static com.google.android.gms.dynamite.DynamiteModule zza(android.content.Context r10, com.google.android.gms.dynamite.DynamiteModule.zzd r11, java.lang.String r12) throws com.google.android.gms.dynamite.DynamiteModule.zzc {
        /*
        r0 = zzaSJ;
        r0 = r0.get();
        r0 = (com.google.android.gms.dynamite.DynamiteModule.zza) r0;
        r1 = new com.google.android.gms.dynamite.DynamiteModule$zza;
        r2 = 0;
        r1.<init>(r2);
        r3 = zzaSJ;
        r3.set(r1);
        r3 = zzaSK;	 Catch:{ all -> 0x0131 }
        r3 = r11.zza(r10, r12, r3);	 Catch:{ all -> 0x0131 }
        r4 = "DynamiteModule";
        r5 = r3.zzaSU;	 Catch:{ all -> 0x0131 }
        r6 = r3.zzaSV;	 Catch:{ all -> 0x0131 }
        r7 = java.lang.String.valueOf(r12);	 Catch:{ all -> 0x0131 }
        r7 = r7.length();	 Catch:{ all -> 0x0131 }
        r7 = r7 + 68;
        r8 = java.lang.String.valueOf(r12);	 Catch:{ all -> 0x0131 }
        r8 = r8.length();	 Catch:{ all -> 0x0131 }
        r7 = r7 + r8;
        r8 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0131 }
        r8.<init>(r7);	 Catch:{ all -> 0x0131 }
        r7 = "Considering local module ";
        r8.append(r7);	 Catch:{ all -> 0x0131 }
        r8.append(r12);	 Catch:{ all -> 0x0131 }
        r7 = ":";
        r8.append(r7);	 Catch:{ all -> 0x0131 }
        r8.append(r5);	 Catch:{ all -> 0x0131 }
        r5 = " and remote module ";
        r8.append(r5);	 Catch:{ all -> 0x0131 }
        r8.append(r12);	 Catch:{ all -> 0x0131 }
        r5 = ":";
        r8.append(r5);	 Catch:{ all -> 0x0131 }
        r8.append(r6);	 Catch:{ all -> 0x0131 }
        r5 = r8.toString();	 Catch:{ all -> 0x0131 }
        android.util.Log.i(r4, r5);	 Catch:{ all -> 0x0131 }
        r4 = r3.zzaSW;	 Catch:{ all -> 0x0131 }
        if (r4 == 0) goto L_0x0107;
    L_0x0062:
        r4 = r3.zzaSW;	 Catch:{ all -> 0x0131 }
        r5 = -1;
        if (r4 != r5) goto L_0x006b;
    L_0x0067:
        r4 = r3.zzaSU;	 Catch:{ all -> 0x0131 }
        if (r4 == 0) goto L_0x0107;
    L_0x006b:
        r4 = r3.zzaSW;	 Catch:{ all -> 0x0131 }
        r6 = 1;
        if (r4 != r6) goto L_0x0076;
    L_0x0070:
        r4 = r3.zzaSV;	 Catch:{ all -> 0x0131 }
        if (r4 != 0) goto L_0x0076;
    L_0x0074:
        goto L_0x0107;
    L_0x0076:
        r4 = r3.zzaSW;	 Catch:{ all -> 0x0131 }
        if (r4 != r5) goto L_0x008d;
    L_0x007a:
        r10 = zzG(r10, r12);	 Catch:{ all -> 0x0131 }
        r11 = r1.zzaSR;
        if (r11 == 0) goto L_0x0087;
    L_0x0082:
        r11 = r1.zzaSR;
        r11.close();
    L_0x0087:
        r11 = zzaSJ;
        r11.set(r0);
        return r10;
    L_0x008d:
        r4 = r3.zzaSW;	 Catch:{ all -> 0x0131 }
        if (r4 != r6) goto L_0x00ec;
    L_0x0091:
        r4 = r3.zzaSV;	 Catch:{ zzc -> 0x00a6 }
        r4 = zza(r10, r12, r4);	 Catch:{ zzc -> 0x00a6 }
        r10 = r1.zzaSR;
        if (r10 == 0) goto L_0x00a0;
    L_0x009b:
        r10 = r1.zzaSR;
        r10.close();
    L_0x00a0:
        r10 = zzaSJ;
        r10.set(r0);
        return r4;
    L_0x00a6:
        r4 = move-exception;
        r6 = "DynamiteModule";
        r7 = "Failed to load remote module: ";
        r8 = r4.getMessage();	 Catch:{ all -> 0x0131 }
        r8 = java.lang.String.valueOf(r8);	 Catch:{ all -> 0x0131 }
        r9 = r8.length();	 Catch:{ all -> 0x0131 }
        if (r9 == 0) goto L_0x00be;
    L_0x00b9:
        r7 = r7.concat(r8);	 Catch:{ all -> 0x0131 }
        goto L_0x00c4;
    L_0x00be:
        r8 = new java.lang.String;	 Catch:{ all -> 0x0131 }
        r8.<init>(r7);	 Catch:{ all -> 0x0131 }
        r7 = r8;
    L_0x00c4:
        android.util.Log.w(r6, r7);	 Catch:{ all -> 0x0131 }
        r6 = r3.zzaSU;	 Catch:{ all -> 0x0131 }
        if (r6 == 0) goto L_0x00e4;
    L_0x00cb:
        r6 = new com.google.android.gms.dynamite.DynamiteModule$zzb;	 Catch:{ all -> 0x0131 }
        r3 = r3.zzaSU;	 Catch:{ all -> 0x0131 }
        r7 = 0;
        r6.<init>(r3, r7);	 Catch:{ all -> 0x0131 }
        r11 = r11.zza(r10, r12, r6);	 Catch:{ all -> 0x0131 }
        r11 = r11.zzaSW;	 Catch:{ all -> 0x0131 }
        if (r11 != r5) goto L_0x00e4;
    L_0x00db:
        r10 = zzG(r10, r12);	 Catch:{ all -> 0x0131 }
        r11 = r1.zzaSR;
        if (r11 == 0) goto L_0x0087;
    L_0x00e3:
        goto L_0x0082;
    L_0x00e4:
        r10 = new com.google.android.gms.dynamite.DynamiteModule$zzc;	 Catch:{ all -> 0x0131 }
        r11 = "Remote load failed. No local fallback found.";
        r10.<init>(r11, r4, r2);	 Catch:{ all -> 0x0131 }
        throw r10;	 Catch:{ all -> 0x0131 }
    L_0x00ec:
        r10 = new com.google.android.gms.dynamite.DynamiteModule$zzc;	 Catch:{ all -> 0x0131 }
        r11 = r3.zzaSW;	 Catch:{ all -> 0x0131 }
        r12 = 47;
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0131 }
        r3.<init>(r12);	 Catch:{ all -> 0x0131 }
        r12 = "VersionPolicy returned invalid code:";
        r3.append(r12);	 Catch:{ all -> 0x0131 }
        r3.append(r11);	 Catch:{ all -> 0x0131 }
        r11 = r3.toString();	 Catch:{ all -> 0x0131 }
        r10.<init>(r11, r2);	 Catch:{ all -> 0x0131 }
        throw r10;	 Catch:{ all -> 0x0131 }
    L_0x0107:
        r10 = new com.google.android.gms.dynamite.DynamiteModule$zzc;	 Catch:{ all -> 0x0131 }
        r11 = r3.zzaSU;	 Catch:{ all -> 0x0131 }
        r12 = r3.zzaSV;	 Catch:{ all -> 0x0131 }
        r3 = 91;
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0131 }
        r4.<init>(r3);	 Catch:{ all -> 0x0131 }
        r3 = "No acceptable module found. Local version is ";
        r4.append(r3);	 Catch:{ all -> 0x0131 }
        r4.append(r11);	 Catch:{ all -> 0x0131 }
        r11 = " and remote version is ";
        r4.append(r11);	 Catch:{ all -> 0x0131 }
        r4.append(r12);	 Catch:{ all -> 0x0131 }
        r11 = ".";
        r4.append(r11);	 Catch:{ all -> 0x0131 }
        r11 = r4.toString();	 Catch:{ all -> 0x0131 }
        r10.<init>(r11, r2);	 Catch:{ all -> 0x0131 }
        throw r10;	 Catch:{ all -> 0x0131 }
    L_0x0131:
        r10 = move-exception;
        r11 = r1.zzaSR;
        if (r11 == 0) goto L_0x013b;
    L_0x0136:
        r11 = r1.zzaSR;
        r11.close();
    L_0x013b:
        r11 = zzaSJ;
        r11.set(r0);
        throw r10;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.zza(android.content.Context, com.google.android.gms.dynamite.DynamiteModule$zzd, java.lang.String):com.google.android.gms.dynamite.DynamiteModule");
    }

    private static DynamiteModule zza(Context context, String str, int i) throws zzc {
        Boolean bool;
        synchronized (DynamiteModule.class) {
            bool = zzaSF;
        }
        if (bool != null) {
            return bool.booleanValue() ? zzc(context, str, i) : zzb(context, str, i);
        } else {
            throw new zzc("Failed to determine which loading route to use.", null);
        }
    }

    private static void zza(ClassLoader classLoader) throws zzc {
        try {
            zzl zzl;
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                zzl = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                zzl = queryLocalInterface instanceof zzl ? (zzl) queryLocalInterface : new zzm(iBinder);
            }
            zzaSH = zzl;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new zzc("Failed to instantiate dynamite loader", e, null);
        }
    }

    private static zzj zzaT(Context context) {
        synchronized (DynamiteModule.class) {
            zzj zzj;
            if (zzaSG != null) {
                zzj = zzaSG;
                return zzj;
            } else if (zze.zzoW().isGooglePlayServicesAvailable(context) != 0) {
                return null;
            } else {
                try {
                    IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                    if (iBinder == null) {
                        zzj = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                        zzj = queryLocalInterface instanceof zzj ? (zzj) queryLocalInterface : new zzk(iBinder);
                    }
                    if (zzj != null) {
                        zzaSG = zzj;
                        return zzj;
                    }
                } catch (Exception e) {
                    String str = "DynamiteModule";
                    String str2 = "Failed to load IDynamiteLoader from GmsCore: ";
                    String valueOf = String.valueOf(e.getMessage());
                    Log.e(str, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
                }
            }
        }
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:64:0x00e1  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00ba A:{SYNTHETIC, Splitter:B:54:0x00ba} */
    /* JADX WARNING: Missing exception handler attribute for start block: B:17:0x0035 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:39:0x007c */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:15|16|17|18) */
    /* JADX WARNING: Can't wrap try/catch for region: R(2:39|40) */
    /* JADX WARNING: Missing block: B:40:?, code skipped:
            r2.set(null, java.lang.ClassLoader.getSystemClassLoader());
     */
    /* JADX WARNING: Missing block: B:42:0x0085, code skipped:
            r1 = r2;
     */
    public static int zzb(android.content.Context r8, java.lang.String r9, boolean r10) {
        /*
        r0 = com.google.android.gms.dynamite.DynamiteModule.class;
        monitor-enter(r0);
        r1 = zzaSF;	 Catch:{ all -> 0x00e6 }
        if (r1 != 0) goto L_0x00b3;
    L_0x0007:
        r1 = r8.getApplicationContext();	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x008a, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x008a, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x008a }
        r1 = r1.getClassLoader();	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x008a, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x008a, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x008a }
        r2 = com.google.android.gms.dynamite.DynamiteModule.DynamiteLoaderClassLoader.class;
        r2 = r2.getName();	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x008a, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x008a, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x008a }
        r1 = r1.loadClass(r2);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x008a, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x008a, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x008a }
        r2 = "sClassLoader";
        r2 = r1.getDeclaredField(r2);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x008a, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x008a, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x008a }
        monitor-enter(r1);	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x008a, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x008a, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x008a }
        r3 = 0;
        r4 = r2.get(r3);	 Catch:{ all -> 0x0087 }
        r4 = (java.lang.ClassLoader) r4;	 Catch:{ all -> 0x0087 }
        if (r4 == 0) goto L_0x0038;
    L_0x0029:
        r2 = java.lang.ClassLoader.getSystemClassLoader();	 Catch:{ all -> 0x0087 }
        if (r4 != r2) goto L_0x0032;
    L_0x002f:
        r2 = java.lang.Boolean.FALSE;	 Catch:{ all -> 0x0087 }
        goto L_0x0084;
    L_0x0032:
        zza(r4);	 Catch:{ zzc -> 0x0035 }
    L_0x0035:
        r2 = java.lang.Boolean.TRUE;	 Catch:{ all -> 0x0087 }
        goto L_0x0084;
    L_0x0038:
        r4 = "com.google.android.gms";
        r5 = r8.getApplicationContext();	 Catch:{ all -> 0x0087 }
        r5 = r5.getPackageName();	 Catch:{ all -> 0x0087 }
        r4 = r4.equals(r5);	 Catch:{ all -> 0x0087 }
        if (r4 == 0) goto L_0x0050;
    L_0x0048:
        r4 = java.lang.ClassLoader.getSystemClassLoader();	 Catch:{ all -> 0x0087 }
        r2.set(r3, r4);	 Catch:{ all -> 0x0087 }
        goto L_0x002f;
    L_0x0050:
        r4 = zzd(r8, r9, r10);	 Catch:{ zzc -> 0x007c }
        r5 = zzaSI;	 Catch:{ zzc -> 0x007c }
        if (r5 == 0) goto L_0x0079;
    L_0x0058:
        r5 = zzaSI;	 Catch:{ zzc -> 0x007c }
        r5 = r5.isEmpty();	 Catch:{ zzc -> 0x007c }
        if (r5 == 0) goto L_0x0061;
    L_0x0060:
        goto L_0x0079;
    L_0x0061:
        r5 = new com.google.android.gms.dynamite.zzg;	 Catch:{ zzc -> 0x007c }
        r6 = zzaSI;	 Catch:{ zzc -> 0x007c }
        r7 = java.lang.ClassLoader.getSystemClassLoader();	 Catch:{ zzc -> 0x007c }
        r5.<init>(r6, r7);	 Catch:{ zzc -> 0x007c }
        zza(r5);	 Catch:{ zzc -> 0x007c }
        r2.set(r3, r5);	 Catch:{ zzc -> 0x007c }
        r5 = java.lang.Boolean.TRUE;	 Catch:{ zzc -> 0x007c }
        zzaSF = r5;	 Catch:{ zzc -> 0x007c }
        monitor-exit(r1);	 Catch:{ all -> 0x0087 }
        monitor-exit(r0);	 Catch:{ all -> 0x00e6 }
        return r4;
    L_0x0079:
        monitor-exit(r1);	 Catch:{ all -> 0x0087 }
        monitor-exit(r0);	 Catch:{ all -> 0x00e6 }
        return r4;
    L_0x007c:
        r4 = java.lang.ClassLoader.getSystemClassLoader();	 Catch:{ all -> 0x0087 }
        r2.set(r3, r4);	 Catch:{ all -> 0x0087 }
        goto L_0x002f;
    L_0x0084:
        monitor-exit(r1);	 Catch:{ all -> 0x0087 }
        r1 = r2;
        goto L_0x00b1;
    L_0x0087:
        r2 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0087 }
        throw r2;	 Catch:{ ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x008a, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x008a, ClassNotFoundException | IllegalAccessException | NoSuchFieldException -> 0x008a }
    L_0x008a:
        r1 = move-exception;
        r2 = "DynamiteModule";
        r1 = java.lang.String.valueOf(r1);	 Catch:{ all -> 0x00e6 }
        r3 = java.lang.String.valueOf(r1);	 Catch:{ all -> 0x00e6 }
        r3 = r3.length();	 Catch:{ all -> 0x00e6 }
        r3 = r3 + 30;
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00e6 }
        r4.<init>(r3);	 Catch:{ all -> 0x00e6 }
        r3 = "Failed to load module via V2: ";
        r4.append(r3);	 Catch:{ all -> 0x00e6 }
        r4.append(r1);	 Catch:{ all -> 0x00e6 }
        r1 = r4.toString();	 Catch:{ all -> 0x00e6 }
        android.util.Log.w(r2, r1);	 Catch:{ all -> 0x00e6 }
        r1 = java.lang.Boolean.FALSE;	 Catch:{ all -> 0x00e6 }
    L_0x00b1:
        zzaSF = r1;	 Catch:{ all -> 0x00e6 }
    L_0x00b3:
        monitor-exit(r0);	 Catch:{ all -> 0x00e6 }
        r0 = r1.booleanValue();
        if (r0 == 0) goto L_0x00e1;
    L_0x00ba:
        r8 = zzd(r8, r9, r10);	 Catch:{ zzc -> 0x00bf }
        return r8;
    L_0x00bf:
        r8 = move-exception;
        r9 = "DynamiteModule";
        r10 = "Failed to retrieve remote module version: ";
        r8 = r8.getMessage();
        r8 = java.lang.String.valueOf(r8);
        r0 = r8.length();
        if (r0 == 0) goto L_0x00d7;
    L_0x00d2:
        r8 = r10.concat(r8);
        goto L_0x00dc;
    L_0x00d7:
        r8 = new java.lang.String;
        r8.<init>(r10);
    L_0x00dc:
        android.util.Log.w(r9, r8);
        r8 = 0;
        return r8;
    L_0x00e1:
        r8 = zzc(r8, r9, r10);
        return r8;
    L_0x00e6:
        r8 = move-exception;
        monitor-exit(r0);	 Catch:{ all -> 0x00e6 }
        throw r8;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.zzb(android.content.Context, java.lang.String, boolean):int");
    }

    private static DynamiteModule zzb(Context context, String str, int i) throws zzc {
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 51);
        stringBuilder.append("Selected remote version of ");
        stringBuilder.append(str);
        stringBuilder.append(", version >= ");
        stringBuilder.append(i);
        Log.i("DynamiteModule", stringBuilder.toString());
        zzj zzaT = zzaT(context);
        if (zzaT == null) {
            throw new zzc("Failed to create IDynamiteLoader.", null);
        }
        try {
            IObjectWrapper zza = zzaT.zza(zzn.zzw(context), str, i);
            if (zzn.zzE(zza) != null) {
                return new DynamiteModule((Context) zzn.zzE(zza));
            }
            throw new zzc("Failed to load remote module.", null);
        } catch (RemoteException e) {
            throw new zzc("Failed to load remote module.", e, null);
        }
    }

    private static int zzc(Context context, String str, boolean z) {
        zzj zzaT = zzaT(context);
        if (zzaT == null) {
            return 0;
        }
        try {
            return zzaT.zza(zzn.zzw(context), str, z);
        } catch (RemoteException e) {
            str = "DynamiteModule";
            String str2 = "Failed to retrieve remote module version: ";
            String valueOf = String.valueOf(e.getMessage());
            Log.w(str, valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
            return 0;
        }
    }

    private static DynamiteModule zzc(Context context, String str, int i) throws zzc {
        zzl zzl;
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(str).length() + 51);
        stringBuilder.append("Selected remote version of ");
        stringBuilder.append(str);
        stringBuilder.append(", version >= ");
        stringBuilder.append(i);
        Log.i("DynamiteModule", stringBuilder.toString());
        synchronized (DynamiteModule.class) {
            zzl = zzaSH;
        }
        if (zzl == null) {
            throw new zzc("DynamiteLoaderV2 was not cached.", null);
        }
        zza zza = (zza) zzaSJ.get();
        if (zza == null || zza.zzaSR == null) {
            throw new zzc("No result cursor", null);
        }
        context = zza(context.getApplicationContext(), str, i, zza.zzaSR, zzl);
        if (context != null) {
            return new DynamiteModule(context);
        }
        throw new zzc("Failed to get module context", null);
    }

    /* JADX WARNING: Removed duplicated region for block: B:54:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00b7  */
    private static int zzd(android.content.Context r8, java.lang.String r9, boolean r10) throws com.google.android.gms.dynamite.DynamiteModule.zzc {
        /*
        r0 = 0;
        if (r10 == 0) goto L_0x000d;
    L_0x0003:
        r10 = "api_force_staging";
        goto L_0x000f;
    L_0x0006:
        r8 = move-exception;
        goto L_0x00b5;
    L_0x0009:
        r8 = move-exception;
        r9 = r0;
        goto L_0x00a6;
    L_0x000d:
        r10 = "api";
    L_0x000f:
        r1 = "content://com.google.android.gms.chimera/";
        r1 = java.lang.String.valueOf(r1);	 Catch:{ Exception -> 0x0009, all -> 0x0006 }
        r2 = java.lang.String.valueOf(r1);	 Catch:{ Exception -> 0x0009, all -> 0x0006 }
        r2 = r2.length();	 Catch:{ Exception -> 0x0009, all -> 0x0006 }
        r2 = r2 + 1;
        r3 = java.lang.String.valueOf(r10);	 Catch:{ Exception -> 0x0009, all -> 0x0006 }
        r3 = r3.length();	 Catch:{ Exception -> 0x0009, all -> 0x0006 }
        r2 = r2 + r3;
        r3 = java.lang.String.valueOf(r9);	 Catch:{ Exception -> 0x0009, all -> 0x0006 }
        r3 = r3.length();	 Catch:{ Exception -> 0x0009, all -> 0x0006 }
        r2 = r2 + r3;
        r3 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0009, all -> 0x0006 }
        r3.<init>(r2);	 Catch:{ Exception -> 0x0009, all -> 0x0006 }
        r3.append(r1);	 Catch:{ Exception -> 0x0009, all -> 0x0006 }
        r3.append(r10);	 Catch:{ Exception -> 0x0009, all -> 0x0006 }
        r10 = "/";
        r3.append(r10);	 Catch:{ Exception -> 0x0009, all -> 0x0006 }
        r3.append(r9);	 Catch:{ Exception -> 0x0009, all -> 0x0006 }
        r9 = r3.toString();	 Catch:{ Exception -> 0x0009, all -> 0x0006 }
        r2 = android.net.Uri.parse(r9);	 Catch:{ Exception -> 0x0009, all -> 0x0006 }
        r1 = r8.getContentResolver();	 Catch:{ Exception -> 0x0009, all -> 0x0006 }
        r3 = 0;
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r8 = r1.query(r2, r3, r4, r5, r6);	 Catch:{ Exception -> 0x0009, all -> 0x0006 }
        if (r8 == 0) goto L_0x0097;
    L_0x005a:
        r9 = r8.moveToFirst();	 Catch:{ Exception -> 0x0092, all -> 0x008e }
        if (r9 != 0) goto L_0x0061;
    L_0x0060:
        goto L_0x0097;
    L_0x0061:
        r9 = 0;
        r9 = r8.getInt(r9);	 Catch:{ Exception -> 0x0092, all -> 0x008e }
        if (r9 <= 0) goto L_0x0088;
    L_0x0068:
        r10 = com.google.android.gms.dynamite.DynamiteModule.class;
        monitor-enter(r10);	 Catch:{ Exception -> 0x0092, all -> 0x008e }
        r1 = 2;
        r1 = r8.getString(r1);	 Catch:{ all -> 0x0085 }
        zzaSI = r1;	 Catch:{ all -> 0x0085 }
        monitor-exit(r10);	 Catch:{ all -> 0x0085 }
        r10 = zzaSJ;	 Catch:{ Exception -> 0x0092, all -> 0x008e }
        r10 = r10.get();	 Catch:{ Exception -> 0x0092, all -> 0x008e }
        r10 = (com.google.android.gms.dynamite.DynamiteModule.zza) r10;	 Catch:{ Exception -> 0x0092, all -> 0x008e }
        if (r10 == 0) goto L_0x0088;
    L_0x007d:
        r1 = r10.zzaSR;	 Catch:{ Exception -> 0x0092, all -> 0x008e }
        if (r1 != 0) goto L_0x0088;
    L_0x0081:
        r10.zzaSR = r8;	 Catch:{ Exception -> 0x0092, all -> 0x008e }
        r8 = r0;
        goto L_0x0088;
    L_0x0085:
        r9 = move-exception;
        monitor-exit(r10);	 Catch:{ all -> 0x0085 }
        throw r9;	 Catch:{ Exception -> 0x0092, all -> 0x008e }
    L_0x0088:
        if (r8 == 0) goto L_0x008d;
    L_0x008a:
        r8.close();
    L_0x008d:
        return r9;
    L_0x008e:
        r9 = move-exception;
        r0 = r8;
        r8 = r9;
        goto L_0x00b5;
    L_0x0092:
        r9 = move-exception;
        r7 = r9;
        r9 = r8;
        r8 = r7;
        goto L_0x00a6;
    L_0x0097:
        r9 = "DynamiteModule";
        r10 = "Failed to retrieve remote module version.";
        android.util.Log.w(r9, r10);	 Catch:{ Exception -> 0x0092, all -> 0x008e }
        r9 = new com.google.android.gms.dynamite.DynamiteModule$zzc;	 Catch:{ Exception -> 0x0092, all -> 0x008e }
        r10 = "Failed to connect to dynamite module ContentResolver.";
        r9.<init>(r10, r0);	 Catch:{ Exception -> 0x0092, all -> 0x008e }
        throw r9;	 Catch:{ Exception -> 0x0092, all -> 0x008e }
    L_0x00a6:
        r10 = r8 instanceof com.google.android.gms.dynamite.DynamiteModule.zzc;	 Catch:{ all -> 0x00b3 }
        if (r10 == 0) goto L_0x00ab;
    L_0x00aa:
        throw r8;	 Catch:{ all -> 0x00b3 }
    L_0x00ab:
        r10 = new com.google.android.gms.dynamite.DynamiteModule$zzc;	 Catch:{ all -> 0x00b3 }
        r1 = "V2 version check failed";
        r10.<init>(r1, r8, r0);	 Catch:{ all -> 0x00b3 }
        throw r10;	 Catch:{ all -> 0x00b3 }
    L_0x00b3:
        r8 = move-exception;
        r0 = r9;
    L_0x00b5:
        if (r0 == 0) goto L_0x00ba;
    L_0x00b7:
        r0.close();
    L_0x00ba:
        throw r8;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.zzd(android.content.Context, java.lang.String, boolean):int");
    }

    public final IBinder zzcV(String str) throws zzc {
        try {
            return (IBinder) this.zzaSQ.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            String str2 = "Failed to instantiate module class: ";
            str = String.valueOf(str);
            throw new zzc(str.length() != 0 ? str2.concat(str) : new String(str2), e, null);
        }
    }

    public final Context zztC() {
        return this.zzaSQ;
    }
}
