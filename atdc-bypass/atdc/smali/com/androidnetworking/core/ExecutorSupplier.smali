.class public interface abstract Lcom/androidnetworking/core/ExecutorSupplier;
.super Ljava/lang/Object;
.source "ExecutorSupplier.java"


# virtual methods
.method public abstract forImmediateNetworkTasks()Lcom/androidnetworking/core/ANExecutor;
.end method

.method public abstract forMainThreadTasks()Ljava/util/concurrent/Executor;
.end method

.method public abstract forNetworkTasks()Lcom/androidnetworking/core/ANExecutor;
.end method
