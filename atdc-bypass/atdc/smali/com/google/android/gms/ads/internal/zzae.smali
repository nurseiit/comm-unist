.class final Lcom/google/android/gms/ads/internal/zzae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zztA:Lcom/google/android/gms/ads/internal/js/zzl;

.field final synthetic zztB:Lcom/google/android/gms/internal/zzrd;

.field final synthetic zztC:Ljava/lang/String;

.field final synthetic zztD:Ljava/lang/String;

.field final synthetic zztE:Z

.field final synthetic zztF:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzac;Lcom/google/android/gms/ads/internal/js/zzl;Lcom/google/android/gms/internal/zzrd;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzae;->zztA:Lcom/google/android/gms/ads/internal/js/zzl;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzae;->zztB:Lcom/google/android/gms/internal/zzrd;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzae;->zztC:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzae;->zztD:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/ads/internal/zzae;->zztE:Z

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/zzae;->zztF:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzae;->zztA:Lcom/google/android/gms/ads/internal/js/zzl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/js/zzl;->zzb(Lcom/google/android/gms/internal/zzcu;)Lcom/google/android/gms/ads/internal/js/zzy;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/zzaf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/zzaf;-><init>(Lcom/google/android/gms/ads/internal/zzae;)V

    new-instance v2, Lcom/google/android/gms/internal/zzajr;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzajr;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/js/zzy;->zza(Lcom/google/android/gms/internal/zzajs;Lcom/google/android/gms/internal/zzajq;)V

    return-void
.end method
