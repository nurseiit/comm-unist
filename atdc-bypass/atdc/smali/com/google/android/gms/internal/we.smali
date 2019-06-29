.class public final Lcom/google/android/gms/internal/we;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/wf;


# instance fields
.field private final limit:I

.field private final zzcgV:Lcom/google/android/gms/internal/xe;

.field private final zzchA:Z

.field private final zzchz:Lcom/google/android/gms/internal/wh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/wh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/wh;-><init>(Lcom/google/android/gms/internal/vq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/we;->zzchz:Lcom/google/android/gms/internal/wh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vq;->zzIm()Lcom/google/android/gms/internal/xe;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/we;->zzcgV:Lcom/google/android/gms/internal/xe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vq;->getLimit()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/we;->limit:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vq;->zzIo()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/we;->zzchA:Z

    return-void
.end method


# virtual methods
.method public final zzID()Lcom/google/android/gms/internal/wf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/we;->zzchz:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wh;->zzID()Lcom/google/android/gms/internal/wf;

    move-result-object v0

    return-object v0
.end method

.method public final zzIE()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzIm()Lcom/google/android/gms/internal/xe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/we;->zzcgV:Lcom/google/android/gms/internal/xe;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/wg;Lcom/google/android/gms/internal/wc;)Lcom/google/android/gms/internal/xf;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/we;->zzchz:Lcom/google/android/gms/internal/wh;

    new-instance v1, Lcom/google/android/gms/internal/xl;

    invoke-direct {v1, p2, p3}, Lcom/google/android/gms/internal/xl;-><init>(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wh;->zza(Lcom/google/android/gms/internal/xl;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object p3

    :cond_0
    move-object v3, p3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/xm;->zzm(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/xm;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/internal/xm;->getChildCount()I

    move-result p3

    iget v0, p0, Lcom/google/android/gms/internal/we;->limit:I

    if-ge p3, v0, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/we;->zzchz:Lcom/google/android/gms/internal/wh;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/wh;->zzID()Lcom/google/android/gms/internal/wf;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/wf;->zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/wg;Lcom/google/android/gms/internal/wc;)Lcom/google/android/gms/internal/xf;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p3, Lcom/google/android/gms/internal/xl;

    invoke-direct {p3, p2, v3}, Lcom/google/android/gms/internal/xl;-><init>(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    iget-boolean p4, p0, Lcom/google/android/gms/internal/we;->zzchA:Z

    if-eqz p4, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xf;->zzJf()Lcom/google/android/gms/internal/xl;

    move-result-object p4

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xf;->zzJg()Lcom/google/android/gms/internal/xl;

    move-result-object p4

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/we;->zzchz:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/wh;->zza(Lcom/google/android/gms/internal/xl;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/google/android/gms/internal/xm;->zzk(Lcom/google/android/gms/internal/wp;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/google/android/gms/internal/xm;->zzm(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/xm;

    move-result-object v1

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/we;->zzcgV:Lcom/google/android/gms/internal/xe;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/we;->zzchA:Z

    invoke-interface {p5, v2, p4, v4}, Lcom/google/android/gms/internal/wg;->zza(Lcom/google/android/gms/internal/xe;Lcom/google/android/gms/internal/xl;Z)Lcom/google/android/gms/internal/xl;

    move-result-object p4

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/wp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v2

    invoke-virtual {p4}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/xm;->zzk(Lcom/google/android/gms/internal/wp;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 p5, 0x1

    if-nez p4, :cond_6

    const/4 p3, 0x1

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/we;->zzcgV:Lcom/google/android/gms/internal/xe;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/we;->zzchA:Z

    invoke-virtual {v2, p4, p3, v4}, Lcom/google/android/gms/internal/xe;->zza(Lcom/google/android/gms/internal/xl;Lcom/google/android/gms/internal/xl;Z)I

    move-result p3

    :goto_2
    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    if-ltz p3, :cond_7

    const/4 p3, 0x1

    goto :goto_3

    :cond_7
    const/4 p3, 0x0

    :goto_3
    if-eqz p3, :cond_9

    if-eqz p6, :cond_8

    invoke-static {p2, v3, v1}, Lcom/google/android/gms/internal/vi;->zza(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/vi;

    move-result-object p3

    invoke-virtual {p6, p3}, Lcom/google/android/gms/internal/wc;->zza(Lcom/google/android/gms/internal/vi;)V

    :cond_8
    invoke-virtual {p1, p2, v3}, Lcom/google/android/gms/internal/xf;->zzg(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;

    move-result-object p1

    return-object p1

    :cond_9
    if-eqz p6, :cond_a

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/vi;->zzd(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/vi;

    move-result-object p3

    invoke-virtual {p6, p3}, Lcom/google/android/gms/internal/wc;->zza(Lcom/google/android/gms/internal/vi;)V

    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/xf;->zzg(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;

    move-result-object p1

    if-eqz p4, :cond_b

    iget-object p2, p0, Lcom/google/android/gms/internal/we;->zzchz:Lcom/google/android/gms/internal/wh;

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/wh;->zza(Lcom/google/android/gms/internal/xl;)Z

    move-result p2

    if-eqz p2, :cond_b

    goto :goto_4

    :cond_b
    const/4 p5, 0x0

    :goto_4
    if-eqz p5, :cond_d

    if-eqz p6, :cond_c

    invoke-virtual {p4}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object p2

    invoke-virtual {p4}, Lcom/google/android/gms/internal/xl;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/vi;->zzc(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/vi;

    move-result-object p2

    invoke-virtual {p6, p2}, Lcom/google/android/gms/internal/wc;->zza(Lcom/google/android/gms/internal/vi;)V

    :cond_c
    invoke-virtual {p4}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object p2

    invoke-virtual {p4}, Lcom/google/android/gms/internal/xl;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/xf;->zzg(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;

    move-result-object p1

    :cond_d
    return-object p1

    :cond_e
    invoke-interface {v3}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_10

    if-eqz v0, :cond_10

    iget-object p5, p0, Lcom/google/android/gms/internal/we;->zzcgV:Lcom/google/android/gms/internal/xe;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/we;->zzchA:Z

    invoke-virtual {p5, p4, p3, v0}, Lcom/google/android/gms/internal/xe;->zza(Lcom/google/android/gms/internal/xl;Lcom/google/android/gms/internal/xl;Z)I

    move-result p3

    if-ltz p3, :cond_10

    if-eqz p6, :cond_f

    invoke-virtual {p4}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object p3

    invoke-virtual {p4}, Lcom/google/android/gms/internal/xl;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object p5

    invoke-static {p3, p5}, Lcom/google/android/gms/internal/vi;->zzd(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/vi;

    move-result-object p3

    invoke-virtual {p6, p3}, Lcom/google/android/gms/internal/wc;->zza(Lcom/google/android/gms/internal/vi;)V

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/vi;->zzc(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/vi;

    move-result-object p3

    invoke-virtual {p6, p3}, Lcom/google/android/gms/internal/wc;->zza(Lcom/google/android/gms/internal/vi;)V

    :cond_f
    invoke-virtual {p1, p2, v3}, Lcom/google/android/gms/internal/xf;->zzg(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;

    move-result-object p1

    invoke-virtual {p4}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/xf;->zzg(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;

    move-result-object p1

    :cond_10
    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wc;)Lcom/google/android/gms/internal/xf;
    .locals 10

    invoke-virtual {p2}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->zzIQ()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/xf;->zzk(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/we;->zzchA:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/xf;->zzFz()Ljava/util/Iterator;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/internal/we;->zzchz:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wh;->zzIG()Lcom/google/android/gms/internal/xl;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/we;->zzchz:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/wh;->zzIF()Lcom/google/android/gms/internal/xl;

    move-result-object v3

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/xf;->iterator()Ljava/util/Iterator;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/internal/we;->zzchz:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wh;->zzIF()Lcom/google/android/gms/internal/xl;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/we;->zzchz:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/wh;->zzIG()Lcom/google/android/gms/internal/xl;

    move-result-object v3

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/xl;

    if-nez v6, :cond_2

    iget-object v9, p0, Lcom/google/android/gms/internal/we;->zzcgV:Lcom/google/android/gms/internal/xe;

    invoke-virtual {v9, v1, v8}, Lcom/google/android/gms/internal/xe;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    mul-int v9, v9, v4

    if-gtz v9, :cond_2

    const/4 v6, 0x1

    :cond_2
    if-eqz v6, :cond_3

    iget v9, p0, Lcom/google/android/gms/internal/we;->limit:I

    if-ge v7, v9, :cond_3

    iget-object v9, p0, Lcom/google/android/gms/internal/we;->zzcgV:Lcom/google/android/gms/internal/xe;

    invoke-virtual {v9, v8, v3}, Lcom/google/android/gms/internal/xe;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    mul-int v9, v9, v4

    if-gtz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v8}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v8

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/internal/xf;->zzg(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    goto :goto_1

    :cond_5
    :goto_3
    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/we;->zzcgV:Lcom/google/android/gms/internal/xe;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/xf;->zza(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xe;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    :cond_6
    iget-object p2, p0, Lcom/google/android/gms/internal/we;->zzchz:Lcom/google/android/gms/internal/wh;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/wh;->zzID()Lcom/google/android/gms/internal/wf;

    move-result-object p2

    invoke-interface {p2, p1, v0, p3}, Lcom/google/android/gms/internal/wf;->zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wc;)Lcom/google/android/gms/internal/xf;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;
    .locals 0

    return-object p1
.end method
