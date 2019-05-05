package com.google.android.gms.internal;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@zzzn
public final class zzsh extends zzsb {
    private static final Set<String> zzJX = Collections.synchronizedSet(new HashSet());
    private static final DecimalFormat zzJY = new DecimalFormat("#,###");
    private File zzJZ;
    private boolean zzKa;

    public zzsh(zzaka zzaka) {
        super(zzaka);
        File cacheDir = this.mContext.getCacheDir();
        if (cacheDir == null) {
            zzajc.zzaT("Context.getCacheDir() returned null");
            return;
        }
        this.zzJZ = new File(cacheDir, "admobVideoStreams");
        String str;
        String valueOf;
        if (!this.zzJZ.isDirectory() && !this.zzJZ.mkdirs()) {
            str = "Could not create preload cache directory at ";
            valueOf = String.valueOf(this.zzJZ.getAbsolutePath());
            zzajc.zzaT(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            this.zzJZ = null;
        } else if (!this.zzJZ.setReadable(true, false) || !this.zzJZ.setExecutable(true, false)) {
            str = "Could not set cache file permissions at ";
            valueOf = String.valueOf(this.zzJZ.getAbsolutePath());
            zzajc.zzaT(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            this.zzJZ = null;
        }
    }

    private final File zzb(File file) {
        return new File(this.zzJZ, String.valueOf(file.getName()).concat(".done"));
    }

    public final void abort() {
        this.zzKa = true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:218:0x008f A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:194:0x044e  */
    /* JADX WARNING: Removed duplicated region for block: B:201:0x0482  */
    /* JADX WARNING: Removed duplicated region for block: B:200:0x045e  */
    /* JADX WARNING: Removed duplicated region for block: B:209:0x04c6  */
    /* JADX WARNING: Removed duplicated region for block: B:208:0x04c1  */
    /* JADX WARNING: Removed duplicated region for block: B:194:0x044e  */
    /* JADX WARNING: Removed duplicated region for block: B:200:0x045e  */
    /* JADX WARNING: Removed duplicated region for block: B:201:0x0482  */
    /* JADX WARNING: Removed duplicated region for block: B:208:0x04c1  */
    /* JADX WARNING: Removed duplicated region for block: B:209:0x04c6  */
    /* JADX WARNING: Removed duplicated region for block: B:194:0x044e  */
    /* JADX WARNING: Removed duplicated region for block: B:201:0x0482  */
    /* JADX WARNING: Removed duplicated region for block: B:200:0x045e  */
    /* JADX WARNING: Removed duplicated region for block: B:209:0x04c6  */
    /* JADX WARNING: Removed duplicated region for block: B:208:0x04c1  */
    /* JADX WARNING: Removed duplicated region for block: B:194:0x044e  */
    /* JADX WARNING: Removed duplicated region for block: B:200:0x045e  */
    /* JADX WARNING: Removed duplicated region for block: B:201:0x0482  */
    /* JADX WARNING: Removed duplicated region for block: B:208:0x04c1  */
    /* JADX WARNING: Removed duplicated region for block: B:209:0x04c6  */
    /* JADX WARNING: Removed duplicated region for block: B:194:0x044e  */
    /* JADX WARNING: Removed duplicated region for block: B:201:0x0482  */
    /* JADX WARNING: Removed duplicated region for block: B:200:0x045e  */
    /* JADX WARNING: Removed duplicated region for block: B:209:0x04c6  */
    /* JADX WARNING: Removed duplicated region for block: B:208:0x04c1  */
    /* JADX WARNING: Missing exception handler attribute for start block: B:179:0x0428 */
    /* JADX WARNING: Removed duplicated region for block: B:194:0x044e  */
    /* JADX WARNING: Removed duplicated region for block: B:200:0x045e  */
    /* JADX WARNING: Removed duplicated region for block: B:201:0x0482  */
    /* JADX WARNING: Removed duplicated region for block: B:208:0x04c1  */
    /* JADX WARNING: Removed duplicated region for block: B:209:0x04c6  */
    /* JADX WARNING: Removed duplicated region for block: B:194:0x044e  */
    /* JADX WARNING: Removed duplicated region for block: B:201:0x0482  */
    /* JADX WARNING: Removed duplicated region for block: B:200:0x045e  */
    /* JADX WARNING: Removed duplicated region for block: B:209:0x04c6  */
    /* JADX WARNING: Removed duplicated region for block: B:208:0x04c1  */
    /* JADX WARNING: Removed duplicated region for block: B:194:0x044e  */
    /* JADX WARNING: Removed duplicated region for block: B:200:0x045e  */
    /* JADX WARNING: Removed duplicated region for block: B:201:0x0482  */
    /* JADX WARNING: Removed duplicated region for block: B:208:0x04c1  */
    /* JADX WARNING: Removed duplicated region for block: B:209:0x04c6  */
    /* JADX WARNING: Removed duplicated region for block: B:194:0x044e  */
    /* JADX WARNING: Removed duplicated region for block: B:201:0x0482  */
    /* JADX WARNING: Removed duplicated region for block: B:200:0x045e  */
    /* JADX WARNING: Removed duplicated region for block: B:209:0x04c6  */
    /* JADX WARNING: Removed duplicated region for block: B:208:0x04c1  */
    /* JADX WARNING: Removed duplicated region for block: B:194:0x044e  */
    /* JADX WARNING: Removed duplicated region for block: B:200:0x045e  */
    /* JADX WARNING: Removed duplicated region for block: B:201:0x0482  */
    /* JADX WARNING: Removed duplicated region for block: B:208:0x04c1  */
    /* JADX WARNING: Removed duplicated region for block: B:209:0x04c6  */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:179|180|181|182) */
    /* JADX WARNING: Missing block: B:61:0x0134, code skipped:
            r16 = android.support.v7.media.MediaRouteProviderProtocol.SERVICE_DATA_ERROR;
     */
    /* JADX WARNING: Missing block: B:63:?, code skipped:
            com.google.android.gms.ads.internal.zzbs.zzbM();
            r1 = com.google.android.gms.internal.zzajo.zzb(r9, ((java.lang.Integer) com.google.android.gms.ads.internal.zzbs.zzbL().zzd(com.google.android.gms.internal.zzmo.zzCs)).intValue());
     */
    /* JADX WARNING: Missing block: B:64:0x014f, code skipped:
            if ((r1 instanceof java.net.HttpURLConnection) == false) goto L_0x01b2;
     */
    /* JADX WARNING: Missing block: B:66:?, code skipped:
            r2 = r1.getResponseCode();
     */
    /* JADX WARNING: Missing block: B:67:0x015a, code skipped:
            if (r2 < com.lotecs.util.ErrorCode.ERROR_CODE_INVALID) goto L_0x01b2;
     */
    /* JADX WARNING: Missing block: B:68:0x015c, code skipped:
            r1 = "badUrl";
     */
    /* JADX WARNING: Missing block: B:70:?, code skipped:
            r3 = "HTTP request failed. Code: ";
            r4 = java.lang.String.valueOf(java.lang.Integer.toString(r2));
     */
    /* JADX WARNING: Missing block: B:71:0x016c, code skipped:
            if (r4.length() == 0) goto L_0x0173;
     */
    /* JADX WARNING: Missing block: B:72:0x016e, code skipped:
            r3 = r3.concat(r4);
     */
    /* JADX WARNING: Missing block: B:74:0x0178, code skipped:
            r3 = new java.lang.String(r3);
     */
    /* JADX WARNING: Missing block: B:76:?, code skipped:
            r6 = new java.lang.StringBuilder(java.lang.String.valueOf(r31).length() + 32);
            r6.append("HTTP status code ");
            r6.append(r2);
            r6.append(" at ");
            r6.append(r9);
     */
    /* JADX WARNING: Missing block: B:77:0x01a1, code skipped:
            throw new java.io.IOException(r6.toString());
     */
    /* JADX WARNING: Missing block: B:78:0x01a2, code skipped:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:79:0x01a3, code skipped:
            r2 = r1;
     */
    /* JADX WARNING: Missing block: B:80:0x01a5, code skipped:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:81:0x01a6, code skipped:
            r2 = r1;
            r3 = null;
     */
    /* JADX WARNING: Missing block: B:82:0x01a8, code skipped:
            r1 = r0;
     */
    /* JADX WARNING: Missing block: B:83:0x01ab, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:84:0x01ac, code skipped:
            r1 = r0;
            r3 = null;
            r2 = r16;
     */
    /* JADX WARNING: Missing block: B:86:?, code skipped:
            r7 = r1.getContentLength();
     */
    /* JADX WARNING: Missing block: B:87:0x01b6, code skipped:
            if (r7 >= 0) goto L_0x01e1;
     */
    /* JADX WARNING: Missing block: B:89:?, code skipped:
            r1 = "Stream cache aborted, missing content-length header at ";
            r2 = java.lang.String.valueOf(r31);
     */
    /* JADX WARNING: Missing block: B:90:0x01c2, code skipped:
            if (r2.length() == 0) goto L_0x01c9;
     */
    /* JADX WARNING: Missing block: B:91:0x01c4, code skipped:
            r1 = r1.concat(r2);
     */
    /* JADX WARNING: Missing block: B:92:0x01c9, code skipped:
            r1 = new java.lang.String(r1);
     */
    /* JADX WARNING: Missing block: B:93:0x01cf, code skipped:
            com.google.android.gms.internal.zzajc.zzaT(r1);
            zza(r9, r12.getAbsolutePath(), "contentLengthMissing", null);
            zzJX.remove(r15);
     */
    /* JADX WARNING: Missing block: B:94:0x01e0, code skipped:
            return false;
     */
    /* JADX WARNING: Missing block: B:96:?, code skipped:
            r2 = zzJY.format((long) r7);
            r6 = ((java.lang.Integer) com.google.android.gms.ads.internal.zzbs.zzbL().zzd(com.google.android.gms.internal.zzmo.zzCn)).intValue();
     */
    /* JADX WARNING: Missing block: B:97:0x01f8, code skipped:
            if (r7 <= r6) goto L_0x024f;
     */
    /* JADX WARNING: Missing block: B:99:?, code skipped:
            r3 = new java.lang.StringBuilder((java.lang.String.valueOf(r2).length() + 33) + java.lang.String.valueOf(r31).length());
            r3.append("Content length ");
            r3.append(r2);
            r3.append(" exceeds limit at ");
            r3.append(r9);
            com.google.android.gms.internal.zzajc.zzaT(r3.toString());
            r1 = "File too big for full file cache. Size: ";
            r2 = java.lang.String.valueOf(r2);
     */
    /* JADX WARNING: Missing block: B:100:0x0233, code skipped:
            if (r2.length() == 0) goto L_0x023a;
     */
    /* JADX WARNING: Missing block: B:101:0x0235, code skipped:
            r1 = r1.concat(r2);
     */
    /* JADX WARNING: Missing block: B:102:0x023a, code skipped:
            r1 = new java.lang.String(r1);
     */
    /* JADX WARNING: Missing block: B:103:0x0240, code skipped:
            zza(r9, r12.getAbsolutePath(), "sizeExceeded", r1);
            zzJX.remove(r15);
     */
    /* JADX WARNING: Missing block: B:104:0x024e, code skipped:
            return false;
     */
    /* JADX WARNING: Missing block: B:106:?, code skipped:
            r4 = new java.lang.StringBuilder((java.lang.String.valueOf(r2).length() + 20) + java.lang.String.valueOf(r31).length());
            r4.append("Caching ");
            r4.append(r2);
            r4.append(" bytes from ");
            r4.append(r9);
            com.google.android.gms.internal.zzajc.zzaC(r4.toString());
            r5 = java.nio.channels.Channels.newChannel(r1.getInputStream());
            r4 = new java.io.FileOutputStream(r12);
     */
    /* JADX WARNING: Missing block: B:108:?, code skipped:
            r3 = r4.getChannel();
            r2 = java.nio.ByteBuffer.allocate(1048576);
            r1 = com.google.android.gms.ads.internal.zzbs.zzbF();
            r17 = r1.currentTimeMillis();
            r14 = new com.google.android.gms.internal.zzair(((java.lang.Long) com.google.android.gms.ads.internal.zzbs.zzbL().zzd(com.google.android.gms.internal.zzmo.zzCr)).longValue());
            r10 = ((java.lang.Long) com.google.android.gms.ads.internal.zzbs.zzbL().zzd(com.google.android.gms.internal.zzmo.zzCq)).longValue();
     */
    /* JADX WARNING: Missing block: B:109:0x02c2, code skipped:
            r19 = r4;
            r4 = 0;
     */
    /* JADX WARNING: Missing block: B:111:?, code skipped:
            r20 = r5.read(r2);
     */
    /* JADX WARNING: Missing block: B:112:0x02c9, code skipped:
            if (r20 < 0) goto L_0x03d0;
     */
    /* JADX WARNING: Missing block: B:113:0x02cb, code skipped:
            r4 = r4 + r20;
     */
    /* JADX WARNING: Missing block: B:114:0x02cd, code skipped:
            if (r4 <= r6) goto L_0x030b;
     */
    /* JADX WARNING: Missing block: B:116:?, code skipped:
            r1 = "sizeExceeded";
     */
    /* JADX WARNING: Missing block: B:118:?, code skipped:
            r2 = "File too big for full file cache. Size: ";
            r3 = java.lang.String.valueOf(java.lang.Integer.toString(r4));
     */
    /* JADX WARNING: Missing block: B:119:0x02df, code skipped:
            if (r3.length() == 0) goto L_0x02e7;
     */
    /* JADX WARNING: Missing block: B:120:0x02e1, code skipped:
            r10 = r2.concat(r3);
     */
    /* JADX WARNING: Missing block: B:122:0x02ec, code skipped:
            r10 = new java.lang.String(r2);
     */
    /* JADX WARNING: Missing block: B:125:0x02f4, code skipped:
            throw new java.io.IOException("stream cache file size limit exceeded");
     */
    /* JADX WARNING: Missing block: B:126:0x02f5, code skipped:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:127:0x02f6, code skipped:
            r2 = r1;
            r3 = r10;
            r10 = r19;
     */
    /* JADX WARNING: Missing block: B:128:0x02fc, code skipped:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:129:0x02fd, code skipped:
            r2 = r1;
            r10 = r19;
     */
    /* JADX WARNING: Missing block: B:130:0x0302, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:131:0x0303, code skipped:
            r1 = r0;
            r2 = r16;
            r10 = r19;
     */
    /* JADX WARNING: Missing block: B:132:0x0308, code skipped:
            r3 = null;
     */
    /* JADX WARNING: Missing block: B:134:?, code skipped:
            r2.flip();
     */
    /* JADX WARNING: Missing block: B:136:0x0312, code skipped:
            if (r3.write(r2) > 0) goto L_0x030e;
     */
    /* JADX WARNING: Missing block: B:137:0x0314, code skipped:
            r2.clear();
     */
    /* JADX WARNING: Missing block: B:139:0x0325, code skipped:
            if ((r1.currentTimeMillis() - r17) <= (1000 * r10)) goto L_0x0359;
     */
    /* JADX WARNING: Missing block: B:141:?, code skipped:
            r1 = "downloadTimeout";
     */
    /* JADX WARNING: Missing block: B:143:?, code skipped:
            r2 = java.lang.String.valueOf(java.lang.Long.toString(r10));
            r4 = new java.lang.StringBuilder(java.lang.String.valueOf(r2).length() + 29);
            r4.append("Timeout exceeded. Limit: ");
            r4.append(r2);
            r4.append(" sec");
            r10 = r4.toString();
     */
    /* JADX WARNING: Missing block: B:146:0x0358, code skipped:
            throw new java.io.IOException("stream cache time limit exceeded");
     */
    /* JADX WARNING: Missing block: B:147:0x0359, code skipped:
            r25 = r1;
     */
    /* JADX WARNING: Missing block: B:150:0x035d, code skipped:
            if (r8.zzKa == false) goto L_0x0369;
     */
    /* JADX WARNING: Missing block: B:152:?, code skipped:
            r1 = "externalAbort";
     */
    /* JADX WARNING: Missing block: B:155:0x0368, code skipped:
            throw new java.io.IOException("abort requested");
     */
    /* JADX WARNING: Missing block: B:158:0x036d, code skipped:
            if (r14.tryAcquire() == false) goto L_0x03a0;
     */
    /* JADX WARNING: Missing block: B:159:0x036f, code skipped:
            r26 = r10;
     */
    /* JADX WARNING: Missing block: B:160:0x0379, code skipped:
            r21 = r25;
            r1 = r1;
            r22 = r2;
            r23 = r3;
            r29 = r19;
            r19 = r4;
            r20 = r5;
            r24 = r6;
            r25 = r7;
     */
    /* JADX WARNING: Missing block: B:162:?, code skipped:
            com.google.android.gms.internal.zzaiy.zzaaH.post(new com.google.android.gms.internal.zzsc(r8, r9, r12.getAbsolutePath(), r19, r7, false));
     */
    /* JADX WARNING: Missing block: B:163:0x039e, code skipped:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:164:0x03a0, code skipped:
            r22 = r2;
            r23 = r3;
            r20 = r5;
            r24 = r6;
            r26 = r10;
            r29 = r19;
            r21 = r25;
            r19 = r4;
            r25 = r7;
     */
    /* JADX WARNING: Missing block: B:165:0x03b2, code skipped:
            r4 = r19;
            r5 = r20;
            r1 = r21;
            r2 = r22;
            r3 = r23;
            r6 = r24;
            r7 = r25;
            r10 = r26;
            r19 = r29;
     */
    /* JADX WARNING: Missing block: B:166:0x03c6, code skipped:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:167:0x03c7, code skipped:
            r29 = r19;
     */
    /* JADX WARNING: Missing block: B:168:0x03c9, code skipped:
            r1 = r0;
            r2 = r16;
            r10 = r29;
     */
    /* JADX WARNING: Missing block: B:169:0x03d0, code skipped:
            r1 = r19;
     */
    /* JADX WARNING: Missing block: B:171:?, code skipped:
            r1.close();
     */
    /* JADX WARNING: Missing block: B:172:0x03da, code skipped:
            if (com.google.android.gms.internal.zzajc.zzz(3) == false) goto L_0x0412;
     */
    /* JADX WARNING: Missing block: B:173:0x03dc, code skipped:
            r2 = zzJY.format((long) r4);
            r5 = new java.lang.StringBuilder((java.lang.String.valueOf(r2).length() + 22) + java.lang.String.valueOf(r31).length());
            r5.append("Preloaded ");
            r5.append(r2);
            r5.append(" bytes from ");
            r5.append(r9);
            com.google.android.gms.internal.zzajc.zzaC(r5.toString());
     */
    /* JADX WARNING: Missing block: B:174:0x0412, code skipped:
            r12.setReadable(true, false);
     */
    /* JADX WARNING: Missing block: B:175:0x041b, code skipped:
            if (r13.isFile() == false) goto L_0x0425;
     */
    /* JADX WARNING: Missing block: B:176:0x041d, code skipped:
            r13.setLastModified(java.lang.System.currentTimeMillis());
     */
    /* JADX WARNING: Missing block: B:178:?, code skipped:
            r13.createNewFile();
     */
    /* JADX WARNING: Missing block: B:180:?, code skipped:
            zza(r9, r12.getAbsolutePath(), r4);
            zzJX.remove(r15);
     */
    /* JADX WARNING: Missing block: B:182:0x0435, code skipped:
            return true;
     */
    /* JADX WARNING: Missing block: B:183:0x0436, code skipped:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:184:0x0438, code skipped:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:185:0x0439, code skipped:
            r1 = r19;
     */
    /* JADX WARNING: Missing block: B:186:0x043c, code skipped:
            r0 = e;
     */
    /* JADX WARNING: Missing block: B:187:0x043d, code skipped:
            r1 = r4;
     */
    /* JADX WARNING: Missing block: B:188:0x043e, code skipped:
            r10 = r1;
            r2 = r16;
     */
    /* JADX WARNING: Missing block: B:189:0x0441, code skipped:
            r3 = null;
     */
    /* JADX WARNING: Missing block: B:190:0x0444, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:191:0x0445, code skipped:
            r1 = r0;
            r2 = r16;
            r3 = null;
            r10 = null;
     */
    /* JADX WARNING: Missing block: B:193:0x044c, code skipped:
            if ((r1 instanceof java.lang.RuntimeException) != false) goto L_0x044e;
     */
    /* JADX WARNING: Missing block: B:194:0x044e, code skipped:
            com.google.android.gms.ads.internal.zzbs.zzbD().zza(r1, "VideoStreamFullFileCache.preload");
     */
    /* JADX WARNING: Missing block: B:196:?, code skipped:
            r10.close();
     */
    /* JADX WARNING: Missing block: B:199:0x045c, code skipped:
            if (r8.zzKa != false) goto L_0x045e;
     */
    /* JADX WARNING: Missing block: B:200:0x045e, code skipped:
            r4 = new java.lang.StringBuilder(java.lang.String.valueOf(r31).length() + 26);
            r4.append("Preload aborted for URL \"");
            r4.append(r9);
            r4.append("\"");
            com.google.android.gms.internal.zzajc.zzaS(r4.toString());
     */
    /* JADX WARNING: Missing block: B:201:0x0482, code skipped:
            r5 = new java.lang.StringBuilder(java.lang.String.valueOf(r31).length() + 25);
            r5.append("Preload failed for URL \"");
            r5.append(r9);
            r5.append("\"");
            com.google.android.gms.internal.zzajc.zzc(r5.toString(), r1);
     */
    /* JADX WARNING: Missing block: B:206:0x04b1, code skipped:
            r1 = "Could not delete partial cache file at ";
            r4 = java.lang.String.valueOf(r12.getAbsolutePath());
     */
    /* JADX WARNING: Missing block: B:207:0x04bf, code skipped:
            if (r4.length() != 0) goto L_0x04c1;
     */
    /* JADX WARNING: Missing block: B:208:0x04c1, code skipped:
            r1 = r1.concat(r4);
     */
    /* JADX WARNING: Missing block: B:209:0x04c6, code skipped:
            r1 = new java.lang.String(r1);
     */
    /* JADX WARNING: Missing block: B:210:0x04cc, code skipped:
            com.google.android.gms.internal.zzajc.zzaT(r1);
     */
    /* JADX WARNING: Missing block: B:211:0x04cf, code skipped:
            zza(r9, r12.getAbsolutePath(), r2, r3);
            zzJX.remove(r15);
     */
    /* JADX WARNING: Missing block: B:212:0x04dc, code skipped:
            return false;
     */
    public final boolean zzU(java.lang.String r31) {
        /*
        r30 = this;
        r8 = r30;
        r9 = r31;
        r1 = r8.zzJZ;
        r10 = 0;
        r11 = 0;
        if (r1 != 0) goto L_0x0010;
    L_0x000a:
        r1 = "noCacheDir";
    L_0x000c:
        r8.zza(r9, r10, r1, r10);
        return r11;
    L_0x0010:
        r1 = r8.zzJZ;
        if (r1 != 0) goto L_0x0016;
    L_0x0014:
        r4 = 0;
        goto L_0x0034;
    L_0x0016:
        r1 = r8.zzJZ;
        r1 = r1.listFiles();
        r2 = r1.length;
        r3 = 0;
        r4 = 0;
    L_0x001f:
        if (r3 >= r2) goto L_0x0034;
    L_0x0021:
        r5 = r1[r3];
        r5 = r5.getName();
        r6 = ".done";
        r5 = r5.endsWith(r6);
        if (r5 != 0) goto L_0x0031;
    L_0x002f:
        r4 = r4 + 1;
    L_0x0031:
        r3 = r3 + 1;
        goto L_0x001f;
    L_0x0034:
        r1 = com.google.android.gms.internal.zzmo.zzCm;
        r2 = com.google.android.gms.ads.internal.zzbs.zzbL();
        r1 = r2.zzd(r1);
        r1 = (java.lang.Integer) r1;
        r1 = r1.intValue();
        if (r4 <= r1) goto L_0x0098;
    L_0x0046:
        r1 = r8.zzJZ;
        if (r1 != 0) goto L_0x004c;
    L_0x004a:
        r1 = 0;
        goto L_0x008d;
    L_0x004c:
        r1 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        r3 = r8.zzJZ;
        r3 = r3.listFiles();
        r4 = r3.length;
        r5 = r1;
        r2 = r10;
        r1 = 0;
    L_0x005b:
        if (r1 >= r4) goto L_0x0078;
    L_0x005d:
        r7 = r3[r1];
        r12 = r7.getName();
        r13 = ".done";
        r12 = r12.endsWith(r13);
        if (r12 != 0) goto L_0x0075;
    L_0x006b:
        r12 = r7.lastModified();
        r14 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1));
        if (r14 >= 0) goto L_0x0075;
    L_0x0073:
        r2 = r7;
        r5 = r12;
    L_0x0075:
        r1 = r1 + 1;
        goto L_0x005b;
    L_0x0078:
        if (r2 == 0) goto L_0x004a;
    L_0x007a:
        r1 = r2.delete();
        r2 = r8.zzb(r2);
        r3 = r2.isFile();
        if (r3 == 0) goto L_0x008d;
    L_0x0088:
        r2 = r2.delete();
        r1 = r1 & r2;
    L_0x008d:
        if (r1 != 0) goto L_0x0010;
    L_0x008f:
        r1 = "Unable to expire stream cache";
        com.google.android.gms.internal.zzajc.zzaT(r1);
        r1 = "expireFailed";
        goto L_0x000c;
    L_0x0098:
        com.google.android.gms.internal.zzji.zzds();
        r1 = com.google.android.gms.internal.zzaiy.zzaR(r31);
        r12 = new java.io.File;
        r2 = r8.zzJZ;
        r12.<init>(r2, r1);
        r13 = r8.zzb(r12);
        r1 = r12.isFile();
        r14 = 1;
        if (r1 == 0) goto L_0x00de;
    L_0x00b1:
        r1 = r13.isFile();
        if (r1 == 0) goto L_0x00de;
    L_0x00b7:
        r1 = r12.length();
        r1 = (int) r1;
        r2 = "Stream cache hit at ";
        r3 = java.lang.String.valueOf(r31);
        r4 = r3.length();
        if (r4 == 0) goto L_0x00cd;
    L_0x00c8:
        r2 = r2.concat(r3);
        goto L_0x00d3;
    L_0x00cd:
        r3 = new java.lang.String;
        r3.<init>(r2);
        r2 = r3;
    L_0x00d3:
        com.google.android.gms.internal.zzajc.zzaC(r2);
        r2 = r12.getAbsolutePath();
        r8.zza(r9, r2, r1);
        return r14;
    L_0x00de:
        r1 = r8.zzJZ;
        r1 = r1.getAbsolutePath();
        r1 = java.lang.String.valueOf(r1);
        r2 = java.lang.String.valueOf(r31);
        r3 = r2.length();
        if (r3 == 0) goto L_0x00f8;
    L_0x00f2:
        r1 = r1.concat(r2);
        r15 = r1;
        goto L_0x00fe;
    L_0x00f8:
        r2 = new java.lang.String;
        r2.<init>(r1);
        r15 = r2;
    L_0x00fe:
        r1 = zzJX;
        monitor-enter(r1);
        r2 = zzJX;	 Catch:{ all -> 0x04dd }
        r2 = r2.contains(r15);	 Catch:{ all -> 0x04dd }
        if (r2 == 0) goto L_0x012e;
    L_0x0109:
        r2 = "Stream cache already in progress at ";
        r3 = java.lang.String.valueOf(r31);	 Catch:{ all -> 0x04dd }
        r4 = r3.length();	 Catch:{ all -> 0x04dd }
        if (r4 == 0) goto L_0x011a;
    L_0x0115:
        r2 = r2.concat(r3);	 Catch:{ all -> 0x04dd }
        goto L_0x0120;
    L_0x011a:
        r3 = new java.lang.String;	 Catch:{ all -> 0x04dd }
        r3.<init>(r2);	 Catch:{ all -> 0x04dd }
        r2 = r3;
    L_0x0120:
        com.google.android.gms.internal.zzajc.zzaT(r2);	 Catch:{ all -> 0x04dd }
        r2 = r12.getAbsolutePath();	 Catch:{ all -> 0x04dd }
        r3 = "inProgress";
        r8.zza(r9, r2, r3, r10);	 Catch:{ all -> 0x04dd }
        monitor-exit(r1);	 Catch:{ all -> 0x04dd }
        return r11;
    L_0x012e:
        r2 = zzJX;	 Catch:{ all -> 0x04dd }
        r2.add(r15);	 Catch:{ all -> 0x04dd }
        monitor-exit(r1);	 Catch:{ all -> 0x04dd }
        r16 = "error";
        com.google.android.gms.ads.internal.zzbs.zzbM();	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r1 = com.google.android.gms.internal.zzmo.zzCs;	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r2 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r1 = r2.zzd(r1);	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r1 = (java.lang.Integer) r1;	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r1 = r1.intValue();	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r1 = com.google.android.gms.internal.zzajo.zzb(r9, r1);	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r2 = r1 instanceof java.net.HttpURLConnection;	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        if (r2 == 0) goto L_0x01b2;
    L_0x0151:
        r2 = r1;
        r2 = (java.net.HttpURLConnection) r2;	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r2 = r2.getResponseCode();	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r3 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        if (r2 < r3) goto L_0x01b2;
    L_0x015c:
        r1 = "badUrl";
        r3 = "HTTP request failed. Code: ";
        r4 = java.lang.Integer.toString(r2);	 Catch:{ IOException | RuntimeException -> 0x01a5, IOException | RuntimeException -> 0x01a5 }
        r4 = java.lang.String.valueOf(r4);	 Catch:{ IOException | RuntimeException -> 0x01a5, IOException | RuntimeException -> 0x01a5 }
        r5 = r4.length();	 Catch:{ IOException | RuntimeException -> 0x01a5, IOException | RuntimeException -> 0x01a5 }
        if (r5 == 0) goto L_0x0173;
    L_0x016e:
        r3 = r3.concat(r4);	 Catch:{ IOException | RuntimeException -> 0x01a5, IOException | RuntimeException -> 0x01a5 }
        goto L_0x0179;
    L_0x0173:
        r4 = new java.lang.String;	 Catch:{ IOException | RuntimeException -> 0x01a5, IOException | RuntimeException -> 0x01a5 }
        r4.<init>(r3);	 Catch:{ IOException | RuntimeException -> 0x01a5, IOException | RuntimeException -> 0x01a5 }
        r3 = r4;
    L_0x0179:
        r4 = new java.io.IOException;	 Catch:{ IOException | RuntimeException -> 0x01a2, IOException | RuntimeException -> 0x01a2 }
        r5 = java.lang.String.valueOf(r31);	 Catch:{ IOException | RuntimeException -> 0x01a2, IOException | RuntimeException -> 0x01a2 }
        r5 = r5.length();	 Catch:{ IOException | RuntimeException -> 0x01a2, IOException | RuntimeException -> 0x01a2 }
        r5 = r5 + 32;
        r6 = new java.lang.StringBuilder;	 Catch:{ IOException | RuntimeException -> 0x01a2, IOException | RuntimeException -> 0x01a2 }
        r6.<init>(r5);	 Catch:{ IOException | RuntimeException -> 0x01a2, IOException | RuntimeException -> 0x01a2 }
        r5 = "HTTP status code ";
        r6.append(r5);	 Catch:{ IOException | RuntimeException -> 0x01a2, IOException | RuntimeException -> 0x01a2 }
        r6.append(r2);	 Catch:{ IOException | RuntimeException -> 0x01a2, IOException | RuntimeException -> 0x01a2 }
        r2 = " at ";
        r6.append(r2);	 Catch:{ IOException | RuntimeException -> 0x01a2, IOException | RuntimeException -> 0x01a2 }
        r6.append(r9);	 Catch:{ IOException | RuntimeException -> 0x01a2, IOException | RuntimeException -> 0x01a2 }
        r2 = r6.toString();	 Catch:{ IOException | RuntimeException -> 0x01a2, IOException | RuntimeException -> 0x01a2 }
        r4.<init>(r2);	 Catch:{ IOException | RuntimeException -> 0x01a2, IOException | RuntimeException -> 0x01a2 }
        throw r4;	 Catch:{ IOException | RuntimeException -> 0x01a2, IOException | RuntimeException -> 0x01a2 }
    L_0x01a2:
        r0 = move-exception;
        r2 = r1;
        goto L_0x01a8;
    L_0x01a5:
        r0 = move-exception;
        r2 = r1;
        r3 = r10;
    L_0x01a8:
        r1 = r0;
        goto L_0x044a;
    L_0x01ab:
        r0 = move-exception;
        r1 = r0;
        r3 = r10;
        r2 = r16;
        goto L_0x044a;
    L_0x01b2:
        r7 = r1.getContentLength();	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        if (r7 >= 0) goto L_0x01e1;
    L_0x01b8:
        r1 = "Stream cache aborted, missing content-length header at ";
        r2 = java.lang.String.valueOf(r31);	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r3 = r2.length();	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        if (r3 == 0) goto L_0x01c9;
    L_0x01c4:
        r1 = r1.concat(r2);	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        goto L_0x01cf;
    L_0x01c9:
        r2 = new java.lang.String;	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r2.<init>(r1);	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r1 = r2;
    L_0x01cf:
        com.google.android.gms.internal.zzajc.zzaT(r1);	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r1 = r12.getAbsolutePath();	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r2 = "contentLengthMissing";
        r8.zza(r9, r1, r2, r10);	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r1 = zzJX;	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r1.remove(r15);	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        return r11;
    L_0x01e1:
        r2 = zzJY;	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r3 = (long) r7;	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r2 = r2.format(r3);	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r3 = com.google.android.gms.internal.zzmo.zzCn;	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r4 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r3 = r4.zzd(r3);	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r3 = (java.lang.Integer) r3;	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r6 = r3.intValue();	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        if (r7 <= r6) goto L_0x024f;
    L_0x01fa:
        r1 = java.lang.String.valueOf(r2);	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r1 = r1.length();	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r1 = r1 + 33;
        r3 = java.lang.String.valueOf(r31);	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r3 = r3.length();	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r1 = r1 + r3;
        r3 = new java.lang.StringBuilder;	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r3.<init>(r1);	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r1 = "Content length ";
        r3.append(r1);	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r3.append(r2);	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r1 = " exceeds limit at ";
        r3.append(r1);	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r3.append(r9);	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r1 = r3.toString();	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        com.google.android.gms.internal.zzajc.zzaT(r1);	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r1 = "File too big for full file cache. Size: ";
        r2 = java.lang.String.valueOf(r2);	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r3 = r2.length();	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        if (r3 == 0) goto L_0x023a;
    L_0x0235:
        r1 = r1.concat(r2);	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        goto L_0x0240;
    L_0x023a:
        r2 = new java.lang.String;	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r2.<init>(r1);	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r1 = r2;
    L_0x0240:
        r2 = r12.getAbsolutePath();	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r3 = "sizeExceeded";
        r8.zza(r9, r2, r3, r1);	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r1 = zzJX;	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        r1.remove(r15);	 Catch:{ IOException | RuntimeException -> 0x01ab, IOException | RuntimeException -> 0x01ab }
        return r11;
    L_0x024f:
        r3 = java.lang.String.valueOf(r2);	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r3 = r3.length();	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r3 = r3 + 20;
        r4 = java.lang.String.valueOf(r31);	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r4 = r4.length();	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r3 = r3 + r4;
        r4 = new java.lang.StringBuilder;	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r4.<init>(r3);	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r3 = "Caching ";
        r4.append(r3);	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r4.append(r2);	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r2 = " bytes from ";
        r4.append(r2);	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r4.append(r9);	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r2 = r4.toString();	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        com.google.android.gms.internal.zzajc.zzaC(r2);	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r1 = r1.getInputStream();	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r5 = java.nio.channels.Channels.newChannel(r1);	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r4 = new java.io.FileOutputStream;	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r4.<init>(r12);	 Catch:{ IOException | RuntimeException -> 0x0444, IOException | RuntimeException -> 0x0444 }
        r3 = r4.getChannel();	 Catch:{ IOException | RuntimeException -> 0x043c, IOException | RuntimeException -> 0x043c }
        r1 = 1048576; // 0x100000 float:1.469368E-39 double:5.180654E-318;
        r2 = java.nio.ByteBuffer.allocate(r1);	 Catch:{ IOException | RuntimeException -> 0x043c, IOException | RuntimeException -> 0x043c }
        r1 = com.google.android.gms.ads.internal.zzbs.zzbF();	 Catch:{ IOException | RuntimeException -> 0x043c, IOException | RuntimeException -> 0x043c }
        r17 = r1.currentTimeMillis();	 Catch:{ IOException | RuntimeException -> 0x043c, IOException | RuntimeException -> 0x043c }
        r10 = com.google.android.gms.internal.zzmo.zzCr;	 Catch:{ IOException | RuntimeException -> 0x043c, IOException | RuntimeException -> 0x043c }
        r11 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ IOException | RuntimeException -> 0x043c, IOException | RuntimeException -> 0x043c }
        r10 = r11.zzd(r10);	 Catch:{ IOException | RuntimeException -> 0x043c, IOException | RuntimeException -> 0x043c }
        r10 = (java.lang.Long) r10;	 Catch:{ IOException | RuntimeException -> 0x043c, IOException | RuntimeException -> 0x043c }
        r10 = r10.longValue();	 Catch:{ IOException | RuntimeException -> 0x043c, IOException | RuntimeException -> 0x043c }
        r14 = new com.google.android.gms.internal.zzair;	 Catch:{ IOException | RuntimeException -> 0x043c, IOException | RuntimeException -> 0x043c }
        r14.<init>(r10);	 Catch:{ IOException | RuntimeException -> 0x043c, IOException | RuntimeException -> 0x043c }
        r10 = com.google.android.gms.internal.zzmo.zzCq;	 Catch:{ IOException | RuntimeException -> 0x043c, IOException | RuntimeException -> 0x043c }
        r11 = com.google.android.gms.ads.internal.zzbs.zzbL();	 Catch:{ IOException | RuntimeException -> 0x043c, IOException | RuntimeException -> 0x043c }
        r10 = r11.zzd(r10);	 Catch:{ IOException | RuntimeException -> 0x043c, IOException | RuntimeException -> 0x043c }
        r10 = (java.lang.Long) r10;	 Catch:{ IOException | RuntimeException -> 0x043c, IOException | RuntimeException -> 0x043c }
        r10 = r10.longValue();	 Catch:{ IOException | RuntimeException -> 0x043c, IOException | RuntimeException -> 0x043c }
        r19 = r4;
        r4 = 0;
    L_0x02c5:
        r20 = r5.read(r2);	 Catch:{ IOException | RuntimeException -> 0x0438, IOException | RuntimeException -> 0x0438 }
        if (r20 < 0) goto L_0x03d0;
    L_0x02cb:
        r4 = r4 + r20;
        if (r4 <= r6) goto L_0x030b;
    L_0x02cf:
        r1 = "sizeExceeded";
        r2 = "File too big for full file cache. Size: ";
        r3 = java.lang.Integer.toString(r4);	 Catch:{ IOException | RuntimeException -> 0x02fc, IOException | RuntimeException -> 0x02fc }
        r3 = java.lang.String.valueOf(r3);	 Catch:{ IOException | RuntimeException -> 0x02fc, IOException | RuntimeException -> 0x02fc }
        r4 = r3.length();	 Catch:{ IOException | RuntimeException -> 0x02fc, IOException | RuntimeException -> 0x02fc }
        if (r4 == 0) goto L_0x02e7;
    L_0x02e1:
        r2 = r2.concat(r3);	 Catch:{ IOException | RuntimeException -> 0x02fc, IOException | RuntimeException -> 0x02fc }
        r10 = r2;
        goto L_0x02ed;
    L_0x02e7:
        r3 = new java.lang.String;	 Catch:{ IOException | RuntimeException -> 0x02fc, IOException | RuntimeException -> 0x02fc }
        r3.<init>(r2);	 Catch:{ IOException | RuntimeException -> 0x02fc, IOException | RuntimeException -> 0x02fc }
        r10 = r3;
    L_0x02ed:
        r2 = new java.io.IOException;	 Catch:{ IOException | RuntimeException -> 0x02f5, IOException | RuntimeException -> 0x02f5 }
        r3 = "stream cache file size limit exceeded";
        r2.<init>(r3);	 Catch:{ IOException | RuntimeException -> 0x02f5, IOException | RuntimeException -> 0x02f5 }
        throw r2;	 Catch:{ IOException | RuntimeException -> 0x02f5, IOException | RuntimeException -> 0x02f5 }
    L_0x02f5:
        r0 = move-exception;
        r2 = r1;
        r3 = r10;
        r10 = r19;
        goto L_0x01a8;
    L_0x02fc:
        r0 = move-exception;
        r2 = r1;
        r10 = r19;
        goto L_0x0441;
    L_0x0302:
        r0 = move-exception;
        r1 = r0;
        r2 = r16;
        r10 = r19;
    L_0x0308:
        r3 = 0;
        goto L_0x044a;
    L_0x030b:
        r2.flip();	 Catch:{ IOException | RuntimeException -> 0x03c6, IOException | RuntimeException -> 0x03c6 }
    L_0x030e:
        r20 = r3.write(r2);	 Catch:{ IOException | RuntimeException -> 0x03c6, IOException | RuntimeException -> 0x03c6 }
        if (r20 > 0) goto L_0x030e;
    L_0x0314:
        r2.clear();	 Catch:{ IOException | RuntimeException -> 0x03c6, IOException | RuntimeException -> 0x03c6 }
        r20 = r1.currentTimeMillis();	 Catch:{ IOException | RuntimeException -> 0x03c6, IOException | RuntimeException -> 0x03c6 }
        r22 = 0;
        r22 = r20 - r17;
        r20 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r20 = r20 * r10;
        r24 = (r22 > r20 ? 1 : (r22 == r20 ? 0 : -1));
        if (r24 <= 0) goto L_0x0359;
    L_0x0327:
        r1 = "downloadTimeout";
        r2 = java.lang.Long.toString(r10);	 Catch:{ IOException | RuntimeException -> 0x02fc, IOException | RuntimeException -> 0x02fc }
        r2 = java.lang.String.valueOf(r2);	 Catch:{ IOException | RuntimeException -> 0x02fc, IOException | RuntimeException -> 0x02fc }
        r3 = java.lang.String.valueOf(r2);	 Catch:{ IOException | RuntimeException -> 0x02fc, IOException | RuntimeException -> 0x02fc }
        r3 = r3.length();	 Catch:{ IOException | RuntimeException -> 0x02fc, IOException | RuntimeException -> 0x02fc }
        r3 = r3 + 29;
        r4 = new java.lang.StringBuilder;	 Catch:{ IOException | RuntimeException -> 0x02fc, IOException | RuntimeException -> 0x02fc }
        r4.<init>(r3);	 Catch:{ IOException | RuntimeException -> 0x02fc, IOException | RuntimeException -> 0x02fc }
        r3 = "Timeout exceeded. Limit: ";
        r4.append(r3);	 Catch:{ IOException | RuntimeException -> 0x02fc, IOException | RuntimeException -> 0x02fc }
        r4.append(r2);	 Catch:{ IOException | RuntimeException -> 0x02fc, IOException | RuntimeException -> 0x02fc }
        r2 = " sec";
        r4.append(r2);	 Catch:{ IOException | RuntimeException -> 0x02fc, IOException | RuntimeException -> 0x02fc }
        r10 = r4.toString();	 Catch:{ IOException | RuntimeException -> 0x02fc, IOException | RuntimeException -> 0x02fc }
        r2 = new java.io.IOException;	 Catch:{ IOException | RuntimeException -> 0x02f5, IOException | RuntimeException -> 0x02f5 }
        r3 = "stream cache time limit exceeded";
        r2.<init>(r3);	 Catch:{ IOException | RuntimeException -> 0x02f5, IOException | RuntimeException -> 0x02f5 }
        throw r2;	 Catch:{ IOException | RuntimeException -> 0x02f5, IOException | RuntimeException -> 0x02f5 }
    L_0x0359:
        r25 = r1;
        r1 = r8.zzKa;	 Catch:{ IOException | RuntimeException -> 0x03c6, IOException | RuntimeException -> 0x03c6 }
        if (r1 == 0) goto L_0x0369;
    L_0x035f:
        r1 = "externalAbort";
        r2 = new java.io.IOException;	 Catch:{ IOException | RuntimeException -> 0x02fc, IOException | RuntimeException -> 0x02fc }
        r3 = "abort requested";
        r2.<init>(r3);	 Catch:{ IOException | RuntimeException -> 0x02fc, IOException | RuntimeException -> 0x02fc }
        throw r2;	 Catch:{ IOException | RuntimeException -> 0x02fc, IOException | RuntimeException -> 0x02fc }
    L_0x0369:
        r1 = r14.tryAcquire();	 Catch:{ IOException | RuntimeException -> 0x03c6, IOException | RuntimeException -> 0x03c6 }
        if (r1 == 0) goto L_0x03a0;
    L_0x036f:
        r20 = r12.getAbsolutePath();	 Catch:{ IOException | RuntimeException -> 0x03c6, IOException | RuntimeException -> 0x03c6 }
        r1 = com.google.android.gms.internal.zzaiy.zzaaH;	 Catch:{ IOException | RuntimeException -> 0x03c6, IOException | RuntimeException -> 0x03c6 }
        r26 = r10;
        r10 = new com.google.android.gms.internal.zzsc;	 Catch:{ IOException | RuntimeException -> 0x03c6, IOException | RuntimeException -> 0x03c6 }
        r11 = 0;
        r28 = r1;
        r21 = r25;
        r1 = r10;
        r22 = r2;
        r2 = r8;
        r23 = r3;
        r3 = r9;
        r29 = r19;
        r19 = r4;
        r4 = r20;
        r20 = r5;
        r5 = r19;
        r24 = r6;
        r6 = r7;
        r25 = r7;
        r7 = r11;
        r1.<init>(r2, r3, r4, r5, r6, r7);	 Catch:{ IOException | RuntimeException -> 0x039e, IOException | RuntimeException -> 0x039e }
        r1 = r28;
        r1.post(r10);	 Catch:{ IOException | RuntimeException -> 0x039e, IOException | RuntimeException -> 0x039e }
        goto L_0x03b2;
    L_0x039e:
        r0 = move-exception;
        goto L_0x03c9;
    L_0x03a0:
        r22 = r2;
        r23 = r3;
        r20 = r5;
        r24 = r6;
        r26 = r10;
        r29 = r19;
        r21 = r25;
        r19 = r4;
        r25 = r7;
    L_0x03b2:
        r4 = r19;
        r5 = r20;
        r1 = r21;
        r2 = r22;
        r3 = r23;
        r6 = r24;
        r7 = r25;
        r10 = r26;
        r19 = r29;
        goto L_0x02c5;
    L_0x03c6:
        r0 = move-exception;
        r29 = r19;
    L_0x03c9:
        r1 = r0;
        r2 = r16;
        r10 = r29;
        goto L_0x0308;
    L_0x03d0:
        r1 = r19;
        r1.close();	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
        r2 = 3;
        r2 = com.google.android.gms.internal.zzajc.zzz(r2);	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
        if (r2 == 0) goto L_0x0412;
    L_0x03dc:
        r2 = zzJY;	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
        r5 = (long) r4;	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
        r2 = r2.format(r5);	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
        r3 = java.lang.String.valueOf(r2);	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
        r3 = r3.length();	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
        r3 = r3 + 22;
        r5 = java.lang.String.valueOf(r31);	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
        r5 = r5.length();	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
        r3 = r3 + r5;
        r5 = new java.lang.StringBuilder;	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
        r5.<init>(r3);	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
        r3 = "Preloaded ";
        r5.append(r3);	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
        r5.append(r2);	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
        r2 = " bytes from ";
        r5.append(r2);	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
        r5.append(r9);	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
        r2 = r5.toString();	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
        com.google.android.gms.internal.zzajc.zzaC(r2);	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
    L_0x0412:
        r2 = 0;
        r3 = 1;
        r12.setReadable(r3, r2);	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
        r2 = r13.isFile();	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
        if (r2 == 0) goto L_0x0425;
    L_0x041d:
        r2 = java.lang.System.currentTimeMillis();	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
        r13.setLastModified(r2);	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
        goto L_0x0428;
    L_0x0425:
        r13.createNewFile();	 Catch:{ IOException -> 0x0428 }
    L_0x0428:
        r2 = r12.getAbsolutePath();	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
        r8.zza(r9, r2, r4);	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
        r2 = zzJX;	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
        r2.remove(r15);	 Catch:{ IOException | RuntimeException -> 0x0436, IOException | RuntimeException -> 0x0436 }
        r2 = 1;
        return r2;
    L_0x0436:
        r0 = move-exception;
        goto L_0x043e;
    L_0x0438:
        r0 = move-exception;
        r1 = r19;
        goto L_0x043e;
    L_0x043c:
        r0 = move-exception;
        r1 = r4;
    L_0x043e:
        r10 = r1;
        r2 = r16;
    L_0x0441:
        r3 = 0;
        goto L_0x01a8;
    L_0x0444:
        r0 = move-exception;
        r1 = r0;
        r2 = r16;
        r3 = 0;
        r10 = 0;
    L_0x044a:
        r4 = r1 instanceof java.lang.RuntimeException;
        if (r4 == 0) goto L_0x0457;
    L_0x044e:
        r4 = com.google.android.gms.ads.internal.zzbs.zzbD();
        r5 = "VideoStreamFullFileCache.preload";
        r4.zza(r1, r5);
    L_0x0457:
        r10.close();	 Catch:{ IOException | NullPointerException -> 0x045a, IOException | NullPointerException -> 0x045a }
    L_0x045a:
        r4 = r8.zzKa;
        if (r4 == 0) goto L_0x0482;
    L_0x045e:
        r1 = java.lang.String.valueOf(r31);
        r1 = r1.length();
        r1 = r1 + 26;
        r4 = new java.lang.StringBuilder;
        r4.<init>(r1);
        r1 = "Preload aborted for URL \"";
        r4.append(r1);
        r4.append(r9);
        r1 = "\"";
        r4.append(r1);
        r1 = r4.toString();
        com.google.android.gms.internal.zzajc.zzaS(r1);
        goto L_0x04a5;
    L_0x0482:
        r4 = java.lang.String.valueOf(r31);
        r4 = r4.length();
        r4 = r4 + 25;
        r5 = new java.lang.StringBuilder;
        r5.<init>(r4);
        r4 = "Preload failed for URL \"";
        r5.append(r4);
        r5.append(r9);
        r4 = "\"";
        r5.append(r4);
        r4 = r5.toString();
        com.google.android.gms.internal.zzajc.zzc(r4, r1);
    L_0x04a5:
        r1 = r12.exists();
        if (r1 == 0) goto L_0x04cf;
    L_0x04ab:
        r1 = r12.delete();
        if (r1 != 0) goto L_0x04cf;
    L_0x04b1:
        r1 = "Could not delete partial cache file at ";
        r4 = r12.getAbsolutePath();
        r4 = java.lang.String.valueOf(r4);
        r5 = r4.length();
        if (r5 == 0) goto L_0x04c6;
    L_0x04c1:
        r1 = r1.concat(r4);
        goto L_0x04cc;
    L_0x04c6:
        r4 = new java.lang.String;
        r4.<init>(r1);
        r1 = r4;
    L_0x04cc:
        com.google.android.gms.internal.zzajc.zzaT(r1);
    L_0x04cf:
        r1 = r12.getAbsolutePath();
        r8.zza(r9, r1, r2, r3);
        r1 = zzJX;
        r1.remove(r15);
        r1 = 0;
        return r1;
    L_0x04dd:
        r0 = move-exception;
        r2 = r0;
        monitor-exit(r1);	 Catch:{ all -> 0x04dd }
        throw r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzsh.zzU(java.lang.String):boolean");
    }
}
