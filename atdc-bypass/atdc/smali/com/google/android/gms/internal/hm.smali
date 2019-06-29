.class final Lcom/google/android/gms/internal/hm;
.super Lcom/google/android/gms/internal/hp;


# instance fields
.field private synthetic zzbUr:Lcom/google/android/gms/internal/hl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hm;->zzbUr:Lcom/google/android/gms/internal/hl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/hp;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/hm;->zzbUr:Lcom/google/android/gms/internal/hl;

    iget-object p2, p0, Lcom/google/android/gms/internal/hm;->zzbUr:Lcom/google/android/gms/internal/hl;

    iget-object p2, p2, Lcom/google/android/gms/internal/hl;->zzbUn:Landroid/animation/Animator;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/hl;->zzb(Landroid/animation/Animator;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/hm;->zzbUr:Lcom/google/android/gms/internal/hl;

    iget-object p1, p1, Lcom/google/android/gms/internal/hl;->zzbUn:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/hm;->zzbUr:Lcom/google/android/gms/internal/hl;

    invoke-static {p1}, Lcom/google/android/gms/internal/hl;->zza(Lcom/google/android/gms/internal/hl;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/hm;->zzbUr:Lcom/google/android/gms/internal/hl;

    invoke-static {p1}, Lcom/google/android/gms/internal/hl;->zza(Lcom/google/android/gms/internal/hl;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/hm;->zzbUr:Lcom/google/android/gms/internal/hl;

    iget-object p1, p1, Lcom/google/android/gms/internal/hl;->zzbUn:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method
