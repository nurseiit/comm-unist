.class final Lcom/google/android/gms/location/places/internal/zzj;
.super Lcom/google/android/gms/location/places/zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/zzf<",
        "Lcom/google/android/gms/location/places/internal/zzm;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbkk:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/internal/zzh;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/zzj;->zzbkk:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/location/places/zzf;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/location/places/internal/zzm;

    new-instance v0, Lcom/google/android/gms/location/places/zzd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/places/zzd;-><init>(Lcom/google/android/gms/location/places/zzf;)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/zzj;->zzbkk:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/places/internal/zzm;->zza(Lcom/google/android/gms/location/places/zzd;Ljava/lang/String;)V

    return-void
.end method
