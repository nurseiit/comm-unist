.class final Lcom/google/android/gms/internal/zzcqh;
.super Lcom/google/android/gms/internal/zzcqb;


# instance fields
.field private synthetic zzbzR:Landroid/net/Uri;

.field private synthetic zzbzS:Lcom/google/android/gms/internal/zzcqa;

.field private synthetic zztF:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/zzcqa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcqh;->zztF:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcqh;->zzbzR:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcqh;->zzbzS:Lcom/google/android/gms/internal/zzcqa;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcqb;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(ILandroid/os/Bundle;ILandroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcqh;->zztF:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcqh;->zzbzR:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcqe;->zzc(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcqh;->zzbzS:Lcom/google/android/gms/internal/zzcqa;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzcqa;->zza(ILandroid/os/Bundle;ILandroid/content/Intent;)V

    return-void
.end method
