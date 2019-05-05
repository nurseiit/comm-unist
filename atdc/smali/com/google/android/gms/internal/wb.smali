.class final Lcom/google/android/gms/internal/wb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/wg;


# instance fields
.field private final zzchm:Lcom/google/android/gms/internal/vw;

.field private final zzchw:Lcom/google/android/gms/internal/ts;

.field private final zzchx:Lcom/google/android/gms/internal/xm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ts;Lcom/google/android/gms/internal/vw;Lcom/google/android/gms/internal/xm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/wb;->zzchw:Lcom/google/android/gms/internal/ts;

    iput-object p2, p0, Lcom/google/android/gms/internal/wb;->zzchm:Lcom/google/android/gms/internal/vw;

    iput-object p3, p0, Lcom/google/android/gms/internal/wb;->zzchx:Lcom/google/android/gms/internal/xm;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/xe;Lcom/google/android/gms/internal/xl;Z)Lcom/google/android/gms/internal/xl;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/wb;->zzchx:Lcom/google/android/gms/internal/xm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/wb;->zzchx:Lcom/google/android/gms/internal/xm;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wb;->zzchm:Lcom/google/android/gms/internal/vw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vw;->zzIB()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/wb;->zzchw:Lcom/google/android/gms/internal/ts;

    invoke-virtual {v1, v0, p2, p3, p1}, Lcom/google/android/gms/internal/ts;->zza(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xl;ZLcom/google/android/gms/internal/xe;)Lcom/google/android/gms/internal/xl;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/xm;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/wb;->zzchm:Lcom/google/android/gms/internal/vw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vw;->zzIy()Lcom/google/android/gms/internal/vg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vg;->zzf(Lcom/google/android/gms/internal/wp;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vg;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/xm;->zzm(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/xm;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wb;->zzchx:Lcom/google/android/gms/internal/xm;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/vg;

    iget-object v1, p0, Lcom/google/android/gms/internal/wb;->zzchx:Lcom/google/android/gms/internal/xm;

    invoke-static {}, Lcom/google/android/gms/internal/xg;->zzJh()Lcom/google/android/gms/internal/xg;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xf;->zza(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xe;)Lcom/google/android/gms/internal/xf;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/vg;-><init>(Lcom/google/android/gms/internal/xf;ZZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/wb;->zzchm:Lcom/google/android/gms/internal/vw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vw;->zzIA()Lcom/google/android/gms/internal/vg;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/wb;->zzchw:Lcom/google/android/gms/internal/ts;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ts;->zza(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/vg;)Lcom/google/android/gms/internal/xm;

    move-result-object p1

    return-object p1
.end method
