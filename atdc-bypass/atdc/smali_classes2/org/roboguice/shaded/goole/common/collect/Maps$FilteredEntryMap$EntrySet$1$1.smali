.class Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet$1$1;
.super Lorg/roboguice/shaded/goole/common/collect/ForwardingMapEntry;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet$1;->transform(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/ForwardingMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet$1;

.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet$1;Ljava/util/Map$Entry;)V
    .locals 0

    .line 2706
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet$1$1;->this$2:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet$1;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet$1$1;->val$entry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 2706
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet$1$1;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2709
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet$1$1;->val$entry:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 2714
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet$1$1;->this$2:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet$1;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet$1;->this$1:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap$EntrySet$1$1;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    .line 2715
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ForwardingMapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
