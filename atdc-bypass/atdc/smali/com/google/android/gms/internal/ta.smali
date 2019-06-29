.class final Lcom/google/android/gms/internal/ta;
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


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/qr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ta;->zzceR:Lcom/google/android/gms/internal/so;

    iput-object p2, p0, Lcom/google/android/gms/internal/ta;->zzccH:Lcom/google/android/gms/internal/qr;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ta;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v0}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ta;->zzccH:Lcom/google/android/gms/internal/qr;

    invoke-static {v1}, Lcom/google/android/gms/internal/vt;->zzM(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/vt;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/uh;->zzi(Lcom/google/android/gms/internal/vt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ta;->zzceR:Lcom/google/android/gms/internal/so;

    new-instance v1, Lcom/google/android/gms/internal/tv;

    sget-object v2, Lcom/google/android/gms/internal/tz;->zzcfO:Lcom/google/android/gms/internal/tz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ta;->zzccH:Lcom/google/android/gms/internal/qr;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/tv;-><init>(Lcom/google/android/gms/internal/tz;Lcom/google/android/gms/internal/qr;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/tx;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
