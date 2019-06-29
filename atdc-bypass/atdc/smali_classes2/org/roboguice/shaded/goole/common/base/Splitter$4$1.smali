.class Lorg/roboguice/shaded/goole/common/base/Splitter$4$1;
.super Lorg/roboguice/shaded/goole/common/base/Splitter$SplittingIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/base/Splitter$4;->iterator(Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;)Lorg/roboguice/shaded/goole/common/base/Splitter$SplittingIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/base/Splitter$4;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/base/Splitter$4;Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/base/Splitter$4$1;->this$0:Lorg/roboguice/shaded/goole/common/base/Splitter$4;

    invoke-direct {p0, p2, p3}, Lorg/roboguice/shaded/goole/common/base/Splitter$SplittingIterator;-><init>(Lorg/roboguice/shaded/goole/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public separatorEnd(I)I
    .locals 0

    return p1
.end method

.method public separatorStart(I)I
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Splitter$4$1;->this$0:Lorg/roboguice/shaded/goole/common/base/Splitter$4;

    iget v0, v0, Lorg/roboguice/shaded/goole/common/base/Splitter$4;->val$length:I

    add-int/2addr p1, v0

    .line 285
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Splitter$4$1;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
