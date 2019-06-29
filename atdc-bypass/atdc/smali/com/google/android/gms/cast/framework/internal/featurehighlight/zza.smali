.class public final Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;
.super Landroid/view/ViewGroup;


# instance fields
.field private targetView:Landroid/view/View;

.field private final zzasP:[I

.field private final zzasQ:Landroid/graphics/Rect;

.field private final zzasR:Landroid/graphics/Rect;

.field private final zzasS:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;

.field private final zzasT:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzj;

.field private zzasU:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;

.field private zzasV:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzasW:Landroid/animation/Animator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzasX:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;

.field private final zzasY:Landroid/support/v4/view/GestureDetectorCompat;

.field private zzasZ:Landroid/support/v4/view/GestureDetectorCompat;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzata:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;

.field private zzatb:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasP:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasQ:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasR:Landroid/graphics/Rect;

    sget v0, Lcom/google/android/gms/R$id;->cast_featurehighlight_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->setId(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->setWillNotDraw(Z)V

    new-instance v1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzj;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasT:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzj;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasT:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzj;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzj;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    new-instance v1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasS:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasS:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    new-instance v1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;-><init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;)V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasX:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;

    new-instance v1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzb;-><init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;)V

    new-instance v2, Landroid/support/v4/view/GestureDetectorCompat;

    invoke-direct {v2, p1, v1}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasY:Landroid/support/v4/view/GestureDetectorCompat;

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasY:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/GestureDetectorCompat;->setIsLongpressEnabled(Z)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->setVisibility(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasW:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;)Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasS:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;

    return-object p0
.end method

