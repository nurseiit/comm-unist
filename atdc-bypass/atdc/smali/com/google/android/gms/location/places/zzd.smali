.class public final Lcom/google/android/gms/location/places/zzd;
.super Lcom/google/android/gms/location/places/internal/zzu;


# instance fields
.field private final zzbjq:Lcom/google/android/gms/location/places/zzf;

.field private final zzbjr:Lcom/google/android/gms/location/places/zze;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/places/zze;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzu;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/places/zzd;->zzbjq:Lcom/google/android/gms/location/places/zzf;

    iput-object p1, p0, Lcom/google/android/gms/location/places/zzd;->zzbjr:Lcom/google/android/gms/location/places/zze;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/places/zzf;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/places/zzd;->zzbjq:Lcom/google/android/gms/location/places/zzf;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/location/places/zzd;->zzbjr:Lcom/google/android/gms/location/places/zze;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/zzd;->zzbjq:Lcom/google/android/gms/location/places/zzf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/places/zzf;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/location/places/PlacePhotoResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/zzd;->zzbjr:Lcom/google/android/gms/location/places/zze;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/places/zze;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
