.class final Lcom/google/android/gms/internal/sp;
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

.field private synthetic zzcdX:J

.field private synthetic zzceN:Z

.field private synthetic zzceO:Lcom/google/android/gms/internal/xm;

.field private synthetic zzceP:Lcom/google/android/gms/internal/xm;

.field private synthetic zzceQ:Z

.field private synthetic zzceR:Lcom/google/android/gms/internal/so;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/so;ZLcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;JLcom/google/android/gms/internal/xm;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sp;->zzceR:Lcom/google/android/gms/internal/so;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/sp;->zzceN:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/sp;->zzccH:Lcom/google/android/gms/internal/qr;

    iput-object p4, p0, Lcom/google/android/gms/internal/sp;->zzceO:Lcom/google/android/gms/internal/xm;

    iput-wide p5, p0, Lcom/google/android/gms/internal/sp;->zzcdX:J

    iput-object p7, p0, Lcom/google/android/gms/internal/sp;->zzceP:Lcom/google/android/gms/internal/xm;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/sp;->zzceQ:Z

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

    iget-boolean v0, p0, Lcom/google/android/gms/internal/sp;->zzceN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/sp;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v0}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/sp;->zzccH:Lcom/google/android/gms/internal/qr;

    iget-object v2, p0, Lcom/google/android/gms/internal/sp;->zzceO:Lcom/google/android/gms/internal/xm;

    iget-wide v3, p0, Lcom/google/android/gms/internal/sp;->zzcdX:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/uh;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;J)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/sp;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v0}, Lcom/google/android/gms/internal/so;->zzc(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/tp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/sp;->zzccH:Lcom/google/android/gms/internal/qr;

    iget-object v2, p0, Lcom/google/android/gms/internal/sp;->zzceP:Lcom/google/android/gms/internal/xm;

    iget-wide v3, p0, Lcom/google/android/gms/internal/sp;->zzcdX:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/sp;->zzceQ:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/tp;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;Ljava/lang/Long;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/sp;->zzceQ:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/sp;->zzceR:Lcom/google/android/gms/internal/so;

    new-instance v1, Lcom/google/android/gms/internal/ub;

    sget-object v2, Lcom/google/android/gms/internal/tz;->zzcfN:Lcom/google/android/gms/internal/tz;

    iget-object v3, p0, Lcom/google/android/gms/internal/sp;->zzccH:Lcom/google/android/gms/internal/qr;

    iget-object v4, p0, Lcom/google/android/gms/internal/sp;->zzceP:Lcom/google/android/gms/internal/xm;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ub;-><init>(Lcom/google/android/gms/internal/tz;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/tx;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
