.class final Lcom/google/android/gms/internal/sr;
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
.field private synthetic zzceR:Lcom/google/android/gms/internal/so;

.field private synthetic zzceU:Lcom/google/android/gms/internal/qi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/qi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    iput-object p2, p0, Lcom/google/android/gms/internal/sr;->zzceU:Lcom/google/android/gms/internal/qi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/sr;->zzceU:Lcom/google/android/gms/internal/qi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qi;->zzGH()Lcom/google/android/gms/internal/vt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v2}, Lcom/google/android/gms/internal/so;->zzd(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uv;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v1

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/uv;->isEmpty()Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/uv;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/sn;

    if-eqz v7, :cond_3

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/sn;->zzr(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/xm;

    move-result-object v4

    :goto_1
    if-nez v5, :cond_2

    invoke-virtual {v7}, Lcom/google/android/gms/internal/sn;->zzHo()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :cond_2
    :goto_2
    move v5, v8

    :cond_3
    invoke-virtual {v6}, Lcom/google/android/gms/internal/qr;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, ""

    invoke-static {v7}, Lcom/google/android/gms/internal/wp;->zzgT(Ljava/lang/String;)Lcom/google/android/gms/internal/wp;

    move-result-object v7

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Lcom/google/android/gms/internal/qr;->zzHc()Lcom/google/android/gms/internal/wp;

    move-result-object v7

    :goto_3
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/uv;->zze(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/uv;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/qr;->zzHd()Lcom/google/android/gms/internal/qr;

    move-result-object v6

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v2}, Lcom/google/android/gms/internal/so;->zzd(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/uv;->zzJ(Lcom/google/android/gms/internal/qr;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/sn;

    if-nez v2, :cond_6

    new-instance v2, Lcom/google/android/gms/internal/sn;

    iget-object v6, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v6}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uh;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/sn;-><init>(Lcom/google/android/gms/internal/uh;)V

    iget-object v6, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    iget-object v7, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v7}, Lcom/google/android/gms/internal/so;->zzd(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uv;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Lcom/google/android/gms/internal/uv;->zzb(Lcom/google/android/gms/internal/qr;Ljava/lang/Object;)Lcom/google/android/gms/internal/uv;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/uv;)Lcom/google/android/gms/internal/uv;

    goto :goto_6

    :cond_6
    if-nez v5, :cond_8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/sn;->zzHo()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v5, 0x1

    :goto_5
    if-eqz v4, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/qr;->zzGZ()Lcom/google/android/gms/internal/qr;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/sn;->zzr(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/xm;

    move-result-object v4

    :goto_6
    iget-object v6, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v6}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uh;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/uh;->zzg(Lcom/google/android/gms/internal/vt;)V

    if-eqz v4, :cond_a

    new-instance v6, Lcom/google/android/gms/internal/vg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vt;->zzIm()Lcom/google/android/gms/internal/xe;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/google/android/gms/internal/xf;->zza(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xe;)Lcom/google/android/gms/internal/xf;

    move-result-object v4

    invoke-direct {v6, v4, v8, v3}, Lcom/google/android/gms/internal/vg;-><init>(Lcom/google/android/gms/internal/xf;ZZ)V

    goto/16 :goto_9

    :cond_a
    iget-object v4, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v4}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uh;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/uh;->zzf(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vg;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/vg;->zzHU()Z

    move-result v4

    if-eqz v4, :cond_b

    goto/16 :goto_9

    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v4

    iget-object v7, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v7}, Lcom/google/android/gms/internal/so;->zzd(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/uv;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/uv;->zzH(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/uv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/uv;->zzHS()Lcom/google/android/gms/internal/nh;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/nh;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/uv;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/uv;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/sn;

    if-eqz v9, :cond_c

    invoke-static {}, Lcom/google/android/gms/internal/qr;->zzGZ()Lcom/google/android/gms/internal/qr;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/sn;->zzr(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/xm;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/wp;

    invoke-interface {v4, v8, v9}, Lcom/google/android/gms/internal/xm;->zze(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object v4

    goto :goto_7

    :cond_d
    invoke-virtual {v6}, Lcom/google/android/gms/internal/vg;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/internal/xm;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/xl;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v8

    invoke-interface {v4, v8}, Lcom/google/android/gms/internal/xm;->zzk(Lcom/google/android/gms/internal/wp;)Z

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual {v7}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/android/gms/internal/xl;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v7

    invoke-interface {v4, v8, v7}, Lcom/google/android/gms/internal/xm;->zze(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;

    move-result-object v4

    goto :goto_8

    :cond_f
    new-instance v6, Lcom/google/android/gms/internal/vg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vt;->zzIm()Lcom/google/android/gms/internal/xe;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/google/android/gms/internal/xf;->zza(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xe;)Lcom/google/android/gms/internal/xf;

    move-result-object v4

    invoke-direct {v6, v4, v3, v3}, Lcom/google/android/gms/internal/vg;-><init>(Lcom/google/android/gms/internal/xf;ZZ)V

    :goto_9
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/sn;->zzc(Lcom/google/android/gms/internal/vt;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vt;->zzIq()Z

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v4}, Lcom/google/android/gms/internal/so;->zzf(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/th;

    move-result-object v4

    iget-object v7, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v7}, Lcom/google/android/gms/internal/so;->zze(Lcom/google/android/gms/internal/so;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v7}, Lcom/google/android/gms/internal/so;->zzg(Lcom/google/android/gms/internal/so;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-object v4, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v4}, Lcom/google/android/gms/internal/so;->zzc(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/tp;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/tp;->zzt(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/ts;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/internal/sr;->zzceU:Lcom/google/android/gms/internal/qi;

    invoke-virtual {v2, v4, v1, v6}, Lcom/google/android/gms/internal/sn;->zza(Lcom/google/android/gms/internal/qi;Lcom/google/android/gms/internal/ts;Lcom/google/android/gms/internal/vg;)Ljava/util/List;

    move-result-object v1

    if-nez v3, :cond_11

    if-nez v5, :cond_11

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/sn;->zzb(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vu;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/sr;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/vu;)V

    :cond_11
    return-object v1
.end method
