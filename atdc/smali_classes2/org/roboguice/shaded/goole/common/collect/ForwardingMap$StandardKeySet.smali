.class public Lorg/roboguice/shaded/goole/common/collect/ForwardingMap$StandardKeySet;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$KeySet;
.source "ForwardingMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ForwardingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Maps$KeySet<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/ForwardingMap;


# direct methods
.method public constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ForwardingMap;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ForwardingMap$StandardKeySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/ForwardingMap;

    .line 199
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    return-void
.end method
