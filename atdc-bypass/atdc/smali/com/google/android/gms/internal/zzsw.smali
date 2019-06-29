.class final Lcom/google/android/gms/internal/zzsw;
.super Lcom/google/android/gms/internal/zzjm;


# instance fields
.field private synthetic zzKb:Lcom/google/android/gms/internal/zzsj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzsj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsw;->zzKb:Lcom/google/android/gms/internal/zzsj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjm;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsw;->zzKb:Lcom/google/android/gms/internal/zzsj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsj;->zza(Lcom/google/android/gms/internal/zzsj;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzsx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzsx;-><init>(Lcom/google/android/gms/internal/zzsw;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
