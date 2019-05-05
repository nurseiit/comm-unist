.class Lcom/google/inject/internal/Errors$1;
.super Lorg/roboguice/shaded/goole/common/collect/Ordering;
.source "Errors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Ordering<",
        "Lcom/google/inject/spi/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/internal/Errors;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/Errors;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/google/inject/internal/Errors$1;->this$0:Lcom/google/inject/internal/Errors;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/inject/spi/Message;Lcom/google/inject/spi/Message;)I
    .locals 0

    .line 549
    invoke-virtual {p1}, Lcom/google/inject/spi/Message;->getSource()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/inject/spi/Message;->getSource()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 546
    check-cast p1, Lcom/google/inject/spi/Message;

    check-cast p2, Lcom/google/inject/spi/Message;

    invoke-virtual {p0, p1, p2}, Lcom/google/inject/internal/Errors$1;->compare(Lcom/google/inject/spi/Message;Lcom/google/inject/spi/Message;)I

    move-result p1

    return p1
.end method
