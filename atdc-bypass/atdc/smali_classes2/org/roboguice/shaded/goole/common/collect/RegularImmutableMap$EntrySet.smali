.class Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap$EntrySet;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap;


# direct methods
.method private constructor <init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap;Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap$1;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap$EntrySet;-><init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap;)V

    return-void
.end method


# virtual methods
.method createAsList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 201
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap;

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap;->access$100(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap;)[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 188
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap$EntrySet;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap$EntrySet;->asList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method map()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMap;

    return-object v0
.end method
