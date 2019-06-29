.class Lcom/androidnetworking/internal/ANImageLoader$3;
.super Ljava/lang/Object;
.source "ANImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidnetworking/internal/ANImageLoader;->batchResponse(Ljava/lang/String;Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidnetworking/internal/ANImageLoader;


# direct methods
.method constructor <init>(Lcom/androidnetworking/internal/ANImageLoader;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/androidnetworking/internal/ANImageLoader$3;->this$0:Lcom/androidnetworking/internal/ANImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 337
    iget-object v0, p0, Lcom/androidnetworking/internal/ANImageLoader$3;->this$0:Lcom/androidnetworking/internal/ANImageLoader;

    invoke-static {v0}, Lcom/androidnetworking/internal/ANImageLoader;->access$200(Lcom/androidnetworking/internal/ANImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;

    .line 338
    invoke-static {v1}, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->access$300(Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;

    .line 339
    invoke-static {v3}, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->access$400(Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;)Lcom/androidnetworking/internal/ANImageLoader$ImageListener;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {v1}, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->getError()Lcom/androidnetworking/error/ANError;

    move-result-object v4

    if-nez v4, :cond_2

    .line 343
    invoke-static {v1}, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->access$000(Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->access$502(Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 344
    invoke-static {v3}, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->access$400(Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;)Lcom/androidnetworking/internal/ANImageLoader$ImageListener;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lcom/androidnetworking/internal/ANImageLoader$ImageListener;->onResponse(Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;Z)V

    goto :goto_0

    .line 346
    :cond_2
    invoke-static {v3}, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->access$400(Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;)Lcom/androidnetworking/internal/ANImageLoader$ImageListener;

    move-result-object v3

    invoke-virtual {v1}, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->getError()Lcom/androidnetworking/error/ANError;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/androidnetworking/internal/ANImageLoader$ImageListener;->onError(Lcom/androidnetworking/error/ANError;)V

    goto :goto_0

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/androidnetworking/internal/ANImageLoader$3;->this$0:Lcom/androidnetworking/internal/ANImageLoader;

    invoke-static {v0}, Lcom/androidnetworking/internal/ANImageLoader;->access$200(Lcom/androidnetworking/internal/ANImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 351
    iget-object v0, p0, Lcom/androidnetworking/internal/ANImageLoader$3;->this$0:Lcom/androidnetworking/internal/ANImageLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/androidnetworking/internal/ANImageLoader;->access$602(Lcom/androidnetworking/internal/ANImageLoader;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
