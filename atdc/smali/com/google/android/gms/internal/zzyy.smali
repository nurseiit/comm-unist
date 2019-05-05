.class final Lcom/google/android/gms/internal/zzyy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzRZ:Lorg/json/JSONObject;

.field final synthetic zzSa:Lcom/google/android/gms/internal/zzajg;

.field final synthetic zzSb:Lcom/google/android/gms/internal/zzyx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyx;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzajg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyy;->zzSb:Lcom/google/android/gms/internal/zzyx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyy;->zzRZ:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzyy;->zzSa:Lcom/google/android/gms/internal/zzajg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzyy;->zzSb:Lcom/google/android/gms/internal/zzyx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzyx;->zzgz()Lcom/google/android/gms/internal/zzaka;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyy;->zzSb:Lcom/google/android/gms/internal/zzyx;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzyx;->zza(Lcom/google/android/gms/internal/zzyx;)Lcom/google/android/gms/ads/internal/zzbb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/zzbb;->zzd(Lcom/google/android/gms/internal/zzaka;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzyy;->zzSb:Lcom/google/android/gms/internal/zzyx;

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzyx;->zza(Lcom/google/android/gms/internal/zzyx;Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzyy;->zzSb:Lcom/google/android/gms/internal/zzyx;

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/zzyx;->zzb(Lcom/google/android/gms/internal/zzyx;Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/zzakb;->zza(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyy;->zzSb:Lcom/google/android/gms/internal/zzyx;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzyx;->zza(Lcom/google/android/gms/internal/zzyx;Lcom/google/android/gms/internal/zzaka;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzyz;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzyz;-><init>(Lcom/google/android/gms/internal/zzyy;Lcom/google/android/gms/internal/zzaka;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzakb;->zza(Lcom/google/android/gms/internal/zzakg;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzza;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzza;-><init>(Lcom/google/android/gms/internal/zzyy;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzakb;->zza(Lcom/google/android/gms/internal/zzakf;)V

    sget-object v1, Lcom/google/android/gms/internal/zzmo;->zzFs:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaka;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred while getting video view"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyy;->zzSa:Lcom/google/android/gms/internal/zzajg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzajg;->zzg(Ljava/lang/Object;)V

    return-void
.end method
