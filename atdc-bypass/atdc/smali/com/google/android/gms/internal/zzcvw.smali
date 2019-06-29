.class final Lcom/google/android/gms/internal/zzcvw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aa;


# instance fields
.field private synthetic zzbIQ:Lcom/google/android/gms/internal/zzcvu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzcvu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcvw;->zzbIQ:Lcom/google/android/gms/internal/zzcvu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzcvu;Lcom/google/android/gms/internal/zzcvv;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcvw;-><init>(Lcom/google/android/gms/internal/zzcvu;)V

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcvw;->zzbIQ:Lcom/google/android/gms/internal/zzcvu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvu;->zzb(Lcom/google/android/gms/internal/zzcvu;)Lcom/google/android/gms/tagmanager/zzce;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/tagmanager/zzce;->zze(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Error calling customEvaluator proxy:"

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzcvk;->e(Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
