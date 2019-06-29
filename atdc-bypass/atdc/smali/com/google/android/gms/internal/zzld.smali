.class final Lcom/google/android/gms/internal/zzld;
.super Lcom/google/android/gms/internal/zzjk;


# instance fields
.field private synthetic zzBk:Lcom/google/android/gms/internal/zzlc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzld;->zzBk:Lcom/google/android/gms/internal/zzlc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjk;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzld;->zzBk:Lcom/google/android/gms/internal/zzlc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlc;->zza(Lcom/google/android/gms/internal/zzlc;)Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzld;->zzBk:Lcom/google/android/gms/internal/zzlc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzlc;->zzae()Lcom/google/android/gms/internal/zzks;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/zzks;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzjk;->onAdFailedToLoad(I)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzld;->zzBk:Lcom/google/android/gms/internal/zzlc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlc;->zza(Lcom/google/android/gms/internal/zzlc;)Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzld;->zzBk:Lcom/google/android/gms/internal/zzlc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzlc;->zzae()Lcom/google/android/gms/internal/zzks;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/zzks;)V

    invoke-super {p0}, Lcom/google/android/gms/internal/zzjk;->onAdLoaded()V

    return-void
.end method
