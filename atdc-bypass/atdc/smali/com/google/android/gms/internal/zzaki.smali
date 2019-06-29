.class final Lcom/google/android/gms/internal/zzaki;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzw;


# instance fields
.field private zzabK:Lcom/google/android/gms/internal/zzaka;

.field private zzabq:Lcom/google/android/gms/ads/internal/overlay/zzw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaka;Lcom/google/android/gms/ads/internal/overlay/zzw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaki;->zzabK:Lcom/google/android/gms/internal/zzaka;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaki;->zzabq:Lcom/google/android/gms/ads/internal/overlay/zzw;

    return-void
.end method


# virtual methods
.method public final onPause()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 0

    return-void
.end method

.method public final zzaA()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaki;->zzabq:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzaA()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaki;->zzabK:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziq()V

    return-void
.end method

.method public final zzaB()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaki;->zzabq:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzaB()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaki;->zzabK:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zzfP()V

    return-void
.end method
