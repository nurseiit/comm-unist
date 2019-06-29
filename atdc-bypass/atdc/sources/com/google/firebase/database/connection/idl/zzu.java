package com.google.firebase.database.connection.idl;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.zzee;

public abstract class zzu extends zzee implements zzt {
    public zzu() {
        attachInterface(this, "com.google.firebase.database.connection.idl.IPersistentConnection");
    }

    public static zzt asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.firebase.database.connection.idl.IPersistentConnection");
        return queryLocalInterface instanceof zzt ? (zzt) queryLocalInterface : new zzv(iBinder);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find immediate dominator for block B:97:0x01eb in {2, 6, 7, 9, 10, 11, 14, 17, 18, 19, 22, 25, 26, 27, 30, 33, 34, 35, 38, 41, 42, 43, 46, 49, 50, 51, 54, 57, 58, 59, 60, 61, 64, 67, 68, 74, 75, 76, 77, 78, 79, 81, 84, 87, 88, 91, 94, 95, 96} preds:[]
        	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.computeDominators(BlockProcessor.java:242)
        	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.processBlocksTree(BlockProcessor.java:52)
        	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.visit(BlockProcessor.java:42)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.ProcessClass.process(ProcessClass.java:32)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:292)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
        */
    public boolean onTransact(int r9, android.os.Parcel r10, android.os.Parcel r11, int r12) throws android.os.RemoteException {
        /*
        r8 = this;
        r12 = r8.zza(r9, r10, r11, r12);
        r0 = 1;
        if (r12 == 0) goto L_0x0008;
        return r0;
        r12 = 0;
        switch(r9) {
            case 1: goto L_0x01a2;
            case 2: goto L_0x019b;
            case 3: goto L_0x0197;
            case 4: goto L_0x0193;
            case 5: goto L_0x0145;
            case 6: goto L_0x0135;
            case 7: goto L_0x0130;
            case 8: goto L_0x0106;
            case 9: goto L_0x00d8;
            case 10: goto L_0x00ae;
            case 11: goto L_0x0084;
            case 12: goto L_0x005a;
            case 13: goto L_0x0038;
            case 14: goto L_0x002f;
            case 15: goto L_0x0026;
            case 16: goto L_0x0017;
            case 17: goto L_0x000e;
            default: goto L_0x000c;
        };
        r9 = 0;
        return r9;
        r9 = r10.readString();
        r8.refreshAuthToken2(r9);
        goto L_0x019e;
        r9 = r10.readString();
        r9 = r8.isInterrupted(r9);
        r11.writeNoException();
        com.google.android.gms.internal.zzef.zza(r11, r9);
        return r0;
        r9 = r10.readString();
        r8.resume(r9);
        goto L_0x019e;
        r9 = r10.readString();
        r8.interrupt(r9);
        goto L_0x019e;
        r9 = r10.createStringArrayList();
        r10 = r10.readStrongBinder();
        if (r10 != 0) goto L_0x0043;
        goto L_0x0055;
        r12 = "com.google.firebase.database.connection.idl.IRequestResultCallback";
        r12 = r10.queryLocalInterface(r12);
        r1 = r12 instanceof com.google.firebase.database.connection.idl.zzah;
        if (r1 == 0) goto L_0x0050;
        r12 = (com.google.firebase.database.connection.idl.zzah) r12;
        goto L_0x0055;
        r12 = new com.google.firebase.database.connection.idl.zzaj;
        r12.<init>(r10);
        r8.onDisconnectCancel(r9, r12);
        goto L_0x019e;
        r9 = r10.createStringArrayList();
        r1 = r10.readStrongBinder();
        r1 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r1);
        r10 = r10.readStrongBinder();
        if (r10 != 0) goto L_0x006d;
        goto L_0x007f;
        r12 = "com.google.firebase.database.connection.idl.IRequestResultCallback";
        r12 = r10.queryLocalInterface(r12);
        r2 = r12 instanceof com.google.firebase.database.connection.idl.zzah;
        if (r2 == 0) goto L_0x007a;
        r12 = (com.google.firebase.database.connection.idl.zzah) r12;
        goto L_0x007f;
        r12 = new com.google.firebase.database.connection.idl.zzaj;
        r12.<init>(r10);
        r8.onDisconnectMerge(r9, r1, r12);
        goto L_0x019e;
        r9 = r10.createStringArrayList();
        r1 = r10.readStrongBinder();
        r1 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r1);
        r10 = r10.readStrongBinder();
        if (r10 != 0) goto L_0x0097;
        goto L_0x00a9;
        r12 = "com.google.firebase.database.connection.idl.IRequestResultCallback";
        r12 = r10.queryLocalInterface(r12);
        r2 = r12 instanceof com.google.firebase.database.connection.idl.zzah;
        if (r2 == 0) goto L_0x00a4;
        r12 = (com.google.firebase.database.connection.idl.zzah) r12;
        goto L_0x00a9;
        r12 = new com.google.firebase.database.connection.idl.zzaj;
        r12.<init>(r10);
        r8.onDisconnectPut(r9, r1, r12);
        goto L_0x019e;
        r9 = r10.createStringArrayList();
        r1 = r10.readStrongBinder();
        r1 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r1);
        r10 = r10.readStrongBinder();
        if (r10 != 0) goto L_0x00c1;
        goto L_0x00d3;
        r12 = "com.google.firebase.database.connection.idl.IRequestResultCallback";
        r12 = r10.queryLocalInterface(r12);
        r2 = r12 instanceof com.google.firebase.database.connection.idl.zzah;
        if (r2 == 0) goto L_0x00ce;
        r12 = (com.google.firebase.database.connection.idl.zzah) r12;
        goto L_0x00d3;
        r12 = new com.google.firebase.database.connection.idl.zzaj;
        r12.<init>(r10);
        r8.merge(r9, r1, r12);
        goto L_0x019e;
        r9 = r10.createStringArrayList();
        r1 = r10.readStrongBinder();
        r1 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r1);
        r2 = r10.readString();
        r10 = r10.readStrongBinder();
        if (r10 != 0) goto L_0x00ef;
        goto L_0x0101;
        r12 = "com.google.firebase.database.connection.idl.IRequestResultCallback";
        r12 = r10.queryLocalInterface(r12);
        r3 = r12 instanceof com.google.firebase.database.connection.idl.zzah;
        if (r3 == 0) goto L_0x00fc;
        r12 = (com.google.firebase.database.connection.idl.zzah) r12;
        goto L_0x0101;
        r12 = new com.google.firebase.database.connection.idl.zzaj;
        r12.<init>(r10);
        r8.compareAndPut(r9, r1, r2, r12);
        goto L_0x019e;
        r9 = r10.createStringArrayList();
        r1 = r10.readStrongBinder();
        r1 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r1);
        r10 = r10.readStrongBinder();
        if (r10 != 0) goto L_0x0119;
        goto L_0x012b;
        r12 = "com.google.firebase.database.connection.idl.IRequestResultCallback";
        r12 = r10.queryLocalInterface(r12);
        r2 = r12 instanceof com.google.firebase.database.connection.idl.zzah;
        if (r2 == 0) goto L_0x0126;
        r12 = (com.google.firebase.database.connection.idl.zzah) r12;
        goto L_0x012b;
        r12 = new com.google.firebase.database.connection.idl.zzaj;
        r12.<init>(r10);
        r8.put(r9, r1, r12);
        goto L_0x019e;
        r8.purgeOutstandingWrites();
        goto L_0x019e;
        r9 = r10.createStringArrayList();
        r10 = r10.readStrongBinder();
        r10 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r10);
        r8.unlisten(r9, r10);
        goto L_0x019e;
        r2 = r10.createStringArrayList();
        r9 = r10.readStrongBinder();
        r3 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r9);
        r9 = r10.readStrongBinder();
        if (r9 != 0) goto L_0x0159;
        r4 = r12;
        goto L_0x016e;
        r1 = "com.google.firebase.database.connection.idl.IListenHashProvider";
        r1 = r9.queryLocalInterface(r1);
        r4 = r1 instanceof com.google.firebase.database.connection.idl.zzq;
        if (r4 == 0) goto L_0x0168;
        r9 = r1;
        r9 = (com.google.firebase.database.connection.idl.zzq) r9;
        r4 = r9;
        goto L_0x016e;
        r1 = new com.google.firebase.database.connection.idl.zzs;
        r1.<init>(r9);
        r4 = r1;
        r5 = r10.readLong();
        r9 = r10.readStrongBinder();
        if (r9 != 0) goto L_0x017a;
        r7 = r12;
        goto L_0x018e;
        r10 = "com.google.firebase.database.connection.idl.IRequestResultCallback";
        r10 = r9.queryLocalInterface(r10);
        r12 = r10 instanceof com.google.firebase.database.connection.idl.zzah;
        if (r12 == 0) goto L_0x0188;
        r12 = r10;
        r12 = (com.google.firebase.database.connection.idl.zzah) r12;
        goto L_0x0178;
        r12 = new com.google.firebase.database.connection.idl.zzaj;
        r12.<init>(r9);
        goto L_0x0178;
        r1 = r8;
        r1.listen(r2, r3, r4, r5, r7);
        goto L_0x019e;
        r8.refreshAuthToken();
        goto L_0x019e;
        r8.shutdown();
        goto L_0x019e;
        r8.initialize();
        r11.writeNoException();
        return r0;
        r9 = com.google.firebase.database.connection.idl.zzc.CREATOR;
        r9 = com.google.android.gms.internal.zzef.zza(r10, r9);
        r9 = (com.google.firebase.database.connection.idl.zzc) r9;
        r1 = r10.readStrongBinder();
        if (r1 != 0) goto L_0x01b2;
        r1 = r12;
        goto L_0x01c6;
        r2 = "com.google.firebase.database.connection.idl.IConnectionAuthTokenProvider";
        r2 = r1.queryLocalInterface(r2);
        r3 = r2 instanceof com.google.firebase.database.connection.idl.zzk;
        if (r3 == 0) goto L_0x01c0;
        r1 = r2;
        r1 = (com.google.firebase.database.connection.idl.zzk) r1;
        goto L_0x01c6;
        r2 = new com.google.firebase.database.connection.idl.zzm;
        r2.<init>(r1);
        r1 = r2;
        r2 = r10.readStrongBinder();
        r2 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r2);
        r10 = r10.readStrongBinder();
        if (r10 != 0) goto L_0x01d5;
        goto L_0x01e7;
        r12 = "com.google.firebase.database.connection.idl.IPersistentConnectionDelegate";
        r12 = r10.queryLocalInterface(r12);
        r3 = r12 instanceof com.google.firebase.database.connection.idl.zzw;
        if (r3 == 0) goto L_0x01e2;
        r12 = (com.google.firebase.database.connection.idl.zzw) r12;
        goto L_0x01e7;
        r12 = new com.google.firebase.database.connection.idl.zzy;
        r12.<init>(r10);
        r8.setup(r9, r1, r2, r12);
        goto L_0x019e;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.database.connection.idl.zzu.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
    }
}
