.class final Lorg/roboguice/shaded/goole/common/base/CharMatcher$10;
.super Lorg/roboguice/shaded/goole/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/base/CharMatcher;->isNot(C)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$match:C


# direct methods
.method constructor <init>(Ljava/lang/String;C)V
    .locals 0

    .line 450
    iput-char p2, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$10;->val$match:C

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public and(Lorg/roboguice/shaded/goole/common/base/CharMatcher;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 1

    .line 456
    iget-char v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$10;->val$match:C

    invoke-virtual {p1, v0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$FastMatcher;->and(Lorg/roboguice/shaded/goole/common/base/CharMatcher;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public matches(C)Z
    .locals 1

    .line 452
    iget-char v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$10;->val$match:C

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public negate()Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 1

    .line 471
    iget-char v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$10;->val$match:C

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$10;->is(C)Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public or(Lorg/roboguice/shaded/goole/common/base/CharMatcher;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 1

    .line 460
    iget-char v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$10;->val$match:C

    invoke-virtual {p1, v0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/roboguice/shaded/goole/common/base/CharMatcher$10;->ANY:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 2
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .line 466
    iget-char v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$10;->val$match:C

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/BitSet;->set(II)V

    .line 467
    iget-char v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$10;->val$match:C

    add-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x10000

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(II)V

    return-void
.end method