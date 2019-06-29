.class public final Lcom/google/android/gms/internal/zzqd;
.super Lcom/google/android/gms/internal/zzpo;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final zzIL:Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqd;->zzIL:Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzpb;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqd;->zzIL:Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;

    new-instance v1, Lcom/google/android/gms/internal/zzpe;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzpe;-><init>(Lcom/google/android/gms/internal/zzpb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;->onAppInstallAdLoaded(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V

    return-void
.end method
