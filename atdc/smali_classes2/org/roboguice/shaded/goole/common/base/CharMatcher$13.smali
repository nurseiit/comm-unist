.class final Lorg/roboguice/shaded/goole/common/base/CharMatcher$13;
.super Lorg/roboguice/shaded/goole/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/base/CharMatcher;->inRange(CCLjava/lang/String;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$endInclusive:C

.field final synthetic val$startInclusive:C


# direct methods
.method constructor <init>(Ljava/lang/String;CC)V
    .locals 0

    .line 557
    iput-char p2, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$13;->val$startInclusive:C

    iput-char p3, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$13;->val$endInclusive:C

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(C)Z
    .locals 1

    .line 559
    iget-char v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$13;->val$startInclusive:C

    if-gt v0, p1, :cond_0

    iget-char v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$13;->val$endInclusive:C

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 2
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .line 564
    iget-char v0, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$13;->val$startInclusive:C

    iget-char v1, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$13;->val$endInclusive:C

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(II)V

    return-void
.end method
