.class public final Lcom/google/android/gms/ads/internal/overlay/zzu;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V
    .locals 3

    iget v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPm:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPf:Lcom/google/android/gms/ads/internal/overlay/zzw;

    if-nez v0, :cond_1

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPe:Lcom/google/android/gms/internal/zzim;

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPe:Lcom/google/android/gms/internal/zzim;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzim;->onAdClicked()V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbw()Lcom/google/android/gms/ads/internal/overlay/zza;

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPd:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzPl:Lcom/google/android/gms/ads/internal/overlay/zzag;

    invoke-static {p0, p2, p1}, Lcom/google/android/gms/ads/internal/overlay/zza;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/overlay/zzag;)Z

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.ads.AdActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzvT:Lcom/google/android/gms/internal/zzaje;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzaje;->zzaaQ:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "shouldCallOnOverlayOpened"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zza(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-static {}, Lcom/google/android/gms/common/util/zzq;->zzse()Z

    move-result p1

    if-nez p1, :cond_2

    const/high16 p1, 0x80000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_3

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzagz;->zzb(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
