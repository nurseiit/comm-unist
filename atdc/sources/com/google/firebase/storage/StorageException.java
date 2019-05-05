package com.google.firebase.storage;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.nearby.messages.Strategy;
import com.google.android.gms.wallet.WalletConstants;
import com.google.firebase.FirebaseException;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class StorageException extends FirebaseException {
    public static final int ERROR_BUCKET_NOT_FOUND = -13011;
    public static final int ERROR_CANCELED = -13040;
    public static final int ERROR_INVALID_CHECKSUM = -13031;
    public static final int ERROR_NOT_AUTHENTICATED = -13020;
    public static final int ERROR_NOT_AUTHORIZED = -13021;
    public static final int ERROR_OBJECT_NOT_FOUND = -13010;
    public static final int ERROR_PROJECT_NOT_FOUND = -13012;
    public static final int ERROR_QUOTA_EXCEEDED = -13013;
    public static final int ERROR_RETRY_LIMIT_EXCEEDED = -13030;
    public static final int ERROR_UNKNOWN = -13000;
    static IOException zzcos = new IOException("The operation was canceled.");
    private final int mErrorCode;
    private final int zzcot;
    private String zzcou;
    private Throwable zzcov;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ErrorCode {
    }

    private StorageException(int i, Throwable th, int i2) {
        String str;
        switch (i) {
            case ERROR_CANCELED /*-13040*/:
                str = "The operation was cancelled.";
                break;
            case ERROR_INVALID_CHECKSUM /*-13031*/:
                str = "Object has a checksum which does not match. Please retry the operation.";
                break;
            case ERROR_RETRY_LIMIT_EXCEEDED /*-13030*/:
                str = "The operation retry limit has been exceeded.";
                break;
            case ERROR_NOT_AUTHORIZED /*-13021*/:
                str = "User does not have permission to access this object.";
                break;
            case ERROR_NOT_AUTHENTICATED /*-13020*/:
                str = "User is not authenticated, please authenticate using Firebase Authentication and try again.";
                break;
            case ERROR_QUOTA_EXCEEDED /*-13013*/:
                str = "Quota for bucket exceeded, please view quota on www.firebase.google.com/storage.";
                break;
            case ERROR_PROJECT_NOT_FOUND /*-13012*/:
                str = "Project does not exist.";
                break;
            case ERROR_BUCKET_NOT_FOUND /*-13011*/:
                str = "Bucket does not exist.";
                break;
            case ERROR_OBJECT_NOT_FOUND /*-13010*/:
                str = "Object does not exist at location.";
                break;
            default:
                str = "An unknown error occurred, please check the HTTP result code and inner exception for server response.";
                break;
        }
        this.zzcou = str;
        this.zzcov = th;
        this.mErrorCode = i;
        this.zzcot = i2;
        String str2 = this.zzcou;
        String valueOf = String.valueOf(Integer.toString(this.mErrorCode));
        str = String.valueOf(Integer.toString(this.zzcot));
        StringBuilder stringBuilder = new StringBuilder(((String.valueOf(str2).length() + 52) + String.valueOf(valueOf).length()) + String.valueOf(str).length());
        stringBuilder.append("StorageException has occurred.\n");
        stringBuilder.append(str2);
        stringBuilder.append("\n Code: ");
        stringBuilder.append(valueOf);
        stringBuilder.append(" HttpResult: ");
        stringBuilder.append(str);
        Log.e("StorageException", stringBuilder.toString());
        if (this.zzcov != null) {
            Log.e("StorageException", this.zzcov.getMessage(), this.zzcov);
        }
    }

    private StorageException(Status status) {
        int i = status.isCanceled() ? ERROR_CANCELED : status == Status.zzaBp ? ERROR_RETRY_LIMIT_EXCEEDED : ERROR_UNKNOWN;
        this(i, null, 0);
    }

    private StorageException(@Nullable Throwable th, int i) {
        int i2;
        if (th == zzcos) {
            i2 = ERROR_CANCELED;
        } else if (i == -2) {
            i2 = ERROR_RETRY_LIMIT_EXCEEDED;
        } else if (i == 401) {
            i2 = ERROR_NOT_AUTHENTICATED;
        } else if (i != WalletConstants.ERROR_CODE_BUYER_ACCOUNT_ERROR) {
            switch (i) {
                case 403:
                    i2 = ERROR_NOT_AUTHORIZED;
                    break;
                case WalletConstants.ERROR_CODE_INVALID_PARAMETERS /*404*/:
                    i2 = ERROR_OBJECT_NOT_FOUND;
                    break;
                default:
                    i2 = ERROR_UNKNOWN;
                    break;
            }
        } else {
            i2 = ERROR_INVALID_CHECKSUM;
        }
        this(i2, th, i);
    }

    @NonNull
    public static StorageException fromErrorStatus(@NonNull Status status) {
        zzbo.zzu(status);
        zzbo.zzaf(status.isSuccess() ^ 1);
        return new StorageException(status);
    }

    @NonNull
    public static StorageException fromException(@NonNull Throwable th) {
        return fromExceptionAndHttpCode(th, 0);
    }

    @Nullable
    public static StorageException fromExceptionAndHttpCode(@Nullable Throwable th, int i) {
        if (th instanceof StorageException) {
            return (StorageException) th;
        }
        Object obj = (i == 0 || (i >= 200 && i < Strategy.TTL_SECONDS_DEFAULT)) ? 1 : null;
        return (obj == null || th != null) ? new StorageException(th, i) : null;
    }

    public Throwable getCause() {
        return this.zzcov == this ? null : this.zzcov;
    }

    public int getErrorCode() {
        return this.mErrorCode;
    }

    public int getHttpResultCode() {
        return this.zzcot;
    }

    public boolean getIsRecoverableException() {
        return getErrorCode() == ERROR_RETRY_LIMIT_EXCEEDED;
    }

    public String getMessage() {
        return this.zzcou;
    }
}
