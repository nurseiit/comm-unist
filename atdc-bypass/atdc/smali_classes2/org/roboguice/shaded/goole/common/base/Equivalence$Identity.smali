.class final Lorg/roboguice/shaded/goole/common/base/Equivalence$Identity;
.super Lorg/roboguice/shaded/goole/common/base/Equivalence;
.source "Equivalence.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/base/Equivalence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Identity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/base/Equivalence<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lorg/roboguice/shaded/goole/common/base/Equivalence$Identity;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 342
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Equivalence$Identity;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/base/Equivalence$Identity;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/Equivalence$Identity;->INSTANCE:Lorg/roboguice/shaded/goole/common/base/Equivalence$Identity;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 339
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/base/Equivalence;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 353
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Equivalence$Identity;->INSTANCE:Lorg/roboguice/shaded/goole/common/base/Equivalence$Identity;

    return-object v0
.end method


# virtual methods
.method protected doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected doHash(Ljava/lang/Object;)I
    .locals 0

    .line 349
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
