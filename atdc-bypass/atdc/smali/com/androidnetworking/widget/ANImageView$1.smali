.class Lcom/androidnetworking/widget/ANImageView$1;
.super Ljava/lang/Object;
.source "ANImageView.java"

# interfaces
.implements Lcom/androidnetworking/internal/ANImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidnetworking/widget/ANImageView;->loadImageIfNecessary(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidnetworking/widget/ANImageView;

.field final synthetic val$isInLayoutPass:Z


# direct methods
.method constructor <init>(Lcom/androidnetworking/widget/ANImageView;Z)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/androidnetworking/widget/ANImageView$1;->this$0:Lcom/androidnetworking/widget/ANImageView;

    iput-boolean p2, p0, Lcom/androidnetworking/widget/ANImageView$1;->val$isInLayoutPass:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/androidnetworking/error/ANError;)V
    .locals 1

    .line 129
    iget-object p1, p0, Lcom/androidnetworking/widget/ANImageView$1;->this$0:Lcom/androidnetworking/widget/ANImageView;

    invoke-static {p1}, Lcom/androidnetworking/widget/ANImageView;->access$100(Lcom/androidnetworking/widget/ANImageView;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/androidnetworking/widget/ANImageView$1;->this$0:Lcom/androidnetworking/widget/ANImageView;

    iget-object v0, p0, Lcom/androidnetworking/widget/ANImageView$1;->this$0:Lcom/androidnetworking/widget/ANImageView;

    invoke-static {v0}, Lcom/androidnetworking/widget/ANImageView;->access$100(Lcom/androidnetworking/widget/ANImageView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/androidnetworking/widget/ANImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 110
    iget-boolean p2, p0, Lcom/androidnetworking/widget/ANImageView$1;->val$isInLayoutPass:Z

    if-eqz p2, :cond_0

    .line 111
    iget-object p2, p0, Lcom/androidnetworking/widget/ANImageView$1;->this$0:Lcom/androidnetworking/widget/ANImageView;

    new-instance v0, Lcom/androidnetworking/widget/ANImageView$1$1;

    invoke-direct {v0, p0, p1}, Lcom/androidnetworking/widget/ANImageView$1$1;-><init>(Lcom/androidnetworking/widget/ANImageView$1;Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;)V

    invoke-virtual {p2, v0}, Lcom/androidnetworking/widget/ANImageView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 121
    iget-object p2, p0, Lcom/androidnetworking/widget/ANImageView$1;->this$0:Lcom/androidnetworking/widget/ANImageView;

    invoke-virtual {p1}, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/androidnetworking/widget/ANImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object p1, p0, Lcom/androidnetworking/widget/ANImageView$1;->this$0:Lcom/androidnetworking/widget/ANImageView;

    invoke-static {p1}, Lcom/androidnetworking/widget/ANImageView;->access$000(Lcom/androidnetworking/widget/ANImageView;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 123
    iget-object p1, p0, Lcom/androidnetworking/widget/ANImageView$1;->this$0:Lcom/androidnetworking/widget/ANImageView;

    iget-object p2, p0, Lcom/androidnetworking/widget/ANImageView$1;->this$0:Lcom/androidnetworking/widget/ANImageView;

    invoke-static {p2}, Lcom/androidnetworking/widget/ANImageView;->access$000(Lcom/androidnetworking/widget/ANImageView;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/androidnetworking/widget/ANImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method
