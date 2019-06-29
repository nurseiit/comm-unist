.class public Lcom/google/android/gms/nearby/messages/NearbyMessagesStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;


# static fields
.field public static final APP_NOT_OPTED_IN:I = 0xaf2

.field public static final APP_QUOTA_LIMIT_REACHED:I = 0xaf4

.field public static final BLE_ADVERTISING_UNSUPPORTED:I = 0xb05

.field public static final BLE_SCANNING_UNSUPPORTED:I = 0xb06

.field public static final BLUETOOTH_OFF:I = 0xb04

.field public static final DISALLOWED_CALLING_CONTEXT:I = 0xaf3

.field public static final FORBIDDEN:I = 0xaf6

.field public static final MISSING_PERMISSIONS:I = 0xaf7

.field public static final NOT_AUTHORIZED:I = 0xaf5

.field public static final TOO_MANY_PENDING_INTENTS:I = 0xaf1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    const-string p0, "BLE_SCANNING_UNSUPPORTED"

    return-object p0

    :sswitch_1
    const-string p0, "BLE_ADVERTISING_UNSUPPORTED"

    return-object p0

    :sswitch_2
    const-string p0, "BLUETOOTH_OFF"

    return-object p0

    :sswitch_3
    const-string p0, "FORBIDDEN"

    return-object p0

    :sswitch_4
    const-string p0, "NOT_AUTHORIZED"

    return-object p0

    :sswitch_5
    const-string p0, "DISALLOWED_CALLING_CONTEXT"

    return-object p0

    :sswitch_6
    const-string p0, "APP_NOT_OPTED_IN"

    return-object p0

    :sswitch_7
    const-string p0, "TOO_MANY_PENDING_INTENTS"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0xaf1 -> :sswitch_7
        0xaf2 -> :sswitch_6
        0xaf3 -> :sswitch_5
        0xaf5 -> :sswitch_4
        0xaf6 -> :sswitch_3
        0xb04 -> :sswitch_2
        0xb05 -> :sswitch_1
        0xb06 -> :sswitch_0
    .end sparse-switch
.end method
