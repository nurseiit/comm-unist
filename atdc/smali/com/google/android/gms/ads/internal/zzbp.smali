.class final Lcom/google/android/gms/ads/internal/zzbp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/zzeu;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzvf:Lcom/google/android/gms/ads/internal/zzbm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzbm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbp;->zzvf:Lcom/google/android/gms/ads/internal/zzbm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeu;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbp;->zzvf:Lcom/google/android/gms/ads/internal/zzbm;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzbm;->zzc(Lcom/google/android/gms/ads/internal/zzbm;)Lcom/google/android/gms/internal/zzaje;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaje;->zzaP:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzbp;->zzvf:Lcom/google/android/gms/ads/internal/zzbm;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzbm;->zzd(Lcom/google/android/gms/ads/internal/zzbm;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzeu;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    return-object v0
.end method
