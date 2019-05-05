.class final Lcom/google/android/gms/internal/qo;
.super Lcom/google/android/gms/internal/yu;


# instance fields
.field private synthetic zzbZz:Lcom/google/android/gms/internal/wl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ql;Lcom/google/android/gms/internal/wl;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/qo;->zzbZz:Lcom/google/android/gms/internal/wl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/yu;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ql;->zzcdb:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method protected final zzGY()Lcom/google/android/gms/internal/ti;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ql;->zzcdc:Lcom/google/android/gms/internal/ti;

    return-object v0
.end method

.method public final zzf(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/qo;->zzbZz:Lcom/google/android/gms/internal/wl;

    invoke-static {p1}, Lcom/google/android/gms/internal/yu;->zzh(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/wl;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
