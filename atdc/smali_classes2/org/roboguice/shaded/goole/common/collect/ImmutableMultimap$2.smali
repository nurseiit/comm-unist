.class Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$2;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->valueIterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<",
        "TK;TV;>.Itr<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;)V
    .locals 1

    .line 633
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$2;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$1;)V

    return-void
.end method


# virtual methods
.method output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    return-object p2
.end method
