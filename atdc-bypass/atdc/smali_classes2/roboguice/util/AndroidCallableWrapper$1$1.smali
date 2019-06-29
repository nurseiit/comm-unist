.class Lroboguice/util/AndroidCallableWrapper$1$1;
.super Ljava/lang/Object;
.source "AndroidCallableWrapper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lroboguice/util/AndroidCallableWrapper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lroboguice/util/AndroidCallableWrapper$1;


# direct methods
.method constructor <init>(Lroboguice/util/AndroidCallableWrapper$1;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lroboguice/util/AndroidCallableWrapper$1$1;->this$1:Lroboguice/util/AndroidCallableWrapper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lroboguice/util/AndroidCallableWrapper$1$1;->this$1:Lroboguice/util/AndroidCallableWrapper$1;

    iget-object v0, v0, Lroboguice/util/AndroidCallableWrapper$1;->this$0:Lroboguice/util/AndroidCallableWrapper;

    invoke-virtual {v0}, Lroboguice/util/AndroidCallableWrapper;->doOnPreCall()V

    const/4 v0, 0x0

    return-object v0
.end method
