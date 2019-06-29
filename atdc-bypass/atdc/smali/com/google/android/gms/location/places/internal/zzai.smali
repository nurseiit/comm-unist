.class public final Lcom/google/android/gms/location/places/internal/zzai;
.super Lcom/google/android/gms/location/places/internal/zzav;

# interfaces
.implements Lcom/google/android/gms/location/places/PlaceLikelihood;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/zzav;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public final synthetic freeze()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzai;->getPlace()Lcom/google/android/gms/location/places/Place;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/location/places/Place;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzai;->getLikelihood()F

    move-result v1

    new-instance v2, Lcom/google/android/gms/location/places/internal/zzag;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/location/places/internal/zzag;-><init>(Lcom/google/android/gms/location/places/internal/PlaceEntity;F)V

    return-object v2
.end method

.method public final getLikelihood()F
    .locals 2

    const-string v0, "place_likelihood"

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzai;->zza(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public final getPlace()Lcom/google/android/gms/location/places/Place;
    .locals 3

    new-instance v0, Lcom/google/android/gms/location/places/internal/zzas;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzai;->zzaCX:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/location/places/internal/zzai;->zzaFx:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/location/places/internal/zzas;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method
