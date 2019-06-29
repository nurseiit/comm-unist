.class final Lcom/google/android/gms/internal/zzrf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzIl:Ljava/util/Map;

.field final synthetic zzJp:Lcom/google/android/gms/internal/zzaka;

.field private synthetic zzJq:Lcom/google/android/gms/internal/zzre;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzre;Ljava/util/Map;Lcom/google/android/gms/internal/zzaka;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrf;->zzJq:Lcom/google/android/gms/internal/zzre;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrf;->zzIl:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzrf;->zzJp:Lcom/google/android/gms/internal/zzaka;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "Received Http request."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrf;->zzIl:Ljava/util/Map;

    const-string v1, "http_request"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrf;->zzJq:Lcom/google/android/gms/internal/zzre;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzre;->zzR(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Response should not be null."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzrg;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzrg;-><init>(Lcom/google/android/gms/internal/zzrf;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
