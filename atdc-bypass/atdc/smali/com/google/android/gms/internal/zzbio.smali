.class public final Lcom/google/android/gms/internal/zzbio;
.super Ljava/lang/Object;


# instance fields
.field private final zzaKP:Lcom/google/android/gms/internal/aci;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/aci;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/aci;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbio;->zzaKP:Lcom/google/android/gms/internal/aci;

    return-void
.end method

.method private static zza(IJI)Lcom/google/android/gms/internal/aci;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aci;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aci;-><init>()V

    iput p0, v0, Lcom/google/android/gms/internal/aci;->zzcqq:I

    iput-wide p1, v0, Lcom/google/android/gms/internal/aci;->zzcqr:J

    packed-switch p0, :pswitch_data_0

    const-string p1, "AudioStateFenceStub"

    const-string p2, "Unknown trigger type=%s"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/zzeq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    return-object v0

    :pswitch_0
    iput p3, v0, Lcom/google/android/gms/internal/aci;->zzcqy:I

    return-object v0

    :pswitch_1
    iput p3, v0, Lcom/google/android/gms/internal/aci;->zzcqx:I

    return-object v0

    :pswitch_2
    iput p3, v0, Lcom/google/android/gms/internal/aci;->zzcqw:I

    return-object v0

    :pswitch_3
    iput p3, v0, Lcom/google/android/gms/internal/aci;->zzcqv:I

    return-object v0

    :pswitch_4
    iput p3, v0, Lcom/google/android/gms/internal/aci;->zzcqu:I

    return-object v0

    :pswitch_5
    iput p3, v0, Lcom/google/android/gms/internal/aci;->zzcqt:I

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static zzaJ(I)Lcom/google/android/gms/internal/zzbio;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzbio;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3, p0}, Lcom/google/android/gms/internal/zzbio;->zza(IJI)Lcom/google/android/gms/internal/aci;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbio;-><init>(Lcom/google/android/gms/internal/aci;)V

    return-object v0
.end method

.method public static zzsC()Lcom/google/android/gms/internal/zzbio;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zzbio;

    const/4 v1, 0x2

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbio;->zza(IJI)Lcom/google/android/gms/internal/aci;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbio;-><init>(Lcom/google/android/gms/internal/aci;)V

    return-object v0
.end method

.method public static zzsD()Lcom/google/android/gms/internal/zzbio;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zzbio;

    const/4 v1, 0x3

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbio;->zza(IJI)Lcom/google/android/gms/internal/aci;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbio;-><init>(Lcom/google/android/gms/internal/aci;)V

    return-object v0
.end method


# virtual methods
.method public final zzsE()Lcom/google/android/gms/internal/aci;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbio;->zzaKP:Lcom/google/android/gms/internal/aci;

    return-object v0
.end method
