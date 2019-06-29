.class final Lcom/google/android/gms/internal/zzapx;
.super Lcom/google/android/gms/internal/zzapw$zzc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzapw$zzc<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzajM:[Lcom/google/android/gms/internal/zzapl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzapw;Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/internal/zzapl;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzapx;->zzajM:[Lcom/google/android/gms/internal/zzapl;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzapw$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/zzapp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzapw$zzd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzapw$zzd;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapx;->zzajM:[Lcom/google/android/gms/internal/zzapl;

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/gms/internal/zzapp;->zza(Lcom/google/android/gms/internal/zzapr;Ljava/lang/String;[Lcom/google/android/gms/internal/zzapl;)V

    return-void
.end method
