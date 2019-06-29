package com.google.android.gms.internal;

public abstract class zzaup extends zzee implements zzauo {
    public zzaup() {
        attachInterface(this, "com.google.android.gms.cast.framework.internal.IMediaRouter");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find immediate dominator for block B:30:0x00a0 in {2, 5, 7, 9, 11, 12, 13, 14, 15, 17, 18, 19, 21, 24, 27, 28, 29} preds:[]
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
    public boolean onTransact(int r3, android.os.Parcel r4, android.os.Parcel r5, int r6) throws android.os.RemoteException {
        /*
        r2 = this;
        r6 = r2.zza(r3, r4, r5, r6);
        r0 = 1;
        if (r6 == 0) goto L_0x0008;
        return r0;
        switch(r3) {
            case 1: goto L_0x0078;
            case 2: goto L_0x0065;
            case 3: goto L_0x0059;
            case 4: goto L_0x0042;
            case 5: goto L_0x003a;
            case 6: goto L_0x0036;
            case 7: goto L_0x0031;
            case 8: goto L_0x0022;
            case 9: goto L_0x0017;
            case 10: goto L_0x000d;
            default: goto L_0x000b;
        };
        r3 = 0;
        return r3;
        r5.writeNoException();
        r3 = 11020208; // 0xa827b0 float:1.54426E-38 double:5.444706E-317;
        r5.writeInt(r3);
        return r0;
        r3 = r2.zznK();
        r5.writeNoException();
        r5.writeString(r3);
        return r0;
        r3 = r4.readString();
        r3 = r2.zzcf(r3);
        r5.writeNoException();
        com.google.android.gms.internal.zzef.zzb(r5, r3);
        return r0;
        r3 = r2.zznJ();
        goto L_0x0052;
        r2.zznI();
        goto L_0x0074;
        r3 = r4.readString();
        r2.zzce(r3);
        goto L_0x0074;
        r3 = android.os.Bundle.CREATOR;
        r3 = com.google.android.gms.internal.zzef.zza(r4, r3);
        r3 = (android.os.Bundle) r3;
        r4 = r4.readInt();
        r3 = r2.zzb(r3, r4);
        r5.writeNoException();
        com.google.android.gms.internal.zzef.zza(r5, r3);
        return r0;
        r3 = android.os.Bundle.CREATOR;
        r3 = com.google.android.gms.internal.zzef.zza(r4, r3);
        r3 = (android.os.Bundle) r3;
        r2.zzk(r3);
        goto L_0x0074;
        r3 = android.os.Bundle.CREATOR;
        r3 = com.google.android.gms.internal.zzef.zza(r4, r3);
        r3 = (android.os.Bundle) r3;
        r4 = r4.readInt();
        r2.zza(r3, r4);
        r5.writeNoException();
        return r0;
        r3 = android.os.Bundle.CREATOR;
        r3 = com.google.android.gms.internal.zzef.zza(r4, r3);
        r3 = (android.os.Bundle) r3;
        r4 = r4.readStrongBinder();
        if (r4 != 0) goto L_0x0088;
        r4 = 0;
        goto L_0x009c;
        r6 = "com.google.android.gms.cast.framework.internal.IMediaRouterCallback";
        r6 = r4.queryLocalInterface(r6);
        r1 = r6 instanceof com.google.android.gms.internal.zzauq;
        if (r1 == 0) goto L_0x0096;
        r4 = r6;
        r4 = (com.google.android.gms.internal.zzauq) r4;
        goto L_0x009c;
        r6 = new com.google.android.gms.internal.zzaur;
        r6.<init>(r4);
        r4 = r6;
        r2.zza(r3, r4);
        goto L_0x0074;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaup.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
    }
}