.method private final zza(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasW:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasW:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasW:Landroid/animation/Animator;

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasW:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzc(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;)Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzata:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;)Landroid/animation/Animator;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zznR()Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private final zzc(FF)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasR:Landroid/graphics/Rect;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method static synthetic zzd(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasW:Landroid/animation/Animator;

    return-object p0
.end method

.method private final zznR()Landroid/animation/Animator;
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasT:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzj;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const-string v2, "scale"

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v6, "scale"

    new-array v7, v3, [F

    fill-array-data v7, :array_1

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-string v7, "pulseScale"

    new-array v8, v3, [F

    fill-array-data v8, :array_2

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    const-string v8, "pulseAlpha"

    new-array v9, v3, [F

    fill-array-data v9, :array_3

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v9, 0x0

    aput-object v7, v3, v9

    const/4 v7, 0x1

    aput-object v8, v3, v7

    invoke-static {v0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-static {}, Lcom/google/android/gms/internal/hu;->zzEi()Lcom/google/android/gms/internal/ia;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hl;->zza(Landroid/animation/Animator;Ljava/lang/Runnable;)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
    .end array-data

    :array_1
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x40000000    # 2.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method protected final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return p1
.end method

.method protected final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasS:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasT:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzj;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasS:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->getColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_2

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    invoke-static {v7, v2, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v0, v6, v5, v7}, Landroid/graphics/Bitmap;->setPixel(III)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasQ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasQ:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Neither target view nor drawable was set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final onLayout(ZIIII)V
    .locals 5

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Target view must be set before layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasP:[I

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->getLocationInWindow([I)V

    aget v3, p1, v1

    aget v4, p1, v0

    invoke-virtual {v2, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, p1, v1

    sub-int/2addr v2, v3

    aput v2, p1, v1

    aget v2, p1, v0

    sub-int/2addr v2, v4

    aput v2, p1, v0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasQ:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasP:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasP:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasP:[I

    aget v1, v4, v1

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasP:[I

    aget v0, v4, v0

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasR:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasS:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasR:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->setBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasT:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzj;

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasR:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzj;->setBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasX:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasQ:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasR:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;->zza(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->resolveSize(II)I

    move-result p1

    invoke-static {v1, p2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasQ:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzatb:Z

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzatb:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasZ:Landroid/support/v4/view/GestureDetectorCompat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasZ:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    if-ne v0, v2, :cond_1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasY:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_3
    return v2
.end method

.method protected final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasS:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasT:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzj;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final zza(Landroid/view/View;Landroid/view/View;ZLcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;)V
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/gms/internal/ik;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasV:Landroid/view/View;

    invoke-static {p4}, Lcom/google/android/gms/internal/ik;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzata:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;

    new-instance p2, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzc;-><init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;Landroid/view/View;ZLcom/google/android/gms/cast/framework/internal/featurehighlight/zzh;)V

    new-instance p1, Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasZ:Landroid/support/v4/view/GestureDetectorCompat;

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasZ:Landroid/support/v4/view/GestureDetectorCompat;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v4/view/GestureDetectorCompat;->setIsLongpressEnabled(Z)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->setVisibility(I)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/ik;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasU:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;

    invoke-interface {p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;->asView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final zzaa(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasS:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->setColor(I)V

    return-void
.end method

.method public final zzg(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance p1, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzd;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzd;-><init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final zzh(Ljava/lang/Runnable;)V
    .locals 14
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasU:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;->asView()Landroid/view/View;

    move-result-object v0

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/hu;->zzEh()Lcom/google/android/gms/internal/ia;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasQ:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasS:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->getCenterX()F

    move-result v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasQ:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    iget-object v8, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasS:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;

    invoke-virtual {v8}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->getCenterY()F

    move-result v8

    sub-float/2addr v3, v8

    iget-object v8, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasS:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;

    const-string v9, "scale"

    new-array v10, v2, [F

    aput v4, v10, v5

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    const-string v10, "alpha"

    new-array v11, v2, [I

    aput v5, v11, v5

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    const-string v11, "translationX"

    const/4 v12, 0x2

    new-array v13, v12, [F

    aput v4, v13, v5

    aput v1, v13, v2

    invoke-static {v11, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v11, "translationY"

    new-array v13, v12, [F

    aput v4, v13, v5

    aput v3, v13, v2

    invoke-static {v11, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v9, v4, v5

    aput-object v1, v4, v2

    aput-object v3, v4, v12

    const/4 v1, 0x3

    aput-object v10, v4, v1

    invoke-static {v8, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/hu;->zzEh()Lcom/google/android/gms/internal/ia;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasT:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzj;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzj;->zznS()Landroid/animation/Animator;

    move-result-object v4

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v5

    aput-object v3, v1, v2

    aput-object v4, v1, v12

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzg;-><init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0, v6}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zza(Landroid/animation/Animator;)V

    return-void
.end method

.method public final zzi(Ljava/lang/Runnable;)V
    .locals 10
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasU:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;->asView()Landroid/view/View;

    move-result-object v0

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/hu;->zzEh()Lcom/google/android/gms/internal/ia;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasS:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;

    const-string v3, "scale"

    new-array v7, v2, [F

    const/high16 v8, 0x3f900000    # 1.125f

    aput v8, v7, v4

    invoke-static {v3, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const-string v7, "alpha"

    new-array v8, v2, [I

    aput v4, v8, v4

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v9, v4

    aput-object v7, v9, v2

    invoke-static {v1, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/hu;->zzEh()Lcom/google/android/gms/internal/ia;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasT:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzj;

    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzj;->zznS()Landroid/animation/Animator;

    move-result-object v3

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v0, v6, v4

    aput-object v1, v6, v2

    aput-object v3, v6, v8

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzf;-><init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0, v5}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zza(Landroid/animation/Animator;)V

    return-void
.end method

.method public final zznN()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->targetView:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target view must be set before animation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasU:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;

    invoke-interface {v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;->asView()Landroid/view/View;

    move-result-object v1

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0x15e

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/hu;->zzEg()Lcom/google/android/gms/internal/ia;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasQ:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    iget-object v6, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasS:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;

    invoke-virtual {v6}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->getCenterX()F

    move-result v6

    sub-float/2addr v2, v6

    iget-object v6, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasQ:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    iget-object v7, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasS:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;

    invoke-virtual {v7}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->getCenterY()F

    move-result v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasS:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;

    invoke-virtual {v7, v2, v6}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zze(FF)Landroid/animation/Animator;

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasT:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzj;

    const-string v7, "scale"

    new-array v8, v3, [F

    fill-array-data v8, :array_1

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    const-string v8, "alpha"

    new-array v9, v3, [F

    fill-array-data v9, :array_2

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    new-array v9, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v9, v0

    const/4 v7, 0x1

    aput-object v8, v9, v7

    invoke-static {v6, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/hu;->zzEg()Lcom/google/android/gms/internal/ia;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v4

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v1, v6, v0

    aput-object v2, v6, v7

    aput-object v4, v6, v3

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zze;-><init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0, v5}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zza(Landroid/animation/Animator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method final zznO()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasU:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzi;->asView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final zznP()Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasS:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;

    return-object v0
.end method

.method final zznQ()Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zzasT:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzj;

    return-object v0
.end method
