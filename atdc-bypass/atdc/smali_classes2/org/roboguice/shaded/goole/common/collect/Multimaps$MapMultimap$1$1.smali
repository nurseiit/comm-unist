.class Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1$1;
.super Ljava/lang/Object;
.source "Multimaps.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field i:I

.field final synthetic this$1:Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1;)V
    .locals 0

    .line 959
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1$1;->this$1:Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 964
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1$1;->i:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1$1;->this$1:Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1$1;->this$1:Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1;

    iget-object v1, v1, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1;->val$key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 969
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 970
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 972
    :cond_0
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1$1;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1$1;->i:I

    .line 973
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1$1;->this$1:Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1$1;->this$1:Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1;

    iget-object v1, v1, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1;->val$key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 978
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1$1;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/CollectPreconditions;->checkRemove(Z)V

    const/4 v0, -0x1

    .line 979
    iput v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1$1;->i:I

    .line 980
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1$1;->this$1:Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1$1;->this$1:Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1;

    iget-object v1, v1, Lorg/roboguice/shaded/goole/common/collect/Multimaps$MapMultimap$1;->val$key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
