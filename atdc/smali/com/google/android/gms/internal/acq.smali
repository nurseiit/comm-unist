.class public final Lcom/google/android/gms/internal/acq;
.super Lcom/google/android/gms/internal/adj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/adj<",
        "Lcom/google/android/gms/internal/acq;",
        ">;"
    }
.end annotation


# instance fields
.field private packageName:Ljava/lang/String;

.field private zzcqq:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/adj;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/acq;->zzcqq:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/acq;->packageName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/acq;->zzcsx:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/acq;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/acq;

    iget v1, p0, Lcom/google/android/gms/internal/acq;->zzcqq:I

    iget v3, p1, Lcom/google/android/gms/internal/acq;->zzcqq:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/acq;->packageName:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/acq;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_4

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/acq;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/acq;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/acq;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/acq;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/acq;->zzcso:Lcom/google/android/gms/internal/adl;

    iget-object p1, p1, Lcom/google/android/gms/internal/acq;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/adl;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/acq;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v1, :cond_8

    iget-object p1, p1, Lcom/google/android/gms/internal/acq;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    return v0

    :cond_7
    return v2

    :cond_8
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

    iget v1, p0, Lcom/google/android/gms/internal/acq;->zzcqq:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/acq;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/acq;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/acq;->zzcso:Lcom/google/android/gms/internal/adl;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/acq;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adl;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/acq;->zzcso:Lcom/google/android/gms/internal/adl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/adl;->hashCode()I

    move-result v2

    :cond_2
    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/adg;)Lcom/google/android/gms/internal/adp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adg;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/acq;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLF()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/adg;->zzcp(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/acq;->zza(Lcom/google/android/gms/internal/adg;I)Z

    goto :goto_0

    :pswitch_0
    iput v2, p0, Lcom/google/android/gms/internal/acq;->zzcqq:I

    goto :goto_0

    :cond_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/adh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/acq;->zzcqq:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/acq;->zzcqq:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzr(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/acq;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/acq;->packageName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/acq;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzl(ILjava/lang/String;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adh;)V

    return-void
.end method

.method protected final zzn()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/adj;->zzn()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/acq;->zzcqq:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/acq;->zzcqq:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzs(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/acq;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/acq;->packageName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/acq;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzm(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method
