.class Lorg/roboguice/shaded/goole/common/base/CharMatcher$Or;
.super Lorg/roboguice/shaded/goole/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Or"
.end annotation


# instance fields
.field final first:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

.field final second:Lorg/roboguice/shaded/goole/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/base/CharMatcher;Lorg/roboguice/shaded/goole/common/base/CharMatcher;)V
    .locals 2

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.or("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$Or;-><init>(Lorg/roboguice/shaded/goole/common/base/CharMatcher;Lorg/roboguice/shaded/goole/common/base/CharMatcher;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/roboguice/shaded/goole/common/base/CharMatcher;Lorg/roboguice/shaded/goole/common/base/CharMatcher;Ljava/lang/String;)V
    .locals 0

    .line 726
    invoke-direct {p0, p3}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    .line 727
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$Or;->first:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    .line 728
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$Or;->second:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 721
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public matches(C)Z
    .locals 1

    .line 744
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$Or;->first:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$Or;->second:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 1
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .line 738
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$Or;->first:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->setBits(Ljava/util/BitSet;)V

    .line 739
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$Or;->second:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->setBits(Ljava/util/BitSet;)V

    return-void
.end method

.method withToString(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 3

    .line 749
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$Or;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$Or;->first:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$Or;->second:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    invoke-direct {v0, v1, v2, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$Or;-><init>(Lorg/roboguice/shaded/goole/common/base/CharMatcher;Lorg/roboguice/shaded/goole/common/base/CharMatcher;Ljava/lang/String;)V

    return-object v0
.end method
