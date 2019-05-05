.class final Lcom/google/android/gms/internal/hq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private synthetic zzbUv:Lcom/google/android/gms/internal/hp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hq;->zzbUv:Lcom/google/android/gms/internal/hp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hq;->zzbUv:Lcom/google/android/gms/internal/hp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/hp;->doFrame(J)V

    return-void
.end method
