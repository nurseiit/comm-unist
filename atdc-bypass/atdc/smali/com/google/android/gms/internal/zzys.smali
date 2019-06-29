.class final Lcom/google/android/gms/internal/zzys;
.super Lcom/google/android/gms/internal/zzym;


# instance fields
.field private synthetic zzRK:Lcom/google/android/gms/internal/zzrd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyn;Lcom/google/android/gms/internal/zzrd;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzys;->zzRK:Lcom/google/android/gms/internal/zzrd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzym;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/ads/internal/js/zzai;)V
    .locals 2

    const-string v0, "/nativeAdCustomClick"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzys;->zzRK:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    return-void
.end method
