.class final Lcom/google/android/gms/internal/zzasj;
.super Lcom/google/android/gms/internal/zzasl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzasi;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzasl;-><init>(Lcom/google/android/gms/internal/zzasj;)V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/zzasd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzask;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzask;-><init>(Lcom/google/android/gms/internal/zzasj;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzasd;->zza(Lcom/google/android/gms/internal/zzasf;)V

    return-void
.end method
