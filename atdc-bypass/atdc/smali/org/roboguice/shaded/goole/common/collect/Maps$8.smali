.class final Lorg/roboguice/shaded/goole/common/collect/Maps$8;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps;->asValueToValueFunction(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/base/Function<",
        "TV1;TV2;>;"
    }
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/Object;

.field final synthetic val$transformer:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;Ljava/lang/Object;)V
    .locals 0

    .line 1818
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$8;->val$transformer:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$8;->val$key:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;)TV2;"
        }
    .end annotation

    .line 1821
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$8;->val$transformer:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$8;->val$key:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;->transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
