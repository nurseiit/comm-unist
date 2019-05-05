package com.google.android.gms.internal;

import java.io.DataInputStream;
import java.io.IOException;
import java.net.SocketTimeoutException;
import org.roboguice.shaded.goole.common.base.Ascii;

final class ym {
    private yi zzciO = null;
    private DataInputStream zzcjj = null;
    private yd zzcjk = null;
    private byte[] zzcjl = new byte[112];
    private xy zzcjm;
    private volatile boolean zzcjn = false;

    ym(yd ydVar) {
        this.zzcjk = ydVar;
    }

    private final int read(byte[] bArr, int i, int i2) throws IOException {
        this.zzcjj.readFully(bArr, i, i2);
        return i2;
    }

    private final void zzc(yj yjVar) {
        this.zzcjn = true;
        this.zzcjk.zzb(yjVar);
    }

    /* Access modifiers changed, original: final */
    public final void run() {
        this.zzciO = this.zzcjk.zzJp();
        while (!this.zzcjn) {
            try {
                int read = read(this.zzcjl, 0, 1) + 0;
                Object obj = (this.zzcjl[0] & 128) != 0 ? 1 : null;
                if (((this.zzcjl[0] & 112) != 0 ? 1 : null) != null) {
                    throw new yj("Invalid frame received");
                }
                byte[] bArr;
                byte b = (byte) (this.zzcjl[0] & 15);
                read += read(this.zzcjl, read, 1);
                byte b2 = this.zzcjl[1];
                long j = 0;
                if (b2 < (byte) 126) {
                    j = (long) b2;
                } else if (b2 == (byte) 126) {
                    read(this.zzcjl, read, 2);
                    j = (long) (((this.zzcjl[2] & 255) << 8) | (this.zzcjl[3] & 255));
                } else if (b2 == Ascii.DEL) {
                    read += read(this.zzcjl, read, 8);
                    bArr = this.zzcjl;
                    read -= 8;
                    j = (((((((((long) bArr[read]) << 56) + (((long) (bArr[read + 1] & 255)) << 48)) + (((long) (bArr[read + 2] & 255)) << 40)) + (((long) (bArr[read + 3] & 255)) << 32)) + (((long) (bArr[read + 4] & 255)) << 24)) + ((long) ((bArr[read + 5] & 255) << 16))) + ((long) ((bArr[read + 6] & 255) << 8))) + ((long) (bArr[read + 7] & 255));
                }
                read = (int) j;
                bArr = new byte[read];
                read(bArr, 0, read);
                if (b == (byte) 8) {
                    this.zzcjk.zzJq();
                } else if (b == (byte) 10) {
                    continue;
                } else {
                    if (!(b == (byte) 1 || b == (byte) 2 || b == (byte) 9)) {
                        if (b != (byte) 0) {
                            StringBuilder stringBuilder = new StringBuilder(24);
                            stringBuilder.append("Unsupported opcode: ");
                            stringBuilder.append(b);
                            throw new yj(stringBuilder.toString());
                        }
                    }
                    if (b == (byte) 9) {
                        if (obj == null) {
                            throw new yj("PING must not fragment across frames");
                        } else if (bArr.length <= 125) {
                            this.zzcjk.zzE(bArr);
                        } else {
                            throw new yj("PING frame too long");
                        }
                    } else if (this.zzcjm != null && b != (byte) 0) {
                        throw new yj("Failed to continue outstanding frame");
                    } else if (this.zzcjm == null && b == (byte) 0) {
                        throw new yj("Received continuing frame, but there's nothing to continue");
                    } else {
                        if (this.zzcjm == null) {
                            this.zzcjm = b == (byte) 2 ? new xx() : new xz();
                        }
                        if (!this.zzcjm.zzC(bArr)) {
                            throw new yj("Failed to decode frame");
                        } else if (obj != null) {
                            yl zzJn = this.zzcjm.zzJn();
                            this.zzcjm = null;
                            if (zzJn == null) {
                                throw new yj("Failed to decode whole message");
                            }
                            this.zzciO.zza(zzJn);
                        } else {
                            continue;
                        }
                    }
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException e) {
                zzc(new yj("IO Error", e));
            } catch (yj e2) {
                zzc(e2);
            }
        }
    }

    /* Access modifiers changed, original: final */
    public final void zzJx() {
        this.zzcjn = true;
    }

    /* Access modifiers changed, original: final */
    public final void zza(DataInputStream dataInputStream) {
        this.zzcjj = dataInputStream;
    }
}
