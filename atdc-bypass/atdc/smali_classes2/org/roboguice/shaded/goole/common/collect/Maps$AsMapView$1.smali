.class Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView$1;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$EntrySet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;->createEntrySet()Ljava/util/Set;
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
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;)V
    .locals 0

    .line 817
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 825
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;

    iget-object v1, v1, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->asMapEntryIterator(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Iterator;

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

    .line 820
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;

    return-object v0
.end method
