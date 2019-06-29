.class public final Lcom/google/android/gms/internal/vg;
.super Ljava/lang/Object;


# instance fields
.field private final zzcgD:Lcom/google/android/gms/internal/xf;

.field private final zzcgE:Z

.field private final zzcgF:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/xf;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vg;->zzcgD:Lcom/google/android/gms/internal/xf;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/vg;->zzcgE:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/vg;->zzcgF:Z

    return-void
.end method


# virtual methods
.method public final zzFn()Lcom/google/android/gms/internal/xm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vg;->zzcgD:Lcom/google/android/gms/internal/xf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    return-object v0
.end method

.method public final zzHU()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vg;->zzcgE:Z

    return v0
.end method

.method public final zzHV()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vg;->zzcgF:Z

    return v0
.end method

.method public final zzHW()Lcom/google/android/gms/internal/xf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vg;->zzcgD:Lcom/google/android/gms/internal/xf;

    return-object v0
.end method

.method public final zzL(Lcom/google/android/gms/internal/qr;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/vg;->zzcgE:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/vg;->zzcgF:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHc()Lcom/google/android/gms/internal/wp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vg;->zzf(Lcom/google/android/gms/internal/wp;)Z

    move-result p1

    return p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/wp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vg;->zzcgE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vg;->zzcgF:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vg;->zzcgD:Lcom/google/android/gms/internal/xf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/xm;->zzk(Lcom/google/android/gms/internal/wp;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
