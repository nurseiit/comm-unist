.class final Lcom/google/android/gms/location/places/internal/zzz;
.super Lcom/google/android/gms/location/places/zzm$zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/zzm$zzf<",
        "Lcom/google/android/gms/location/places/internal/zzaa;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbkq:Lcom/google/android/gms/location/places/PlaceReport;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/internal/zzx;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/places/PlaceReport;)V
    .locals 0

    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/zzz;->zzbkq:Lcom/google/android/gms/location/places/PlaceReport;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/location/places/zzm$zzf;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/location/places/internal/zzaa;

    new-instance v0, Lcom/google/android/gms/location/places/zzm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/places/zzm;-><init>(Lcom/google/android/gms/location/places/zzm$zzf;)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzz;->zzbkq:Lcom/google/android/gms/location/places/PlaceReport;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/places/internal/zzaa;->zza(Lcom/google/android/gms/location/places/zzm;Lcom/google/android/gms/location/places/PlaceReport;)V

    return-void
.end method
