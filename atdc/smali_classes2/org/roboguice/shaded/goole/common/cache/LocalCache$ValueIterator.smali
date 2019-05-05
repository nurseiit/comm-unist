.class final Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueIterator;
.super Lorg/roboguice/shaded/goole/common/cache/LocalCache$HashIterator;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/cache/LocalCache<",
        "TK;TV;>.HashIterator<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;)V
    .locals 0

    .line 4366
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueIterator;->this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$HashIterator;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 4370
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueIterator;->nextEntry()Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteThroughEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteThroughEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
