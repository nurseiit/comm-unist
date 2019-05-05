.class final Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedFastMatcher;
.super Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NegatedFastMatcher"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/roboguice/shaded/goole/common/base/CharMatcher;)V
    .locals 0

    .line 837
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedMatcher;-><init>(Ljava/lang/String;Lorg/roboguice/shaded/goole/common/base/CharMatcher;)V

    return-void
.end method

.method constructor <init>(Lorg/roboguice/shaded/goole/common/base/CharMatcher;)V
    .locals 0

    .line 833
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedMatcher;-><init>(Lorg/roboguice/shaded/goole/common/base/CharMatcher;)V

    return-void
.end method


# virtual methods
.method public final precomputed()Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 0

    return-object p0
.end method

.method withToString(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 2

    .line 847
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedFastMatcher;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedFastMatcher;->original:Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    invoke-direct {v0, p1, v1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedFastMatcher;-><init>(Ljava/lang/String;Lorg/roboguice/shaded/goole/common/base/CharMatcher;)V

    return-object v0
.end method
