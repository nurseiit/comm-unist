.class abstract Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;
.super Ljava/lang/Object;
.source "GenericMapMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker$NullListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# instance fields
.field removalListener:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener<",
            "TK0;TV0;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract concurrencyLevel(I)Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker<",
            "TK0;TV0;>;"
        }
    .end annotation
.end method

.method abstract expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker<",
            "TK0;TV0;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation
.end method

.method abstract expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker<",
            "TK0;TV0;>;"
        }
    .end annotation
.end method

.method getRemovalListener()Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .line 131
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;->removalListener:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker$NullListener;->INSTANCE:Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker$NullListener;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;

    return-object v0
.end method

.method public abstract initialCapacity(I)Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker<",
            "TK0;TV0;>;"
        }
    .end annotation
.end method

.method abstract keyEquivalence(Lorg/roboguice/shaded/goole/common/base/Equivalence;)Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker<",
            "TK0;TV0;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation
.end method

.method abstract makeComputingMap(Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>(",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method abstract makeCustomMap()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "MapMakerInternalMap"
    .end annotation
.end method

.method public abstract makeMap()Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method abstract maximumSize(I)Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker<",
            "TK0;TV0;>;"
        }
    .end annotation
.end method

.method public abstract softValues()Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker<",
            "TK0;TV0;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.lang.ref.SoftReference"
    .end annotation
.end method

.method public abstract weakKeys()Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker<",
            "TK0;TV0;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation
.end method

.method public abstract weakValues()Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker<",
            "TK0;TV0;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation
.end method
