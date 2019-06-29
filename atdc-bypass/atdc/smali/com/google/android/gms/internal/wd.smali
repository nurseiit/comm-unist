.class public final Lcom/google/android/gms/internal/wd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/wf;


# instance fields
.field private final zzcgV:Lcom/google/android/gms/internal/xe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/xe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/wd;->zzcgV:Lcom/google/android/gms/internal/xe;

    return-void
.end method


# virtual methods
.method public final zzID()Lcom/google/android/gms/internal/wf;
    .locals 0

    return-object p0
.end method

.method public final zzIE()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzIm()Lcom/google/android/gms/internal/xe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wd;->zzcgV:Lcom/google/android/gms/internal/xe;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/wg;Lcom/google/android/gms/internal/wc;)Lcom/google/android/gms/internal/xf;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object p5

    invoke-interface {p5, p2}, Lcom/google/android/gms/internal/xm;->zzm(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/xm;->zzN(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/xm;

    move-result-object v1

    invoke-interface {p3, p4}, Lcom/google/android/gms/internal/xm;->zzN(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/xm;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result p4

    invoke-interface {p3}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v1

    if-ne p4, v1, :cond_0

    return-object p1

    :cond_0
    if-eqz p6, :cond_3

    invoke-interface {p3}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p5, p2}, Lcom/google/android/gms/internal/xm;->zzk(Lcom/google/android/gms/internal/wp;)Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/vi;->zzd(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/vi;

    move-result-object p4

    :goto_0
    invoke-virtual {p6, p4}, Lcom/google/android/gms/internal/wc;->zza(Lcom/google/android/gms/internal/vi;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/vi;->zzc(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/vi;

    move-result-object p4

    goto :goto_0

    :cond_2
    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/vi;->zza(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/vi;

    move-result-object p4

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {p5}, Lcom/google/android/gms/internal/xm;->zzIQ()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_4

    return-object p1

    :cond_4
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/xf;->zzg(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wc;)Lcom/google/android/gms/internal/xf;
    .locals 4

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/xl;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/xm;->zzk(Lcom/google/android/gms/internal/wp;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/xl;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/vi;->zzd(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/vi;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/wc;->zza(Lcom/google/android/gms/internal/vi;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->zzIQ()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/xl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/xm;->zzk(Lcom/google/android/gms/internal/wp;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/xm;->zzm(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/xm;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/xl;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/xl;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/vi;->zza(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/vi;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/xl;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/vi;->zzc(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/vi;

    move-result-object v1

    :goto_2
    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/wc;->zza(Lcom/google/android/gms/internal/vi;)V

    goto :goto_1

    :cond_4
    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/xf;->zzk(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xf;

    move-result-object p1

    return-object p1
.end method
