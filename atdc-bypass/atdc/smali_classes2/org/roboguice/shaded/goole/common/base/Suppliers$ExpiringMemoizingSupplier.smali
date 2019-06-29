.class Lorg/roboguice/shaded/goole/common/base/Suppliers$ExpiringMemoizingSupplier;
.super Ljava/lang/Object;
.source "Suppliers.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/base/Supplier;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/base/Suppliers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExpiringMemoizingSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/base/Supplier<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/VisibleForTesting;
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lorg/roboguice/shaded/goole/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field final durationNanos:J

.field volatile transient expirationNanos:J

.field volatile transient value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/base/Supplier;JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Supplier<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/roboguice/shaded/goole/common/base/Supplier;

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/base/Suppliers$ExpiringMemoizingSupplier;->delegate:Lorg/roboguice/shaded/goole/common/base/Supplier;

    .line 176
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/base/Suppliers$ExpiringMemoizingSupplier;->durationNanos:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 177
    :goto_0
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 187
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/base/Suppliers$ExpiringMemoizingSupplier;->expirationNanos:J

    .line 188
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Platform;->systemNanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    sub-long v6, v2, v0

    cmp-long v8, v6, v4

    if-ltz v8, :cond_3

    .line 190
    :cond_0
    monitor-enter p0

    .line 191
    :try_start_0
    iget-wide v6, p0, Lorg/roboguice/shaded/goole/common/base/Suppliers$ExpiringMemoizingSupplier;->expirationNanos:J

    cmp-long v8, v0, v6

    if-nez v8, :cond_2

    .line 192
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Suppliers$ExpiringMemoizingSupplier;->delegate:Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 193
    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Suppliers$ExpiringMemoizingSupplier;->value:Ljava/lang/Object;

    .line 194
    iget-wide v6, p0, Lorg/roboguice/shaded/goole/common/base/Suppliers$ExpiringMemoizingSupplier;->durationNanos:J

    const/4 v1, 0x0

    add-long v8, v2, v6

    cmp-long v1, v8, v4

    if-nez v1, :cond_1

    const-wide/16 v8, 0x1

    .line 197
    :cond_1
    iput-wide v8, p0, Lorg/roboguice/shaded/goole/common/base/Suppliers$ExpiringMemoizingSupplier;->expirationNanos:J

    .line 198
    monitor-exit p0

    return-object v0

    .line 200
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :cond_3
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Suppliers$ExpiringMemoizingSupplier;->value:Ljava/lang/Object;

    return-object v0

    :catchall_0
    move-exception v0

    .line 200
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suppliers.memoizeWithExpiration("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Suppliers$ExpiringMemoizingSupplier;->delegate:Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/roboguice/shaded/goole/common/base/Suppliers$ExpiringMemoizingSupplier;->durationNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", NANOS)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
