.class Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedMap;
.super Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMap;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedSortedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMap<",
        "TK;TV;>;",
        "Ljava/util/SortedMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/SortedMap;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1057
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 1065
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1066
    :try_start_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1067
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1053
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/util/Map;
    .locals 1

    .line 1053
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method delegate()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1061
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1071
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1072
    :try_start_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1073
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1077
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1078
    :try_start_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->sortedMap(Ljava/util/SortedMap;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1079
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1083
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1084
    :try_start_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1085
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1089
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1090
    :try_start_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->sortedMap(Ljava/util/SortedMap;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1091
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1095
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1096
    :try_start_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->sortedMap(Ljava/util/SortedMap;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1097
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method