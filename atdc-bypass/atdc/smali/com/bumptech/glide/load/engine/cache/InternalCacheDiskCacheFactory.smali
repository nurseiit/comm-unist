.class public final Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;
.super Ljava/lang/Object;
.source "InternalCacheDiskCacheFactory.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;


# instance fields
.field private final context:Landroid/content/Context;

.field private final diskCacheName:Ljava/lang/String;

.field private final diskCacheSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0, p2}, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;->diskCacheName:Ljava/lang/String;

    .line 25
    iput p3, p0, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;->diskCacheSize:I

    return-void
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;->diskCacheName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;->diskCacheName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bumptech/glide/Glide;->getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->getPhotoCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 40
    iget v1, p0, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;->diskCacheSize:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->get(Ljava/io/File;I)Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 44
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;-><init>()V

    :cond_2
    return-object v0
.end method
