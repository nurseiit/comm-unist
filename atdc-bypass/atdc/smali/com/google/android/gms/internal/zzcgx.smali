.class final Lcom/google/android/gms/internal/zzcgx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/internal/zzcjk;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzbjh:Ljava/lang/String;

.field private synthetic zzbtf:Lcom/google/android/gms/internal/zzcgq;

.field private synthetic zzbth:Ljava/lang/String;

.field private synthetic zzbti:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcgq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcgx;->zzbtf:Lcom/google/android/gms/internal/zzcgq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcgx;->zzbjh:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcgx;->zzbth:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcgx;->zzbti:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgx;->zzbtf:Lcom/google/android/gms/internal/zzcgq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgq;->zza(Lcom/google/android/gms/internal/zzcgq;)Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgl;->zzze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcgx;->zzbtf:Lcom/google/android/gms/internal/zzcgq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgq;->zza(Lcom/google/android/gms/internal/zzcgq;)Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgl;->zzwz()Lcom/google/android/gms/internal/zzcen;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcgx;->zzbjh:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcgx;->zzbth:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcgx;->zzbti:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcen;->zzh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
