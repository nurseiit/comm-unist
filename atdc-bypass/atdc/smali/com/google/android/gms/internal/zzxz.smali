.class public Lcom/google/android/gms/internal/zzxz;
.super Lcom/google/android/gms/internal/zzxr;

# interfaces
.implements Lcom/google/android/gms/internal/zzakf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzafg;Lcom/google/android/gms/internal/zzaka;Lcom/google/android/gms/internal/zzxy;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzxr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzafg;Lcom/google/android/gms/internal/zzaka;Lcom/google/android/gms/internal/zzxy;)V

    return-void
.end method


# virtual methods
.method protected final zzgo()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxz;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget v0, v0, Lcom/google/android/gms/internal/zzaai;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxz;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzakb;->zza(Lcom/google/android/gms/internal/zzakf;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxz;->zzgq()V

    const-string v0, "Loading HTML in WebView."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxz;->zzJH:Lcom/google/android/gms/internal/zzaka;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxz;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaai;->zzPi:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxz;->zzQR:Lcom/google/android/gms/internal/zzaai;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzaai;->body:Ljava/lang/String;

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/zzaka;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected zzgq()V
    .locals 0

    return-void
.end method
