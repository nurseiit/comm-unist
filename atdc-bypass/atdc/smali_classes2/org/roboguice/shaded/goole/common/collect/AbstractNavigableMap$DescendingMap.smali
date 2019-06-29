.class final Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap$DescendingMap;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$DescendingMap;
.source "AbstractNavigableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DescendingMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Maps$DescendingMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap;


# direct methods
.method private constructor <init>(Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$DescendingMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap;Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap$1;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap$DescendingMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap;)V

    return-void
.end method


# virtual methods
.method entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method forward()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap$DescendingMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractNavigableMap;

    return-object v0
.end method
