.class public Lroboguice/util/SafeAsyncTask$SafeAsyncTaskAndroidCallable;
.super Lroboguice/util/AndroidCallable;
.source "SafeAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lroboguice/util/SafeAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SafeAsyncTaskAndroidCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lroboguice/util/AndroidCallable<",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lroboguice/util/SafeAsyncTask;


# direct methods
.method public constructor <init>(Lroboguice/util/SafeAsyncTask;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lroboguice/util/SafeAsyncTask$SafeAsyncTaskAndroidCallable;->this$0:Lroboguice/util/SafeAsyncTask;

    invoke-direct {p0}, Lroboguice/util/AndroidCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lroboguice/util/SafeAsyncTask$SafeAsyncTaskAndroidCallable;->this$0:Lroboguice/util/SafeAsyncTask;

    invoke-virtual {v0}, Lroboguice/util/SafeAsyncTask;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lroboguice/util/SafeAsyncTask$SafeAsyncTaskAndroidCallable;->this$0:Lroboguice/util/SafeAsyncTask;

    invoke-virtual {v0, p1}, Lroboguice/util/SafeAsyncTask;->onException(Ljava/lang/Exception;)V

    return-void
.end method

.method public onFinally()V
    .locals 1

    .line 173
    iget-object v0, p0, Lroboguice/util/SafeAsyncTask$SafeAsyncTaskAndroidCallable;->this$0:Lroboguice/util/SafeAsyncTask;

    invoke-virtual {v0}, Lroboguice/util/SafeAsyncTask;->onFinally()V

    return-void
.end method

.method public onPreCall()V
    .locals 2

    .line 179
    :try_start_0
    iget-object v0, p0, Lroboguice/util/SafeAsyncTask$SafeAsyncTaskAndroidCallable;->this$0:Lroboguice/util/SafeAsyncTask;

    invoke-virtual {v0}, Lroboguice/util/SafeAsyncTask;->onPreExecute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 181
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)V"
        }
    .end annotation

    .line 188
    :try_start_0
    iget-object v0, p0, Lroboguice/util/SafeAsyncTask$SafeAsyncTaskAndroidCallable;->this$0:Lroboguice/util/SafeAsyncTask;

    invoke-virtual {v0, p1}, Lroboguice/util/SafeAsyncTask;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 190
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
