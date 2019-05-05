.class public final Lcom/google/android/gms/internal/hl;
.super Lcom/google/android/gms/internal/hk;


# instance fields
.field protected final zzbUn:Landroid/animation/Animator;

.field private final zzbUo:Lcom/google/android/gms/internal/hn;

.field private final zzbUp:Ljava/lang/Runnable;

.field private zzbUq:Lcom/google/android/gms/internal/hp;


# direct methods
.method private constructor <init>(Landroid/animation/Animator;Ljava/lang/Runnable;)V
    .locals 0
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/hk;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/hm;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/hm;-><init>(Lcom/google/android/gms/internal/hl;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/hl;->zzbUq:Lcom/google/android/gms/internal/hp;

    iput-object p1, p0, Lcom/google/android/gms/internal/hl;->zzbUn:Landroid/animation/Animator;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/hl;->zzbUp:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/android/gms/internal/hn;->zzEd()Lcom/google/android/gms/internal/hn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/hl;->zzbUo:Lcom/google/android/gms/internal/hn;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/hl;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/hl;->zzbUp:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static zza(Landroid/animation/Animator;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance p1, Lcom/google/android/gms/internal/hl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/hl;-><init>(Landroid/animation/Animator;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hl;->zzb(Landroid/animation/Animator;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/hl;->zzbUo:Lcom/google/android/gms/internal/hn;

    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->zzbUq:Lcom/google/android/gms/internal/hp;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/hn;->zza(Lcom/google/android/gms/internal/hp;)V

    :cond_0
    return-void
.end method
