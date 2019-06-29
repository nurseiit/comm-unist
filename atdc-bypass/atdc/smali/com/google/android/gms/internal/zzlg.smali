.class final Lcom/google/android/gms/internal/zzlg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzBq:Lcom/google/android/gms/internal/zzlf;

.field private synthetic zztF:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlf;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlg;->zzBq:Lcom/google/android/gms/internal/zzlf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlg;->zztF:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlg;->zzBq:Lcom/google/android/gms/internal/zzlf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlg;->zztF:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlf;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    return-void
.end method
