.class final Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeightedStrongValueReference;
.super Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongValueReference;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeightedStrongValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongValueReference<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final weight:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .line 1777
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongValueReference;-><init>(Ljava/lang/Object;)V

    .line 1778
    iput p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeightedStrongValueReference;->weight:I

    return-void
.end method


# virtual methods
.method public getWeight()I
    .locals 1

    .line 1783
    iget v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeightedStrongValueReference;->weight:I

    return v0
.end method
