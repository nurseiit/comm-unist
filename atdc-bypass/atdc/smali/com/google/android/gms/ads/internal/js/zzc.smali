.class final Lcom/google/android/gms/ads/internal/js/zzc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzKO:Lcom/google/android/gms/internal/zzaje;

.field private synthetic zzKP:Lcom/google/android/gms/internal/zzcu;

.field private synthetic zzKQ:Lcom/google/android/gms/ads/internal/zzv;

.field final synthetic zzKR:Lcom/google/android/gms/ads/internal/js/JavascriptEngineFactory$JSEngineSettableFuture;

.field private synthetic zzKS:Ljava/lang/String;

.field private synthetic zztF:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/JavascriptEngineFactory;Landroid/content/Context;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/ads/internal/js/JavascriptEngineFactory$JSEngineSettableFuture;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzc;->zztF:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/js/zzc;->zzKO:Lcom/google/android/gms/internal/zzaje;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/js/zzc;->zzKP:Lcom/google/android/gms/internal/zzcu;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/js/zzc;->zzKQ:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/js/zzc;->zzKR:Lcom/google/android/gms/ads/internal/js/JavascriptEngineFactory$JSEngineSettableFuture;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/js/zzc;->zzKS:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/internal/js/zze;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzc;->zztF:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/js/zzc;->zzKO:Lcom/google/android/gms/internal/zzaje;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/js/zzc;->zzKP:Lcom/google/android/gms/internal/zzcu;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/js/zzc;->zzKQ:Lcom/google/android/gms/ads/internal/zzv;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/js/zze;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/ads/internal/zzv;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzc;->zzKR:Lcom/google/android/gms/ads/internal/js/JavascriptEngineFactory$JSEngineSettableFuture;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/js/JavascriptEngineFactory$JSEngineSettableFuture;->mEngineReference:Lcom/google/android/gms/ads/internal/js/zza;

    new-instance v1, Lcom/google/android/gms/ads/internal/js/zzd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/js/zzd;-><init>(Lcom/google/android/gms/ads/internal/js/zzc;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/js/zza;->zza(Lcom/google/android/gms/ads/internal/js/zzb;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzc;->zzKS:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/js/zza;->zzad(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzakm; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzc;->zzKR:Lcom/google/android/gms/ads/internal/js/JavascriptEngineFactory$JSEngineSettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/js/JavascriptEngineFactory$JSEngineSettableFuture;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method
