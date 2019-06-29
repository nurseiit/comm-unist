.class final Lcom/google/android/gms/internal/sz;
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

.field private synthetic zzceT:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/so;Ljava/util/Map;Lcom/google/android/gms/internal/qr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sz;->zzceR:Lcom/google/android/gms/internal/so;

    iput-object p2, p0, Lcom/google/android/gms/internal/sz;->zzceT:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/sz;->zzccH:Lcom/google/android/gms/internal/qr;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/sz;->zzceT:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/internal/pz;->zzE(Ljava/util/Map;)Lcom/google/android/gms/internal/pz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/sz;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v1}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uh;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/sz;->zzccH:Lcom/google/android/gms/internal/qr;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/uh;->zzd(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/pz;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/sz;->zzceR:Lcom/google/android/gms/internal/so;

    new-instance v2, Lcom/google/android/gms/internal/tw;

    sget-object v3, Lcom/google/android/gms/internal/tz;->zzcfO:Lcom/google/android/gms/internal/tz;

    iget-object v4, p0, Lcom/google/android/gms/internal/sz;->zzccH:Lcom/google/android/gms/internal/qr;

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/tw;-><init>(Lcom/google/android/gms/internal/tz;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/pz;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/tx;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
