.class final Lcom/google/android/gms/internal/zzatw;
.super Lcom/google/android/gms/internal/zzen;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzen<",
        "Lcom/google/android/gms/awareness/snapshot/BeaconStateResult;",
        "Lcom/google/android/gms/internal/zzaud;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzatj;Lcom/google/android/gms/common/api/PendingResult;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzen;-><init>(Lcom/google/android/gms/common/api/PendingResult;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/zzaud;

    new-instance v0, Lcom/google/android/gms/internal/zzatx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzatx;-><init>(Lcom/google/android/gms/internal/zzatw;Lcom/google/android/gms/internal/zzaud;)V

    return-object v0
.end method
