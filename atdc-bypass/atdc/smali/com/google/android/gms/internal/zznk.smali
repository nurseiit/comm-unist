.class public final Lcom/google/android/gms/internal/zznk;
.super Lcom/google/android/gms/internal/zzni;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final zzBh:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzni;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zznk;->zzBh:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzne;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zznk;->zzBh:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    new-instance v1, Lcom/google/android/gms/internal/zznd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zznd;-><init>(Lcom/google/android/gms/internal/zzne;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;->onCustomRenderedAdLoaded(Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;)V

    return-void
.end method
