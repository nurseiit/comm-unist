.class public final Lcom/google/android/gms/internal/zzcjo;
.super Lcom/google/android/gms/internal/adj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/adj<",
        "Lcom/google/android/gms/internal/zzcjo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbuR:[Lcom/google/android/gms/internal/zzcjo;


# instance fields
.field public zzbuS:Lcom/google/android/gms/internal/zzcjr;

.field public zzbuT:Lcom/google/android/gms/internal/zzcjp;

.field public zzbuU:Ljava/lang/Boolean;

.field public zzbuV:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/adj;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuS:Lcom/google/android/gms/internal/zzcjr;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuT:Lcom/google/android/gms/internal/zzcjp;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuU:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuV:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjo;->zzcso:Lcom/google/android/gms/internal/adl;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcjo;->zzcsx:I

    return-void
.end method

.method public static zzzw()[Lcom/google/android/gms/internal/zzcjo;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzcjo;->zzbuR:[Lcom/google/android/gms/internal/zzcjo;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/adn;->zzcsw:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzcjo;->zzbuR:[Lcom/google/android/gms/internal/zzcjo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/zzcjo;

    sput-object v1, Lcom/google/android/gms/internal/zzcjo;->zzbuR:[Lcom/google/android/gms/internal/zzcjo;

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
    sget-object v0, Lcom/google/android/gms/internal/zzcjo;->zzbuR:[Lcom/google/android/gms/internal/zzcjo;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzcjo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzcjo;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuS:Lcom/google/android/gms/internal/zzcjr;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcjo;->zzbuS:Lcom/google/android/gms/internal/zzcjr;

    if-eqz v1, :cond_3

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuS:Lcom/google/android/gms/internal/zzcjr;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcjo;->zzbuS:Lcom/google/android/gms/internal/zzcjr;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzcjr;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuT:Lcom/google/android/gms/internal/zzcjp;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcjo;->zzbuT:Lcom/google/android/gms/internal/zzcjp;

    if-eqz v1, :cond_5

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuT:Lcom/google/android/gms/internal/zzcjp;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcjo;->zzbuT:Lcom/google/android/gms/internal/zzcjp;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzcjp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuU:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcjo;->zzbuU:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    return v2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuU:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcjo;->zzbuU:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuV:Ljava/lang/String;

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcjo;->zzbuV:Ljava/lang/String;

    if-eqz v1, :cond_9

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuV:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcjo;->zzbuV:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjo;->zzcso:Lcom/google/android/gms/internal/adl;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcjo;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/adl;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzcjo;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v1, :cond_d

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcjo;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    return v0

    :cond_c
    return v2

    :cond_d
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

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuS:Lcom/google/android/gms/internal/zzcjr;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuS:Lcom/google/android/gms/internal/zzcjr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjr;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuT:Lcom/google/android/gms/internal/zzcjp;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuT:Lcom/google/android/gms/internal/zzcjp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjp;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuU:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuU:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuV:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuV:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adl;->hashCode()I

    move-result v2

    :cond_5
    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/adg;)Lcom/google/android/gms/internal/adp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adg;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuV:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLD()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuU:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuT:Lcom/google/android/gms/internal/zzcjp;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzcjp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcjp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuT:Lcom/google/android/gms/internal/zzcjp;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuT:Lcom/google/android/gms/internal/zzcjp;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuS:Lcom/google/android/gms/internal/zzcjr;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/zzcjr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcjr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuS:Lcom/google/android/gms/internal/zzcjr;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuS:Lcom/google/android/gms/internal/zzcjr;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adp;)V

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/adh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuS:Lcom/google/android/gms/internal/zzcjr;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuS:Lcom/google/android/gms/internal/zzcjr;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zza(ILcom/google/android/gms/internal/adp;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuT:Lcom/google/android/gms/internal/zzcjp;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuT:Lcom/google/android/gms/internal/zzcjp;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zza(ILcom/google/android/gms/internal/adp;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuU:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuU:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzk(IZ)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuV:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuV:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzl(ILjava/lang/String;)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adh;)V

    return-void
.end method

.method protected final zzn()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/adj;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuS:Lcom/google/android/gms/internal/zzcjr;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuS:Lcom/google/android/gms/internal/zzcjr;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/adh;->zzb(ILcom/google/android/gms/internal/adp;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuT:Lcom/google/android/gms/internal/zzcjp;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuT:Lcom/google/android/gms/internal/zzcjp;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/adh;->zzb(ILcom/google/android/gms/internal/adp;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuU:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuU:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/android/gms/internal/adh;->zzct(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuV:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcjo;->zzbuV:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method