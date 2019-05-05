.class public Lcom/google/android/gms/plus/PlusOneDummyView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/PlusOneDummyView$zza;,
        Lcom/google/android/gms/plus/PlusOneDummyView$zzc;,
        Lcom/google/android/gms/plus/PlusOneDummyView$zzb;,
        Lcom/google/android/gms/plus/PlusOneDummyView$zzd;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PlusOneDummyView"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance p1, Lcom/google/android/gms/plus/PlusOneDummyView$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneDummyView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/plus/PlusOneDummyView$zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/plus/zzd;)V

    invoke-interface {p1}, Lcom/google/android/gms/plus/PlusOneDummyView$zzd;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Lcom/google/android/gms/plus/PlusOneDummyView$zzc;

    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneDummyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/plus/PlusOneDummyView$zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/plus/zzd;)V

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/plus/PlusOneDummyView$zzd;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p1, Lcom/google/android/gms/plus/PlusOneDummyView$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneDummyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/plus/PlusOneDummyView$zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/plus/zzd;)V

    :cond_1
    invoke-interface {p1, p2}, Lcom/google/android/gms/plus/PlusOneDummyView$zzd;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    const/16 v1, 0x14

    const/16 v2, 0x18

    packed-switch p2, :pswitch_data_0

    const/16 p2, 0x26

    const/16 v1, 0x18

    const/16 v2, 0x26

    goto :goto_0

    :pswitch_0
    const/16 v2, 0x32

    goto :goto_0

    :pswitch_1
    const/16 v2, 0x20

    goto :goto_0

    :pswitch_2
    const/16 v1, 0xe

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneDummyView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    int-to-float v2, v2

    const/4 v3, 0x1

    invoke-static {v3, v2, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    int-to-float v1, v1

    invoke-static {v3, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-double v1, v2

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    float-to-double v1, p2

    add-double/2addr v1, v3

    double-to-int p2, v1

    iput p2, p1, Landroid/graphics/Point;->y:I

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/16 v2, 0x11

    invoke-direct {p2, v1, p1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/plus/PlusOneDummyView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
