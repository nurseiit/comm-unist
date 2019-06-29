.class final enum Lcom/google/inject/spi/InjectionPoint$Position;
.super Ljava/lang/Enum;
.source "InjectionPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/spi/InjectionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/inject/spi/InjectionPoint$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/inject/spi/InjectionPoint$Position;

.field public static final enum BOTTOM:Lcom/google/inject/spi/InjectionPoint$Position;

.field public static final enum MIDDLE:Lcom/google/inject/spi/InjectionPoint$Position;

.field public static final enum TOP:Lcom/google/inject/spi/InjectionPoint$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 536
    new-instance v0, Lcom/google/inject/spi/InjectionPoint$Position;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/inject/spi/InjectionPoint$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/inject/spi/InjectionPoint$Position;->TOP:Lcom/google/inject/spi/InjectionPoint$Position;

    .line 537
    new-instance v0, Lcom/google/inject/spi/InjectionPoint$Position;

    const-string v1, "MIDDLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/inject/spi/InjectionPoint$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/inject/spi/InjectionPoint$Position;->MIDDLE:Lcom/google/inject/spi/InjectionPoint$Position;

    .line 538
    new-instance v0, Lcom/google/inject/spi/InjectionPoint$Position;

    const-string v1, "BOTTOM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/inject/spi/InjectionPoint$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/inject/spi/InjectionPoint$Position;->BOTTOM:Lcom/google/inject/spi/InjectionPoint$Position;

    const/4 v0, 0x3

    .line 535
    new-array v0, v0, [Lcom/google/inject/spi/InjectionPoint$Position;

    sget-object v1, Lcom/google/inject/spi/InjectionPoint$Position;->TOP:Lcom/google/inject/spi/InjectionPoint$Position;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/inject/spi/InjectionPoint$Position;->MIDDLE:Lcom/google/inject/spi/InjectionPoint$Position;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/inject/spi/InjectionPoint$Position;->BOTTOM:Lcom/google/inject/spi/InjectionPoint$Position;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/inject/spi/InjectionPoint$Position;->$VALUES:[Lcom/google/inject/spi/InjectionPoint$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 535
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/inject/spi/InjectionPoint$Position;
    .locals 1

    .line 535
    const-class v0, Lcom/google/inject/spi/InjectionPoint$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/inject/spi/InjectionPoint$Position;

    return-object p0
.end method

.method public static values()[Lcom/google/inject/spi/InjectionPoint$Position;
    .locals 1

    .line 535
    sget-object v0, Lcom/google/inject/spi/InjectionPoint$Position;->$VALUES:[Lcom/google/inject/spi/InjectionPoint$Position;

    invoke-virtual {v0}, [Lcom/google/inject/spi/InjectionPoint$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/inject/spi/InjectionPoint$Position;

    return-object v0
.end method
