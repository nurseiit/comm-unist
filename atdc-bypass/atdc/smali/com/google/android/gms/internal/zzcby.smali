.class final Lcom/google/android/gms/internal/zzcby;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcdt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzcdt<",
        "Lcom/google/android/gms/internal/zzccz;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbiC:Lcom/google/android/gms/internal/zzcbx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcbx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcby;->zzbiC:Lcom/google/android/gms/internal/zzcbx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzre()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcby;->zzbiC:Lcom/google/android/gms/internal/zzcbx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcbx;->zza(Lcom/google/android/gms/internal/zzcbx;)V

    return-void
.end method

.method public final synthetic zzrf()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcby;->zzbiC:Lcom/google/android/gms/internal/zzcbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcbx;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzccz;

    return-object v0
.end method
