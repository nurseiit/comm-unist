.class Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedAsMapEntries$1;
.super Lorg/roboguice/shaded/goole/common/collect/ForwardingIterator;
.source "Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedAsMapEntries;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/ForwardingIterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedAsMapEntries;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedAsMapEntries;Ljava/util/Iterator;)V
    .locals 0

    .line 849
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedAsMapEntries$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedAsMapEntries;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedAsMapEntries$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 849
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedAsMapEntries$1;->delegate()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 851
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedAsMapEntries$1;->val$iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 849
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedAsMapEntries$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 855
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 856
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;

    invoke-direct {v1, p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedAsMapEntries$1$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedAsMapEntries$1;Ljava/util/Map$Entry;)V

    return-object v1
.end method
