.class public final Lcom/google/android/gms/internal/zzqe;
.super Lcom/google/android/gms/internal/zzpr;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final zzIM:Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqe;->zzIM:Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzpf;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqe;->zzIM:Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;

    new-instance v1, Lcom/google/android/gms/internal/zzpi;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzpi;-><init>(Lcom/google/android/gms/internal/zzpf;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;->onContentAdLoaded(Lcom/google/android/gms/ads/formats/NativeContentAd;)V

    return-void
.end method
