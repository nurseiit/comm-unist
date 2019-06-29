.class public abstract Lcom/google/android/gms/ads/internal/overlay/zzy;
.super Landroid/view/TextureView;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzau;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field protected final zzPp:Lcom/google/android/gms/ads/internal/overlay/zzak;

.field protected final zzPq:Lcom/google/android/gms/ads/internal/overlay/zzat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzak;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/overlay/zzak;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzPp:Lcom/google/android/gms/ads/internal/overlay/zzak;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzat;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzat;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzau;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzPq:Lcom/google/android/gms/ads/internal/overlay/zzat;

    return-void
.end method


# virtual methods
.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setVideoPath(Ljava/lang/String;)V
.end method

.method public abstract stop()V
.end method

.method public abstract zza(FF)V
.end method

.method public abstract zza(Lcom/google/android/gms/ads/internal/overlay/zzx;)V
.end method

.method public abstract zzfD()Ljava/lang/String;
.end method

.method public abstract zzfH()V
.end method
