.class public final Lcom/google/android/gms/internal/aee;
.super Lcom/google/android/gms/internal/adj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/adj<",
        "Lcom/google/android/gms/internal/aee;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzctz:[Lcom/google/android/gms/internal/aee;


# instance fields
.field private name:Ljava/lang/String;

.field private zzctA:[Z

.field private zzctB:[J

.field private zzctC:[Ljava/lang/String;

.field private zzctD:[Lcom/google/android/gms/internal/aef;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/adj;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads;->zzcsG:[Z

    iput-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    sget-object v0, Lcom/google/android/gms/internal/ads;->zzcsD:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    sget-object v0, Lcom/google/android/gms/internal/ads;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/aef;->zzLZ()[Lcom/google/android/gms/internal/aef;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aee;->zzcso:Lcom/google/android/gms/internal/adl;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/aee;->zzcsx:I

    return-void
.end method

.method public static zzLY()[Lcom/google/android/gms/internal/aee;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/aee;->zzctz:[Lcom/google/android/gms/internal/aee;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/adn;->zzcsw:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/aee;->zzctz:[Lcom/google/android/gms/internal/aee;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/aee;

    sput-object v1, Lcom/google/android/gms/internal/aee;->zzctz:[Lcom/google/android/gms/internal/aee;

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
    sget-object v0, Lcom/google/android/gms/internal/aee;->zzctz:[Lcom/google/android/gms/internal/aee;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/aee;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/aee;

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    iget-object v3, p1, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/adn;->equals([Z[Z)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/aee;->zzctB:[J

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/adn;->equals([J[J)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/adn;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    iget-object v3, p1, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/adn;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzcso:Lcom/google/android/gms/internal/adl;

    iget-object p1, p1, Lcom/google/android/gms/internal/aee;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/adl;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/aee;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v1, :cond_b

    iget-object p1, p1, Lcom/google/android/gms/internal/aee;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    return v0

    :cond_a
    return v2

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    invoke-static {v1}, Lcom/google/android/gms/internal/adn;->hashCode([Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    invoke-static {v1}, Lcom/google/android/gms/internal/adn;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/adn;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    invoke-static {v1}, Lcom/google/android/gms/internal/adn;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adl;->hashCode()I

    move-result v2

    :cond_2
    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/adg;)Lcom/google/android/gms/internal/adp;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    move-result v0

    if-eqz v0, :cond_1c

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-eq v0, v1, :cond_17

    const/16 v1, 0x12

    if-eq v0, v1, :cond_12

    const/16 v1, 0x18

    if-eq v0, v1, :cond_e

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_9

    const/16 v1, 0x22

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adg;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads;->zzb(Lcom/google/android/gms/internal/adg;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/aef;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    new-instance v2, Lcom/google/android/gms/internal/aef;

    invoke-direct {v2}, Lcom/google/android/gms/internal/aef;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adp;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/aef;

    invoke-direct {v2}, Lcom/google/android/gms/internal/aef;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    goto :goto_0

    :cond_5
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads;->zzb(Lcom/google/android/gms/internal/adg;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zzcn(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v1

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLK()I

    move-result v4

    if-lez v4, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLB()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    array-length v1, v1

    :goto_6
    add-int/2addr v3, v1

    new-array v3, v3, [J

    if-eqz v1, :cond_c

    iget-object v4, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    :goto_7
    array-length v2, v3

    if-ge v1, v2, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLB()J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_d
    iput-object v3, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    goto/16 :goto_d

    :cond_e
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads;->zzb(Lcom/google/android/gms/internal/adg;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    if-nez v1, :cond_f

    const/4 v1, 0x0

    goto :goto_8

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    array-length v1, v1

    :goto_8
    add-int/2addr v0, v1

    new-array v0, v0, [J

    if-eqz v1, :cond_10

    iget-object v3, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    :goto_9
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_11

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLB()J

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLB()J

    move-result-wide v2

    aput-wide v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zzcn(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v1

    const/4 v3, 0x0

    :goto_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLK()I

    move-result v4

    if-lez v4, :cond_13

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLD()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_13
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    if-nez v1, :cond_14

    const/4 v1, 0x0

    goto :goto_b

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    array-length v1, v1

    :goto_b
    add-int/2addr v3, v1

    new-array v3, v3, [Z

    if-eqz v1, :cond_15

    iget-object v4, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_15
    :goto_c
    array-length v2, v3

    if-ge v1, v2, :cond_16

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLD()Z

    move-result v2

    aput-boolean v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    iput-object v3, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    :goto_d
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zzco(I)V

    goto/16 :goto_0

    :cond_17
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads;->zzb(Lcom/google/android/gms/internal/adg;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    if-nez v1, :cond_18

    const/4 v1, 0x0

    goto :goto_e

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    array-length v1, v1

    :goto_e
    add-int/2addr v0, v1

    new-array v0, v0, [Z

    if-eqz v1, :cond_19

    iget-object v3, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    :goto_f
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLD()Z

    move-result v2

    aput-boolean v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLD()Z

    move-result v2

    aput-boolean v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1c
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/adh;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/adh;->zzl(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/adh;->zzk(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    array-length v2, v2

    if-ge v0, v2, :cond_2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    aget-wide v4, v3, v0

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/android/gms/internal/adh;->zzb(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/adh;->zzl(ILjava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    array-length v0, v0

    if-lez v0, :cond_6

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/adh;->zza(ILcom/google/android/gms/internal/adp;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adh;)V

    return-void
.end method

.method protected final zzn()I
    .locals 8

    invoke-super {p0}, Lcom/google/android/gms/internal/adj;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->name:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/adh;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctA:[Z

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    array-length v5, v5

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    aget-wide v6, v5, v1

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/adh;->zzaP(J)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctB:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_6

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_5

    iget-object v6, p0, Lcom/google/android/gms/internal/aee;->zzctC:[Ljava/lang/String;

    aget-object v6, v6, v1

    if-eqz v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    invoke-static {v6}, Lcom/google/android/gms/internal/adh;->zzhQ(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr v0, v4

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v0, v5

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    array-length v1, v1

    if-lez v1, :cond_8

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    array-length v1, v1

    if-ge v3, v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/aee;->zzctD:[Lcom/google/android/gms/internal/aef;

    aget-object v1, v1, v3

    if-eqz v1, :cond_7

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/adh;->zzb(ILcom/google/android/gms/internal/adp;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    return v0
.end method
