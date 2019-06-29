.class public final Lcom/google/android/gms/internal/zzbjr;
.super Ljava/lang/Object;


# instance fields
.field private final zzaLm:Lcom/google/android/gms/internal/add;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/add;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/add;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbjr;->zzaLm:Lcom/google/android/gms/internal/add;

    return-void
.end method

.method public static zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzbjr;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    const-wide/32 v4, 0x5265c00

    cmp-long v6, p2, v4

    if-gtz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    invoke-static {v6}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    cmp-long v6, p4, v2

    if-ltz v6, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    cmp-long v2, p4, v4

    if-gtz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    cmp-long v2, p2, p4

    if-gtz v2, :cond_5

    const/4 v0, 0x1

    :cond_5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzbjr;

    invoke-static/range {p0 .. p5}, Lcom/google/android/gms/internal/zzbjr;->zzc(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/add;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbjr;-><init>(Lcom/google/android/gms/internal/add;)V

    return-object v0
.end method

.method public static zzb(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzbjr;
    .locals 10

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p0, v4, :cond_1

    const/4 v5, 0x2

    if-eq p0, v5, :cond_1

    const/4 v5, 0x3

    if-eq p0, v5, :cond_1

    const/4 v5, 0x4

    if-eq p0, v5, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    const-wide/16 v5, 0x0

    cmp-long v7, p2, v5

    if-ltz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    invoke-static {v7}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    const-wide/32 v7, 0x5265c00

    cmp-long v9, p2, v7

    if-gtz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    invoke-static {v9}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    cmp-long v9, p4, v5

    if-ltz v9, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    invoke-static {v5}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    cmp-long v5, p4, v7

    if-gtz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    invoke-static {v5}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    cmp-long v5, p2, p4

    if-gtz v5, :cond_6

    const/4 v3, 0x1

    :cond_6
    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const/16 v0, 0xb

    const/16 v1, 0xb

    goto :goto_6

    :pswitch_1
    const/16 v0, 0xa

    const/16 v1, 0xa

    goto :goto_6

    :pswitch_2
    const/16 v0, 0x9

    const/16 v1, 0x9

    goto :goto_6

    :pswitch_3
    const/16 v0, 0x8

    const/16 v1, 0x8

    goto :goto_6

    :pswitch_4
    const/4 v1, 0x7

    goto :goto_6

    :pswitch_5
    const/4 v1, 0x5

    :goto_6
    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/zzbjr;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/zzbjr;->zzc(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/add;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbjr;-><init>(Lcom/google/android/gms/internal/add;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zzc(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/add;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/add;

    invoke-direct {v0}, Lcom/google/android/gms/internal/add;-><init>()V

    iput p0, v0, Lcom/google/android/gms/internal/add;->zzcqq:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    :goto_0
    iput-boolean v1, v0, Lcom/google/android/gms/internal/add;->zzcrI:Z

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/add;->zzcrF:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-boolean v2, v0, Lcom/google/android/gms/internal/add;->zzcrI:Z

    :goto_1
    iput-wide p2, v0, Lcom/google/android/gms/internal/add;->zzaTb:J

    iput-wide p4, v0, Lcom/google/android/gms/internal/add;->zzcrG:J

    return-object v0
.end method

.method public static zze(JJ)Lcom/google/android/gms/internal/zzbjr;
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    cmp-long v0, p0, p2

    if-gtz v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzbjr;

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-wide v3, p0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/zzbjr;->zzc(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/add;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbjr;-><init>(Lcom/google/android/gms/internal/add;)V

    return-object v0
.end method


# virtual methods
.method public final zzsI()Lcom/google/android/gms/internal/add;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjr;->zzaLm:Lcom/google/android/gms/internal/add;

    return-object v0
.end method
