.class final Lorg/roboguice/shaded/goole/common/collect/Maps$7;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps;->asEntryTransformer(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<",
        "TK;TV1;TV2;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lorg/roboguice/shaded/goole/common/base/Function;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/base/Function;)V
    .locals 0

    .line 1807
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$7;->val$function:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV1;)TV2;"
        }
    .end annotation

    .line 1810
    iget-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$7;->val$function:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-interface {p1, p2}, Lorg/roboguice/shaded/goole/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
