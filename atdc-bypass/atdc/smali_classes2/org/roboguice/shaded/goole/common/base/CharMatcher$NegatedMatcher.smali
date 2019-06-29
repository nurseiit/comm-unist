.class Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedMatcher;
.super Lorg/roboguice/shaded/goole/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NegatedMatcher"
.end annotation


# instance fields
.field final original:Lorg/roboguice/shaded/goole/common/base/CharMatcher;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/roboguice/shaded/goole/common/base/CharMatcher;)V
    .locals 0

    .line 628
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    .line 629
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedMatcher;->original:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    return-void
.end method

.method constructor <init>(Lorg/roboguice/shaded/goole/common/base/CharMatcher;)V
    .locals 2

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".negate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedMatcher;-><init>(Ljava/lang/String;Lorg/roboguice/shaded/goole/common/base/CharMatcher;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 624
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .locals 2

    .line 649
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedMatcher;->original:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    invoke-virtual {v1, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->countIn(Ljava/lang/CharSequence;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public matches(C)Z
    .locals 1

    .line 637
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedMatcher;->original:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 641
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedMatcher;->original:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matchesNoneOf(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 645
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedMatcher;->original:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public negate()Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 1

    .line 662
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedMatcher;->original:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    return-object v0
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 3
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .line 655
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 656
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedMatcher;->original:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    invoke-virtual {v1, v0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->setBits(Ljava/util/BitSet;)V

    const/4 v1, 0x0

    const/high16 v2, 0x10000

    .line 657
    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->flip(II)V

    .line 658
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    return-void
.end method

.method withToString(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 2

    .line 667
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedMatcher;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedMatcher;->original:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    invoke-direct {v0, p1, v1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedMatcher;-><init>(Ljava/lang/String;Lorg/roboguice/shaded/goole/common/base/CharMatcher;)V

    return-object v0
.end method
