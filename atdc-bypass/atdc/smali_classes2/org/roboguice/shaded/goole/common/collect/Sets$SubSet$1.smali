.class Lorg/roboguice/shaded/goole/common/collect/Sets$SubSet$1;
.super Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Sets$SubSet;->iterator()Ljava/util/Iterator;
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
.field final elements:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation
.end field

.field remainingSetBits:I

.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/Sets$SubSet;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Sets$SubSet;)V
    .locals 0

    .line 1243
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$SubSet$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Sets$SubSet;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;-><init>()V

    .line 1244
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$SubSet$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Sets$SubSet;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Sets$SubSet;->access$100(Lorg/roboguice/shaded/goole/common/collect/Sets$SubSet;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->asList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$SubSet$1;->elements:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    .line 1245
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$SubSet$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Sets$SubSet;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Sets$SubSet;->access$200(Lorg/roboguice/shaded/goole/common/collect/Sets$SubSet;)I

    move-result p1

    iput p1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$SubSet$1;->remainingSetBits:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1249
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$SubSet$1;->remainingSetBits:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1254
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$SubSet$1;->remainingSetBits:I

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1256
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1258
    :cond_0
    iget v1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$SubSet$1;->remainingSetBits:I

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$SubSet$1;->remainingSetBits:I

    .line 1259
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$SubSet$1;->elements:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
