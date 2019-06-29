.class final Lcom/google/android/gms/internal/zzor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zznw;


# instance fields
.field private synthetic zzIB:Lcom/google/android/gms/internal/zzop;

.field private synthetic zzIC:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzop;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzor;->zzIB:Lcom/google/android/gms/internal/zzop;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzor;->zzIC:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzor;->zzIB:Lcom/google/android/gms/internal/zzop;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzop;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final zzeo()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzor;->zzIB:Lcom/google/android/gms/internal/zzop;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzor;->zzIC:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzop;->onClick(Landroid/view/View;)V

    return-void
.end method
