.class Lcom/google/inject/internal/Exceptions;
.super Ljava/lang/Object;
.source "Exceptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/Exceptions$UnhandledCheckedUserException;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    .line 44
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 45
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 46
    :cond_0
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_1

    .line 47
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 49
    :cond_1
    new-instance v0, Lcom/google/inject/internal/Exceptions$UnhandledCheckedUserException;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/Exceptions$UnhandledCheckedUserException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static rethrowCause(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    .line 36
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 39
    :cond_0
    invoke-static {p0}, Lcom/google/inject/internal/Exceptions;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    return-object p0
.end method
