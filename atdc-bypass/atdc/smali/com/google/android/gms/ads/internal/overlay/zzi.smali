.class final Lcom/google/android/gms/ads/internal/overlay/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzOA:Lcom/google/android/gms/ads/internal/overlay/zzd;

.field private synthetic zzOD:I

.field private synthetic zzOE:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzd;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzOA:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iput p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzOD:I

    iput p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzOE:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzOA:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)Lcom/google/android/gms/ads/internal/overlay/zzx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzOA:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)Lcom/google/android/gms/ads/internal/overlay/zzx;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzOD:I

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzOE:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzd(II)V

    :cond_0
    return-void
.end method
