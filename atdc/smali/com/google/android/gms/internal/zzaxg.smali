.class public abstract Lcom/google/android/gms/internal/zzaxg;
.super Lcom/google/android/gms/internal/zzaxs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/internal/zzaxs<",
        "TR;>;"
    }
.end annotation


# instance fields
.field protected zzarw:Lcom/google/android/gms/internal/zzayt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzawy;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzawy;->zza(Lcom/google/android/gms/internal/zzawy;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaxs;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public abstract execute()V
.end method

.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaxg;->execute()V

    return-void
.end method
