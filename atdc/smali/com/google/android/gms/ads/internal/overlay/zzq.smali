.class final Lcom/google/android/gms/ads/internal/overlay/zzq;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field zzOZ:Z

.field private zzwB:Lcom/google/android/gms/internal/zzahq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/zzahq;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzahq;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzq;->zzwB:Lcom/google/android/gms/internal/zzahq;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzq;->zzwB:Lcom/google/android/gms/internal/zzahq;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/zzahq;->zzaO(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzq;->zzOZ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzq;->zzwB:Lcom/google/android/gms/internal/zzahq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzahq;->zzf(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
