.class final Lcom/google/android/gms/internal/zznv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zznw;


# instance fields
.field private synthetic zzHU:Lcom/google/android/gms/internal/zznu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zznu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznv;->zzHU:Lcom/google/android/gms/internal/zznu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final zzeo()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zznv;->zzHU:Lcom/google/android/gms/internal/zznu;

    const-string v1, "_videoMediaView"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zznu;->performClick(Ljava/lang/String;)V

    return-void
.end method
