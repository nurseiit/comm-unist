.class abstract enum Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;
.super Ljava/lang/Enum;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "EntryFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

.field static final EVICTABLE_MASK:I = 0x2

.field static final EXPIRABLE_MASK:I = 0x1

.field public static final enum STRONG:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum STRONG_EVICTABLE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum STRONG_EXPIRABLE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum STRONG_EXPIRABLE_EVICTABLE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum WEAK:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum WEAK_EVICTABLE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum WEAK_EXPIRABLE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

.field public static final enum WEAK_EXPIRABLE_EVICTABLE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

.field static final factories:[[Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 352
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory$1;

    const-string v1, "STRONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->STRONG:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    .line 359
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory$2;

    const-string v1, "STRONG_EXPIRABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->STRONG_EXPIRABLE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    .line 374
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory$3;

    const-string v1, "STRONG_EVICTABLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->STRONG_EVICTABLE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    .line 389
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory$4;

    const-string v1, "STRONG_EXPIRABLE_EVICTABLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->STRONG_EXPIRABLE_EVICTABLE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    .line 406
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory$5;

    const-string v1, "WEAK"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->WEAK:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    .line 413
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory$6;

    const-string v1, "WEAK_EXPIRABLE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->WEAK_EXPIRABLE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    .line 428
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory$7;

    const-string v1, "WEAK_EVICTABLE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->WEAK_EVICTABLE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    .line 443
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory$8;

    const-string v1, "WEAK_EXPIRABLE_EVICTABLE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->WEAK_EXPIRABLE_EVICTABLE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    const/16 v0, 0x8

    .line 351
    new-array v0, v0, [Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->STRONG:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v2

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->STRONG_EXPIRABLE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v3

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->STRONG_EVICTABLE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v4

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->STRONG_EXPIRABLE_EVICTABLE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v5

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->WEAK:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v6

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->WEAK_EXPIRABLE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v7

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->WEAK_EVICTABLE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v8

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->WEAK_EXPIRABLE_EVICTABLE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v9

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->$VALUES:[Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    .line 470
    new-array v0, v5, [[Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    new-array v1, v6, [Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    sget-object v7, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->STRONG:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v7, v1, v2

    sget-object v7, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->STRONG_EXPIRABLE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v7, v1, v3

    sget-object v7, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->STRONG_EVICTABLE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v7, v1, v4

    sget-object v7, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->STRONG_EXPIRABLE_EVICTABLE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v7, v1, v5

    aput-object v1, v0, v2

    new-array v1, v2, [Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v1, v0, v3

    new-array v1, v6, [Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    sget-object v6, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->WEAK:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v6, v1, v2

    sget-object v2, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->WEAK_EXPIRABLE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v3

    sget-object v2, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->WEAK_EVICTABLE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v4

    sget-object v2, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->WEAK_EXPIRABLE_EVICTABLE:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->factories:[[Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 351
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$1;)V
    .locals 0

    .line 351
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getFactory(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;ZZ)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    .line 479
    sget-object p2, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->factories:[[Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;->ordinal()I

    move-result p0

    aget-object p0, p2, p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;
    .locals 1

    .line 351
    const-class v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    return-object p0
.end method

.method public static values()[Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;
    .locals 1

    .line 351
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->$VALUES:[Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    invoke-virtual {v0}, [Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;

    return-object v0
.end method


# virtual methods
.method copyEntry(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 502
    invoke-interface {p2}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryFactory;->newEntry(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object p1

    return-object p1
.end method

.method copyEvictableEntry(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 521
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->getPreviousEvictable()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->connectEvictables(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 522
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextEvictable()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->connectEvictables(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 524
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->nullifyEvictable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    return-void
.end method

.method copyExpirableEntry(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .line 509
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->getExpirationTime()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->setExpirationTime(J)V

    .line 511
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->getPreviousExpirable()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->connectExpirables(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 512
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->connectExpirables(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 514
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->nullifyExpirable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    return-void
.end method

.method abstract newEntry(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .param p4    # Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment<",
            "TK;TV;>;TK;I",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end method
