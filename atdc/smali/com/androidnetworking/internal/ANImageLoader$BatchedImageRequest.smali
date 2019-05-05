.class Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;
.super Ljava/lang/Object;
.source "ANImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidnetworking/internal/ANImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatchedImageRequest"
.end annotation


# instance fields
.field private mANError:Lcom/androidnetworking/error/ANError;

.field private final mContainers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequest:Lcom/androidnetworking/common/ANRequest;

.field private mResponseBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/androidnetworking/internal/ANImageLoader;


# direct methods
.method public constructor <init>(Lcom/androidnetworking/internal/ANImageLoader;Lcom/androidnetworking/common/ANRequest;Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->this$0:Lcom/androidnetworking/internal/ANImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    .line 301
    iput-object p2, p0, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->mRequest:Lcom/androidnetworking/common/ANRequest;

    .line 302
    iget-object p1, p0, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$002(Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    return-object p0
.end method


# virtual methods
.method public addContainer(Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getError()Lcom/androidnetworking/error/ANError;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->mANError:Lcom/androidnetworking/error/ANError;

    return-object v0
.end method

.method public removeContainerAndCancelIfNecessary(Lcom/androidnetworking/internal/ANImageLoader$ImageContainer;)Z
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 319
    iget-object p1, p0, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 320
    iget-object p1, p0, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->mRequest:Lcom/androidnetworking/common/ANRequest;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/androidnetworking/common/ANRequest;->cancel(Z)V

    .line 321
    iget-object p1, p0, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->mRequest:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {p1}, Lcom/androidnetworking/common/ANRequest;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 322
    iget-object p1, p0, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->mRequest:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {p1}, Lcom/androidnetworking/common/ANRequest;->destroy()V

    .line 323
    invoke-static {}, Lcom/androidnetworking/internal/ANRequestQueue;->getInstance()Lcom/androidnetworking/internal/ANRequestQueue;

    move-result-object p1

    iget-object v1, p0, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->mRequest:Lcom/androidnetworking/common/ANRequest;

    invoke-virtual {p1, v1}, Lcom/androidnetworking/internal/ANRequestQueue;->finish(Lcom/androidnetworking/common/ANRequest;)V

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setError(Lcom/androidnetworking/error/ANError;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/androidnetworking/internal/ANImageLoader$BatchedImageRequest;->mANError:Lcom/androidnetworking/error/ANError;

    return-void
.end method
