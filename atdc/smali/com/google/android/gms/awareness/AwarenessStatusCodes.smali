.class public Lcom/google/android/gms/awareness/AwarenessStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;


# static fields
.field public static final ACL_ACCESS_DENIED:I = 0x1d4f

.field public static final API_NOT_AVAILABLE:I = 0x1d58

.field public static final BAD_ACCOUNT:I = 0x1d50

.field public static final BLUETOOTH_OFF:I = 0x1d52

.field public static final FENCE_NOT_AVAILABLE:I = 0x1d5a

.field public static final INCONSISTENT_ACCOUNT:I = 0x1d56

.field public static final INCONSISTENT_MODULE_ID:I = 0x1d57

.field public static final INCONSISTENT_UID:I = 0x1d59

.field public static final INTERNAL_API_CLIENT_CONNECTION_FAILED:I = 0x1d53

.field public static final MAX_LIMIT_OF_FENCE_REGISTRATIONS_EXCEEDED:I = 0x1d5b


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
