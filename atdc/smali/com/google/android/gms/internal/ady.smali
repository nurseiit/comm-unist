.class public final Lcom/google/android/gms/internal/ady;
.super Lcom/google/android/gms/internal/adj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/adj<",
        "Lcom/google/android/gms/internal/ady;",
        ">;"
    }
.end annotation


# instance fields
.field private body:[B

.field private zzctb:[Lcom/google/android/gms/internal/adv;

.field private zzctc:[B

.field private zzctd:Ljava/lang/Integer;

.field private zzcth:Lcom/google/android/gms/internal/adz;

.field private zzcti:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/adj;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ady;->zzcth:Lcom/google/android/gms/internal/adz;

    invoke-static {}, Lcom/google/android/gms/internal/adv;->zzLW()[Lcom/google/android/gms/internal/adv;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ady;->zzctb:[Lcom/google/android/gms/internal/adv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ady;->body:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ady;->zzctc:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ady;->zzctd:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ady;->zzcti:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ady;->zzcso:Lcom/google/android/gms/internal/adl;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ady;->zzcsx:I

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/adg;)Lcom/google/android/gms/internal/adp;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    move-result v0

    if-eqz v0, :cond_b

    const/16 v1, 0xa

    if-eq v0, v1, :cond_9

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adg;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ady;->zzcti:[B

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLC()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ady;->zzctd:Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ady;->zzctc:[B

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ady;->body:[B

    goto :goto_0

    :cond_5
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads;->zzb(Lcom/google/android/gms/internal/adg;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ady;->zzctb:[Lcom/google/android/gms/internal/adv;

    const/4 v2, 0x0

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ady;->zzctb:[Lcom/google/android/gms/internal/adv;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/adv;

    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/ady;->zzctb:[Lcom/google/android/gms/internal/adv;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8

    new-instance v2, Lcom/google/android/gms/internal/adv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/adv;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adp;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    new-instance v2, Lcom/google/android/gms/internal/adv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/adv;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ady;->zzctb:[Lcom/google/android/gms/internal/adv;

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ady;->zzcth:Lcom/google/android/gms/internal/adz;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/adz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/adz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ady;->zzcth:Lcom/google/android/gms/internal/adz;

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ady;->zzcth:Lcom/google/android/gms/internal/adz;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adp;)V

    goto/16 :goto_0

    :cond_b
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/adh;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ady;->zzcth:Lcom/google/android/gms/internal/adz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ady;->zzcth:Lcom/google/android/gms/internal/adz;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/adh;->zza(ILcom/google/android/gms/internal/adp;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ady;->zzctb:[Lcom/google/android/gms/internal/adv;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ady;->zzctb:[Lcom/google/android/gms/internal/adv;

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ady;->zzctb:[Lcom/google/android/gms/internal/adv;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ady;->zzctb:[Lcom/google/android/gms/internal/adv;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/adh;->zza(ILcom/google/android/gms/internal/adp;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ady;->body:[B

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/ady;->body:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzb(I[B)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ady;->zzctc:[B

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/ady;->zzctc:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzb(I[B)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ady;->zzctd:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/ady;->zzctd:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzr(II)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ady;->zzcti:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/ady;->zzcti:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zzb(I[B)V

    :cond_6
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adh;)V

    return-void
.end method

.method protected final zzn()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/adj;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ady;->zzcth:Lcom/google/android/gms/internal/adz;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ady;->zzcth:Lcom/google/android/gms/internal/adz;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/adh;->zzb(ILcom/google/android/gms/internal/adp;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ady;->zzctb:[Lcom/google/android/gms/internal/adv;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ady;->zzctb:[Lcom/google/android/gms/internal/adv;

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ady;->zzctb:[Lcom/google/android/gms/internal/adv;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ady;->zzctb:[Lcom/google/android/gms/internal/adv;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/adh;->zzb(ILcom/google/android/gms/internal/adp;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ady;->body:[B

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ady;->body:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzc(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ady;->zzctc:[B

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/ady;->zzctc:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzc(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ady;->zzctd:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/ady;->zzctd:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzs(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ady;->zzcti:[B

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/ady;->zzcti:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzc(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method
