.class public final Lcom/google/android/gms/internal/wh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/wf;


# instance fields
.field private final zzcgV:Lcom/google/android/gms/internal/xe;

.field private final zzchB:Lcom/google/android/gms/internal/wd;

.field private final zzchC:Lcom/google/android/gms/internal/xl;

.field private final zzchD:Lcom/google/android/gms/internal/xl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vq;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/wd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vq;->zzIm()Lcom/google/android/gms/internal/xe;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/wd;-><init>(Lcom/google/android/gms/internal/xe;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/wh;->zzchB:Lcom/google/android/gms/internal/wd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vq;->zzIm()Lcom/google/android/gms/internal/xe;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/wh;->zzcgV:Lcom/google/android/gms/internal/xe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vq;->zzIe()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vq;->zzIg()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vq;->zzIm()Lcom/google/android/gms/internal/xe;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vq;->zzIf()Lcom/google/android/gms/internal/xm;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/xe;->zzf(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xl;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vq;->zzIm()Lcom/google/android/gms/internal/xe;

    invoke-static {}, Lcom/google/android/gms/internal/xl;->zzJi()Lcom/google/android/gms/internal/xl;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/wh;->zzchC:Lcom/google/android/gms/internal/xl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vq;->zzIh()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vq;->zzIj()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vq;->zzIm()Lcom/google/android/gms/internal/xe;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vq;->zzIi()Lcom/google/android/gms/internal/xm;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/xe;->zzf(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xl;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vq;->zzIm()Lcom/google/android/gms/internal/xe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xe;->zzJc()Lcom/google/android/gms/internal/xl;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/wh;->zzchD:Lcom/google/android/gms/internal/xl;

    return-void
.end method


# virtual methods
.method public final zzID()Lcom/google/android/gms/internal/wf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wh;->zzchB:Lcom/google/android/gms/internal/wd;

    return-object v0
.end method

.method public final zzIE()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzIF()Lcom/google/android/gms/internal/xl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wh;->zzchC:Lcom/google/android/gms/internal/xl;

    return-object v0
.end method

.method public final zzIG()Lcom/google/android/gms/internal/xl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wh;->zzchD:Lcom/google/android/gms/internal/xl;

    return-object v0
.end method

.method public final zzIm()Lcom/google/android/gms/internal/xe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wh;->zzcgV:Lcom/google/android/gms/internal/xe;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/wg;Lcom/google/android/gms/internal/wc;)Lcom/google/android/gms/internal/xf;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/xl;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/xl;-><init>(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/wh;->zza(Lcom/google/android/gms/internal/xl;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object p3

    :cond_0
    move-object v3, p3

    iget-object v0, p0, Lcom/google/android/gms/internal/wh;->zzchB:Lcom/google/android/gms/internal/wd;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/wd;->zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/wg;Lcom/google/android/gms/internal/wc;)Lcom/google/android/gms/internal/xf;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wc;)Lcom/google/android/gms/internal/xf;
    .locals 3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->zzIQ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/wh;->zzcgV:Lcom/google/android/gms/internal/xe;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/xf;->zza(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xe;)Lcom/google/android/gms/internal/xf;

    move-result-object p2

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/xf;->zzk(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/xf;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/xl;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/wh;->zza(Lcom/google/android/gms/internal/xl;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/xf;->zzg(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object p2, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/wh;->zzchB:Lcom/google/android/gms/internal/wd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/wd;->zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wc;)Lcom/google/android/gms/internal/xf;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;
    .locals 0

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/xl;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/wh;->zzcgV:Lcom/google/android/gms/internal/xe;

    iget-object v1, p0, Lcom/google/android/gms/internal/wh;->zzchC:Lcom/google/android/gms/internal/xl;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/xe;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/wh;->zzcgV:Lcom/google/android/gms/internal/xe;

    iget-object v1, p0, Lcom/google/android/gms/internal/wh;->zzchD:Lcom/google/android/gms/internal/xl;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/xe;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
