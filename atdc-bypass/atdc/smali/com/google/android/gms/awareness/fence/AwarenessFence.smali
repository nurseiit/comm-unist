.class public abstract Lcom/google/android/gms/awareness/fence/AwarenessFence;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    return-void
.end method

.method public static and(Ljava/util/Collection;)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/awareness/fence/AwarenessFence;",
            ">;)",
            "Lcom/google/android/gms/awareness/fence/AwarenessFence;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    invoke-static {p0}, Lcom/google/android/gms/awareness/fence/AwarenessFence;->zzd(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbiy;->zze(Ljava/util/Collection;)Lcom/google/android/gms/internal/zzbiy;

    move-result-object p0

    return-object p0
.end method

.method public static varargs and([Lcom/google/android/gms/awareness/fence/AwarenessFence;)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    invoke-static {p0}, Lcom/google/android/gms/awareness/fence/AwarenessFence;->zza([Lcom/google/android/gms/awareness/fence/AwarenessFence;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbiy;->zze(Ljava/util/Collection;)Lcom/google/android/gms/internal/zzbiy;

    move-result-object p0

    return-object p0
.end method

.method public static not(Lcom/google/android/gms/awareness/fence/AwarenessFence;)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/zzbiy;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbiy;->zza(Lcom/google/android/gms/internal/zzbiy;)Lcom/google/android/gms/internal/zzbiy;

    move-result-object p0

    return-object p0
.end method

.method public static or(Ljava/util/Collection;)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/awareness/fence/AwarenessFence;",
            ">;)",
            "Lcom/google/android/gms/awareness/fence/AwarenessFence;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    invoke-static {p0}, Lcom/google/android/gms/awareness/fence/AwarenessFence;->zzd(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbiy;->zzf(Ljava/util/Collection;)Lcom/google/android/gms/internal/zzbiy;

    move-result-object p0

    return-object p0
.end method

.method public static varargs or([Lcom/google/android/gms/awareness/fence/AwarenessFence;)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    invoke-static {p0}, Lcom/google/android/gms/awareness/fence/AwarenessFence;->zza([Lcom/google/android/gms/awareness/fence/AwarenessFence;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbiy;->zzf(Ljava/util/Collection;)Lcom/google/android/gms/internal/zzbiy;

    move-result-object p0

    return-object p0
.end method

.method private static zza([Lcom/google/android/gms/awareness/fence/AwarenessFence;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/awareness/fence/AwarenessFence;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/zzbiy;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    check-cast v3, Lcom/google/android/gms/internal/zzbiy;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static zzd(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/awareness/fence/AwarenessFence;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/zzbiy;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/awareness/fence/AwarenessFence;

    check-cast v1, Lcom/google/android/gms/internal/zzbiy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
