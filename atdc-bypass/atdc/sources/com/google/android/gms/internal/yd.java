package com.google.android.gms.internal;

import com.bumptech.glide.load.Key;
import java.io.IOException;
import java.lang.Thread.State;
import java.net.Socket;
import java.net.URI;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

public final class yd {
    private static final AtomicInteger zzciL = new AtomicInteger(0);
    private static final Charset zzciM = Charset.forName(Key.STRING_CHARSET_NAME);
    private static ThreadFactory zzciU = Executors.defaultThreadFactory();
    private static yc zzciV = new ye();
    private volatile Socket socket = null;
    private final int zzaBC = zzciL.incrementAndGet();
    private volatile int zzciN = yh.zzciY;
    private yi zzciO = null;
    private final URI zzciP;
    private final ym zzciQ;
    private final yn zzciR;
    private final yk zzciS;
    private final Thread zzciT = zzciU.newThread(new yf(this));

    public yd(URI uri, String str, Map<String, String> map) {
        this.zzciP = uri;
        this.zzciS = new yk(uri, null, map);
        this.zzciQ = new ym(this);
        this.zzciR = new yn(this, "TubeSock", this.zzaBC);
    }

    private final Socket createSocket() {
        String str;
        String valueOf;
        StringBuilder stringBuilder;
        String scheme = this.zzciP.getScheme();
        String host = this.zzciP.getHost();
        int port = this.zzciP.getPort();
        if (scheme != null && scheme.equals("ws")) {
            if (port == -1) {
                port = 80;
            }
            try {
                return new Socket(host, port);
            } catch (UnknownHostException e) {
                str = "unknown host: ";
                host = String.valueOf(host);
                throw new yj(host.length() != 0 ? str.concat(host) : new String(str), e);
            } catch (IOException e2) {
                valueOf = String.valueOf(this.zzciP);
                stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 31);
                stringBuilder.append("error while creating socket to ");
                stringBuilder.append(valueOf);
                throw new yj(stringBuilder.toString(), e2);
            }
        } else if (scheme == null || !scheme.equals("wss")) {
            valueOf = "unsupported protocol: ";
            scheme = String.valueOf(scheme);
            throw new yj(scheme.length() != 0 ? valueOf.concat(scheme) : new String(valueOf));
        } else {
            if (port == -1) {
                port = 443;
            }
            try {
                SSLSocket sSLSocket = (SSLSocket) SSLSocketFactory.getDefault().createSocket(host, port);
                if (HttpsURLConnection.getDefaultHostnameVerifier().verify(host, sSLSocket.getSession())) {
                    return sSLSocket;
                }
                valueOf = String.valueOf(this.zzciP);
                stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 39);
                stringBuilder.append("Error while verifying secure socket to ");
                stringBuilder.append(valueOf);
                throw new yj(stringBuilder.toString());
            } catch (UnknownHostException e3) {
                str = "unknown host: ";
                host = String.valueOf(host);
                throw new yj(host.length() != 0 ? str.concat(host) : new String(str), e3);
            } catch (IOException e22) {
                valueOf = String.valueOf(this.zzciP);
                stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 38);
                stringBuilder.append("error while creating secure socket to ");
                stringBuilder.append(valueOf);
                throw new yj(stringBuilder.toString(), e22);
            }
        }
    }

    static ThreadFactory getThreadFactory() {
        return zzciU;
    }

    static yc zzJo() {
        return zzciV;
    }

    private final synchronized void zzJr() {
        if (this.zzciN != yh.zzcjc) {
            this.zzciQ.zzJx();
            this.zzciR.zzJz();
            if (this.socket != null) {
                try {
                    this.socket.close();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
            this.zzciN = yh.zzcjc;
            this.zzciO.onClose();
        }
    }

    /* JADX WARNING: Missing block: B:20:?, code skipped:
            r1 = new java.io.DataInputStream(r0.getInputStream());
            r0 = r0.getOutputStream();
            r0.write(r11.zzciS.zzJv());
            r3 = new byte[1000];
            r4 = new java.util.ArrayList();
            r6 = r3;
            r3 = null;
     */
    /* JADX WARNING: Missing block: B:21:0x0044, code skipped:
            r7 = 0;
     */
    /* JADX WARNING: Missing block: B:23:0x0046, code skipped:
            if (r3 != null) goto L_0x00b0;
     */
    /* JADX WARNING: Missing block: B:24:0x0048, code skipped:
            r9 = r1.read();
     */
    /* JADX WARNING: Missing block: B:25:0x004d, code skipped:
            if (r9 != -1) goto L_0x0057;
     */
    /* JADX WARNING: Missing block: B:27:0x0056, code skipped:
            throw new com.google.android.gms.internal.yj("Connection closed before handshake was complete");
     */
    /* JADX WARNING: Missing block: B:28:0x0057, code skipped:
            r6[r7] = (byte) r9;
            r7 = r7 + 1;
     */
    /* JADX WARNING: Missing block: B:29:0x0062, code skipped:
            if (r6[r7 - 1] != (byte) 10) goto L_0x008b;
     */
    /* JADX WARNING: Missing block: B:31:0x006a, code skipped:
            if (r6[r7 - 2] != org.roboguice.shaded.goole.common.base.Ascii.CR) goto L_0x008b;
     */
    /* JADX WARNING: Missing block: B:32:0x006c, code skipped:
            r7 = new java.lang.String(r6, zzciM);
     */
    /* JADX WARNING: Missing block: B:33:0x007d, code skipped:
            if (r7.trim().equals("") == false) goto L_0x0081;
     */
    /* JADX WARNING: Missing block: B:34:0x007f, code skipped:
            r3 = 1;
     */
    /* JADX WARNING: Missing block: B:35:0x0081, code skipped:
            r4.add(r7.trim());
     */
    /* JADX WARNING: Missing block: B:36:0x0088, code skipped:
            r6 = new byte[1000];
     */
    /* JADX WARNING: Missing block: B:37:0x008b, code skipped:
            if (r7 != 1000) goto L_0x0045;
     */
    /* JADX WARNING: Missing block: B:38:0x008d, code skipped:
            r2 = "Unexpected long line in handshake: ";
            r0 = java.lang.String.valueOf(new java.lang.String(r6, zzciM));
     */
    /* JADX WARNING: Missing block: B:39:0x00a0, code skipped:
            if (r0.length() == 0) goto L_0x00a7;
     */
    /* JADX WARNING: Missing block: B:40:0x00a2, code skipped:
            r0 = r2.concat(r0);
     */
    /* JADX WARNING: Missing block: B:41:0x00a7, code skipped:
            r0 = new java.lang.String(r2);
     */
    /* JADX WARNING: Missing block: B:43:0x00af, code skipped:
            throw new com.google.android.gms.internal.yj(r0);
     */
    /* JADX WARNING: Missing block: B:44:0x00b0, code skipped:
            r2 = java.lang.Integer.valueOf(((java.lang.String) r4.get(0)).substring(9, 12)).intValue();
     */
    /* JADX WARNING: Missing block: B:45:0x00c8, code skipped:
            if (r2 != 407) goto L_0x00d2;
     */
    /* JADX WARNING: Missing block: B:47:0x00d1, code skipped:
            throw new com.google.android.gms.internal.yj("connection failed: proxy authentication not supported");
     */
    /* JADX WARNING: Missing block: B:49:0x00d4, code skipped:
            if (r2 != com.google.android.gms.wallet.WalletConstants.ERROR_CODE_INVALID_PARAMETERS) goto L_0x00de;
     */
    /* JADX WARNING: Missing block: B:51:0x00dd, code skipped:
            throw new com.google.android.gms.internal.yj("connection failed: 404 not found");
     */
    /* JADX WARNING: Missing block: B:53:0x00e0, code skipped:
            if (r2 == 101) goto L_0x00fb;
     */
    /* JADX WARNING: Missing block: B:54:0x00e2, code skipped:
            r3 = new java.lang.StringBuilder(50);
            r3.append("connection failed: unknown status code ");
            r3.append(r2);
     */
    /* JADX WARNING: Missing block: B:55:0x00fa, code skipped:
            throw new com.google.android.gms.internal.yj(r3.toString());
     */
    /* JADX WARNING: Missing block: B:56:0x00fb, code skipped:
            r4.remove(0);
            r2 = new java.util.HashMap();
            r4 = r4;
            r3 = r4.size();
            r6 = 0;
     */
    /* JADX WARNING: Missing block: B:57:0x010a, code skipped:
            if (r6 >= r3) goto L_0x0123;
     */
    /* JADX WARNING: Missing block: B:58:0x010c, code skipped:
            r7 = r4.get(r6);
            r6 = r6 + 1;
            r7 = ((java.lang.String) r7).split(": ", 2);
            r2.put(r7[0], r7[1]);
     */
    /* JADX WARNING: Missing block: B:60:0x0137, code skipped:
            if (((java.lang.String) r2.get("Upgrade")).toLowerCase(java.util.Locale.US).equals("websocket") != false) goto L_0x0141;
     */
    /* JADX WARNING: Missing block: B:62:0x0140, code skipped:
            throw new com.google.android.gms.internal.yj("connection failed: missing header field in server handshake: Upgrade");
     */
    /* JADX WARNING: Missing block: B:64:0x0155, code skipped:
            if (((java.lang.String) r2.get("Connection")).toLowerCase(java.util.Locale.US).equals("upgrade") != false) goto L_0x015f;
     */
    /* JADX WARNING: Missing block: B:66:0x015e, code skipped:
            throw new com.google.android.gms.internal.yj("connection failed: missing header field in server handshake: Connection");
     */
    /* JADX WARNING: Missing block: B:67:0x015f, code skipped:
            r11.zzciR.zzb(r0);
            r11.zzciQ.zza(r1);
            r11.zzciN = com.google.android.gms.internal.yh.zzcja;
            r11.zzciR.zzJB().start();
            r11.zzciO.zzGy();
            r11.zzciQ.run();
     */
    /* JADX WARNING: Missing block: B:68:0x0180, code skipped:
            close();
     */
    /* JADX WARNING: Missing block: B:69:0x0183, code skipped:
            return;
     */
    private final void zzJt() {
        /*
        r11 = this;
        r0 = r11.createSocket();	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        monitor-enter(r11);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r11.socket = r0;	 Catch:{ all -> 0x0184 }
        r1 = r11.zzciN;	 Catch:{ all -> 0x0184 }
        r2 = com.google.android.gms.internal.yh.zzcjc;	 Catch:{ all -> 0x0184 }
        if (r1 != r2) goto L_0x0021;
    L_0x000d:
        r0 = r11.socket;	 Catch:{ IOException -> 0x001a }
        r0.close();	 Catch:{ IOException -> 0x001a }
        r0 = 0;
        r11.socket = r0;	 Catch:{ all -> 0x0184 }
        monitor-exit(r11);	 Catch:{ all -> 0x0184 }
        r11.close();
        return;
    L_0x001a:
        r0 = move-exception;
        r1 = new java.lang.RuntimeException;	 Catch:{ all -> 0x0184 }
        r1.<init>(r0);	 Catch:{ all -> 0x0184 }
        throw r1;	 Catch:{ all -> 0x0184 }
    L_0x0021:
        monitor-exit(r11);	 Catch:{ all -> 0x0184 }
        r1 = new java.io.DataInputStream;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r2 = r0.getInputStream();	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r1.<init>(r2);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r0 = r0.getOutputStream();	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r2 = r11.zzciS;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r2 = r2.zzJv();	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r0.write(r2);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r2 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r3 = new byte[r2];	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r4 = new java.util.ArrayList;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r4.<init>();	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r5 = 0;
        r6 = r3;
        r3 = 0;
    L_0x0044:
        r7 = 0;
    L_0x0045:
        r8 = 1;
        if (r3 != 0) goto L_0x00b0;
    L_0x0048:
        r9 = r1.read();	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r10 = -1;
        if (r9 != r10) goto L_0x0057;
    L_0x004f:
        r0 = new com.google.android.gms.internal.yj;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r1 = "Connection closed before handshake was complete";
        r0.<init>(r1);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        throw r0;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
    L_0x0057:
        r9 = (byte) r9;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r6[r7] = r9;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r7 = r7 + 1;
        r9 = r7 + -1;
        r9 = r6[r9];	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r10 = 10;
        if (r9 != r10) goto L_0x008b;
    L_0x0064:
        r9 = r7 + -2;
        r9 = r6[r9];	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r10 = 13;
        if (r9 != r10) goto L_0x008b;
    L_0x006c:
        r7 = new java.lang.String;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r9 = zzciM;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r7.<init>(r6, r9);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r6 = r7.trim();	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r9 = "";
        r6 = r6.equals(r9);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        if (r6 == 0) goto L_0x0081;
    L_0x007f:
        r3 = 1;
        goto L_0x0088;
    L_0x0081:
        r6 = r7.trim();	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r4.add(r6);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
    L_0x0088:
        r6 = new byte[r2];	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        goto L_0x0044;
    L_0x008b:
        if (r7 != r2) goto L_0x0045;
    L_0x008d:
        r0 = new java.lang.String;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r1 = zzciM;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r0.<init>(r6, r1);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r1 = new com.google.android.gms.internal.yj;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r2 = "Unexpected long line in handshake: ";
        r0 = java.lang.String.valueOf(r0);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r3 = r0.length();	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        if (r3 == 0) goto L_0x00a7;
    L_0x00a2:
        r0 = r2.concat(r0);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        goto L_0x00ac;
    L_0x00a7:
        r0 = new java.lang.String;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r0.<init>(r2);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
    L_0x00ac:
        r1.<init>(r0);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        throw r1;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
    L_0x00b0:
        r2 = r4.get(r5);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r2 = (java.lang.String) r2;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r3 = 9;
        r6 = 12;
        r2 = r2.substring(r3, r6);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r2 = java.lang.Integer.valueOf(r2);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r2 = r2.intValue();	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r3 = 407; // 0x197 float:5.7E-43 double:2.01E-321;
        if (r2 != r3) goto L_0x00d2;
    L_0x00ca:
        r0 = new com.google.android.gms.internal.yj;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r1 = "connection failed: proxy authentication not supported";
        r0.<init>(r1);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        throw r0;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
    L_0x00d2:
        r3 = 404; // 0x194 float:5.66E-43 double:1.996E-321;
        if (r2 != r3) goto L_0x00de;
    L_0x00d6:
        r0 = new com.google.android.gms.internal.yj;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r1 = "connection failed: 404 not found";
        r0.<init>(r1);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        throw r0;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
    L_0x00de:
        r3 = 101; // 0x65 float:1.42E-43 double:5.0E-322;
        if (r2 == r3) goto L_0x00fb;
    L_0x00e2:
        r0 = new com.google.android.gms.internal.yj;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r1 = 50;
        r3 = new java.lang.StringBuilder;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r3.<init>(r1);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r1 = "connection failed: unknown status code ";
        r3.append(r1);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r3.append(r2);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r1 = r3.toString();	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r0.<init>(r1);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        throw r0;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
    L_0x00fb:
        r4.remove(r5);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r2 = new java.util.HashMap;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r2.<init>();	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r4 = (java.util.ArrayList) r4;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r3 = r4.size();	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r6 = 0;
    L_0x010a:
        if (r6 >= r3) goto L_0x0123;
    L_0x010c:
        r7 = r4.get(r6);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r6 = r6 + 1;
        r7 = (java.lang.String) r7;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r9 = ": ";
        r10 = 2;
        r7 = r7.split(r9, r10);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r9 = r7[r5];	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r7 = r7[r8];	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r2.put(r9, r7);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        goto L_0x010a;
    L_0x0123:
        r3 = "Upgrade";
        r3 = r2.get(r3);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r3 = (java.lang.String) r3;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r4 = java.util.Locale.US;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r3 = r3.toLowerCase(r4);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r4 = "websocket";
        r3 = r3.equals(r4);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        if (r3 != 0) goto L_0x0141;
    L_0x0139:
        r0 = new com.google.android.gms.internal.yj;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r1 = "connection failed: missing header field in server handshake: Upgrade";
        r0.<init>(r1);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        throw r0;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
    L_0x0141:
        r3 = "Connection";
        r2 = r2.get(r3);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r2 = (java.lang.String) r2;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r3 = java.util.Locale.US;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r2 = r2.toLowerCase(r3);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r3 = "upgrade";
        r2 = r2.equals(r3);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        if (r2 != 0) goto L_0x015f;
    L_0x0157:
        r0 = new com.google.android.gms.internal.yj;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r1 = "connection failed: missing header field in server handshake: Connection";
        r0.<init>(r1);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        throw r0;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
    L_0x015f:
        r2 = r11.zzciR;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r2.zzb(r0);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r0 = r11.zzciQ;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r0.zza(r1);	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r0 = com.google.android.gms.internal.yh.zzcja;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r11.zzciN = r0;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r0 = r11.zzciR;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r0 = r0.zzJB();	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r0.start();	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r0 = r11.zzciO;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r0.zzGy();	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r0 = r11.zzciQ;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r0.run();	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
        r11.close();
        return;
    L_0x0184:
        r0 = move-exception;
        monitor-exit(r11);	 Catch:{ all -> 0x0184 }
        throw r0;	 Catch:{ yj -> 0x01b3, IOException -> 0x0189 }
    L_0x0187:
        r0 = move-exception;
        goto L_0x01bd;
    L_0x0189:
        r0 = move-exception;
        r1 = r11.zzciO;	 Catch:{ all -> 0x0187 }
        r2 = new com.google.android.gms.internal.yj;	 Catch:{ all -> 0x0187 }
        r3 = "error while connecting: ";
        r4 = r0.getMessage();	 Catch:{ all -> 0x0187 }
        r4 = java.lang.String.valueOf(r4);	 Catch:{ all -> 0x0187 }
        r5 = r4.length();	 Catch:{ all -> 0x0187 }
        if (r5 == 0) goto L_0x01a3;
    L_0x019e:
        r3 = r3.concat(r4);	 Catch:{ all -> 0x0187 }
        goto L_0x01a9;
    L_0x01a3:
        r4 = new java.lang.String;	 Catch:{ all -> 0x0187 }
        r4.<init>(r3);	 Catch:{ all -> 0x0187 }
        r3 = r4;
    L_0x01a9:
        r2.<init>(r3, r0);	 Catch:{ all -> 0x0187 }
        r1.zza(r2);	 Catch:{ all -> 0x0187 }
        r11.close();
        return;
    L_0x01b3:
        r0 = move-exception;
        r1 = r11.zzciO;	 Catch:{ all -> 0x0187 }
        r1.zza(r0);	 Catch:{ all -> 0x0187 }
        r11.close();
        return;
    L_0x01bd:
        r11.close();
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.yd.zzJt():void");
    }

    private final synchronized void zza(byte b, byte[] bArr) {
        if (this.zzciN != yh.zzcja) {
            this.zzciO.zza(new yj("error while sending data: not connected"));
            return;
        }
        try {
            this.zzciR.zza(b, true, bArr);
        } catch (IOException e) {
            this.zzciO.zza(new yj("Failed to send frame", e));
            close();
        }
    }

    public static void zza(ThreadFactory threadFactory, yc ycVar) {
        zzciU = threadFactory;
        zzciV = ycVar;
    }

    public final synchronized void close() {
        switch (yg.zzciX[this.zzciN - 1]) {
            case 1:
                this.zzciN = yh.zzcjc;
                return;
            case 2:
                zzJr();
                return;
            case 3:
                try {
                    this.zzciN = yh.zzcjb;
                    this.zzciR.zzJz();
                    this.zzciR.zza((byte) 8, true, new byte[0]);
                    return;
                } catch (IOException e) {
                    this.zzciO.zza(new yj("Failed to send close frame", e));
                    return;
                }
            case 4:
                return;
            case 5:
                return;
            default:
                return;
        }
    }

    public final synchronized void connect() {
        if (this.zzciN != yh.zzciY) {
            this.zzciO.zza(new yj("connect() already called"));
            close();
            return;
        }
        yc ycVar = zzciV;
        Thread thread = this.zzciT;
        String valueOf = String.valueOf("TubeSockReader-");
        int i = this.zzaBC;
        StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 11);
        stringBuilder.append(valueOf);
        stringBuilder.append(i);
        ycVar.zza(thread, stringBuilder.toString());
        this.zzciN = yh.zzciZ;
        this.zzciT.start();
    }

    /* Access modifiers changed, original: final|declared_synchronized */
    public final synchronized void zzE(byte[] bArr) {
        zza((byte) 10, bArr);
    }

    /* Access modifiers changed, original: final */
    public final yi zzJp() {
        return this.zzciO;
    }

    /* Access modifiers changed, original: final */
    public final void zzJq() {
        zzJr();
    }

    public final void zzJs() throws InterruptedException {
        if (this.zzciR.zzJB().getState() != State.NEW) {
            this.zzciR.zzJB().join();
        }
        this.zzciT.join();
    }

    public final void zza(yi yiVar) {
        this.zzciO = yiVar;
    }

    /* Access modifiers changed, original: final */
    public final void zzb(yj yjVar) {
        this.zzciO.zza(yjVar);
        if (this.zzciN == yh.zzcja) {
            close();
        }
        zzJr();
    }

    public final synchronized void zzgM(String str) {
        zza((byte) 1, str.getBytes(zzciM));
    }
}
