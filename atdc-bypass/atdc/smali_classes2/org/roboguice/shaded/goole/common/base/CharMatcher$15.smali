.class final Lorg/roboguice/shaded/goole/common/base/CharMatcher$15;
.super Lorg/roboguice/shaded/goole/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final TABLE:Ljava/lang/String; = "\t\u3000\n\t\t\t\u202f\t\t\u2001\u2006\t\t\t\t\t\u180e\t\u2029\t\t\t\u2000\u2005\u200a\t\t\t\r\t\t\u2028\u1680\t\u00a0\t\u2004\u2009\t\t\t\u000c\u205f\t\t \t\t\u2003\u2008\t\t\t\u000b\u0085\t\t\t\t\t\t\u2002\u2007\t"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1361
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(C)Z
    .locals 2

    const-string v0, "\t\u3000\n\t\t\t\u202f\t\t\u2001\u2006\t\t\t\t\t\u180e\t\u2029\t\t\t\u2000\u2005\u200a\t\t\t\r\t\t\u2028\u1680\t\u00a0\t\u2004\u2009\t\t\t\u000c\u205f\t\t \t\t\u2003\u2008\t\t\t\u000b\u0085\t\t\t\t\t\t\u2002\u2007\t"

    const v1, -0x32553521    # -3.5817776E8f

    mul-int v1, v1, p1

    ushr-int/lit8 v1, v1, 0x1a

    .line 1373
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

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

    const/4 v0, 0x0

    :goto_0
    const-string v1, "\t\u3000\n\t\t\t\u202f\t\t\u2001\u2006\t\t\t\t\t\u180e\t\u2029\t\t\t\u2000\u2005\u200a\t\t\t\r\t\t\u2028\u1680\t\u00a0\t\u2004\u2009\t\t\t\u000c\u205f\t\t \t\t\u2003\u2008\t\t\t\u000b\u0085\t\t\t\t\t\t\u2002\u2007\t"

    .line 1379
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string v1, "\t\u3000\n\t\t\t\u202f\t\t\u2001\u2006\t\t\t\t\t\u180e\t\u2029\t\t\t\u2000\u2005\u200a\t\t\t\r\t\t\u2028\u1680\t\u00a0\t\u2004\u2009\t\t\t\u000c\u205f\t\t \t\t\u2003\u2008\t\t\t\u000b\u0085\t\t\t\t\t\t\u2002\u2007\t"

    .line 1380
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
