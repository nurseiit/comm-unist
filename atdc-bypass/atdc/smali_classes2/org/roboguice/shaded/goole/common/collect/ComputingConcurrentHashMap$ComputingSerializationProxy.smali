.class final Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;
.super Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$AbstractSerializationProxy;
.source "ComputingConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ComputingSerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$AbstractSerializationProxy<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field final computingFunction:Lorg/roboguice/shaded/goole/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;Lorg/roboguice/shaded/goole/common/base/Equivalence;Lorg/roboguice/shaded/goole/common/base/Equivalence;JJIILorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;Ljava/util/concurrent/ConcurrentMap;Lorg/roboguice/shaded/goole/common/base/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;JJII",
            "Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener<",
            "-TK;-TV;>;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function<",
            "-TK;+TV;>;)V"
        }
    .end annotation

    .line 396
    invoke-direct/range {p0 .. p12}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$AbstractSerializationProxy;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;Lorg/roboguice/shaded/goole/common/base/Equivalence;Lorg/roboguice/shaded/goole/common/base/Equivalence;JJIILorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;Ljava/util/concurrent/ConcurrentMap;)V

    .line 398
    iput-object p13, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->computingFunction:Lorg/roboguice/shaded/goole/common/base/Function;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 408
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 409
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->readMapMaker(Ljava/io/ObjectInputStream;)Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    move-result-object v0

    .line 410
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->computingFunction:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->makeComputingMap(Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    .line 411
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->readEntries(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 403
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->writeMapTo(Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 415
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method
