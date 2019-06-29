.class Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$1;
.super Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field remaining:I

.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

.field final synthetic val$entryIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;Ljava/util/Iterator;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 246
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$1;->remaining:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 251
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$1;->remaining:I

    if-gtz v0, :cond_0

    .line 252
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    .line 253
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$1;->element:Ljava/lang/Object;

    .line 254
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    iput v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$1;->remaining:I

    .line 256
    :cond_0
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$1;->remaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$1;->remaining:I

    .line 257
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$1;->element:Ljava/lang/Object;

    return-object v0
.end method
