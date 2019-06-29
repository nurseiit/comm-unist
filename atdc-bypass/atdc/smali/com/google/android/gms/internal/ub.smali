.class public final Lcom/google/android/gms/internal/ub;
.super Lcom/google/android/gms/internal/tx;


# instance fields
.field private final zzcfV:Lcom/google/android/gms/internal/xm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/tz;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ty;->zzcfI:Lcom/google/android/gms/internal/ty;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/tx;-><init>(Lcom/google/android/gms/internal/ty;Lcom/google/android/gms/internal/tz;Lcom/google/android/gms/internal/qr;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ub;->zzcfV:Lcom/google/android/gms/internal/xm;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Overwrite { path=%s, source=%s, snapshot=%s }"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/tx;->zzbZf:Lcom/google/android/gms/internal/qr;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/tx;->zzcfH:Lcom/google/android/gms/internal/tz;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/ub;->zzcfV:Lcom/google/android/gms/internal/xm;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzHJ()Lcom/google/android/gms/internal/xm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ub;->zzcfV:Lcom/google/android/gms/internal/xm;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/tx;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ub;->zzbZf:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ub;

    iget-object v1, p0, Lcom/google/android/gms/internal/ub;->zzcfH:Lcom/google/android/gms/internal/tz;

    invoke-static {}, Lcom/google/android/gms/internal/qr;->zzGZ()Lcom/google/android/gms/internal/qr;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ub;->zzcfV:Lcom/google/android/gms/internal/xm;

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/xm;->zzm(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/xm;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ub;-><init>(Lcom/google/android/gms/internal/tz;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V

    return-object v0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ub;

    iget-object v0, p0, Lcom/google/android/gms/internal/ub;->zzcfH:Lcom/google/android/gms/internal/tz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ub;->zzbZf:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/qr;->zzHd()Lcom/google/android/gms/internal/qr;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ub;->zzcfV:Lcom/google/android/gms/internal/xm;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ub;-><init>(Lcom/google/android/gms/internal/tz;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V

    return-object p1
.end method
