.class public Lcom/androidnetworking/widget/ANImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "ANImageView.java"


# instance fields
.field private mDefaultImageId:I

.field private mErrorImageId:I

.field private mImageContainer:Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/androidnetworking/widget/ANImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/androidnetworking/widget/ANImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/androidnetworking/widget/ANImageView;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/androidnetworking/widget/ANImageView;->mDefaultImageId:I

    return p0
.end method

.method static synthetic access$100(Lcom/androidnetworking/widget/ANImageView;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/androidnetworking/widget/ANImageView;->mErrorImageId:I

    return p0
.end method

.method private setDefaultImageOrNull()V
    .locals 1

    .line 139
    iget v0, p0, Lcom/androidnetworking/widget/ANImageView;->mDefaultImageId:I

    if-eqz v0, :cond_0

    .line 140
    iget v0, p0, Lcom/androidnetworking/widget/ANImageView;->mDefaultImageId:I

    invoke-virtual {p0, v0}, Lcom/androidnetworking/widget/ANImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, v0}, Lcom/androidnetworking/widget/ANImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 164
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->drawableStateChanged()V

    .line 165
    invoke-virtual {p0}, Lcom/androidnetworking/widget/ANImageView;->invalidate()V

    return-void
.end method

.method loadImageIfNecessary(Z)V
    .locals 8

    .line 69
    invoke-virtual {p0}, Lcom/androidnetworking/widget/ANImageView;->getWidth()I

    move-result v0

    .line 70
    invoke-virtual {p0}, Lcom/androidnetworking/widget/ANImageView;->getHeight()I

    move-result v1

    .line 71
    invoke-virtual {p0}, Lcom/androidnetworking/widget/ANImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v7

    .line 74
    invoke-virtual {p0}, Lcom/androidnetworking/widget/ANImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/androidnetworking/widget/ANImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x2

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 76
    :goto_0
    invoke-virtual {p0}, Lcom/androidnetworking/widget/ANImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v6, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    if-nez v3, :cond_4

    return-void

    .line 84
    :cond_4
    iget-object v3, p0, Lcom/androidnetworking/widget/ANImageView;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 85
    iget-object p1, p0, Lcom/androidnetworking/widget/ANImageView;->mImageContainer:Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;

    if-eqz p1, :cond_5

    .line 86
    iget-object p1, p0, Lcom/androidnetworking/widget/ANImageView;->mImageContainer:Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;

    invoke-virtual {p1}, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->cancelRequest()V

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/androidnetworking/widget/ANImageView;->mImageContainer:Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;

    .line 89
    :cond_5
    invoke-direct {p0}, Lcom/androidnetworking/widget/ANImageView;->setDefaultImageOrNull()V

    return-void

    .line 93
    :cond_6
    iget-object v3, p0, Lcom/androidnetworking/widget/ANImageView;->mImageContainer:Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/androidnetworking/widget/ANImageView;->mImageContainer:Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;

    invoke-virtual {v3}, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 94
    iget-object v3, p0, Lcom/androidnetworking/widget/ANImageView;->mImageContainer:Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;

    invoke-virtual {v3}, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/androidnetworking/widget/ANImageView;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    return-void

    .line 97
    :cond_7
    iget-object v3, p0, Lcom/androidnetworking/widget/ANImageView;->mImageContainer:Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;

    invoke-virtual {v3}, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->cancelRequest()V

    .line 98
    invoke-direct {p0}, Lcom/androidnetworking/widget/ANImageView;->setDefaultImageOrNull()V

    :cond_8
    if-eqz v2, :cond_9

    const/4 v0, 0x0

    :cond_9
    if-eqz v5, :cond_a

    const/4 v6, 0x0

    goto :goto_3

    :cond_a
    move v6, v1

    .line 105
    :goto_3
    invoke-static {}, Lcom/androidnetworking/internal/ANImageLoader;->getInstance()Lcom/androidnetworking/internal/ANImageLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/androidnetworking/widget/ANImageView;->mUrl:Ljava/lang/String;

    new-instance v4, Lcom/androidnetworking/widget/ANImageView$1;

    invoke-direct {v4, p0, p1}, Lcom/androidnetworking/widget/ANImageView$1;-><init>(Lcom/androidnetworking/widget/ANImageView;Z)V

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Lcom/androidnetworking/internal/ANImageLoader;->get(Ljava/lang/String;Lcom/androidnetworking/internal/ANImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;

    move-result-object p1

    .line 135
    iput-object p1, p0, Lcom/androidnetworking/widget/ANImageView;->mImageContainer:Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/androidnetworking/widget/ANImageView;->mImageContainer:Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/androidnetworking/widget/ANImageView;->mImageContainer:Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->cancelRequest()V

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, v0}, Lcom/androidnetworking/widget/ANImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    iput-object v0, p0, Lcom/androidnetworking/widget/ANImageView;->mImageContainer:Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;

    .line 159
    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 148
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/AppCompatImageView;->onLayout(ZIIII)V

    const/4 p1, 0x1

    .line 149
    invoke-virtual {p0, p1}, Lcom/androidnetworking/widget/ANImageView;->loadImageIfNecessary(Z)V

    return-void
.end method

.method public setDefaultImageResId(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/androidnetworking/widget/ANImageView;->mDefaultImageId:I

    return-void
.end method

.method public setErrorImageResId(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/androidnetworking/widget/ANImageView;->mErrorImageId:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/androidnetworking/widget/ANImageView;->mUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lcom/androidnetworking/widget/ANImageView;->loadImageIfNecessary(Z)V

    return-void
.end method
