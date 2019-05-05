.class Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap$1;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$EntrySet;
.source "AbstractNavigableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Maps$EntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap;

    return-object v0
.end method
