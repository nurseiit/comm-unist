.class final Lcom/google/android/gms/internal/zzuf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzMC:Lcom/google/android/gms/internal/zzud;

.field private synthetic zzMD:Lcom/google/android/gms/internal/zzue;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzue;Lcom/google/android/gms/internal/zzud;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzuf;->zzMD:Lcom/google/android/gms/internal/zzue;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzuf;->zzMC:Lcom/google/android/gms/internal/zzud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuf;->zzMD:Lcom/google/android/gms/internal/zzue;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzue;->zza(Lcom/google/android/gms/internal/zzue;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzuf;->zzMD:Lcom/google/android/gms/internal/zzue;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzue;->zzb(Lcom/google/android/gms/internal/zzue;)I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzuf;->zzMD:Lcom/google/android/gms/internal/zzue;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzuf;->zzMD:Lcom/google/android/gms/internal/zzue;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzue;->zzc(Lcom/google/android/gms/internal/zzue;)Lcom/google/android/gms/internal/zzut;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzue;->zza(Lcom/google/android/gms/internal/zzue;Lcom/google/android/gms/internal/zzut;)Lcom/google/android/gms/internal/zzut;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuf;->zzMD:Lcom/google/android/gms/internal/zzue;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzue;->zzd(Lcom/google/android/gms/internal/zzue;)Lcom/google/android/gms/internal/zzut;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuf;->zzMD:Lcom/google/android/gms/internal/zzue;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzue;->zzo(I)V

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzuf;->zzMD:Lcom/google/android/gms/internal/zzue;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzue;->zze(Lcom/google/android/gms/internal/zzue;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuf;->zzMD:Lcom/google/android/gms/internal/zzue;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzue;->zza(Lcom/google/android/gms/internal/zzue;I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuf;->zzMD:Lcom/google/android/gms/internal/zzue;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzue;->zzf(Lcom/google/android/gms/internal/zzue;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ignoring adapter "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as delayed impression is not supported"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuf;->zzMD:Lcom/google/android/gms/internal/zzue;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzue;->zzo(I)V

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzuf;->zzMC:Lcom/google/android/gms/internal/zzud;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzuf;->zzMD:Lcom/google/android/gms/internal/zzue;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzud;->zza(Lcom/google/android/gms/internal/zzui;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuf;->zzMD:Lcom/google/android/gms/internal/zzue;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzuf;->zzMC:Lcom/google/android/gms/internal/zzud;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzue;->zza(Lcom/google/android/gms/internal/zzue;Lcom/google/android/gms/internal/zzud;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
