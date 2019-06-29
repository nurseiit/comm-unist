.class Lcom/androidnetworking/internal/ANImageLoader$2;
.super Ljava/lang/Object;
.source "ANImageLoader.java"

# interfaces
.implements Lcom/androidnetworking/interfaces/BitmapRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidnetworking/internal/ANImageLoader;->makeImageRequest(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidnetworking/internal/ANImageLoader;

.field final synthetic val$cacheKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/androidnetworking/internal/ANImageLoader;Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/androidnetworking/internal/ANImageLoader$2;->this$0:Lcom/androidnetworking/internal/ANImageLoader;

    iput-object p2, p0, Lcom/androidnetworking/internal/ANImageLoader$2;->val$cacheKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/androidnetworking/error/ANError;)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/androidnetworking/internal/ANImageLoader$2;->this$0:Lcom/androidnetworking/internal/ANImageLoader;

    iget-object v1, p0, Lcom/androidnetworking/internal/ANImageLoader$2;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/androidnetworking/internal/ANImageLoader;->onGetImageError(Ljava/lang/String;Lcom/androidnetworking/error/ANError;)V

    return-void
.end method

.method public onResponse(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/androidnetworking/internal/ANImageLoader$2;->this$0:Lcom/androidnetworking/internal/ANImageLoader;

    iget-object v1, p0, Lcom/androidnetworking/internal/ANImageLoader$2;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/androidnetworking/internal/ANImageLoader;->onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
