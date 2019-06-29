package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@zzzn
public abstract class zzhf {
    @Nullable
    private static MessageDigest zzyW;
    protected Object mLock = new Object();

    /* Access modifiers changed, original: protected|final */
    @Nullable
    public final MessageDigest zzcW() {
        synchronized (this.mLock) {
            MessageDigest messageDigest;
            if (zzyW != null) {
                messageDigest = zzyW;
                return messageDigest;
            }
            for (int i = 0; i < 2; i++) {
                try {
                    zzyW = MessageDigest.getInstance("MD5");
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            messageDigest = zzyW;
            return messageDigest;
        }
    }

    public abstract byte[] zzy(String str);
}
