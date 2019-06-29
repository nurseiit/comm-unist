.class Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet$1;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;
.source "ImmutableMapKeySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet;->createAsList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet;

.field final synthetic val$entryList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet;Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet$1;->val$entryList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method delegateCollection()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<",
            "TK;>;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet$1;->val$entryList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
