.class Lcom/androidnetworking/widget/ANImageView$1$1;
.super Ljava/lang/Object;
.source "ANImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidnetworking/widget/ANImageView$1;->onResponse(Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/androidnetworking/widget/ANImageView$1;

.field final synthetic val$response:Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;


# direct methods
.method constructor <init>(Lcom/androidnetworking/widget/ANImageView$1;Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/androidnetworking/widget/ANImageView$1$1;->this$1:Lcom/androidnetworking/widget/ANImageView$1;

    iput-object p2, p0, Lcom/androidnetworking/widget/ANImageView$1$1;->val$response:Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/androidnetworking/widget/ANImageView$1$1;->this$1:Lcom/androidnetworking/widget/ANImageView$1;

    iget-object v1, p0, Lcom/androidnetworking/widget/ANImageView$1$1;->val$response:Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/androidnetworking/widget/ANImageView$1;->onResponse(Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;Z)V

    return-void
.end method
