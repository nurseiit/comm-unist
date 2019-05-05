.class Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet;
.source "ImmutableEnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;->createEntrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 100
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

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

    .line 109
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2$1;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2;)V

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

    .line 104
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;

    return-object v0
.end method
