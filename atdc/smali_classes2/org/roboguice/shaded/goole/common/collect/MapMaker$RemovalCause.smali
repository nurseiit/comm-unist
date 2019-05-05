.class abstract enum Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;
.super Ljava/lang/Enum;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "RemovalCause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

.field public static final enum COLLECTED:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

.field public static final enum EXPIRED:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

.field public static final enum EXPLICIT:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

.field public static final enum REPLACED:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

.field public static final enum SIZE:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 691
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause$1;

    const-string v1, "EXPLICIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;->EXPLICIT:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    .line 704
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause$2;

    const-string v1, "REPLACED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;->REPLACED:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    .line 715
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause$3;

    const-string v1, "COLLECTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;->COLLECTED:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    .line 726
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause$4;

    const-string v1, "EXPIRED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;->EXPIRED:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    .line 737
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause$5;

    const-string v1, "SIZE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;->SIZE:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    const/4 v0, 0x5

    .line 686
    new-array v0, v0, [Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;->EXPLICIT:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    aput-object v1, v0, v2

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;->REPLACED:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    aput-object v1, v0, v3

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;->COLLECTED:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    aput-object v1, v0, v4

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;->EXPIRED:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    aput-object v1, v0, v5

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;->SIZE:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    aput-object v1, v0, v6

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;->$VALUES:[Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 686
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/roboguice/shaded/goole/common/collect/MapMaker$1;)V
    .locals 0

    .line 686
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;
    .locals 1

    .line 686
    const-class v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    return-object p0
.end method

.method public static values()[Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;
    .locals 1

    .line 686
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;->$VALUES:[Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    invoke-virtual {v0}, [Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    return-object v0
.end method


# virtual methods
.method abstract wasEvicted()Z
.end method
