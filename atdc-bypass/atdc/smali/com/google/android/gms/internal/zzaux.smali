.class final Lcom/google/android/gms/internal/zzaux;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic zzasJ:Lcom/google/android/gms/internal/zzauw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzauw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaux;->zzasJ:Lcom/google/android/gms/internal/zzauw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    const-string p1, "alpha"

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzauy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzauy;-><init>(Lcom/google/android/gms/internal/zzaux;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaux;->zzasJ:Lcom/google/android/gms/internal/zzauw;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzauw;->zza(Lcom/google/android/gms/internal/zzauw;)V

    return-void
.end method
