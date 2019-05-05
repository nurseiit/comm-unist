package com.google.android.gms.games.internal;

import com.google.android.gms.internal.zzee;

public abstract class zzg extends zzee implements zzf {
    public zzg() {
        attachInterface(this, "com.google.android.gms.games.internal.IGamesCallbacks");
    }

    /* JADX WARNING: Missing block: B:21:0x0052, code skipped:
            r9.readInt();
            r8 = android.os.Bundle.CREATOR;
     */
    /* JADX WARNING: Missing block: B:28:0x0088, code skipped:
            r9.readString();
     */
    /* JADX WARNING: Missing block: B:58:0x0222, code skipped:
            r9.readInt();
     */
    /* JADX WARNING: Missing block: B:60:0x022d, code skipped:
            com.google.android.gms.internal.zzef.zza(r9);
     */
    /* JADX WARNING: Missing block: B:79:0x0330, code skipped:
            r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
     */
    /* JADX WARNING: Missing block: B:80:0x0332, code skipped:
            com.google.android.gms.internal.zzef.zza(r9, r8);
     */
    /* JADX WARNING: Missing block: B:90:0x03aa, code skipped:
            r10.writeNoException();
     */
    /* JADX WARNING: Missing block: B:91:0x03ad, code skipped:
            return true;
     */
    public boolean onTransact(int r8, android.os.Parcel r9, android.os.Parcel r10, int r11) throws android.os.RemoteException {
        /*
        r7 = this;
        r11 = r7.zza(r8, r9, r10, r11);
        r0 = 1;
        if (r11 == 0) goto L_0x0008;
    L_0x0007:
        return r0;
    L_0x0008:
        switch(r8) {
            case 5001: goto L_0x039f;
            case 5002: goto L_0x0393;
            case 5003: goto L_0x0387;
            case 5004: goto L_0x037b;
            case 5005: goto L_0x0367;
            case 5006: goto L_0x035b;
            case 5007: goto L_0x034f;
            case 5008: goto L_0x0343;
            case 5009: goto L_0x0337;
            case 5010: goto L_0x0330;
            case 5011: goto L_0x0330;
            default: goto L_0x000b;
        };
    L_0x000b:
        switch(r8) {
            case 5016: goto L_0x032b;
            case 5017: goto L_0x031e;
            case 5018: goto L_0x0311;
            case 5019: goto L_0x0304;
            case 5020: goto L_0x02f7;
            case 5021: goto L_0x02ea;
            case 5022: goto L_0x02dd;
            case 5023: goto L_0x02d0;
            case 5024: goto L_0x02c3;
            case 5025: goto L_0x02b6;
            case 5026: goto L_0x02a5;
            case 5027: goto L_0x0294;
            case 5028: goto L_0x0283;
            case 5029: goto L_0x0272;
            case 5030: goto L_0x0261;
            case 5031: goto L_0x0250;
            case 5032: goto L_0x0243;
            case 5033: goto L_0x0232;
            case 5034: goto L_0x0227;
            case 5035: goto L_0x0330;
            case 5036: goto L_0x0222;
            case 5037: goto L_0x0215;
            case 5038: goto L_0x0330;
            case 5039: goto L_0x0330;
            case 5040: goto L_0x0222;
            default: goto L_0x000e;
        };
    L_0x000e:
        switch(r8) {
            case 6001: goto L_0x020c;
            case 6002: goto L_0x0203;
            default: goto L_0x0011;
        };
    L_0x0011:
        switch(r8) {
            case 8001: goto L_0x01f6;
            case 8002: goto L_0x01e5;
            case 8003: goto L_0x01d8;
            case 8004: goto L_0x01cb;
            case 8005: goto L_0x01be;
            case 8006: goto L_0x01b1;
            case 8007: goto L_0x01a4;
            case 8008: goto L_0x0197;
            case 8009: goto L_0x018e;
            case 8010: goto L_0x0185;
            default: goto L_0x0014;
        };
    L_0x0014:
        switch(r8) {
            case 10001: goto L_0x0178;
            case 10002: goto L_0x016f;
            case 10003: goto L_0x0162;
            case 10004: goto L_0x0330;
            case 10005: goto L_0x0151;
            case 10006: goto L_0x0330;
            default: goto L_0x0017;
        };
    L_0x0017:
        switch(r8) {
            case 12003: goto L_0x0052;
            case 12004: goto L_0x013c;
            case 12005: goto L_0x012f;
            case 12006: goto L_0x0122;
            case 12007: goto L_0x0115;
            case 12008: goto L_0x0108;
            default: goto L_0x001a;
        };
    L_0x001a:
        switch(r8) {
            case 12011: goto L_0x00fb;
            case 12012: goto L_0x00ee;
            case 12013: goto L_0x0330;
            case 12014: goto L_0x00e1;
            case 12015: goto L_0x0052;
            case 12016: goto L_0x0330;
            case 12017: goto L_0x00b3;
            default: goto L_0x001d;
        };
    L_0x001d:
        switch(r8) {
            case 13001: goto L_0x0330;
            case 13002: goto L_0x0222;
            default: goto L_0x0020;
        };
    L_0x0020:
        switch(r8) {
            case 17001: goto L_0x0330;
            case 17002: goto L_0x0222;
            default: goto L_0x0023;
        };
    L_0x0023:
        switch(r8) {
            case 19001: goto L_0x00a2;
            case 19002: goto L_0x0095;
            case 19003: goto L_0x008d;
            case 19004: goto L_0x0222;
            default: goto L_0x0026;
        };
    L_0x0026:
        switch(r8) {
            case 19006: goto L_0x0330;
            case 19007: goto L_0x0052;
            case 19008: goto L_0x0222;
            case 19009: goto L_0x0222;
            case 19010: goto L_0x0222;
            default: goto L_0x0029;
        };
    L_0x0029:
        switch(r8) {
            case 20001: goto L_0x0330;
            case 20002: goto L_0x0330;
            case 20003: goto L_0x0330;
            case 20004: goto L_0x0330;
            case 20005: goto L_0x0330;
            case 20006: goto L_0x0330;
            case 20007: goto L_0x0330;
            case 20008: goto L_0x0330;
            case 20009: goto L_0x0330;
            case 20010: goto L_0x0082;
            case 20011: goto L_0x007e;
            case 20012: goto L_0x007a;
            case 20013: goto L_0x007a;
            case 20014: goto L_0x007a;
            case 20015: goto L_0x007a;
            case 20016: goto L_0x0222;
            case 20017: goto L_0x0073;
            case 20018: goto L_0x0222;
            case 20019: goto L_0x006a;
            case 20020: goto L_0x0059;
            default: goto L_0x002c;
        };
    L_0x002c:
        switch(r8) {
            case 9001: goto L_0x0330;
            case 11001: goto L_0x0052;
            case 12001: goto L_0x0045;
            case 14001: goto L_0x003e;
            case 15001: goto L_0x0031;
            default: goto L_0x002f;
        };
    L_0x002f:
        r8 = 0;
        return r8;
    L_0x0031:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzJ(r8);
        goto L_0x03aa;
    L_0x003e:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r9.createTypedArray(r8);
        goto L_0x03aa;
    L_0x0045:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzD(r8);
        goto L_0x03aa;
    L_0x0052:
        r9.readInt();
        r8 = android.os.Bundle.CREATOR;
        goto L_0x0332;
    L_0x0059:
        r8 = r9.readInt();
        r11 = android.os.Bundle.CREATOR;
        r9 = com.google.android.gms.internal.zzef.zza(r9, r11);
        r9 = (android.os.Bundle) r9;
        r7.zzd(r8, r9);
        goto L_0x03aa;
    L_0x006a:
        r8 = r9.readInt();
        r7.onCaptureOverlayStateChanged(r8);
        goto L_0x03aa;
    L_0x0073:
        r9.readInt();
        r8 = android.net.Uri.CREATOR;
        goto L_0x0332;
    L_0x007a:
        r8 = com.google.android.gms.common.api.Status.CREATOR;
        goto L_0x0332;
    L_0x007e:
        r9.readInt();
        goto L_0x0088;
    L_0x0082:
        r9.readInt();
        r9.readString();
    L_0x0088:
        r9.readString();
        goto L_0x03aa;
    L_0x008d:
        r9.readInt();
        com.google.android.gms.internal.zzef.zza(r9);
        goto L_0x022d;
    L_0x0095:
        r8 = r9.readInt();
        r9 = com.google.android.gms.internal.zzef.zza(r9);
        r7.zzh(r8, r9);
        goto L_0x03aa;
    L_0x00a2:
        r8 = r9.readInt();
        r11 = com.google.android.gms.games.video.VideoCapabilities.CREATOR;
        r9 = com.google.android.gms.internal.zzef.zza(r9, r11);
        r9 = (com.google.android.gms.games.video.VideoCapabilities) r9;
        r7.zza(r8, r9);
        goto L_0x03aa;
    L_0x00b3:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r2 = r8;
        r2 = (com.google.android.gms.common.data.DataHolder) r2;
        r3 = r9.readString();
        r8 = com.google.android.gms.drive.zzc.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r4 = r8;
        r4 = (com.google.android.gms.drive.zzc) r4;
        r8 = com.google.android.gms.drive.zzc.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r5 = r8;
        r5 = (com.google.android.gms.drive.zzc) r5;
        r8 = com.google.android.gms.drive.zzc.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r6 = r8;
        r6 = (com.google.android.gms.drive.zzc) r6;
        r1 = r7;
        r1.zza(r2, r3, r4, r5, r6);
        goto L_0x03aa;
    L_0x00e1:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzH(r8);
        goto L_0x03aa;
    L_0x00ee:
        r8 = r9.readInt();
        r9 = r9.readString();
        r7.zzj(r8, r9);
        goto L_0x03aa;
    L_0x00fb:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzg(r8);
        goto L_0x03aa;
    L_0x0108:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzI(r8);
        goto L_0x03aa;
    L_0x0115:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzG(r8);
        goto L_0x03aa;
    L_0x0122:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzF(r8);
        goto L_0x03aa;
    L_0x012f:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzE(r8);
        goto L_0x03aa;
    L_0x013c:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r11 = com.google.android.gms.drive.zzc.CREATOR;
        r9 = com.google.android.gms.internal.zzef.zza(r9, r11);
        r9 = (com.google.android.gms.drive.zzc) r9;
        r7.zza(r8, r9);
        goto L_0x03aa;
    L_0x0151:
        r8 = r9.readInt();
        r11 = android.os.Bundle.CREATOR;
        r9 = com.google.android.gms.internal.zzef.zza(r9, r11);
        r9 = (android.os.Bundle) r9;
        r7.zzc(r8, r9);
        goto L_0x03aa;
    L_0x0162:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzC(r8);
        goto L_0x03aa;
    L_0x016f:
        r8 = r9.readString();
        r7.onRequestRemoved(r8);
        goto L_0x03aa;
    L_0x0178:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzo(r8);
        goto L_0x03aa;
    L_0x0185:
        r8 = r9.readString();
        r7.onInvitationRemoved(r8);
        goto L_0x03aa;
    L_0x018e:
        r8 = r9.readString();
        r7.onTurnBasedMatchRemoved(r8);
        goto L_0x03aa;
    L_0x0197:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzt(r8);
        goto L_0x03aa;
    L_0x01a4:
        r8 = r9.readInt();
        r9 = r9.readString();
        r7.zzi(r8, r9);
        goto L_0x03aa;
    L_0x01b1:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzs(r8);
        goto L_0x03aa;
    L_0x01be:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzr(r8);
        goto L_0x03aa;
    L_0x01cb:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzq(r8);
        goto L_0x03aa;
    L_0x01d8:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzp(r8);
        goto L_0x03aa;
    L_0x01e5:
        r8 = r9.readInt();
        r11 = android.os.Bundle.CREATOR;
        r9 = com.google.android.gms.internal.zzef.zza(r9, r11);
        r9 = (android.os.Bundle) r9;
        r7.zzb(r8, r9);
        goto L_0x03aa;
    L_0x01f6:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzB(r8);
        goto L_0x03aa;
    L_0x0203:
        r8 = r9.readString();
        r7.onP2PDisconnected(r8);
        goto L_0x03aa;
    L_0x020c:
        r8 = r9.readString();
        r7.onP2PConnected(r8);
        goto L_0x03aa;
    L_0x0215:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzn(r8);
        goto L_0x03aa;
    L_0x0222:
        r9.readInt();
        goto L_0x03aa;
    L_0x0227:
        r9.readInt();
        r9.readString();
    L_0x022d:
        com.google.android.gms.internal.zzef.zza(r9);
        goto L_0x03aa;
    L_0x0232:
        r8 = r9.readInt();
        r11 = r9.readInt();
        r9 = r9.readString();
        r7.zzb(r8, r11, r9);
        goto L_0x03aa;
    L_0x0243:
        r8 = com.google.android.gms.games.multiplayer.realtime.RealTimeMessage.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.games.multiplayer.realtime.RealTimeMessage) r8;
        r7.onRealTimeMessageReceived(r8);
        goto L_0x03aa;
    L_0x0250:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r9 = r9.createStringArray();
        r7.zzf(r8, r9);
        goto L_0x03aa;
    L_0x0261:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r9 = r9.createStringArray();
        r7.zze(r8, r9);
        goto L_0x03aa;
    L_0x0272:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r9 = r9.createStringArray();
        r7.zzd(r8, r9);
        goto L_0x03aa;
    L_0x0283:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r9 = r9.createStringArray();
        r7.zzc(r8, r9);
        goto L_0x03aa;
    L_0x0294:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r9 = r9.createStringArray();
        r7.zzb(r8, r9);
        goto L_0x03aa;
    L_0x02a5:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r9 = r9.createStringArray();
        r7.zza(r8, r9);
        goto L_0x03aa;
    L_0x02b6:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzA(r8);
        goto L_0x03aa;
    L_0x02c3:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzz(r8);
        goto L_0x03aa;
    L_0x02d0:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzy(r8);
        goto L_0x03aa;
    L_0x02dd:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzx(r8);
        goto L_0x03aa;
    L_0x02ea:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzw(r8);
        goto L_0x03aa;
    L_0x02f7:
        r8 = r9.readInt();
        r9 = r9.readString();
        r7.onLeftRoom(r8, r9);
        goto L_0x03aa;
    L_0x0304:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzv(r8);
        goto L_0x03aa;
    L_0x0311:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzu(r8);
        goto L_0x03aa;
    L_0x031e:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzm(r8);
        goto L_0x03aa;
    L_0x032b:
        r7.zzuq();
        goto L_0x03aa;
    L_0x0330:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
    L_0x0332:
        com.google.android.gms.internal.zzef.zza(r9, r8);
        goto L_0x03aa;
    L_0x0337:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzl(r8);
        goto L_0x03aa;
    L_0x0343:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzk(r8);
        goto L_0x03aa;
    L_0x034f:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzj(r8);
        goto L_0x03aa;
    L_0x035b:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzi(r8);
        goto L_0x03aa;
    L_0x0367:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r11 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r9 = com.google.android.gms.internal.zzef.zza(r9, r11);
        r9 = (com.google.android.gms.common.data.DataHolder) r9;
        r7.zza(r8, r9);
        goto L_0x03aa;
    L_0x037b:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzh(r8);
        goto L_0x03aa;
    L_0x0387:
        r8 = r9.readInt();
        r9 = r9.readString();
        r7.zzh(r8, r9);
        goto L_0x03aa;
    L_0x0393:
        r8 = com.google.android.gms.common.data.DataHolder.CREATOR;
        r8 = com.google.android.gms.internal.zzef.zza(r9, r8);
        r8 = (com.google.android.gms.common.data.DataHolder) r8;
        r7.zzf(r8);
        goto L_0x03aa;
    L_0x039f:
        r8 = r9.readInt();
        r9 = r9.readString();
        r7.zzg(r8, r9);
    L_0x03aa:
        r10.writeNoException();
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.games.internal.zzg.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
    }
}
