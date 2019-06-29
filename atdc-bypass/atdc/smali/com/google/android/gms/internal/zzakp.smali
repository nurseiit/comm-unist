.class final Lcom/google/android/gms/internal/zzakp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzrd;


# instance fields
.field private synthetic zzacr:Lcom/google/android/gms/internal/zzako;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzako;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzakp;->zzacr:Lcom/google/android/gms/internal/zzako;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzaka;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaka;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    const-string p1, "height"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzakp;->zzacr:Lcom/google/android/gms/internal/zzako;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzako;->zza(Lcom/google/android/gms/internal/zzako;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzakp;->zzacr:Lcom/google/android/gms/internal/zzako;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzako;->zzb(Lcom/google/android/gms/internal/zzako;)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzakp;->zzacr:Lcom/google/android/gms/internal/zzako;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzako;->zza(Lcom/google/android/gms/internal/zzako;I)I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzakp;->zzacr:Lcom/google/android/gms/internal/zzako;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzako;->requestLayout()V

    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "Exception occurred while getting webview content height"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
