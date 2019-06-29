.class final Lcom/google/android/gms/internal/zzcxb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbJG:Lcom/google/android/gms/internal/zzcvd;

.field private synthetic zzbJH:Lcom/google/android/gms/internal/zzcxa;

.field private synthetic zzbJw:Ljava/lang/String;

.field private synthetic zzbJx:Ljava/lang/String;

.field private synthetic zzbJy:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcxa;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcvd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcxb;->zzbJH:Lcom/google/android/gms/internal/zzcxa;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcxb;->zzbJw:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcxb;->zzbJx:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcxb;->zzbJy:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcxb;->zzbJG:Lcom/google/android/gms/internal/zzcvd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcxb;->zzbJH:Lcom/google/android/gms/internal/zzcxa;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcxa;->zza(Lcom/google/android/gms/internal/zzcxa;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcxb;->zzbJw:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcxb;->zzbJH:Lcom/google/android/gms/internal/zzcxa;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcxa;->zzb(Lcom/google/android/gms/internal/zzcxa;)Lcom/google/android/gms/internal/zzcun;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcxb;->zzbJw:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcxb;->zzbJx:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcxb;->zzbJy:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcun;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcuf;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcxb;->zzbJH:Lcom/google/android/gms/internal/zzcxa;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcxa;->zza(Lcom/google/android/gms/internal/zzcxa;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcxb;->zzbJw:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const-string v2, "Fail to load container: "

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcxb;->zzbJH:Lcom/google/android/gms/internal/zzcxa;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcxa;->zzc(Lcom/google/android/gms/internal/zzcxa;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/zzcup;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    const/4 v0, 0x0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcxb;->zzbJG:Lcom/google/android/gms/internal/zzcvd;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcxb;->zzbJG:Lcom/google/android/gms/internal/zzcvd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcxb;->zzbJw:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzcvd;->zza(ZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    return-void

    :catch_1
    move-exception v0

    const-string v1, "Error relaying callback: "

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcxb;->zzbJH:Lcom/google/android/gms/internal/zzcxa;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcxa;->zzc(Lcom/google/android/gms/internal/zzcxa;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzcup;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    return-void
.end method
