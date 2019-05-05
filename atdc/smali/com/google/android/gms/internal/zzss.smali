.class final Lcom/google/android/gms/internal/zzss;
.super Lcom/google/android/gms/internal/zzkf;


# instance fields
.field private synthetic zzKb:Lcom/google/android/gms/internal/zzsj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzsj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzss;->zzKb:Lcom/google/android/gms/internal/zzsj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkf;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzss;->zzKb:Lcom/google/android/gms/internal/zzsj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsj;->zza(Lcom/google/android/gms/internal/zzsj;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzst;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzst;-><init>(Lcom/google/android/gms/internal/zzss;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
