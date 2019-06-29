.class final Lorg/roboguice/shaded/goole/common/collect/Maps$1;
.super Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps;->valueIterator(Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$entryIterator:Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$1;->val$entryIterator:Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$1;->val$entryIterator:Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$1;->val$entryIterator:Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
