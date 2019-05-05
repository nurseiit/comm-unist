.class final Lorg/roboguice/shaded/goole/common/base/Equivalence$Equals;
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
    name = "Equals"
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
.field static final INSTANCE:Lorg/roboguice/shaded/goole/common/base/Equivalence$Equals;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 324
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Equivalence$Equals;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/base/Equivalence$Equals;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/Equivalence$Equals;->INSTANCE:Lorg/roboguice/shaded/goole/common/base/Equivalence$Equals;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 321
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/base/Equivalence;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 334
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Equivalence$Equals;->INSTANCE:Lorg/roboguice/shaded/goole/common/base/Equivalence$Equals;

    return-object v0
.end method


# virtual methods
.method protected doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 327
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public doHash(Ljava/lang/Object;)I
    .locals 0

    .line 330
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method
