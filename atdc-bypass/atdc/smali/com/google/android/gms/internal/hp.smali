.class public abstract Lcom/google/android/gms/internal/hp;
.super Ljava/lang/Object;


# instance fields
.field private zzbUt:Ljava/lang/Runnable;

.field private zzbUu:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doFrame(J)V
.end method

.method final zzEe()Landroid/view/Choreographer$FrameCallback;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hp;->zzbUu:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/hq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/hq;-><init>(Lcom/google/android/gms/internal/hp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/hp;->zzbUu:Landroid/view/Choreographer$FrameCallback;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hp;->zzbUu:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method final zzEf()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hp;->zzbUt:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/hr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/hr;-><init>(Lcom/google/android/gms/internal/hp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/hp;->zzbUt:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hp;->zzbUt:Ljava/lang/Runnable;

    return-object v0
.end method
