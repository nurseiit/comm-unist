.class Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableSortedSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field final elements:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 815
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$SerializedForm;->comparator:Ljava/util/Comparator;

    .line 816
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$SerializedForm;->elements:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2

    .line 821
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$SerializedForm;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$SerializedForm;->elements:[Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;->add([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method
