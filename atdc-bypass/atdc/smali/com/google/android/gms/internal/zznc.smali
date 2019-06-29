.class public final Lcom/google/android/gms/internal/zznc;
.super Lcom/google/android/gms/internal/zznf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final zzHe:Lcom/google/android/gms/ads/internal/zzag;

.field private final zzHf:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzHg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzag;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/zznf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zznc;->zzHe:Lcom/google/android/gms/ads/internal/zzag;

    iput-object p2, p0, Lcom/google/android/gms/internal/zznc;->zzHf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zznc;->zzHg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznc;->zzHg:Ljava/lang/String;

    return-object v0
.end method

.method public final recordClick()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznc;->zzHe:Lcom/google/android/gms/ads/internal/zzag;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzag;->zzaL()V

    return-void
.end method

.method public final recordImpression()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznc;->zzHe:Lcom/google/android/gms/ads/internal/zzag;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzag;->zzaM()V

    return-void
.end method

.method public final zzdX()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznc;->zzHf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznc;->zzHe:Lcom/google/android/gms/ads/internal/zzag;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/zzag;->zzc(Landroid/view/View;)V

    return-void
.end method
