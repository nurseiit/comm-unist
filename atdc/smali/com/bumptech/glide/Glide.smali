.class public Lcom/bumptech/glide/Glide;
.super Ljava/lang/Object;
.source "Glide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/Glide$ClearTarget;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISK_CACHE_DIR:Ljava/lang/String; = "image_manager_disk_cache"

.field static final DEFAULT_DISK_CACHE_SIZE:I = 0xfa00000

.field private static final TAG:Ljava/lang/String; = "Glide"

.field private static volatile glide:Lcom/bumptech/glide/Glide;


# instance fields
.field private final bitmapCenterCrop:Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

.field private final bitmapFitCenter:Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final bitmapPreFiller:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

.field private final dataLoadProviderRegistry:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

.field private final decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

.field private final drawableCenterCrop:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

.field private final drawableFitCenter:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

.field private final engine:Lcom/bumptech/glide/load/engine/Engine;

.field private final imageViewTargetFactory:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

.field private final loaderFactory:Lcom/bumptech/glide/load/model/GenericLoaderFactory;

.field private final mainHandler:Landroid/os/Handler;

.field private final memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private final transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/content/Context;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 3

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Glide;->imageViewTargetFactory:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    .line 95
    new-instance v0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Glide;->transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    .line 206
    iput-object p1, p0, Lcom/bumptech/glide/Glide;->engine:Lcom/bumptech/glide/load/engine/Engine;

    .line 207
    iput-object p3, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 208
    iput-object p2, p0, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 209
    iput-object p5, p0, Lcom/bumptech/glide/Glide;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    .line 210
    new-instance p1, Lcom/bumptech/glide/load/model/GenericLoaderFactory;

    invoke-direct {p1, p4}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bumptech/glide/Glide;->loaderFactory:Lcom/bumptech/glide/load/model/GenericLoaderFactory;

    .line 211
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/bumptech/glide/Glide;->mainHandler:Landroid/os/Handler;

    .line 212
    new-instance p1, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

    invoke-direct {p1, p2, p3, p5}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;-><init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object p1, p0, Lcom/bumptech/glide/Glide;->bitmapPreFiller:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

    .line 214
    new-instance p1, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    invoke-direct {p1}, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/Glide;->dataLoadProviderRegistry:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    .line 216
    new-instance p1, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;

    invoke-direct {p1, p3, p5}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    .line 218
    iget-object p2, p0, Lcom/bumptech/glide/Glide;->dataLoadProviderRegistry:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    const-class v0, Ljava/io/InputStream;

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0, v1, p1}, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    .line 220
    new-instance p2, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;

    invoke-direct {p2, p3, p5}, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    .line 222
    iget-object p5, p0, Lcom/bumptech/glide/Glide;->dataLoadProviderRegistry:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    const-class v0, Landroid/os/ParcelFileDescriptor;

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p5, v0, v1, p2}, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    .line 224
    new-instance p5, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;

    invoke-direct {p5, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;-><init>(Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    .line 226
    iget-object p1, p0, Lcom/bumptech/glide/Glide;->dataLoadProviderRegistry:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    const-class p2, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2, v0, p5}, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    .line 228
    new-instance p1, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;

    invoke-direct {p1, p4, p3}, Lcom/bumptech/glide/load/resource/gif/GifDrawableLoadProvider;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 230
    iget-object p2, p0, Lcom/bumptech/glide/Glide;->dataLoadProviderRegistry:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    const-class v0, Ljava/io/InputStream;

    const-class v1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {p2, v0, v1, p1}, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    .line 232
    iget-object p2, p0, Lcom/bumptech/glide/Glide;->dataLoadProviderRegistry:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    const-class v0, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    const-class v1, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    new-instance v2, Lcom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;

    invoke-direct {v2, p5, p1, p3}, Lcom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;-><init>(Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    invoke-virtual {p2, v0, v1, v2}, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    .line 235
    iget-object p1, p0, Lcom/bumptech/glide/Glide;->dataLoadProviderRegistry:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    const-class p2, Ljava/io/InputStream;

    const-class p5, Ljava/io/File;

    new-instance v0, Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/file/StreamFileDataLoadProvider;-><init>()V

    invoke-virtual {p1, p2, p5, v0}, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V

    .line 237
    const-class p1, Ljava/io/File;

    const-class p2, Landroid/os/ParcelFileDescriptor;

    new-instance p5, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader$Factory;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader$Factory;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 238
    const-class p1, Ljava/io/File;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lcom/bumptech/glide/load/model/stream/StreamFileLoader$Factory;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/stream/StreamFileLoader$Factory;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 239
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class p2, Landroid/os/ParcelFileDescriptor;

    new-instance p5, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 240
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lcom/bumptech/glide/load/model/stream/StreamResourceLoader$Factory;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/stream/StreamResourceLoader$Factory;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 241
    const-class p1, Ljava/lang/Integer;

    const-class p2, Landroid/os/ParcelFileDescriptor;

    new-instance p5, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$Factory;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 242
    const-class p1, Ljava/lang/Integer;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lcom/bumptech/glide/load/model/stream/StreamResourceLoader$Factory;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/stream/StreamResourceLoader$Factory;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 243
    const-class p1, Ljava/lang/String;

    const-class p2, Landroid/os/ParcelFileDescriptor;

    new-instance p5, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorStringLoader$Factory;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorStringLoader$Factory;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 244
    const-class p1, Ljava/lang/String;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lcom/bumptech/glide/load/model/stream/StreamStringLoader$Factory;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/stream/StreamStringLoader$Factory;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 245
    const-class p1, Landroid/net/Uri;

    const-class p2, Landroid/os/ParcelFileDescriptor;

    new-instance p5, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorUriLoader$Factory;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorUriLoader$Factory;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 246
    const-class p1, Landroid/net/Uri;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lcom/bumptech/glide/load/model/stream/StreamUriLoader$Factory;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/stream/StreamUriLoader$Factory;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 247
    const-class p1, Ljava/net/URL;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lcom/bumptech/glide/load/model/stream/StreamUrlLoader$Factory;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/stream/StreamUrlLoader$Factory;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 248
    const-class p1, Lcom/bumptech/glide/load/model/GlideUrl;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader$Factory;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/stream/HttpUrlGlideUrlLoader$Factory;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 249
    const-class p1, [B

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader$Factory;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader$Factory;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 251
    iget-object p1, p0, Lcom/bumptech/glide/Glide;->transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    const-class p2, Landroid/graphics/Bitmap;

    const-class p5, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;

    new-instance v0, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    invoke-virtual {p1, p2, p5, v0}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 253
    iget-object p1, p0, Lcom/bumptech/glide/Glide;->transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    const-class p2, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    const-class p5, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    new-instance v0, Lcom/bumptech/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder;

    new-instance v1, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-direct {v1, p4, p3}, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder;-><init>(Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    invoke-virtual {p1, p2, p5, v0}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V

    .line 257
    new-instance p1, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {p1, p3}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object p1, p0, Lcom/bumptech/glide/Glide;->bitmapCenterCrop:Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    .line 258
    new-instance p1, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    iget-object p2, p0, Lcom/bumptech/glide/Glide;->bitmapCenterCrop:Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {p1, p3, p2}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;)V

    iput-object p1, p0, Lcom/bumptech/glide/Glide;->drawableCenterCrop:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    .line 260
    new-instance p1, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    invoke-direct {p1, p3}, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object p1, p0, Lcom/bumptech/glide/Glide;->bitmapFitCenter:Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    .line 261
    new-instance p1, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    iget-object p2, p0, Lcom/bumptech/glide/Glide;->bitmapFitCenter:Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    invoke-direct {p1, p3, p2}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;)V

    iput-object p1, p0, Lcom/bumptech/glide/Glide;->drawableFitCenter:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    return-void
.end method

.method public static buildFileDescriptorModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TT;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 568
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/Glide;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object p0

    return-object p0
.end method

.method public static buildFileDescriptorModelLoader(Ljava/lang/Object;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TT;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 578
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/Glide;->buildModelLoader(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object p0

    return-object p0
.end method

.method public static buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TT;TY;>;"
        }
    .end annotation

    if-nez p0, :cond_1

    const-string p0, "Glide"

    const/4 p1, 0x3

    .line 514
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Glide"

    const-string p1, "Unable to load null model, setting placeholder only"

    .line 515
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 519
    :cond_1
    invoke-static {p2}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p2

    invoke-direct {p2}, Lcom/bumptech/glide/Glide;->getLoaderFactory()Lcom/bumptech/glide/load/model/GenericLoaderFactory;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object p0

    return-object p0
.end method

.method public static buildModelLoader(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TY;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TT;TY;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 537
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/bumptech/glide/Glide;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object p0

    return-object p0
.end method

.method public static buildStreamModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 547
    const-class v0, Ljava/io/InputStream;

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/Glide;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object p0

    return-object p0
.end method

.method public static buildStreamModelLoader(Ljava/lang/Object;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 557
    const-class v0, Ljava/io/InputStream;

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/Glide;->buildModelLoader(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object p0

    return-object p0
.end method

.method public static clear(Landroid/view/View;)V
    .locals 1

    .line 439
    new-instance v0, Lcom/bumptech/glide/Glide$ClearTarget;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/Glide$ClearTarget;-><init>(Landroid/view/View;)V

    .line 440
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Lcom/bumptech/glide/request/target/Target;)V

    return-void
.end method

.method public static clear(Lcom/bumptech/glide/request/FutureTarget;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/FutureTarget<",
            "*>;)V"
        }
    .end annotation

    .line 422
    invoke-interface {p0}, Lcom/bumptech/glide/request/FutureTarget;->clear()V

    return-void
.end method

.method public static clear(Lcom/bumptech/glide/request/target/Target;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "*>;)V"
        }
    .end annotation

    .line 408
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 409
    invoke-interface {p0}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/Request;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 411
    invoke-interface {p0}, Lcom/bumptech/glide/request/Request;->clear()V

    :cond_0
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
    .locals 5

    .line 147
    sget-object v0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    if-nez v0, :cond_2

    .line 148
    const-class v0, Lcom/bumptech/glide/Glide;

    monitor-enter v0

    .line 149
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    if-nez v1, :cond_1

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 151
    new-instance v1, Lcom/bumptech/glide/module/ManifestParser;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/module/ManifestParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/bumptech/glide/module/ManifestParser;->parse()Ljava/util/List;

    move-result-object v1

    .line 153
    new-instance v2, Lcom/bumptech/glide/GlideBuilder;

    invoke-direct {v2, p0}, Lcom/bumptech/glide/GlideBuilder;-><init>(Landroid/content/Context;)V

    .line 154
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/module/GlideModule;

    .line 155
    invoke-interface {v4, p0, v2}, Lcom/bumptech/glide/module/GlideModule;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v2}, Lcom/bumptech/glide/GlideBuilder;->createGlide()Lcom/bumptech/glide/Glide;

    move-result-object v2

    sput-object v2, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    .line 158
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/module/GlideModule;

    .line 159
    sget-object v3, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    invoke-interface {v2, p0, v3}, Lcom/bumptech/glide/module/GlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;)V

    goto :goto_1

    .line 162
    :cond_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 165
    :cond_2
    :goto_2
    sget-object p0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    return-object p0
.end method

.method private getLoaderFactory()Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->loaderFactory:Lcom/bumptech/glide/load/model/GenericLoaderFactory;

    return-object v0
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const-string v0, "image_manager_disk_cache"

    .line 113
    invoke-static {p0, v0}, Lcom/bumptech/glide/Glide;->getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 128
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    return-object v1

    :cond_2
    const-string p0, "Glide"

    const/4 p1, 0x6

    .line 135
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "Glide"

    const-string p1, "default disk cache dir is null"

    .line 136
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method public static isSetup()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    sget-object v0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setup(Lcom/bumptech/glide/GlideBuilder;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    invoke-static {}, Lcom/bumptech/glide/Glide;->isSetup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Glide is already setup, check with isSetup() first"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/GlideBuilder;->createGlide()Lcom/bumptech/glide/Glide;

    move-result-object p0

    sput-object p0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    return-void
.end method

.method static tearDown()V
    .locals 1

    const/4 v0, 0x0

    .line 202
    sput-object v0, Lcom/bumptech/glide/Glide;->glide:Lcom/bumptech/glide/Glide;

    return-void
.end method

.method public static with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;
    .locals 1

    .line 620
    invoke-static {}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    .line 621
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 645
    invoke-static {}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    .line 646
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;
    .locals 1

    .line 608
    invoke-static {}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    .line 609
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;
    .locals 1

    .line 657
    invoke-static {}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    .line 658
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method

.method public static with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;
    .locals 1

    .line 632
    invoke-static {}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    .line 633
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lcom/bumptech/glide/provider/DataLoadProvider<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->dataLoadProviderRegistry:Lcom/bumptech/glide/provider/DataLoadProviderRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;

    move-result-object p1

    return-object p1
.end method

.method buildImageViewTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/Target;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lcom/bumptech/glide/request/target/Target<",
            "TR;>;"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->imageViewTargetFactory:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;->buildTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method buildTranscoder(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TR;>;"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->transcoderRegistry:Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object p1

    return-object p1
.end method

.method public clearMemory()V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->clearMemory()V

    .line 372
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->clearMemory()V

    return-void
.end method

.method getBitmapCenterCrop()Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapCenterCrop:Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    return-object v0
.end method

.method getBitmapFitCenter()Lcom/bumptech/glide/load/resource/bitmap/FitCenter;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapFitCenter:Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    return-object v0
.end method

.method public getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    return-object v0
.end method

.method getDecodeFormat()Lcom/bumptech/glide/load/DecodeFormat;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    return-object v0
.end method

.method getDrawableCenterCrop()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->drawableCenterCrop:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    return-object v0
.end method

.method getDrawableFitCenter()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->drawableFitCenter:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    return-object v0
.end method

.method getEngine()Lcom/bumptech/glide/load/engine/Engine;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->engine:Lcom/bumptech/glide/load/engine/Engine;

    return-object v0
.end method

.method getMainHandler()Landroid/os/Handler;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public varargs preFillBitmapPool([Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPreFiller:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->preFill([Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V

    return-void
.end method

.method public register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "TT;TY;>;)V"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->loaderFactory:Lcom/bumptech/glide/load/model/GenericLoaderFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 474
    invoke-interface {p1}, Lcom/bumptech/glide/load/model/ModelLoaderFactory;->teardown()V

    :cond_0
    return-void
.end method

.method public setMemoryCategory(Lcom/bumptech/glide/MemoryCategory;)V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-virtual {p1}, Lcom/bumptech/glide/MemoryCategory;->getMultiplier()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->setSizeMultiplier(F)V

    .line 398
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-virtual {p1}, Lcom/bumptech/glide/MemoryCategory;->getMultiplier()F

    move-result p1

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->setSizeMultiplier(F)V

    return-void
.end method

.method public trimMemory(I)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->trimMemory(I)V

    .line 382
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->trimMemory(I)V

    return-void
.end method

.method public unregister(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->loaderFactory:Lcom/bumptech/glide/load/model/GenericLoaderFactory;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->unregister(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 493
    invoke-interface {p1}, Lcom/bumptech/glide/load/model/ModelLoaderFactory;->teardown()V

    :cond_0
    return-void
.end method
