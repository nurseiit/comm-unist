.class final Lcom/google/android/gms/internal/zzawh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic zzavF:Lcom/google/android/gms/internal/zzawf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawh;->zzavF:Lcom/google/android/gms/internal/zzawf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/google/android/gms/internal/zzawh;->zzavF:Lcom/google/android/gms/internal/zzawf;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzawf;->zzb(Lcom/google/android/gms/internal/zzawf;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastSession;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastSession;->isMute()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/cast/framework/CastSession;->setMute(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzawh;->zzavF:Lcom/google/android/gms/internal/zzawf;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzawf;->zza(Lcom/google/android/gms/internal/zzawf;Z)V

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/framework/CastSession;->setMute(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzawh;->zzavF:Lcom/google/android/gms/internal/zzawf;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzawf;->zza(Lcom/google/android/gms/internal/zzawf;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/internal/zzawf;->zzon()Lcom/google/android/gms/internal/zzayo;

    move-result-object v2

    const-string v3, "Unable to call CastSession.setMute(boolean)."

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzayo;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
