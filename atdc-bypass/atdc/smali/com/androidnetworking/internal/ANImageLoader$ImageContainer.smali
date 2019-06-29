.class public Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;
.super Ljava/lang/Object;
.source "ANImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidnetworking/internal/ANImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageContainer"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCacheKey:Ljava/lang/String;

.field private final mListener:Lcom/androidnetworking/internal/ANImageLoader$ImageListener;

.field private final mRequestUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/androidnetworking/internal/ANImageLoader;


# direct methods
.method public constructor <init>(Lcom/androidnetworking/internal/ANImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/androidnetworking/internal/ANImageLoader$ImageListener;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->this$0:Lcom/androidnetworking/internal/ANImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p2, p0, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    .line 253
    iput-object p3, p0, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->mRequestUrl:Ljava/lang/String;

    .line 254
    iput-object p4, p0, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    .line 255
    iput-object p5, p0, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->mListener:Lcom/androidnetworking/internal/ANImageLoader$ImageListener;

    return-void
.end method

.method static synthetic access$400(Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;)Lcom/androidnetworking/internal/ANImageLoader$ImageListener;
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->mListener:Lcom/androidnetworking/internal/ANImageLoader$ImageListener;

    return-object p0
.end method

.method static synthetic access$502(Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public cancelRequest()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->mListener:Lcom/androidnetworking/internal/ANImageLoader$ImageListener;

    if-nez v0, :cond_0

    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->this$0:Lcom/androidnetworking/internal/ANImageLoader;

    invoke-static {v0}, Lcom/androidnetworking/internal/ANImageLoader;->access$100(Lcom/androidnetworking/internal/ANImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v0, p0}, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->removeContainerAndCancelIfNecessary(Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->this$0:Lcom/androidnetworking/internal/ANImageLoader;

    invoke-static {v0}, Lcom/androidnetworking/internal/ANImageLoader;->access$100(Lcom/androidnetworking/internal/ANImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->this$0:Lcom/androidnetworking/internal/ANImageLoader;

    invoke-static {v0}, Lcom/androidnetworking/internal/ANImageLoader;->access$200(Lcom/androidnetworking/internal/ANImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_2

    .line 272
    invoke-virtual {v0, p0}, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->removeContainerAndCancelIfNecessary(Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;)Z

    .line 273
    invoke-static {v0}, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->access$300(Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->this$0:Lcom/androidnetworking/internal/ANImageLoader;

    invoke-static {v0}, Lcom/androidnetworking/internal/ANImageLoader;->access$200(Lcom/androidnetworking/internal/ANImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;->mRequestUrl:Ljava/lang/String;

    return-object v0
.end method
