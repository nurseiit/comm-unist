.class final Lcom/google/android/gms/internal/zzcum;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbHS:Lcom/google/android/gms/internal/zzcuf;

.field private final zzbHU:Lcom/google/android/gms/internal/cm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcuf;Lcom/google/android/gms/internal/cm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcum;->zzbHS:Lcom/google/android/gms/internal/zzcuf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcum;->zzbHU:Lcom/google/android/gms/internal/cm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcum;->zzbHU:Lcom/google/android/gms/internal/cm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cm;->zzCQ()Lcom/google/android/gms/internal/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cn;->zzCV()Lcom/google/android/gms/internal/db;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcum;->zzbHU:Lcom/google/android/gms/internal/cm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cm;->zzCR()Lcom/google/android/gms/internal/dj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcum;->zzbHS:Lcom/google/android/gms/internal/zzcuf;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcuf;->zzb(Lcom/google/android/gms/internal/zzcuf;)Lcom/google/android/gms/internal/zzcvu;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzcum;->zzbHS:Lcom/google/android/gms/internal/zzcuf;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcum;->zzbHS:Lcom/google/android/gms/internal/zzcuf;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzcuf;->zzm(Lcom/google/android/gms/internal/zzcuf;)Lcom/google/android/gms/internal/zzcvz;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/internal/zzcvz;->zza(Lcom/google/android/gms/internal/db;Lcom/google/android/gms/internal/dj;)Lcom/google/android/gms/internal/zzcvu;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/zzcuf;->zza(Lcom/google/android/gms/internal/zzcuf;Lcom/google/android/gms/internal/zzcvu;)Lcom/google/android/gms/internal/zzcvu;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcum;->zzbHS:Lcom/google/android/gms/internal/zzcuf;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcuf;->zza(Lcom/google/android/gms/internal/zzcuf;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcum;->zzbHS:Lcom/google/android/gms/internal/zzcuf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcuf;->zzd(Lcom/google/android/gms/internal/zzcuf;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Container "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " loaded during runtime initialization."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcum;->zzbHS:Lcom/google/android/gms/internal/zzcuf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcuf;->zzi(Lcom/google/android/gms/internal/zzcuf;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcum;->zzbHS:Lcom/google/android/gms/internal/zzcuf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcuf;->zzi(Lcom/google/android/gms/internal/zzcuf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzcut;

    const-string v4, "Evaluating tags for pending event "

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcut;->zzCk()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_2
    invoke-static {v4}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcum;->zzbHS:Lcom/google/android/gms/internal/zzcuf;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzcuf;->zzb(Lcom/google/android/gms/internal/zzcuf;)Lcom/google/android/gms/internal/zzcvu;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/zzcvu;->zzb(Lcom/google/android/gms/internal/zzcut;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcum;->zzbHS:Lcom/google/android/gms/internal/zzcuf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcuf;->zza(Lcom/google/android/gms/internal/zzcuf;Ljava/util/List;)Ljava/util/List;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcum;->zzbHS:Lcom/google/android/gms/internal/zzcuf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcuf;->zzb(Lcom/google/android/gms/internal/zzcuf;)Lcom/google/android/gms/internal/zzcvu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcvu;->dispatch()V

    const-string v0, "Runtime initialized successfully for container "

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcum;->zzbHS:Lcom/google/android/gms/internal/zzcuf;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcuf;->zzd(Lcom/google/android/gms/internal/zzcuf;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcum;->zzbHU:Lcom/google/android/gms/internal/cm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cm;->zzCQ()Lcom/google/android/gms/internal/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cn;->zzCW()J

    move-result-wide v0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcum;->zzbHS:Lcom/google/android/gms/internal/zzcuf;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzcuf;->zzg(Lcom/google/android/gms/internal/zzcuf;)Lcom/google/android/gms/internal/zzcuo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcuo;->zzAS()J

    move-result-wide v4

    add-long v6, v0, v4

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcum;->zzbHS:Lcom/google/android/gms/internal/zzcuf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcuf;->zzl(Lcom/google/android/gms/internal/zzcuf;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcum;->zzbHU:Lcom/google/android/gms/internal/cm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cm;->getSource()I

    move-result v0

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcum;->zzbHS:Lcom/google/android/gms/internal/zzcuf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcuf;->zzn(Lcom/google/android/gms/internal/zzcuf;)Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v2, v6, v0

    if-gez v2, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcum;->zzbHS:Lcom/google/android/gms/internal/zzcuf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcum;->zzbHS:Lcom/google/android/gms/internal/zzcuf;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcuf;->zzg(Lcom/google/android/gms/internal/zzcuf;)Lcom/google/android/gms/internal/zzcuo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcuo;->zzCi()J

    move-result-wide v1

    :goto_4
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzcuf;->zza(Lcom/google/android/gms/internal/zzcuf;J)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcum;->zzbHS:Lcom/google/android/gms/internal/zzcuf;

    const-wide/32 v1, 0xdbba0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcum;->zzbHS:Lcom/google/android/gms/internal/zzcuf;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcuf;->zzn(Lcom/google/android/gms/internal/zzcuf;)Lcom/google/android/gms/common/util/zze;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v3

    sub-long v8, v6, v3

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_4
.end method
