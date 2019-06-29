.class public final Lcom/google/android/gms/internal/zzauw;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/google/android/gms/cast/framework/IntroductoryOverlay;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final zzasC:Z

.field private zzasE:Z

.field private zzasH:I

.field private final zzasI:Lcom/google/android/gms/internal/zzauz;

.field private zzaso:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;)V
    .locals 2

    sget v0, Lcom/google/android/gms/R$attr;->castIntroOverlayStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/zzauw;-><init>(Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;Landroid/util/AttributeSet;I)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/zzauw;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zznD()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzauw;->zzasC:Z

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zznB()Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/zzauw;->zzaso:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzauw;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    sget-object v1, Lcom/google/android/gms/R$styleable;->CastIntroOverlay:[I

    sget v2, Lcom/google/android/gms/R$style;->CastIntroOverlay:I

    invoke-virtual {p2, v0, v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zznA()Landroid/view/View;

    move-result-object p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zznA()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v3, Lcom/google/android/gms/internal/zzauz;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/zzauz;-><init>(Lcom/google/android/gms/internal/zzaux;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzauw;->zzasI:Lcom/google/android/gms/internal/zzauz;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw;->zzasI:Lcom/google/android/gms/internal/zzauz;

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/zzauz;->x:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw;->zzasI:Lcom/google/android/gms/internal/zzauz;

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    iput p3, v0, Lcom/google/android/gms/internal/zzauz;->y:I

    iget-object p3, p0, Lcom/google/android/gms/internal/zzauw;->zzasI:Lcom/google/android/gms/internal/zzauz;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object v3, p3, Lcom/google/android/gms/internal/zzauz;->zzasL:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzauw;->zzasI:Lcom/google/android/gms/internal/zzauz;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zznG()F

    move-result v0

    iput v0, p3, Lcom/google/android/gms/internal/zzauz;->zzasM:F

    iget-object p3, p0, Lcom/google/android/gms/internal/zzauw;->zzasI:Lcom/google/android/gms/internal/zzauz;

    iget p3, p3, Lcom/google/android/gms/internal/zzauz;->zzasM:F

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/zzauw;->zzasI:Lcom/google/android/gms/internal/zzauz;

    sget v3, Lcom/google/android/gms/R$styleable;->CastIntroOverlay_castFocusRadius:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p3, Lcom/google/android/gms/internal/zzauz;->zzasM:F

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw;->zzasI:Lcom/google/android/gms/internal/zzauz;

    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/google/android/gms/internal/zzauw;->mActivity:Landroid/app/Activity;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/google/android/gms/R$layout;->cast_intro_overlay:I

    invoke-virtual {p3, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zznC()I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/internal/zzauw;->zzasH:I

    iget p3, p0, Lcom/google/android/gms/internal/zzauw;->zzasH:I

    if-nez p3, :cond_2

    sget p3, Lcom/google/android/gms/R$styleable;->CastIntroOverlay_castBackgroundColor:I

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/internal/zzauw;->zzasH:I

    :cond_2
    sget p3, Lcom/google/android/gms/R$id;->textTitle:I

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/zzauw;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zznE()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zznE()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/google/android/gms/R$styleable;->CastIntroOverlay_castTitleTextAppearance:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauw;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3, v3, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$Builder;->zznF()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    sget p1, Lcom/google/android/gms/R$styleable;->CastIntroOverlay_castButtonText:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_4
    sget p3, Lcom/google/android/gms/R$styleable;->CastIntroOverlay_castButtonBackgroundColor:I

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    sget v0, Lcom/google/android/gms/R$id;->button:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzauw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p3, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget p1, Lcom/google/android/gms/R$styleable;->CastIntroOverlay_castButtonTextAppearance:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/internal/zzauw;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p3, p1}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/zzaux;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzaux;-><init>(Lcom/google/android/gms/internal/zzauw;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzauw;->setFitsSystemWindows(Z)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzauw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzauw;->zznM()V

    return-void
.end method

.method private final zznM()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$zza;->zzal(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw;->zzaso:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw;->zzaso:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    invoke-interface {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;->onOverlayDismissed()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw;->zzaso:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauw;->remove()V

    return-void
.end method


# virtual methods
.method protected final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauw;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauw;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v2, p0, Lcom/google/android/gms/internal/zzauw;->zzasH:I

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw;->zzasI:Lcom/google/android/gms/internal/zzauz;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw;->zzasI:Lcom/google/android/gms/internal/zzauz;

    iget v2, v2, Lcom/google/android/gms/internal/zzauz;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauw;->zzasI:Lcom/google/android/gms/internal/zzauz;

    iget v3, v3, Lcom/google/android/gms/internal/zzauz;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzauw;->zzasI:Lcom/google/android/gms/internal/zzauz;

    iget v4, v4, Lcom/google/android/gms/internal/zzauz;->zzasM:F

    iget-object v5, p0, Lcom/google/android/gms/internal/zzauw;->zzasI:Lcom/google/android/gms/internal/zzauz;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzauz;->zzasL:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw;->mActivity:Landroid/app/Activity;

    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzauw;->mActivity:Landroid/app/Activity;

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/zzauw;->zzaso:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    return-void
.end method

.method public final show()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaus;->zzao(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzauw;->zzasC:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/IntroductoryOverlay$zza;->zzam(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzauw;->zzaso:Lcom/google/android/gms/cast/framework/IntroductoryOverlay$OnOverlayDismissedListener;

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzauw;->zzasE:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzauw;->zzasE:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method
