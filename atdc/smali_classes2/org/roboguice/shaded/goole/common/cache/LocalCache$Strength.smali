.class abstract enum Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;
.super Ljava/lang/Enum;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "Strength"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

.field public static final enum SOFT:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

.field public static final enum STRONG:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

.field public static final enum WEAK:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 381
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength$1;

    const-string v1, "STRONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->STRONG:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    .line 396
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength$2;

    const-string v1, "SOFT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->SOFT:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    .line 412
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength$3;

    const-string v1, "WEAK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->WEAK:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    const/4 v0, 0x3

    .line 375
    new-array v0, v0, [Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->STRONG:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    aput-object v1, v0, v2

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->SOFT:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    aput-object v1, v0, v3

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->WEAK:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    aput-object v1, v0, v4

    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->$VALUES:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 375
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/roboguice/shaded/goole/common/cache/LocalCache$1;)V
    .locals 0

    .line 375
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;
    .locals 1

    .line 375
    const-class v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    return-object p0
.end method

.method public static values()[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;
    .locals 1

    .line 375
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->$VALUES:[Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-virtual {v0}, [Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    return-object v0
.end method


# virtual methods
.method abstract defaultEquivalence()Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method abstract referenceValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment<",
            "TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;TV;I)",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation
.end method
