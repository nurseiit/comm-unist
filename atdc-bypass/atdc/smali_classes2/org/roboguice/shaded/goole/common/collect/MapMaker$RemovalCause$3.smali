.class final enum Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause$3;
.super Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 715
    invoke-direct {p0, p1, p2, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;-><init>(Ljava/lang/String;ILorg/roboguice/shaded/goole/common/collect/MapMaker$1;)V

    return-void
.end method


# virtual methods
.method wasEvicted()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
