.class public final Lcom/google/android/gms/internal/act;
.super Lcom/google/android/gms/internal/adj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/adj<",
        "Lcom/google/android/gms/internal/act;",
        ">;"
    }
.end annotation


# instance fields
.field private zzcqq:I

.field private zzcqr:J

.field private zzcrs:[I

.field private zzcrt:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/adj;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/act;->zzcqq:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/act;->zzcqr:J

    sget-object v0, Lcom/google/android/gms/internal/ads;->zzcsC:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    sget-object v0, Lcom/google/android/gms/internal/ads;->zzcsC:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/act;->zzcsx:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/act;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/act;

    iget v1, p0, Lcom/google/android/gms/internal/act;->zzcqq:I

    iget v3, p1, Lcom/google/android/gms/internal/act;->zzcqq:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/act;->zzcqr:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/act;->zzcqr:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/act;->zzcrs:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/adn;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/act;->zzcrt:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/adn;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcso:Lcom/google/android/gms/internal/adl;

    iget-object p1, p1, Lcom/google/android/gms/internal/act;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/adl;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/act;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v1, :cond_9

    iget-object p1, p1, Lcom/google/android/gms/internal/act;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    return v0

    :cond_8
    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/act;->zzcqq:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/act;->zzcqr:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/act;->zzcqr:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long v5, v1, v3

    long-to-int v1, v5

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/adn;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/adn;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adl;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/adg;)Lcom/google/android/gms/internal/adp;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v1, 0x8

    if-eq v0, v1, :cond_19

    const/16 v1, 0x10

    if-eq v0, v1, :cond_18

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-eq v0, v1, :cond_12

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_c

    const/16 v1, 0x20

    if-eq v0, v1, :cond_6

    const/16 v3, 0x22

    if-eq v0, v3, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adg;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zzcn(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLK()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_11

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    array-length v3, v3

    :goto_2
    add-int/2addr v4, v3

    new-array v4, v4, [I

    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLK()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/act;->zza(Lcom/google/android/gms/internal/adg;I)Z

    goto :goto_3

    :pswitch_1
    add-int/lit8 v2, v3, 0x1

    aput v5, v4, v3

    move v3, v2

    goto :goto_3

    :cond_5
    iput-object v4, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    goto/16 :goto_a

    :cond_6
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads;->zzb(Lcom/google/android/gms/internal/adg;I)I

    move-result v1

    new-array v3, v1, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    if-ge v4, v1, :cond_8

    if-eqz v4, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v7

    packed-switch v7, :pswitch_data_2

    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/act;->zza(Lcom/google/android/gms/internal/adg;I)Z

    goto :goto_5

    :pswitch_2
    add-int/lit8 v6, v5, 0x1

    aput v7, v3, v5

    move v5, v6

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    array-length v0, v0

    :goto_6
    if-nez v0, :cond_a

    array-length v1, v3

    if-ne v5, v1, :cond_a

    iput-object v3, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    goto/16 :goto_0

    :cond_a
    add-int v1, v0, v5

    new-array v1, v1, [I

    if-eqz v0, :cond_b

    iget-object v4, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    invoke-static {v4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    invoke-static {v3, v2, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zzcn(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v3

    const/4 v4, 0x0

    :goto_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLK()I

    move-result v5

    if-lez v5, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v5

    packed-switch v5, :pswitch_data_3

    goto :goto_7

    :pswitch_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_d
    if-eqz v4, :cond_11

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    if-nez v3, :cond_e

    const/4 v3, 0x0

    goto :goto_8

    :cond_e
    iget-object v3, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    array-length v3, v3

    :goto_8
    add-int/2addr v4, v3

    new-array v4, v4, [I

    if-eqz v3, :cond_f

    iget-object v5, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLK()I

    move-result v2

    if-lez v2, :cond_10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v5

    packed-switch v5, :pswitch_data_4

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/act;->zza(Lcom/google/android/gms/internal/adg;I)Z

    goto :goto_9

    :pswitch_4
    add-int/lit8 v2, v3, 0x1

    aput v5, v4, v3

    move v3, v2

    goto :goto_9

    :cond_10
    iput-object v4, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    :cond_11
    :goto_a
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zzco(I)V

    goto/16 :goto_0

    :cond_12
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads;->zzb(Lcom/google/android/gms/internal/adg;I)I

    move-result v1

    new-array v3, v1, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_b
    if-ge v4, v1, :cond_14

    if-eqz v4, :cond_13

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    :cond_13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v7

    packed-switch v7, :pswitch_data_5

    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/act;->zza(Lcom/google/android/gms/internal/adg;I)Z

    goto :goto_c

    :pswitch_5
    add-int/lit8 v6, v5, 0x1

    aput v7, v3, v5

    move v5, v6

    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_14
    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_d

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    array-length v0, v0

    :goto_d
    if-nez v0, :cond_16

    array-length v1, v3

    if-ne v5, v1, :cond_16

    iput-object v3, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    goto/16 :goto_0

    :cond_16
    add-int v1, v0, v5

    new-array v1, v1, [I

    if-eqz v0, :cond_17

    iget-object v4, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    invoke-static {v4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17
    invoke-static {v3, v2, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    goto/16 :goto_0

    :cond_18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLG()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/act;->zzcqr:J

    goto/16 :goto_0

    :cond_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v2

    packed-switch v2, :pswitch_data_6

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/act;->zza(Lcom/google/android/gms/internal/adg;I)Z

    goto/16 :goto_0

    :pswitch_6
    iput v2, p0, Lcom/google/android/gms/internal/act;->zzcqq:I

    goto/16 :goto_0

    :cond_1a
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/adh;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/act;->zzcqq:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/act;->zzcqq:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/adh;->zzr(II)V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/act;->zzcqr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/android/gms/internal/act;->zzcqr:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/adh;->zzb(IJ)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/adh;->zzr(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    array-length v0, v0

    if-lez v0, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    array-length v0, v0

    if-ge v1, v0, :cond_3

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/adh;->zzr(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adh;)V

    return-void
.end method

.method protected final zzn()I
    .locals 7

    invoke-super {p0}, Lcom/google/android/gms/internal/adj;->zzn()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/act;->zzcqq:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/act;->zzcqq:I

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/adh;->zzs(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/act;->zzcqr:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-wide v3, p0, Lcom/google/android/gms/internal/act;->zzcqr:J

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/adh;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    array-length v5, v5

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    aget v5, v5, v1

    invoke-static {v5}, Lcom/google/android/gms/internal/adh;->zzcr(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcrs:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    array-length v1, v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    array-length v4, v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    aget v4, v4, v3

    invoke-static {v4}, Lcom/google/android/gms/internal/adh;->zzcr(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/act;->zzcrt:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method
