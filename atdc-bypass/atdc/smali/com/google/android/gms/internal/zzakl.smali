.class final Lcom/google/android/gms/internal/zzakl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/zzaka;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzAG:Lcom/google/android/gms/internal/zziv;

.field private synthetic zzKO:Lcom/google/android/gms/internal/zzaje;

.field private synthetic zzKQ:Lcom/google/android/gms/ads/internal/zzv;

.field private synthetic zzLf:Lcom/google/android/gms/internal/zzcu;

.field private synthetic zzabL:Z

.field private synthetic zzabM:Z

.field private synthetic zzabN:Lcom/google/android/gms/internal/zznb;

.field private synthetic zzabO:Lcom/google/android/gms/ads/internal/zzbl;

.field private synthetic zzabP:Lcom/google/android/gms/internal/zzig;

.field private synthetic zztF:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzakk;Landroid/content/Context;Lcom/google/android/gms/internal/zziv;ZZLcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzig;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzakl;->zztF:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzakl;->zzAG:Lcom/google/android/gms/internal/zziv;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzakl;->zzabL:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzakl;->zzabM:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/zzakl;->zzLf:Lcom/google/android/gms/internal/zzcu;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzakl;->zzKO:Lcom/google/android/gms/internal/zzaje;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzakl;->zzabN:Lcom/google/android/gms/internal/zznb;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzakl;->zzabO:Lcom/google/android/gms/ads/internal/zzbl;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzakl;->zzKQ:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p11, p0, Lcom/google/android/gms/internal/zzakl;->zzabP:Lcom/google/android/gms/internal/zzig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzakn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzakl;->zztF:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzakl;->zzAG:Lcom/google/android/gms/internal/zziv;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzakl;->zzabL:Z

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzakl;->zzabM:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/zzakl;->zzLf:Lcom/google/android/gms/internal/zzcu;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzakl;->zzKO:Lcom/google/android/gms/internal/zzaje;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzakl;->zzabN:Lcom/google/android/gms/internal/zznb;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzakl;->zzabO:Lcom/google/android/gms/ads/internal/zzbl;

    iget-object v9, p0, Lcom/google/android/gms/internal/zzakl;->zzKQ:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v10, p0, Lcom/google/android/gms/internal/zzakl;->zzabP:Lcom/google/android/gms/internal/zzig;

    invoke-static/range {v1 .. v10}, Lcom/google/android/gms/internal/zzako;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;ZZLcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzig;)Lcom/google/android/gms/internal/zzako;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzakn;-><init>(Lcom/google/android/gms/internal/zzaka;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahe;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzakl;->zzabM:Z

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzahe;->zzb(Lcom/google/android/gms/internal/zzaka;Z)Lcom/google/android/gms/internal/zzakb;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaka;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahe;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzahe;->zzm(Lcom/google/android/gms/internal/zzaka;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaka;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object v0
.end method
