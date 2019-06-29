.class Lorg/roboguice/shaded/goole/common/base/Converter$1;
.super Ljava/lang/Object;
.source "Converter.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/base/Converter;->convertAll(Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TB;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/base/Converter;

.field final synthetic val$fromIterable:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/base/Converter;Ljava/lang/Iterable;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/base/Converter$1;->this$0:Lorg/roboguice/shaded/goole/common/base/Converter;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/base/Converter$1;->val$fromIterable:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 182
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Converter$1$1;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/base/Converter$1$1;-><init>(Lorg/roboguice/shaded/goole/common/base/Converter$1;)V

    return-object v0
.end method
