.class Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet$1;
.super Lorg/roboguice/shaded/goole/common/collect/TransformedIterator;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/TransformedIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet;Ljava/util/Iterator;)V
    .locals 0

    .line 2703
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet$1;->this$1:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet;

    invoke-direct {p0, p2}, Lorg/roboguice/shaded/goole/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2703
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet$1;->transform(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method transform(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2706
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet$1$1;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet$1$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet$1;Ljava/util/Map$Entry;)V

    return-object v0
.end method
