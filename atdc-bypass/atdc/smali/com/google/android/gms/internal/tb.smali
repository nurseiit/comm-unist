.class final Lcom/google/android/gms/internal/tb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "+",
        "Lcom/google/android/gms/internal/vk;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzceR:Lcom/google/android/gms/internal/so;

.field private synthetic zzceS:Lcom/google/android/gms/internal/th;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/th;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/tb;->zzceR:Lcom/google/android/gms/internal/so;

    iput-object p2, p0, Lcom/google/android/gms/internal/tb;->zzceS:Lcom/google/android/gms/internal/th;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/tb;->zzceR:Lcom/google/android/gms/internal/so;

    iget-object v1, p0, Lcom/google/android/gms/internal/tb;->zzceS:Lcom/google/android/gms/internal/th;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/vt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/tb;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v1}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uh;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/uh;->zzi(Lcom/google/android/gms/internal/vt;)V

    new-instance v1, Lcom/google/android/gms/internal/tv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vt;->zzIu()Lcom/google/android/gms/internal/vq;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/tz;->zzc(Lcom/google/android/gms/internal/vq;)Lcom/google/android/gms/internal/tz;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/qr;->zzGZ()Lcom/google/android/gms/internal/qr;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/tv;-><init>(Lcom/google/android/gms/internal/tz;Lcom/google/android/gms/internal/qr;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/tb;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/tx;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
