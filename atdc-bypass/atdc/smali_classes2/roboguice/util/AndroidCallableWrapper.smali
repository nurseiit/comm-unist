.class public Lroboguice/util/AndroidCallableWrapper;
.super Ljava/lang/Object;
.source "AndroidCallableWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field static isPreCallOverriddenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lroboguice/util/AndroidCallableI<",
            "*>;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected delegate:Lroboguice/util/AndroidCallableI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lroboguice/util/AndroidCallableI<",
            "TResultT;>;"
        }
    .end annotation
.end field

.field protected handler:Landroid/os/Handler;

.field protected launchLocation:[Ljava/lang/StackTraceElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lroboguice/util/AndroidCallableWrapper;->isPreCallOverriddenMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lroboguice/util/AndroidCallableI;[Ljava/lang/StackTraceElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lroboguice/util/AndroidCallableI<",
            "TResultT;>;[",
            "Ljava/lang/StackTraceElement;",
            ")V"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "MALICIOUS_CODE"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lroboguice/util/AndroidCallableWrapper;->delegate:Lroboguice/util/AndroidCallableI;

    .line 28
    iput-object p3, p0, Lroboguice/util/AndroidCallableWrapper;->launchLocation:[Ljava/lang/StackTraceElement;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    iput-object p1, p0, Lroboguice/util/AndroidCallableWrapper;->handler:Landroid/os/Handler;

    return-void
.end method

.method static isPreCallOverriden(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lroboguice/util/AndroidCallableI<",
            "*>;>;)Z"
        }
    .end annotation

    .line 133
    :try_start_0
    sget-object v0, Lroboguice/util/AndroidCallableWrapper;->isPreCallOverriddenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "onPreCall"

    const/4 v1, 0x0

    .line 137
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lroboguice/util/AndroidCallableWrapper;

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 138
    sget-object v1, Lroboguice/util/AndroidCallableWrapper;->isPreCallOverriddenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method afterCall(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lroboguice/util/AndroidCallableWrapper;->handler:Landroid/os/Handler;

    new-instance v1, Lroboguice/util/AndroidCallableWrapper$2;

    invoke-direct {v1, p0, p2, p1}, Lroboguice/util/AndroidCallableWrapper$2;-><init>(Lroboguice/util/AndroidCallableWrapper;Ljava/lang/Exception;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method beforeCall()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 52
    new-array v1, v1, [Ljava/lang/Exception;

    .line 58
    iget-object v2, p0, Lroboguice/util/AndroidCallableWrapper;->handler:Landroid/os/Handler;

    new-instance v3, Lroboguice/util/AndroidCallableWrapper$1;

    invoke-direct {v3, p0, v1, v0}, Lroboguice/util/AndroidCallableWrapper$1;-><init>(Lroboguice/util/AndroidCallableWrapper;[Ljava/lang/Exception;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    const/4 v0, 0x0

    .line 79
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 80
    aget-object v0, v1, v0

    throw v0

    :cond_0
    return-void
.end method

.method protected doDoInBackgroundThread()Ljava/lang/Object;
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

    .line 113
    iget-object v0, p0, Lroboguice/util/AndroidCallableWrapper;->delegate:Lroboguice/util/AndroidCallableI;

    invoke-interface {v0}, Lroboguice/util/AndroidCallableI;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected doOnException(Ljava/lang/Exception;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lroboguice/util/AndroidCallableWrapper;->delegate:Lroboguice/util/AndroidCallableI;

    invoke-interface {v0, p1}, Lroboguice/util/AndroidCallableI;->onException(Ljava/lang/Exception;)V

    return-void
.end method

.method protected doOnFinally()V
    .locals 1

    .line 125
    iget-object v0, p0, Lroboguice/util/AndroidCallableWrapper;->delegate:Lroboguice/util/AndroidCallableI;

    invoke-interface {v0}, Lroboguice/util/AndroidCallableI;->onFinally()V

    return-void
.end method

.method protected doOnPreCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lroboguice/util/AndroidCallableWrapper;->delegate:Lroboguice/util/AndroidCallableI;

    invoke-interface {v0}, Lroboguice/util/AndroidCallableI;->onPreCall()V

    return-void
.end method

.method protected doOnSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lroboguice/util/AndroidCallableWrapper;->delegate:Lroboguice/util/AndroidCallableI;

    invoke-interface {v0, p1}, Lroboguice/util/AndroidCallableI;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 2

    const/4 v0, 0x0

    .line 38
    :try_start_0
    iget-object v1, p0, Lroboguice/util/AndroidCallableWrapper;->delegate:Lroboguice/util/AndroidCallableI;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lroboguice/util/AndroidCallableWrapper;->isPreCallOverriden(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lroboguice/util/AndroidCallableWrapper;->beforeCall()V

    .line 41
    :cond_0
    invoke-virtual {p0}, Lroboguice/util/AndroidCallableWrapper;->doDoInBackgroundThread()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {p0, v1, v0}, Lroboguice/util/AndroidCallableWrapper;->afterCall(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0, v0}, Lroboguice/util/AndroidCallableWrapper;->afterCall(Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v1

    :catch_0
    move-exception v1

    invoke-virtual {p0, v0, v1}, Lroboguice/util/AndroidCallableWrapper;->afterCall(Ljava/lang/Object;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
