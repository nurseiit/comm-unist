.class public Lorg/roboguice/shaded/goole/common/collect/ForwardingNavigableSet$StandardDescendingSet;
.super Lorg/roboguice/shaded/goole/common/collect/Sets$DescendingSet;
.source "ForwardingNavigableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ForwardingNavigableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardDescendingSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Sets$DescendingSet<",
        "TE;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/ForwardingNavigableSet;


# direct methods
.method public constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ForwardingNavigableSet;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ForwardingNavigableSet$StandardDescendingSet;->this$0:Lorg/roboguice/shaded/goole/common/collect/ForwardingNavigableSet;

    .line 166
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets$DescendingSet;-><init>(Ljava/util/NavigableSet;)V

    return-void
.end method
