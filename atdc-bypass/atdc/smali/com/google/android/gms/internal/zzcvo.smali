.class final Lcom/google/android/gms/internal/zzcvo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcwl;


# instance fields
.field private synthetic zzbIB:Lcom/google/android/gms/internal/zzcvn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcvn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcvo;->zzbIB:Lcom/google/android/gms/internal/zzcvn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzcuw;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcvo;->zzbIB:Lcom/google/android/gms/internal/zzcvn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcuw;->zzBm()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzcvn;->zza(Lcom/google/android/gms/internal/zzcvn;J)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzcuw;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcvo;->zzbIB:Lcom/google/android/gms/internal/zzcvn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcuw;->zzBm()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzcvn;->zza(Lcom/google/android/gms/internal/zzcvn;J)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcuw;->zzBm()J

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v2, 0x39

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Permanent failure dispatching hitId: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzcuw;)V
    .locals 6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcuw;->zzBn()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcvo;->zzbIB:Lcom/google/android/gms/internal/zzcvn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcuw;->zzBm()J

    move-result-wide v1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcvo;->zzbIB:Lcom/google/android/gms/internal/zzcvn;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcvn;->zza(Lcom/google/android/gms/internal/zzcvn;)Lcom/google/android/gms/common/util/zze;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcvn;->zza(Lcom/google/android/gms/internal/zzcvn;JJ)V

    return-void

    :cond_0
    const-wide/32 v2, 0xdbba00

    add-long v4, v0, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcvo;->zzbIB:Lcom/google/android/gms/internal/zzcvn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvn;->zza(Lcom/google/android/gms/internal/zzcvn;)Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v2, v4, v0

    if-gez v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcvo;->zzbIB:Lcom/google/android/gms/internal/zzcvn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcuw;->zzBm()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzcvn;->zza(Lcom/google/android/gms/internal/zzcvn;J)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcuw;->zzBm()J

    move-result-wide v0

    const/16 p1, 0x2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Giving up on failed hitId: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
