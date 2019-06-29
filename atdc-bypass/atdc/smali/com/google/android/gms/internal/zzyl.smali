.class final Lcom/google/android/gms/internal/zzyl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzRu:Lcom/google/android/gms/ads/internal/js/zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyh;Lcom/google/android/gms/ads/internal/js/zza;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyl;->zzRu:Lcom/google/android/gms/ads/internal/js/zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyl;->zzRu:Lcom/google/android/gms/ads/internal/js/zza;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/js/zza;->destroy()V

    return-void
.end method
