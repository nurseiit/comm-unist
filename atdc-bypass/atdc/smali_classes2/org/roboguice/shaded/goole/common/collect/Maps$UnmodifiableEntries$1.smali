.class Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableEntries$1;
.super Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableEntries;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableEntries;

.field final synthetic val$delegate:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableEntries;Ljava/util/Iterator;)V
    .locals 0

    .line 1261
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableEntries$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableEntries;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableEntries$1;->val$delegate:Ljava/util/Iterator;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1264
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableEntries$1;->val$delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1261
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableEntries$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1268
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableEntries$1;->val$delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
