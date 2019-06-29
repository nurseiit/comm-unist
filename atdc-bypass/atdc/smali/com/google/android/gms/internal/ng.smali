.class final Lcom/google/android/gms/internal/ng;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private zzbZO:I

.field private synthetic zzbZP:I

.field private synthetic zzbZQ:Z

.field private synthetic zzbZR:Lcom/google/android/gms/internal/nf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nf;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ng;->zzbZR:Lcom/google/android/gms/internal/nf;

    iput p2, p0, Lcom/google/android/gms/internal/ng;->zzbZP:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ng;->zzbZQ:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p1, p0, Lcom/google/android/gms/internal/ng;->zzbZP:I

    iput p1, p0, Lcom/google/android/gms/internal/ng;->zzbZO:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ng;->zzbZQ:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ng;->zzbZO:I

    if-ltz v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ng;->zzbZO:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ng;->zzbZR:Lcom/google/android/gms/internal/nf;

    invoke-static {v3}, Lcom/google/android/gms/internal/nf;->zza(Lcom/google/android/gms/internal/nf;)[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ng;->zzbZR:Lcom/google/android/gms/internal/nf;

    invoke-static {v0}, Lcom/google/android/gms/internal/nf;->zza(Lcom/google/android/gms/internal/nf;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ng;->zzbZO:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ng;->zzbZR:Lcom/google/android/gms/internal/nf;

    invoke-static {v1}, Lcom/google/android/gms/internal/nf;->zzb(Lcom/google/android/gms/internal/nf;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ng;->zzbZO:I

    aget-object v1, v1, v2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ng;->zzbZQ:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/ng;->zzbZO:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/google/android/gms/internal/ng;->zzbZO:I

    add-int/lit8 v2, v2, 0x1

    :goto_0
    iput v2, p0, Lcom/google/android/gms/internal/ng;->zzbZO:I

    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v2, v0, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t remove elements from ImmutableSortedMap"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
