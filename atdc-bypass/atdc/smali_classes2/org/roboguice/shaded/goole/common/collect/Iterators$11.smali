.class final Lorg/roboguice/shaded/goole/common/collect/Iterators$11;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractIndexedListIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Iterators;->forArray([Ljava/lang/Object;III)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/AbstractIndexedListIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$array:[Ljava/lang/Object;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(II[Ljava/lang/Object;I)V
    .locals 0

    .line 1048
    iput-object p3, p0, Lorg/roboguice/shaded/goole/common/collect/Iterators$11;->val$array:[Ljava/lang/Object;

    iput p4, p0, Lorg/roboguice/shaded/goole/common/collect/Iterators$11;->val$offset:I

    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/AbstractIndexedListIterator;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1050
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Iterators$11;->val$array:[Ljava/lang/Object;

    iget v1, p0, Lorg/roboguice/shaded/goole/common/collect/Iterators$11;->val$offset:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method
