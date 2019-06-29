.class final Lcom/google/android/gms/internal/zzbir;
.super Lcom/google/android/gms/internal/zzbjv;


# instance fields
.field private synthetic zzaKR:Lcom/google/android/gms/awareness/fence/FenceQueryRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbip;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/awareness/fence/FenceQueryRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbir;->zzaKR:Lcom/google/android/gms/awareness/fence/FenceQueryRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbjv;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbka;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbir;->zzaKR:Lcom/google/android/gms/awareness/fence/FenceQueryRequest;

    check-cast v0, Lcom/google/android/gms/internal/zzbja;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/zzbka;->zza(Lcom/google/android/gms/internal/zzbaz;Lcom/google/android/gms/internal/zzbja;)V

    return-void
.end method
