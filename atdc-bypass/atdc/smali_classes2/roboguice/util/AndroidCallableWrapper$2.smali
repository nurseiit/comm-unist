.class Lroboguice/util/AndroidCallableWrapper$2;
.super Ljava/lang/Object;
.source "AndroidCallableWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lroboguice/util/AndroidCallableWrapper;->afterCall(Ljava/lang/Object;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lroboguice/util/AndroidCallableWrapper;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lroboguice/util/AndroidCallableWrapper;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lroboguice/util/AndroidCallableWrapper$2;->this$0:Lroboguice/util/AndroidCallableWrapper;

    iput-object p2, p0, Lroboguice/util/AndroidCallableWrapper$2;->val$e:Ljava/lang/Exception;

    iput-object p3, p0, Lroboguice/util/AndroidCallableWrapper$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 89
    :try_start_0
    iget-object v0, p0, Lroboguice/util/AndroidCallableWrapper$2;->val$e:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lroboguice/util/AndroidCallableWrapper$2;->this$0:Lroboguice/util/AndroidCallableWrapper;

    iget-object v0, v0, Lroboguice/util/AndroidCallableWrapper;->launchLocation:[Ljava/lang/StackTraceElement;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lroboguice/util/AndroidCallableWrapper$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 92
    array-length v1, v0

    iget-object v2, p0, Lroboguice/util/AndroidCallableWrapper$2;->this$0:Lroboguice/util/AndroidCallableWrapper;

    iget-object v2, v2, Lroboguice/util/AndroidCallableWrapper;->launchLocation:[Ljava/lang/StackTraceElement;

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    .line 93
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iget-object v2, p0, Lroboguice/util/AndroidCallableWrapper$2;->this$0:Lroboguice/util/AndroidCallableWrapper;

    iget-object v2, v2, Lroboguice/util/AndroidCallableWrapper;->launchLocation:[Ljava/lang/StackTraceElement;

    array-length v0, v0

    iget-object v4, p0, Lroboguice/util/AndroidCallableWrapper$2;->this$0:Lroboguice/util/AndroidCallableWrapper;

    iget-object v4, v4, Lroboguice/util/AndroidCallableWrapper;->launchLocation:[Ljava/lang/StackTraceElement;

    array-length v4, v4

    invoke-static {v2, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget-object v0, p0, Lroboguice/util/AndroidCallableWrapper$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lroboguice/util/AndroidCallableWrapper$2;->this$0:Lroboguice/util/AndroidCallableWrapper;

    iget-object v1, p0, Lroboguice/util/AndroidCallableWrapper$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lroboguice/util/AndroidCallableWrapper;->doOnException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lroboguice/util/AndroidCallableWrapper$2;->this$0:Lroboguice/util/AndroidCallableWrapper;

    iget-object v1, p0, Lroboguice/util/AndroidCallableWrapper$2;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lroboguice/util/AndroidCallableWrapper;->doOnSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :goto_0
    iget-object v0, p0, Lroboguice/util/AndroidCallableWrapper$2;->this$0:Lroboguice/util/AndroidCallableWrapper;

    invoke-virtual {v0}, Lroboguice/util/AndroidCallableWrapper;->doOnFinally()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lroboguice/util/AndroidCallableWrapper$2;->this$0:Lroboguice/util/AndroidCallableWrapper;

    invoke-virtual {v1}, Lroboguice/util/AndroidCallableWrapper;->doOnFinally()V

    throw v0
.end method
