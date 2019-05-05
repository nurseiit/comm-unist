.class public Lcom/google/android/gms/analytics/zza;
.super Lcom/google/android/gms/analytics/zzk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzk<",
        "Lcom/google/android/gms/analytics/zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzadj:Lcom/google/android/gms/internal/zzamj;

.field private zzadk:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzamj;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamj;->zzkt()Lcom/google/android/gms/analytics/zzl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzamj;->zzkq()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/analytics/zzk;-><init>(Lcom/google/android/gms/analytics/zzl;Lcom/google/android/gms/common/util/zze;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/zza;->zzadj:Lcom/google/android/gms/internal/zzamj;

    return-void
.end method


# virtual methods
.method public final enableAdvertisingIdCollection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/zza;->zzadk:Z

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/analytics/zzi;)V
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/zzalt;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/zzi;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzalt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzalt;->zzjX()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/zza;->zzadj:Lcom/google/android/gms/internal/zzamj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamj;->zzkJ()Lcom/google/android/gms/internal/zzanb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzanb;->zzli()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzalt;->setClientId(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/zza;->zzadk:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzalt;->zzjY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zza;->zzadj:Lcom/google/android/gms/internal/zzamj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamj;->zzkI()Lcom/google/android/gms/internal/zzalx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzalx;->zzkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzalt;->zzbk(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzalx;->zzjZ()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzalt;->zzG(Z)V

    :cond_1
    return-void
.end method

.method public final zzaY(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/analytics/zzb;->zzaZ(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzk;->zzaeb:Lcom/google/android/gms/analytics/zzi;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/zzi;->zzjr()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/zzo;

    invoke-interface {v2}, Lcom/google/android/gms/analytics/zzo;->zzjl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzk;->zzaeb:Lcom/google/android/gms/analytics/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzi;->zzjr()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/zzb;

    iget-object v2, p0, Lcom/google/android/gms/analytics/zza;->zzadj:Lcom/google/android/gms/internal/zzamj;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/analytics/zzb;-><init>(Lcom/google/android/gms/internal/zzamj;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzji()Lcom/google/android/gms/internal/zzamj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zza;->zzadj:Lcom/google/android/gms/internal/zzamj;

    return-object v0
.end method

.method public final zzjj()Lcom/google/android/gms/analytics/zzi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzk;->zzaeb:Lcom/google/android/gms/analytics/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzi;->zzjp()Lcom/google/android/gms/analytics/zzi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/zza;->zzadj:Lcom/google/android/gms/internal/zzamj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzamj;->zzkB()Lcom/google/android/gms/internal/zzamu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzamu;->zzkW()Lcom/google/android/gms/internal/zzalk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzi;->zza(Lcom/google/android/gms/analytics/zzj;)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/zza;->zzadj:Lcom/google/android/gms/internal/zzamj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzamj;->zzkC()Lcom/google/android/gms/internal/zzano;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzano;->zzlA()Lcom/google/android/gms/internal/zzalp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzi;->zza(Lcom/google/android/gms/analytics/zzj;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zza;->zzd(Lcom/google/android/gms/analytics/zzi;)V

    return-object v0
.end method
