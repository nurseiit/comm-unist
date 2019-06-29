.class final Lcom/google/android/gms/internal/zzayy;
.super Lcom/google/android/gms/internal/zzazb;


# instance fields
.field private synthetic zzayZ:Lcom/google/android/gms/internal/zzayw;

.field private synthetic zztC:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzayw;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzayy;->zzayZ:Lcom/google/android/gms/internal/zzayw;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzayy;->zztC:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzazb;-><init>(Lcom/google/android/gms/internal/zzayw;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzazf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzayy;->zza(Lcom/google/android/gms/internal/zzazf;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzazf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzazc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzazc;-><init>(Lcom/google/android/gms/internal/zzazb;Lcom/google/android/gms/internal/zzazf;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzayy;->zzayZ:Lcom/google/android/gms/internal/zzayw;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzayw;->zzb(Lcom/google/android/gms/internal/zzayw;)Lcom/google/android/gms/internal/zzazl;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzayy;->zztC:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzazf;->zza(Lcom/google/android/gms/internal/zzazh;Lcom/google/android/gms/internal/zzazl;Ljava/lang/String;)V

    return-void
.end method
