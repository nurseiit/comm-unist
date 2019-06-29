.class public final Lcom/google/android/gms/cast/CastStatusCodes;
.super Ljava/lang/Object;


# static fields
.field public static final APPLICATION_NOT_FOUND:I = 0x7d4

.field public static final APPLICATION_NOT_RUNNING:I = 0x7d5

.field public static final AUTHENTICATION_FAILED:I = 0x7d0

.field public static final CANCELED:I = 0x7d2

.field public static final ERROR_SERVICE_CREATION_FAILED:I = 0x898

.field public static final ERROR_SERVICE_DISCONNECTED:I = 0x899

.field public static final FAILED:I = 0x834

.field public static final INTERNAL_ERROR:I = 0x8

.field public static final INTERRUPTED:I = 0xe

.field public static final INVALID_REQUEST:I = 0x7d1

.field public static final MESSAGE_SEND_BUFFER_TOO_FULL:I = 0x7d7

.field public static final MESSAGE_TOO_LARGE:I = 0x7d6

.field public static final NETWORK_ERROR:I = 0x7

.field public static final NOT_ALLOWED:I = 0x7d3

.field public static final REPLACED:I = 0x837

.field public static final SUCCESS:I = 0x0

.field public static final TIMEOUT:I = 0xf

.field public static final UNKNOWN_ERROR:I = 0xd


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "ERROR_SERVICE_DISCONNECTED"

    return-object p0

    :pswitch_1
    const-string p0, "ERROR_SERVICE_CREATION_FAILED"

    return-object p0

    :pswitch_2
    const-string p0, "REPLACED"

    return-object p0

    :pswitch_3
    const-string p0, "STATUS_TIMED_OUT"

    return-object p0

    :pswitch_4
    const-string p0, "STATUS_CANCELLED"

    return-object p0

    :pswitch_5
    const-string p0, "FAILED"

    return-object p0

    :pswitch_6
    const-string p0, "MESSAGE_SEND_BUFFER_TOO_FULL"

    return-object p0

    :pswitch_7
    const-string p0, "MESSAGE_TOO_LARGE"

    return-object p0

    :pswitch_8
    const-string p0, "APPLICATION_NOT_RUNNING"

    return-object p0

    :pswitch_9
    const-string p0, "APPLICATION_NOT_FOUND"

    return-object p0

    :pswitch_a
    const-string p0, "NOT_ALLOWED"

    return-object p0

    :pswitch_b
    const-string p0, "CANCELED"

    return-object p0

    :pswitch_c
    const-string p0, "INVALID_REQUEST"

    return-object p0

    :pswitch_d
    const-string p0, "AUTHENTICATION_FAILED"

    return-object p0

    :pswitch_e
    const-string p0, "TIMEOUT"

    return-object p0

    :pswitch_f
    const-string p0, "INTERRUPTED"

    return-object p0

    :pswitch_10
    const-string p0, "UNKNOWN_ERROR"

    return-object p0

    :pswitch_11
    const-string p0, "INTERNAL_ERROR"

    return-object p0

    :pswitch_12
    const-string p0, "NETWORK_ERROR"

    return-object p0

    :cond_0
    const-string p0, "SUCCESS"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7d0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x834
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x898
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
