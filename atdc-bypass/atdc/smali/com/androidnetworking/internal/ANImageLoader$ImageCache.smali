.class public interface abstract Lcom/androidnetworking/internal/ANImageLoader$ImageCache;
.super Ljava/lang/Object;
.source "ANImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidnetworking/internal/ANImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageCache"
.end annotation


# virtual methods
.method public abstract evictAllBitmap()V
.end method

.method public abstract evictBitmap(Ljava/lang/String;)V
.end method

.method public abstract getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method
