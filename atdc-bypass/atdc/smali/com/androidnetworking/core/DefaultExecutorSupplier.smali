.class public Lcom/androidnetworking/core/DefaultExecutorSupplier;
.super Ljava/lang/Object;
.source "DefaultExecutorSupplier.java"

# interfaces
.implements Lcom/androidnetworking/core/ExecutorSupplier;


# static fields
.field public static final DEFAULT_MAX_NUM_THREADS:I


# instance fields
.field private final mImmediateNetworkExecutor:Lcom/androidnetworking/core/ANExecutor;

.field private final mMainThreadExecutor:Ljava/util/concurrent/Executor;

.field private final mNetworkExecutor:Lcom/androidnetworking/core/ANExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/androidnetworking/core/DefaultExecutorSupplier;->DEFAULT_MAX_NUM_THREADS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/androidnetworking/core/PriorityThreadFactory;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/androidnetworking/core/PriorityThreadFactory;-><init>(I)V

    .line 37
    new-instance v1, Lcom/androidnetworking/core/ANExecutor;

    sget v2, Lcom/androidnetworking/core/DefaultExecutorSupplier;->DEFAULT_MAX_NUM_THREADS:I

    invoke-direct {v1, v2, v0}, Lcom/androidnetworking/core/ANExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/androidnetworking/core/DefaultExecutorSupplier;->mNetworkExecutor:Lcom/androidnetworking/core/ANExecutor;

    .line 38
    new-instance v1, Lcom/androidnetworking/core/ANExecutor;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lcom/androidnetworking/core/ANExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/androidnetworking/core/DefaultExecutorSupplier;->mImmediateNetworkExecutor:Lcom/androidnetworking/core/ANExecutor;

    .line 39
    new-instance v0, Lcom/androidnetworking/core/MainThreadExecutor;

    invoke-direct {v0}, Lcom/androidnetworking/core/MainThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/core/DefaultExecutorSupplier;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public forImmediateNetworkTasks()Lcom/androidnetworking/core/ANExecutor;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/androidnetworking/core/DefaultExecutorSupplier;->mImmediateNetworkExecutor:Lcom/androidnetworking/core/ANExecutor;

    return-object v0
.end method

.method public forMainThreadTasks()Ljava/util/concurrent/Executor;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/androidnetworking/core/DefaultExecutorSupplier;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public forNetworkTasks()Lcom/androidnetworking/core/ANExecutor;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/androidnetworking/core/DefaultExecutorSupplier;->mNetworkExecutor:Lcom/androidnetworking/core/ANExecutor;

    return-object v0
.end method
