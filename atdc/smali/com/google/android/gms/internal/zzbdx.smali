.class final Lcom/google/android/gms/internal/zzbdx;
.super Landroid/os/Handler;


# instance fields
.field private synthetic zzaEO:Lcom/google/android/gms/internal/zzbdw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbdw;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbdx;->zzaEO:Lcom/google/android/gms/internal/zzbdw;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdx;->zzaEO:Lcom/google/android/gms/internal/zzbdw;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/zzbdz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbdw;->zzb(Lcom/google/android/gms/internal/zzbdz;)V

    return-void
.end method
