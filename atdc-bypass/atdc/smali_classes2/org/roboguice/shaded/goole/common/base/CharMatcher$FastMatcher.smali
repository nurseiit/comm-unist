.class abstract Lorg/roboguice/shaded/goole/common/base/CharMatcher$FastMatcher;
.super Lorg/roboguice/shaded/goole/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "FastMatcher"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 813
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 817
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 811
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public negate()Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 1

    .line 827
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedFastMatcher;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$NegatedFastMatcher;-><init>(Lorg/roboguice/shaded/goole/common/base/CharMatcher;)V

    return-object v0
.end method

.method public final precomputed()Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 0

    return-object p0
.end method
