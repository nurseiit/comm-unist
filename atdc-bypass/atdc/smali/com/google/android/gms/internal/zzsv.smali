.class final Lcom/google/android/gms/internal/zzsv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzth;


# instance fields
.field private synthetic zzKe:Lcom/google/android/gms/internal/zzne;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzsu;Lcom/google/android/gms/internal/zzne;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzsv;->zzKe:Lcom/google/android/gms/internal/zzne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/zzti;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzti;->zzKj:Lcom/google/android/gms/internal/zznh;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/zzti;->zzKj:Lcom/google/android/gms/internal/zznh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsv;->zzKe:Lcom/google/android/gms/internal/zzne;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zznh;->zza(Lcom/google/android/gms/internal/zzne;)V

    :cond_0
    return-void
.end method
