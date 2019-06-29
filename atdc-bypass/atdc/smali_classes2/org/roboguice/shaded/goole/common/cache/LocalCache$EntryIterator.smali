.class final Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryIterator;
.super Lorg/roboguice/shaded/goole/common/cache/LocalCache$HashIterator;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/cache/LocalCache<",
        "TK;TV;>.HashIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;)V
    .locals 0

    .line 4426
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryIterator;->this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$HashIterator;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 4426
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4430
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryIterator;->nextEntry()Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteThroughEntry;

    move-result-object v0

    return-object v0
.end method
