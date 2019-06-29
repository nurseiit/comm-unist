.class final Lcom/google/android/gms/internal/zzbdc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbax;


# instance fields
.field private synthetic zzaEm:Lcom/google/android/gms/internal/zzbdb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbdb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbdc;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzac(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbdc;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbdc;->zzaEm:Lcom/google/android/gms/internal/zzbdb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbdb;->zza(Lcom/google/android/gms/internal/zzbdb;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
