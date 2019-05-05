.class public Lcom/androidnetworking/cache/LruBitmapCache;
.super Lcom/androidnetworking/cache/LruCache;
.source "LruBitmapCache.java"

# interfaces
.implements Lcom/androidnetworking/internal/ANImageLoader$ImageCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidnetworking/cache/LruCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lcom/androidnetworking/internal/ANImageLoader$ImageCache;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/androidnetworking/cache/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public evictAllBitmap()V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/androidnetworking/cache/LruBitmapCache;->evictAll()V

    return-void
.end method

.method public evictBitmap(Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/androidnetworking/cache/LruBitmapCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/androidnetworking/cache/LruBitmapCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/androidnetworking/cache/LruBitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/androidnetworking/cache/LruBitmapCache;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 0

    .line 36
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    mul-int p1, p1, p2

    return p1
.end method
