.class final Lcom/google/android/gms/location/places/internal/zzaq;
.super Lcom/google/android/gms/location/places/zze;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/location/places/zze<",
        "Lcom/google/android/gms/location/places/internal/zzm;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbla:I

.field private synthetic zzblb:I

.field private synthetic zzblc:Lcom/google/android/gms/location/places/internal/zzap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/internal/zzap;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/zzaq;->zzblc:Lcom/google/android/gms/location/places/internal/zzap;

    iput p4, p0, Lcom/google/android/gms/location/places/internal/zzaq;->zzbla:I

    iput p5, p0, Lcom/google/android/gms/location/places/internal/zzaq;->zzblb:I

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/location/places/zze;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzm;

    new-instance v1, Lcom/google/android/gms/location/places/zzd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/location/places/zzd;-><init>(Lcom/google/android/gms/location/places/zze;)V

    iget-object p1, p0, Lcom/google/android/gms/location/places/internal/zzaq;->zzblc:Lcom/google/android/gms/location/places/internal/zzap;

    invoke-static {p1}, Lcom/google/android/gms/location/places/internal/zzap;->zza(Lcom/google/android/gms/location/places/internal/zzap;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/location/places/internal/zzaq;->zzbla:I

    iget v4, p0, Lcom/google/android/gms/location/places/internal/zzaq;->zzblb:I

    iget-object p1, p0, Lcom/google/android/gms/location/places/internal/zzaq;->zzblc:Lcom/google/android/gms/location/places/internal/zzap;

    invoke-static {p1}, Lcom/google/android/gms/location/places/internal/zzap;->zzb(Lcom/google/android/gms/location/places/internal/zzap;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/location/places/internal/zzm;->zza(Lcom/google/android/gms/location/places/zzd;Ljava/lang/String;III)V

    return-void
.end method
