.class final Lcom/google/android/gms/internal/zzcil;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbua:Lcom/google/android/gms/internal/zzcid;

.field private synthetic zzbud:Z

.field private synthetic zzbue:Z

.field private synthetic zzbuf:Lcom/google/android/gms/internal/zzcek;

.field private synthetic zzbug:Lcom/google/android/gms/internal/zzcek;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcid;ZZLcom/google/android/gms/internal/zzcek;Lcom/google/android/gms/internal/zzcek;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcil;->zzbua:Lcom/google/android/gms/internal/zzcid;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcil;->zzbud:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzcil;->zzbue:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcil;->zzbuf:Lcom/google/android/gms/internal/zzcek;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcil;->zzbug:Lcom/google/android/gms/internal/zzcek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcil;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcid;->zzd(Lcom/google/android/gms/internal/zzcid;)Lcom/google/android/gms/internal/zzcfd;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcil;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcid;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send conditional user property to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcfn;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcil;->zzbud:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcil;->zzbua:Lcom/google/android/gms/internal/zzcid;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcil;->zzbue:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcil;->zzbuf:Lcom/google/android/gms/internal/zzcek;

    :goto_0
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzcid;->zza(Lcom/google/android/gms/internal/zzcfd;Lcom/google/android/gms/common/internal/safeparcel/zza;)V

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcil;->zzbug:Lcom/google/android/gms/internal/zzcek;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcek;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcil;->zzbuf:Lcom/google/android/gms/internal/zzcek;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcil;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcid;->zzwu()Lcom/google/android/gms/internal/zzcfg;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcil;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcid;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcfl;->zzyE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcfg;->zzdV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzceh;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzcfd;->zza(Lcom/google/android/gms/internal/zzcek;Lcom/google/android/gms/internal/zzceh;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcil;->zzbuf:Lcom/google/android/gms/internal/zzcek;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcfd;->zzb(Lcom/google/android/gms/internal/zzcek;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcil;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcid;->zzwF()Lcom/google/android/gms/internal/zzcfl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcfl;->zzyx()Lcom/google/android/gms/internal/zzcfn;

    move-result-object v1

    const-string v2, "Failed to send conditional user property to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcfn;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcil;->zzbua:Lcom/google/android/gms/internal/zzcid;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcid;->zze(Lcom/google/android/gms/internal/zzcid;)V

    return-void
.end method
