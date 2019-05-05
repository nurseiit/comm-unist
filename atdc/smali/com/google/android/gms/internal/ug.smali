.class public final Lcom/google/android/gms/internal/ug;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/uh;


# instance fields
.field private zzbZF:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ug;->zzbZF:Z

    return-void
.end method

.method private final zzFw()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ug;->zzbZF:Z

    const-string v1, "Transaction expected to already be in progress."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zd;->zzb(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zzFs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/tm;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzFv()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ug;->zzFw()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/pz;J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ug;->zzFw()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ug;->zzFw()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/xm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ug;->zzFw()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/vt;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vt;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/wp;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ug;->zzFw()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/vt;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vt;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/wp;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/wp;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ug;->zzFw()V

    return-void
.end method

.method public final zzal(J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ug;->zzFw()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/pz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ug;->zzFw()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/pz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ug;->zzFw()V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vg;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vg;

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vt;->zzIm()Lcom/google/android/gms/internal/xe;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/xf;->zza(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xe;)Lcom/google/android/gms/internal/xf;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/google/android/gms/internal/vg;-><init>(Lcom/google/android/gms/internal/xf;ZZ)V

    return-object v0
.end method

.method public final zzg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ug;->zzbZF:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "runInTransaction called when an existing transaction is already in progress."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zd;->zzb(ZLjava/lang/String;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ug;->zzbZF:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ug;->zzbZF:Z

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ug;->zzbZF:Z

    throw p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/vt;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ug;->zzFw()V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/vt;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ug;->zzFw()V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/vt;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ug;->zzFw()V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ug;->zzFw()V

    return-void
.end method
