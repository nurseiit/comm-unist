package com.google.android.gms.internal;

import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public final class zzcw {
    private static Cipher zzqv;
    private static final Object zzqw = new Object();
    private static final Object zzqx = new Object();
    private final SecureRandom zzqu = null;

    public zzcw(SecureRandom secureRandom) {
    }

    private static Cipher getCipher() throws NoSuchAlgorithmException, NoSuchPaddingException {
        Cipher cipher;
        synchronized (zzqx) {
            if (zzqv == null) {
                zzqv = Cipher.getInstance("AES/CBC/PKCS5Padding");
            }
            cipher = zzqv;
        }
        return cipher;
    }

    public final byte[] zza(byte[] bArr, String str) throws zzcx {
        if (bArr.length != 16) {
            throw new zzcx(this);
        }
        try {
            byte[] zza = zzbt.zza(str, false);
            if (zza.length <= 16) {
                throw new zzcx(this);
            }
            ByteBuffer allocate = ByteBuffer.allocate(zza.length);
            allocate.put(zza);
            allocate.flip();
            byte[] bArr2 = new byte[16];
            zza = new byte[(zza.length - 16)];
            allocate.get(bArr2);
            allocate.get(zza);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (zzqw) {
                getCipher().init(2, secretKeySpec, new IvParameterSpec(bArr2));
                zza = getCipher().doFinal(zza);
            }
            return zza;
        } catch (NoSuchAlgorithmException e) {
            throw new zzcx(this, e);
        } catch (InvalidKeyException e2) {
            throw new zzcx(this, e2);
        } catch (IllegalBlockSizeException e3) {
            throw new zzcx(this, e3);
        } catch (NoSuchPaddingException e4) {
            throw new zzcx(this, e4);
        } catch (BadPaddingException e5) {
            throw new zzcx(this, e5);
        } catch (InvalidAlgorithmParameterException e6) {
            throw new zzcx(this, e6);
        } catch (IllegalArgumentException e7) {
            throw new zzcx(this, e7);
        }
    }

    public final String zzc(byte[] bArr, byte[] bArr2) throws zzcx {
        if (bArr.length != 16) {
            throw new zzcx(this);
        }
        try {
            byte[] iv;
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (zzqw) {
                getCipher().init(1, secretKeySpec, null);
                bArr2 = getCipher().doFinal(bArr2);
                iv = getCipher().getIV();
            }
            int length = bArr2.length + iv.length;
            ByteBuffer allocate = ByteBuffer.allocate(length);
            allocate.put(iv).put(bArr2);
            allocate.flip();
            bArr = new byte[length];
            allocate.get(bArr);
            return zzbt.zza(bArr, false);
        } catch (NoSuchAlgorithmException e) {
            throw new zzcx(this, e);
        } catch (InvalidKeyException e2) {
            throw new zzcx(this, e2);
        } catch (IllegalBlockSizeException e3) {
            throw new zzcx(this, e3);
        } catch (NoSuchPaddingException e4) {
            throw new zzcx(this, e4);
        } catch (BadPaddingException e5) {
            throw new zzcx(this, e5);
        }
    }

    public final byte[] zzl(String str) throws zzcx {
        int i = 0;
        try {
            byte[] zza = zzbt.zza(str, false);
            if (zza.length != 32) {
                throw new zzcx(this);
            }
            byte[] bArr = new byte[16];
            ByteBuffer.wrap(zza, 4, 16).get(bArr);
            while (i < 16) {
                bArr[i] = (byte) (bArr[i] ^ 68);
                i++;
            }
            return bArr;
        } catch (IllegalArgumentException e) {
            throw new zzcx(this, e);
        }
    }
}
