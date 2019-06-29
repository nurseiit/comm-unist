.class Lorg/roboguice/shaded/goole/common/collect/ImmutableMapValues$1;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;
.source "ImmutableMapValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableMapValues;->createAsList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMapValues;

.field final synthetic val$entryList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMapValues;Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapValues$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMapValues;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapValues$1;->val$entryList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

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
            "TV;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapValues$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMapValues;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapValues$1;->val$entryList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
