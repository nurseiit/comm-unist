.class final Lcom/google/android/gms/internal/zztd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzth;


# instance fields
.field private synthetic zzKf:Lcom/google/android/gms/internal/zzacv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzsy;Lcom/google/android/gms/internal/zzacv;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zztd;->zzKf:Lcom/google/android/gms/internal/zzacv;

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

    iget-object v0, p1, Lcom/google/android/gms/internal/zzti;->zzKl:Lcom/google/android/gms/internal/zzadd;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/zzti;->zzKl:Lcom/google/android/gms/internal/zzadd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zztd;->zzKf:Lcom/google/android/gms/internal/zzacv;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzadd;->zza(Lcom/google/android/gms/internal/zzacv;)V

    :cond_0
    return-void
.end method
