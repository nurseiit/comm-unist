.class final Lcom/google/android/gms/internal/zzrg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzJr:Lorg/json/JSONObject;

.field private synthetic zzJs:Lcom/google/android/gms/internal/zzrf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrf;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrg;->zzJs:Lcom/google/android/gms/internal/zzrf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrg;->zzJr:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrg;->zzJs:Lcom/google/android/gms/internal/zzrf;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrf;->zzJp:Lcom/google/android/gms/internal/zzaka;

    const-string v1, "fetchHttpRequestCompleted"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrg;->zzJr:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzaka;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v0, "Dispatched http response."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    return-void
.end method
