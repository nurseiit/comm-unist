.class final Lcom/google/android/gms/internal/tc;
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
.field private synthetic zzccH:Lcom/google/android/gms/internal/qr;

.field private synthetic zzceR:Lcom/google/android/gms/internal/so;

.field private synthetic zzceS:Lcom/google/android/gms/internal/th;

.field private synthetic zzcfd:Lcom/google/android/gms/internal/xm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/th;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/tc;->zzceR:Lcom/google/android/gms/internal/so;

    iput-object p2, p0, Lcom/google/android/gms/internal/tc;->zzceS:Lcom/google/android/gms/internal/th;

    iput-object p3, p0, Lcom/google/android/gms/internal/tc;->zzccH:Lcom/google/android/gms/internal/qr;

    iput-object p4, p0, Lcom/google/android/gms/internal/tc;->zzcfd:Lcom/google/android/gms/internal/xm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/tc;->zzceR:Lcom/google/android/gms/internal/so;

    iget-object v1, p0, Lcom/google/android/gms/internal/tc;->zzceS:Lcom/google/android/gms/internal/th;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/vt;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/tc;->zzccH:Lcom/google/android/gms/internal/qr;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/qr;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/tc;->zzccH:Lcom/google/android/gms/internal/qr;

    invoke-static {v2}, Lcom/google/android/gms/internal/vt;->zzM(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/vt;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/tc;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v3}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uh;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/tc;->zzcfd:Lcom/google/android/gms/internal/xm;

    invoke-interface {v3, v2, v4}, Lcom/google/android/gms/internal/uh;->zza(Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/xm;)V

    new-instance v2, Lcom/google/android/gms/internal/ub;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vt;->zzIu()Lcom/google/android/gms/internal/vq;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/tz;->zzc(Lcom/google/android/gms/internal/vq;)Lcom/google/android/gms/internal/tz;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/tc;->zzcfd:Lcom/google/android/gms/internal/xm;

    invoke-direct {v2, v3, v1, v4}, Lcom/google/android/gms/internal/ub;-><init>(Lcom/google/android/gms/internal/tz;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/tc;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/tx;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
