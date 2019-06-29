.class public final Lcom/google/android/gms/internal/zzbr;
.super Lcom/google/android/gms/internal/adj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/adj<",
        "Lcom/google/android/gms/internal/zzbr;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzlD:[Lcom/google/android/gms/internal/zzbr;


# instance fields
.field public string:Ljava/lang/String;

.field public type:I

.field public zzlE:[Lcom/google/android/gms/internal/zzbr;

.field public zzlF:[Lcom/google/android/gms/internal/zzbr;

.field public zzlG:[Lcom/google/android/gms/internal/zzbr;

.field public zzlH:Ljava/lang/String;

.field public zzlI:Ljava/lang/String;

.field public zzlJ:J

.field public zzlK:Z

.field public zzlL:[Lcom/google/android/gms/internal/zzbr;

.field public zzlM:[I

.field public zzlN:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/adj;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbr;->type:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbr;->string:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzbr;->zzu()[Lcom/google/android/gms/internal/zzbr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlE:[Lcom/google/android/gms/internal/zzbr;

    invoke-static {}, Lcom/google/android/gms/internal/zzbr;->zzu()[Lcom/google/android/gms/internal/zzbr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlF:[Lcom/google/android/gms/internal/zzbr;

    invoke-static {}, Lcom/google/android/gms/internal/zzbr;->zzu()[Lcom/google/android/gms/internal/zzbr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlI:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlJ:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlK:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzbr;->zzu()[Lcom/google/android/gms/internal/zzbr;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlL:[Lcom/google/android/gms/internal/zzbr;

    sget-object v1, Lcom/google/android/gms/internal/ads;->zzcsC:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlM:[I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlN:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzcso:Lcom/google/android/gms/internal/adl;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbr;->zzcsx:I

    return-void
.end method

.method public static zzu()[Lcom/google/android/gms/internal/zzbr;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzbr;->zzlD:[Lcom/google/android/gms/internal/zzbr;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/adn;->zzcsw:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzbr;->zzlD:[Lcom/google/android/gms/internal/zzbr;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/zzbr;

    sput-object v1, Lcom/google/android/gms/internal/zzbr;->zzlD:[Lcom/google/android/gms/internal/zzbr;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/zzbr;->zzlD:[Lcom/google/android/gms/internal/zzbr;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzbr;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzbr;

    iget v1, p0, Lcom/google/android/gms/internal/zzbr;->type:I

    iget v3, p1, Lcom/google/android/gms/internal/zzbr;->type:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->string:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbr;->string:Ljava/lang/String;

    if-eqz v1, :cond_4

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->string:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbr;->string:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlE:[Lcom/google/android/gms/internal/zzbr;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbr;->zzlE:[Lcom/google/android/gms/internal/zzbr;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/adn;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlF:[Lcom/google/android/gms/internal/zzbr;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbr;->zzlF:[Lcom/google/android/gms/internal/zzbr;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/adn;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/adn;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlH:Ljava/lang/String;

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbr;->zzlH:Ljava/lang/String;

    if-eqz v1, :cond_9

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlH:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbr;->zzlH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlI:Ljava/lang/String;

    if-nez v1, :cond_a

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbr;->zzlI:Ljava/lang/String;

    if-eqz v1, :cond_b

    return v2

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlI:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbr;->zzlI:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbr;->zzlJ:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzbr;->zzlJ:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlK:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzbr;->zzlK:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlL:[Lcom/google/android/gms/internal/zzbr;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbr;->zzlL:[Lcom/google/android/gms/internal/zzbr;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/adn;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlM:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbr;->zzlM:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/adn;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlN:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzbr;->zzlN:Z

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_0

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzcso:Lcom/google/android/gms/internal/adl;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbr;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/adl;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_12
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzbr;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v1, :cond_14

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbr;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    return v0

    :cond_13
    return v2

    :cond_14
    return v0
.end method

.method public final hashCode()I
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzbr;->type:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->string:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->string:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlE:[Lcom/google/android/gms/internal/zzbr;

    invoke-static {v1}, Lcom/google/android/gms/internal/adn;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlF:[Lcom/google/android/gms/internal/zzbr;

    invoke-static {v1}, Lcom/google/android/gms/internal/adn;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    invoke-static {v1}, Lcom/google/android/gms/internal/adn;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlH:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlH:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlI:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlI:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzbr;->zzlJ:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzbr;->zzlJ:J

    const/16 v1, 0x20

    ushr-long/2addr v5, v1

    xor-long v7, v3, v5

    long-to-int v1, v7

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlK:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    if-eqz v1, :cond_3

    const/16 v1, 0x4cf

    goto :goto_3

    :cond_3
    const/16 v1, 0x4d5

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlL:[Lcom/google/android/gms/internal/zzbr;

    invoke-static {v1}, Lcom/google/android/gms/internal/adn;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlM:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/adn;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlN:Z

    if-eqz v1, :cond_4

    const/16 v3, 0x4cf

    :cond_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adl;->hashCode()I

    move-result v2

    :cond_6
    :goto_4
    add-int/2addr v0, v2

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

    const/16 v1, 0x50

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adg;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLD()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlK:Z

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads;->zzb(Lcom/google/android/gms/internal/adg;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlL:[Lcom/google/android/gms/internal/zzbr;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlL:[Lcom/google/android/gms/internal/zzbr;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbr;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbr;->zzlL:[Lcom/google/android/gms/internal/zzbr;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    new-instance v2, Lcom/google/android/gms/internal/zzbr;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbr;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adp;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/zzbr;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbr;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlL:[Lcom/google/android/gms/internal/zzbr;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zzcn(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v3

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLK()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_8

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbr;->zzlM:[I

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbr;->zzlM:[I

    array-length v3, v3

    :goto_4
    add-int/2addr v4, v3

    new-array v4, v4, [I

    if-eqz v3, :cond_6

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbr;->zzlM:[I

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLK()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/zzbr;->zza(Lcom/google/android/gms/internal/adg;I)Z

    goto :goto_5

    :pswitch_1
    add-int/lit8 v2, v3, 0x1

    aput v5, v4, v3

    move v3, v2

    goto :goto_5

    :cond_7
    iput-object v4, p0, Lcom/google/android/gms/internal/zzbr;->zzlM:[I

    :cond_8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zzco(I)V

    goto/16 :goto_0

    :sswitch_3
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads;->zzb(Lcom/google/android/gms/internal/adg;I)I

    move-result v1

    new-array v3, v1, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_6
    if-ge v4, v1, :cond_a

    if-eqz v4, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v7

    packed-switch v7, :pswitch_data_2

    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbr;->zza(Lcom/google/android/gms/internal/adg;I)Z

    goto :goto_7

    :pswitch_2
    add-int/lit8 v6, v5, 0x1

    aput v7, v3, v5

    move v5, v6

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_a
    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlM:[I

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_8

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlM:[I

    array-length v0, v0

    :goto_8
    if-nez v0, :cond_c

    array-length v1, v3

    if-ne v5, v1, :cond_c

    iput-object v3, p0, Lcom/google/android/gms/internal/zzbr;->zzlM:[I

    goto/16 :goto_0

    :cond_c
    add-int v1, v0, v5

    new-array v1, v1, [I

    if-eqz v0, :cond_d

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbr;->zzlM:[I

    invoke-static {v4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    invoke-static {v3, v2, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlM:[I

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLD()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlN:Z

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLG()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlJ:J

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlI:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlH:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads;->zzb(Lcom/google/android/gms/internal/adg;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_9

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    array-length v1, v1

    :goto_9
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbr;

    if-eqz v1, :cond_f

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_a
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_10

    new-instance v2, Lcom/google/android/gms/internal/zzbr;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbr;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adp;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_10
    new-instance v2, Lcom/google/android/gms/internal/zzbr;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbr;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads;->zzb(Lcom/google/android/gms/internal/adg;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlF:[Lcom/google/android/gms/internal/zzbr;

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_b

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlF:[Lcom/google/android/gms/internal/zzbr;

    array-length v1, v1

    :goto_b
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbr;

    if-eqz v1, :cond_12

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbr;->zzlF:[Lcom/google/android/gms/internal/zzbr;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    :goto_c
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_13

    new-instance v2, Lcom/google/android/gms/internal/zzbr;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbr;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adp;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_13
    new-instance v2, Lcom/google/android/gms/internal/zzbr;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbr;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlF:[Lcom/google/android/gms/internal/zzbr;

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads;->zzb(Lcom/google/android/gms/internal/adg;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlE:[Lcom/google/android/gms/internal/zzbr;

    if-nez v1, :cond_14

    const/4 v1, 0x0

    goto :goto_d

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlE:[Lcom/google/android/gms/internal/zzbr;

    array-length v1, v1

    :goto_d
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbr;

    if-eqz v1, :cond_15

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbr;->zzlE:[Lcom/google/android/gms/internal/zzbr;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_15
    :goto_e
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_16

    new-instance v2, Lcom/google/android/gms/internal/zzbr;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbr;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adp;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_16
    new-instance v2, Lcom/google/android/gms/internal/zzbr;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzbr;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlE:[Lcom/google/android/gms/internal/zzbr;

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbr;->string:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v2

    packed-switch v2, :pswitch_data_3

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbr;->zza(Lcom/google/android/gms/internal/adg;I)Z

    goto/16 :goto_0

    :pswitch_3
    iput v2, p0, Lcom/google/android/gms/internal/zzbr;->type:I

    goto/16 :goto_0

    :sswitch_d
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_c
        0x12 -> :sswitch_b
        0x1a -> :sswitch_a
        0x22 -> :sswitch_9
        0x2a -> :sswitch_8
        0x32 -> :sswitch_7
        0x3a -> :sswitch_6
        0x40 -> :sswitch_5
        0x48 -> :sswitch_4
        0x50 -> :sswitch_3
        0x52 -> :sswitch_2
        0x5a -> :sswitch_1
        0x60 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/adh;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzbr;->type:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/adh;->zzr(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbr;->string:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbr;->string:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->string:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzl(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlE:[Lcom/google/android/gms/internal/zzbr;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlE:[Lcom/google/android/gms/internal/zzbr;

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbr;->zzlE:[Lcom/google/android/gms/internal/zzbr;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbr;->zzlE:[Lcom/google/android/gms/internal/zzbr;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/adh;->zza(ILcom/google/android/gms/internal/adp;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlF:[Lcom/google/android/gms/internal/zzbr;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlF:[Lcom/google/android/gms/internal/zzbr;

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbr;->zzlF:[Lcom/google/android/gms/internal/zzbr;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbr;->zzlF:[Lcom/google/android/gms/internal/zzbr;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/adh;->zza(ILcom/google/android/gms/internal/adp;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    array-length v0, v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/adh;->zza(ILcom/google/android/gms/internal/adp;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlH:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlH:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbr;->zzlH:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/adh;->zzl(ILjava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlI:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlI:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbr;->zzlI:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/adh;->zzl(ILjava/lang/String;)V

    :cond_8
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbr;->zzlJ:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzbr;->zzlJ:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/adh;->zzb(IJ)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlN:Z

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbr;->zzlN:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/adh;->zzk(IZ)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlM:[I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlM:[I

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbr;->zzlM:[I

    array-length v2, v2

    if-ge v0, v2, :cond_b

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbr;->zzlM:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/adh;->zzr(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlL:[Lcom/google/android/gms/internal/zzbr;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlL:[Lcom/google/android/gms/internal/zzbr;

    array-length v0, v0

    if-lez v0, :cond_d

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlL:[Lcom/google/android/gms/internal/zzbr;

    array-length v0, v0

    if-ge v1, v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlL:[Lcom/google/android/gms/internal/zzbr;

    aget-object v0, v0, v1

    if-eqz v0, :cond_c

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/adh;->zza(ILcom/google/android/gms/internal/adp;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbr;->zzlK:Z

    if-eqz v0, :cond_e

    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlK:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzk(IZ)V

    :cond_e
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adh;)V

    return-void
.end method

.method protected final zzn()I
    .locals 8

    invoke-super {p0}, Lcom/google/android/gms/internal/adj;->zzn()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzbr;->type:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/adh;->zzs(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->string:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->string:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbr;->string:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/adh;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlE:[Lcom/google/android/gms/internal/zzbr;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlE:[Lcom/google/android/gms/internal/zzbr;

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzbr;->zzlE:[Lcom/google/android/gms/internal/zzbr;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbr;->zzlE:[Lcom/google/android/gms/internal/zzbr;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    const/4 v5, 0x3

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/adh;->zzb(ILcom/google/android/gms/internal/adp;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlF:[Lcom/google/android/gms/internal/zzbr;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlF:[Lcom/google/android/gms/internal/zzbr;

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v0

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzbr;->zzlF:[Lcom/google/android/gms/internal/zzbr;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbr;->zzlF:[Lcom/google/android/gms/internal/zzbr;

    aget-object v4, v4, v0

    if-eqz v4, :cond_4

    const/4 v5, 0x4

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/adh;->zzb(ILcom/google/android/gms/internal/adp;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    array-length v1, v1

    if-lez v1, :cond_9

    move v1, v0

    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    array-length v4, v4

    if-ge v0, v4, :cond_8

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    aget-object v4, v4, v0

    if-eqz v4, :cond_7

    const/4 v5, 0x5

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/adh;->zzb(ILcom/google/android/gms/internal/adp;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlH:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlH:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x6

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbr;->zzlH:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/adh;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlI:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlI:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x7

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbr;->zzlI:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/adh;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbr;->zzlJ:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_c

    const/16 v1, 0x8

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzbr;->zzlJ:J

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/adh;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlN:Z

    if-eqz v1, :cond_d

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/google/android/gms/internal/adh;->zzct(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlM:[I

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlM:[I

    array-length v1, v1

    if-lez v1, :cond_f

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_3
    iget-object v5, p0, Lcom/google/android/gms/internal/zzbr;->zzlM:[I

    array-length v5, v5

    if-ge v1, v5, :cond_e

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbr;->zzlM:[I

    aget v5, v5, v1

    invoke-static {v5}, Lcom/google/android/gms/internal/adh;->zzcr(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlM:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlL:[Lcom/google/android/gms/internal/zzbr;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlL:[Lcom/google/android/gms/internal/zzbr;

    array-length v1, v1

    if-lez v1, :cond_11

    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlL:[Lcom/google/android/gms/internal/zzbr;

    array-length v1, v1

    if-ge v3, v1, :cond_11

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlL:[Lcom/google/android/gms/internal/zzbr;

    aget-object v1, v1, v3

    if-eqz v1, :cond_10

    const/16 v4, 0xb

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/adh;->zzb(ILcom/google/android/gms/internal/adp;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_11
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbr;->zzlK:Z

    if-eqz v1, :cond_12

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/google/android/gms/internal/adh;->zzct(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_12
    return v0
.end method
