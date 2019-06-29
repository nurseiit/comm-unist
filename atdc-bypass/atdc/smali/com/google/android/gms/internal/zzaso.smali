.class final Lcom/google/android/gms/internal/zzaso;
.super Lcom/google/android/gms/internal/zzasm;


# instance fields
.field private synthetic zzalK:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzasn;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaso;->zzalK:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzasm;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzasb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/zzasp;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzasp;-><init>(Lcom/google/android/gms/internal/zzaso;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaso;->zzalK:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/zzasb;->zza(Lcom/google/android/gms/internal/zzarz;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)V

    return-void
.end method
