.class Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset$ElementSet;
.super Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet;
.source "AbstractMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ElementSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset$ElementSet;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet;-><init>()V

    return-void
.end method


# virtual methods
.method multiset()Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset$ElementSet;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMultiset;

    return-object v0
.end method
