.class public final Lcom/google/android/gms/internal/zzyx;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final zzIc:Lcom/google/android/gms/internal/zzcu;

.field private final zzQQ:Lcom/google/android/gms/internal/zzafg;

.field private zzRX:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private zzRY:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private final zzRm:Lcom/google/android/gms/ads/internal/zzbb;

.field private final zzsK:Lcom/google/android/gms/internal/zznb;

.field private zzwv:I

.field private zzww:I

.field private zzwx:Lcom/google/android/gms/internal/zzair;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzafg;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/ads/internal/zzbb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzyx;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzyx;->zzwv:I

    iput v0, p0, Lcom/google/android/gms/internal/zzyx;->zzww:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyx;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyx;->zzIc:Lcom/google/android/gms/internal/zzcu;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzyx;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzyx;->zzsK:Lcom/google/android/gms/internal/zznb;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzyx;->zzRm:Lcom/google/android/gms/ads/internal/zzbb;

    new-instance p1, Lcom/google/android/gms/internal/zzair;

    const-wide/16 p2, 0xc8

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/zzair;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyx;->zzwx:Lcom/google/android/gms/internal/zzair;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzyx;Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzyx;->zza(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/zzaka;",
            ">;)",
            "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyx;->zzRX:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzzd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzzd;-><init>(Lcom/google/android/gms/internal/zzyx;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzyx;->zzRX:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzyx;->zzRX:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzyx;)Lcom/google/android/gms/ads/internal/zzbb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzyx;->zzRm:Lcom/google/android/gms/ads/internal/zzbb;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzyx;Lcom/google/android/gms/internal/zzaka;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzyx;->zzi(Lcom/google/android/gms/internal/zzaka;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzyx;Ljava/lang/ref/WeakReference;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzyx;->zza(Ljava/lang/ref/WeakReference;Z)V

    return-void
.end method

.method private final zza(Ljava/lang/ref/WeakReference;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/zzaka;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzaka;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaka;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyx;->zzwx:Lcom/google/android/gms/internal/zzair;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzair;->tryAcquire()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaka;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaiy;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyx;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzaiy;->zzd(Landroid/content/Context;I)I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaiy;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyx;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzaiy;->zzd(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyx;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v4, p0, Lcom/google/android/gms/internal/zzyx;->zzwv:I

    if-ne v4, v0, :cond_3

    iget v4, p0, Lcom/google/android/gms/internal/zzyx;->zzww:I

    if-eq v4, v1, :cond_4

    :cond_3
    iput v0, p0, Lcom/google/android/gms/internal/zzyx;->zzwv:I

    iput v1, p0, Lcom/google/android/gms/internal/zzyx;->zzww:I

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/internal/zzyx;->zzwv:I

    iget v1, p0, Lcom/google/android/gms/internal/zzyx;->zzww:I

    xor-int/2addr p2, v3

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/zzakb;->zza(IIZ)V

    :cond_4
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzyx;Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzyx;->zzb(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object p0

    return-object p0
.end method

.method private final zzb(Ljava/lang/ref/WeakReference;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/zzaka;",
            ">;)",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyx;->zzRY:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzze;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzze;-><init>(Lcom/google/android/gms/internal/zzyx;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzyx;->zzRY:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzyx;->zzRY:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-object p1
.end method

.method private final zzi(Lcom/google/android/gms/internal/zzaka;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object p1

    const-string v0, "/video"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzJg:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/videoMeta"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzJh:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/precache"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzJj:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/delayPageLoaded"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzJm:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/instrument"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzJk:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzJb:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/videoClicked"

    sget-object v1, Lcom/google/android/gms/internal/zzqn;->zzJc:Lcom/google/android/gms/internal/zzrd;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/trackActiveViewUnit"

    new-instance v1, Lcom/google/android/gms/internal/zzzb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzzb;-><init>(Lcom/google/android/gms/internal/zzyx;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/untrackActiveViewUnit"

    new-instance v1, Lcom/google/android/gms/internal/zzzc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzzc;-><init>(Lcom/google/android/gms/internal/zzyx;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    return-void
.end method


# virtual methods
.method final zzgz()Lcom/google/android/gms/internal/zzaka;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzakm;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbA()Lcom/google/android/gms/internal/zzakk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyx;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyx;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/zziv;->zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/zziv;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/zzyx;->zzIc:Lcom/google/android/gms/internal/zzcu;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzyx;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzafg;->zzUj:Lcom/google/android/gms/internal/zzaae;

    iget-object v6, v3, Lcom/google/android/gms/internal/zzaae;->zzvT:Lcom/google/android/gms/internal/zzaje;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzyx;->zzsK:Lcom/google/android/gms/internal/zznb;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzyx;->zzRm:Lcom/google/android/gms/ads/internal/zzbb;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/zzbb;->zzak()Lcom/google/android/gms/ads/internal/zzv;

    move-result-object v9

    iget-object v3, p0, Lcom/google/android/gms/internal/zzyx;->zzQQ:Lcom/google/android/gms/internal/zzafg;

    iget-object v10, v3, Lcom/google/android/gms/internal/zzafg;->zzXX:Lcom/google/android/gms/internal/zzig;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/internal/zzakk;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;ZZLcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzig;)Lcom/google/android/gms/internal/zzaka;

    move-result-object v0

    return-object v0
.end method
