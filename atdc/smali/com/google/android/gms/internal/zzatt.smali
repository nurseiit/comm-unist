.class final Lcom/google/android/gms/internal/zzatt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/awareness/snapshot/PlacesResult;


# instance fields
.field private synthetic zzaok:Lcom/google/android/gms/internal/zzaud;

.field private zzaol:Z

.field private zzaom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/location/places/PlaceLikelihood;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzats;Lcom/google/android/gms/internal/zzaud;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzatt;->zzaok:Lcom/google/android/gms/internal/zzaud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzatt;->zzaol:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatt;->zzaom:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getPlaceLikelihoods()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/location/places/PlaceLikelihood;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzatt;->zzaol:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatt;->zzaom:Ljava/util/List;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatt;->zzaol:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatt;->zzaok:Lcom/google/android/gms/internal/zzaud;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaud;->zznb()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzatt;->zzaok:Lcom/google/android/gms/internal/zzaud;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaud;->zznb()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzmY()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/zzatc;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzatc;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->release()V

    return-object v1

    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/data/zzd;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    check-cast v0, Lcom/google/android/gms/internal/zzatb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatb;->getPlaceLikelihoods()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzatt;->zzaom:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatt;->zzaom:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatc;->release()V

    throw v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatt;->zzaok:Lcom/google/android/gms/internal/zzaud;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaud;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
