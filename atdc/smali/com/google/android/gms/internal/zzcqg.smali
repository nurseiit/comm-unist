.class final Lcom/google/android/gms/internal/zzcqg;
.super Lcom/google/android/gms/internal/zzcqi;


# instance fields
.field private synthetic zzbzR:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcqe;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcqg;->zzbzR:Landroid/net/Uri;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcqi;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzcqc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzcqj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcqj;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcqg;->zzbzR:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/google/android/gms/internal/zzcqe;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzcqc;Lcom/google/android/gms/internal/zzcqa;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method
