.class public final Lcom/google/android/gms/internal/vw;
.super Ljava/lang/Object;


# instance fields
.field private final zzchr:Lcom/google/android/gms/internal/vg;

.field private final zzchs:Lcom/google/android/gms/internal/vg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vg;Lcom/google/android/gms/internal/vg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vw;->zzchr:Lcom/google/android/gms/internal/vg;

    iput-object p2, p0, Lcom/google/android/gms/internal/vw;->zzchs:Lcom/google/android/gms/internal/vg;

    return-void
.end method


# virtual methods
.method public final zzIA()Lcom/google/android/gms/internal/vg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->zzchs:Lcom/google/android/gms/internal/vg;

    return-object v0
.end method

.method public final zzIB()Lcom/google/android/gms/internal/xm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->zzchs:Lcom/google/android/gms/internal/vg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vg;->zzHU()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->zzchs:Lcom/google/android/gms/internal/vg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vg;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzIy()Lcom/google/android/gms/internal/vg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->zzchr:Lcom/google/android/gms/internal/vg;

    return-object v0
.end method

.method public final zzIz()Lcom/google/android/gms/internal/xm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->zzchr:Lcom/google/android/gms/internal/vg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vg;->zzHU()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->zzchr:Lcom/google/android/gms/internal/vg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vg;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/xf;ZZ)Lcom/google/android/gms/internal/vw;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vw;

    new-instance v1, Lcom/google/android/gms/internal/vg;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/vg;-><init>(Lcom/google/android/gms/internal/xf;ZZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/vw;->zzchs:Lcom/google/android/gms/internal/vg;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/vw;-><init>(Lcom/google/android/gms/internal/vg;Lcom/google/android/gms/internal/vg;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/xf;ZZ)Lcom/google/android/gms/internal/vw;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/vw;

    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->zzchr:Lcom/google/android/gms/internal/vg;

    new-instance v2, Lcom/google/android/gms/internal/vg;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/gms/internal/vg;-><init>(Lcom/google/android/gms/internal/xf;ZZ)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/vw;-><init>(Lcom/google/android/gms/internal/vg;Lcom/google/android/gms/internal/vg;)V

    return-object v0
.end method
