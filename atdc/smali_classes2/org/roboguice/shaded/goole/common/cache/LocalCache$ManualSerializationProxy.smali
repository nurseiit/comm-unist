.class Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;
.super Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;
.source "LocalCache.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ManualSerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/cache/ForwardingCache<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final concurrencyLevel:I

.field transient delegate:Lorg/roboguice/shaded/goole/common/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/Cache<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final expireAfterAccessNanos:J

.field final expireAfterWriteNanos:J

.field final keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

.field final loader:Lorg/roboguice/shaded/goole/common/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<",
            "-TK;TV;>;"
        }
    .end annotation
.end field

.field final maxWeight:J

.field final removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/RemovalListener<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field

.field final ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

.field final valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

.field final weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/Weigher<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;Lorg/roboguice/shaded/goole/common/base/Equivalence;Lorg/roboguice/shaded/goole/common/base/Equivalence;JJJLorg/roboguice/shaded/goole/common/cache/Weigher;ILorg/roboguice/shaded/goole/common/cache/RemovalListener;Lorg/roboguice/shaded/goole/common/base/Ticker;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;JJJ",
            "Lorg/roboguice/shaded/goole/common/cache/Weigher<",
            "TK;TV;>;I",
            "Lorg/roboguice/shaded/goole/common/cache/RemovalListener<",
            "-TK;-TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Ticker;",
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<",
            "-TK;TV;>;)V"
        }
    .end annotation

    .line 4597
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;-><init>()V

    .line 4598
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    .line 4599
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    .line 4600
    iput-object p3, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    .line 4601
    iput-object p4, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    .line 4602
    iput-wide p5, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->expireAfterWriteNanos:J

    .line 4603
    iput-wide p7, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->expireAfterAccessNanos:J

    .line 4604
    iput-wide p9, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    .line 4605
    iput-object p11, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;

    .line 4606
    iput p12, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->concurrencyLevel:I

    .line 4607
    iput-object p13, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    .line 4608
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Ticker;->systemTicker()Lorg/roboguice/shaded/goole/common/base/Ticker;

    move-result-object p1

    if-eq p14, p1, :cond_0

    sget-object p1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->NULL_TICKER:Lorg/roboguice/shaded/goole/common/base/Ticker;

    if-ne p14, p1, :cond_1

    :cond_0
    const/4 p14, 0x0

    :cond_1
    iput-object p14, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    .line 4610
    iput-object p15, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->loader:Lorg/roboguice/shaded/goole/common/cache/CacheLoader;

    return-void
.end method

.method constructor <init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache<",
            "TK;TV;>;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 4576
    iget-object v1, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    iget-object v2, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    iget-object v3, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    iget-object v4, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    iget-wide v5, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expireAfterWriteNanos:J

    iget-wide v7, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expireAfterAccessNanos:J

    iget-wide v9, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->maxWeight:J

    iget-object v11, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;

    iget v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->concurrencyLevel:I

    iget-object v13, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    iget-object v14, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    iget-object v15, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->defaultLoader:Lorg/roboguice/shaded/goole/common/cache/CacheLoader;

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;Lorg/roboguice/shaded/goole/common/base/Equivalence;Lorg/roboguice/shaded/goole/common/base/Equivalence;JJJLorg/roboguice/shaded/goole/common/cache/Weigher;ILorg/roboguice/shaded/goole/common/cache/RemovalListener;Lorg/roboguice/shaded/goole/common/base/Ticker;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 4645
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4646
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->recreateCacheBuilder()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object p1

    .line 4647
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->build()Lorg/roboguice/shaded/goole/common/cache/Cache;

    move-result-object p1

    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->delegate:Lorg/roboguice/shaded/goole/common/cache/Cache;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 4651
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->delegate:Lorg/roboguice/shaded/goole/common/cache/Cache;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 4556
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->delegate()Lorg/roboguice/shaded/goole/common/cache/Cache;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Lorg/roboguice/shaded/goole/common/cache/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/Cache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4656
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->delegate:Lorg/roboguice/shaded/goole/common/cache/Cache;

    return-object v0
.end method

.method recreateCacheBuilder()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4614
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->newBuilder()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->setKeyStrength(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->setValueStrength(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->keyEquivalence(Lorg/roboguice/shaded/goole/common/base/Equivalence;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->valueEquivalence(Lorg/roboguice/shaded/goole/common/base/Equivalence;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    iget v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->concurrencyLevel:I

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->concurrencyLevel(I)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->removalListener(Lorg/roboguice/shaded/goole/common/cache/RemovalListener;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 4621
    iput-boolean v1, v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->strictParsing:Z

    .line 4622
    iget-wide v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->expireAfterWriteNanos:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 4623
    iget-wide v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->expireAfterWriteNanos:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v5}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    .line 4625
    :cond_0
    iget-wide v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->expireAfterAccessNanos:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 4626
    iget-wide v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->expireAfterAccessNanos:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    .line 4628
    :cond_1
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;

    sget-object v2, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;

    const-wide/16 v3, -0x1

    if-eq v1, v2, :cond_2

    .line 4629
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->weigher(Lorg/roboguice/shaded/goole/common/cache/Weigher;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    .line 4630
    iget-wide v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 4631
    iget-wide v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumWeight(J)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    goto :goto_0

    .line 4634
    :cond_2
    iget-wide v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 4635
    iget-wide v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumSize(J)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    .line 4638
    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    if-eqz v1, :cond_4

    .line 4639
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->ticker(Lorg/roboguice/shaded/goole/common/base/Ticker;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    :cond_4
    return-object v0
.end method
