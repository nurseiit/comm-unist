.class final Lorg/roboguice/shaded/goole/common/base/CharMatcher$9;
.super Lorg/roboguice/shaded/goole/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/base/CharMatcher;->is(C)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
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

    .line 414
    iput-char p2, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$9;->val$match:C

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public and(Lorg/roboguice/shaded/goole/common/base/CharMatcher;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 1

    .line 424
    iget-char v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$9;->val$match:C

    invoke-virtual {p1, v0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/roboguice/shaded/goole/common/base/CharMatcher$9;->NONE:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    :goto_0
    return-object p1
.end method

.method public matches(C)Z
    .locals 1

    .line 416
    iget-char v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$9;->val$match:C

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public negate()Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 1

    .line 432
    iget-char v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$9;->val$match:C

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$9;->isNot(C)Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public or(Lorg/roboguice/shaded/goole/common/base/CharMatcher;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 1

    .line 428
    iget-char v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$9;->val$match:C

    invoke-virtual {p1, v0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$FastMatcher;->or(Lorg/roboguice/shaded/goole/common/base/CharMatcher;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 1

    .line 420
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-char v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$9;->val$match:C

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 1
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .line 438
    iget-char v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$9;->val$match:C

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-void
.end method
