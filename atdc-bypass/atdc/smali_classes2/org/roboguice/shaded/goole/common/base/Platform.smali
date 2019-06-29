.class final Lorg/roboguice/shaded/goole/common/base/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field private static final DEST_TL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Platform$1;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/base/Platform$1;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/Platform;->DEST_TL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static charBufferFromThreadLocal()[C
    .locals 1

    .line 32
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Platform;->DEST_TL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method static precomputeCharMatcher(Lorg/roboguice/shaded/goole/common/base/CharMatcher;)Lorg/roboguice/shaded/goole/common/base/CharMatcher;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/base/CharMatcher;->precomputedInternal()Lorg/roboguice/shaded/goole/common/base/CharMatcher;

    move-result-object p0

    return-object p0
.end method

.method static systemNanoTime()J
    .locals 2

    .line 37
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
