.class public final Lcom/google/android/gms/plus/PlusOneButton;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/PlusOneButton$DefaultOnPlusOneClickListener;,
        Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;
    }
.end annotation


# static fields
.field public static final ANNOTATION_BUBBLE:I = 0x1

.field public static final ANNOTATION_INLINE:I = 0x2

.field public static final ANNOTATION_NONE:I = 0x0

.field public static final DEFAULT_ACTIVITY_REQUEST_CODE:I = -0x1

.field public static final SIZE_MEDIUM:I = 0x1

.field public static final SIZE_SMALL:I = 0x0

.field public static final SIZE_STANDARD:I = 0x3

.field public static final SIZE_TALL:I = 0x2


# instance fields
.field private mContentView:Landroid/view/View;

.field private mSize:I

.field private zzD:Ljava/lang/String;

.field private zzbAt:I

.field private zzbAu:I

.field private zzbAv:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/plus/PlusOneButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/plus/PlusOneButton;->getSize(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->mSize:I

    invoke-static {p1, p2}, Lcom/google/android/gms/plus/PlusOneButton;->getAnnotation(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/plus/PlusOneButton;->zzbAt:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/plus/PlusOneButton;->zzbAu:I

    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/PlusOneButton;->zzbk(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneButton;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method

.method protected static getAnnotation(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .locals 7

    const-string v0, "http://schemas.android.com/apk/lib/com.google.android.gms.plus"

    const-string v1, "annotation"

    const-string v6, "PlusOneButton"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzbz;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "INLINE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const-string p1, "NONE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method protected static getSize(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .locals 7

    const-string v0, "http://schemas.android.com/apk/lib/com.google.android.gms.plus"

    const-string v1, "size"

    const-string v6, "PlusOneButton"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzbz;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SMALL"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p1, "MEDIUM"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p1, "TALL"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/plus/PlusOneButton;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/plus/PlusOneButton;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/plus/PlusOneButton;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/plus/PlusOneButton;->zzbAu:I

    return p0
.end method

.method private final zzbk(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/PlusOneButton;->removeView(Landroid/view/View;)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->mSize:I

    iget v1, p0, Lcom/google/android/gms/plus/PlusOneButton;->zzbAt:I

    iget-object v2, p0, Lcom/google/android/gms/plus/PlusOneButton;->zzD:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/plus/PlusOneButton;->zzbAu:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/gms/plus/internal/zzm;->zza(Landroid/content/Context;IILjava/lang/String;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusOneButton;->mContentView:Landroid/view/View;

    iget-object p1, p0, Lcom/google/android/gms/plus/PlusOneButton;->zzbAv:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/PlusOneButton;->setOnPlusOneClickListener(Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V

    iget-object p1, p0, Lcom/google/android/gms/plus/PlusOneButton;->mContentView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/PlusOneButton;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final initialize(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneButton;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    const-string v1, "To use this method, the PlusOneButton must be placed in an Activity. Use initialize(String, OnPlusOneClickListener)."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusOneButton;->zzD:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/plus/PlusOneButton;->zzbAu:I

    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/PlusOneButton;->zzbk(Landroid/content/Context;)V

    return-void
.end method

.method public final initialize(Ljava/lang/String;Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusOneButton;->zzD:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/plus/PlusOneButton;->zzbAu:I

    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/PlusOneButton;->zzbk(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/plus/PlusOneButton;->setOnPlusOneClickListener(Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/plus/PlusOneButton;->mContentView:Landroid/view/View;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/plus/PlusOneButton;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/plus/PlusOneButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public final plusOneClick()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public final setAnnotation(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/plus/PlusOneButton;->zzbAt:I

    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/PlusOneButton;->zzbk(Landroid/content/Context;)V

    return-void
.end method

.method public final setIntent(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnPlusOneClickListener(Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusOneButton;->zzbAv:Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneButton;->mContentView:Landroid/view/View;

    new-instance v1, Lcom/google/android/gms/plus/PlusOneButton$DefaultOnPlusOneClickListener;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusOneButton$DefaultOnPlusOneClickListener;-><init>(Lcom/google/android/gms/plus/PlusOneButton;Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setSize(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/plus/PlusOneButton;->mSize:I

    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/PlusOneButton;->zzbk(Landroid/content/Context;)V

    return-void
.end method
