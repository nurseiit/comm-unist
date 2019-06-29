.class Lroboguice/util/AndroidCallableWrapper$1;
.super Ljava/lang/Object;
.source "AndroidCallableWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lroboguice/util/AndroidCallableWrapper;->beforeCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lroboguice/util/AndroidCallableWrapper;

.field final synthetic val$exceptions:[Ljava/lang/Exception;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lroboguice/util/AndroidCallableWrapper;[Ljava/lang/Exception;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lroboguice/util/AndroidCallableWrapper$1;->this$0:Lroboguice/util/AndroidCallableWrapper;

    iput-object p2, p0, Lroboguice/util/AndroidCallableWrapper$1;->val$exceptions:[Ljava/lang/Exception;

    iput-object p3, p0, Lroboguice/util/AndroidCallableWrapper$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 61
    :try_start_0
    new-instance v0, Lroboguice/util/AndroidCallableWrapper$1$1;

    invoke-direct {v0, p0}, Lroboguice/util/AndroidCallableWrapper$1$1;-><init>(Lroboguice/util/AndroidCallableWrapper$1;)V

    invoke-virtual {v0}, Lroboguice/util/AndroidCallableWrapper$1$1;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :goto_0
    iget-object v0, p0, Lroboguice/util/AndroidCallableWrapper$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 69
    :try_start_1
    iget-object v1, p0, Lroboguice/util/AndroidCallableWrapper$1;->val$exceptions:[Ljava/lang/Exception;

    const/4 v2, 0x0

    aput-object v0, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 71
    :goto_2
    iget-object v1, p0, Lroboguice/util/AndroidCallableWrapper$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
