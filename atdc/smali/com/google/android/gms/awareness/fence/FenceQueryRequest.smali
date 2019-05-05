.class public abstract Lcom/google/android/gms/awareness/fence/FenceQueryRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    return-void
.end method

.method public static all()Lcom/google/android/gms/awareness/fence/FenceQueryRequest;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbja;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbja;-><init>()V

    return-object v0
.end method

.method public static forFences(Ljava/util/Collection;)Lcom/google/android/gms/awareness/fence/FenceQueryRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/awareness/fence/FenceQueryRequest;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbja;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbja;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static varargs forFences([Ljava/lang/String;)Lcom/google/android/gms/awareness/fence/FenceQueryRequest;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbja;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbja;-><init>([Ljava/lang/String;)V

    return-object v0
.end method
