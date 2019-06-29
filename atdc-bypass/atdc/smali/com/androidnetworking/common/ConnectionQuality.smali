.class public final enum Lcom/androidnetworking/common/ConnectionQuality;
.super Ljava/lang/Enum;
.source "ConnectionQuality.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidnetworking/common/ConnectionQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidnetworking/common/ConnectionQuality;

.field public static final enum EXCELLENT:Lcom/androidnetworking/common/ConnectionQuality;

.field public static final enum GOOD:Lcom/androidnetworking/common/ConnectionQuality;

.field public static final enum MODERATE:Lcom/androidnetworking/common/ConnectionQuality;

.field public static final enum POOR:Lcom/androidnetworking/common/ConnectionQuality;

.field public static final enum UNKNOWN:Lcom/androidnetworking/common/ConnectionQuality;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27
    new-instance v0, Lcom/androidnetworking/common/ConnectionQuality;

    const-string v1, "POOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidnetworking/common/ConnectionQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidnetworking/common/ConnectionQuality;->POOR:Lcom/androidnetworking/common/ConnectionQuality;

    .line 31
    new-instance v0, Lcom/androidnetworking/common/ConnectionQuality;

    const-string v1, "MODERATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/androidnetworking/common/ConnectionQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidnetworking/common/ConnectionQuality;->MODERATE:Lcom/androidnetworking/common/ConnectionQuality;

    .line 35
    new-instance v0, Lcom/androidnetworking/common/ConnectionQuality;

    const-string v1, "GOOD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/androidnetworking/common/ConnectionQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidnetworking/common/ConnectionQuality;->GOOD:Lcom/androidnetworking/common/ConnectionQuality;

    .line 39
    new-instance v0, Lcom/androidnetworking/common/ConnectionQuality;

    const-string v1, "EXCELLENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/androidnetworking/common/ConnectionQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidnetworking/common/ConnectionQuality;->EXCELLENT:Lcom/androidnetworking/common/ConnectionQuality;

    .line 44
    new-instance v0, Lcom/androidnetworking/common/ConnectionQuality;

    const-string v1, "UNKNOWN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/androidnetworking/common/ConnectionQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidnetworking/common/ConnectionQuality;->UNKNOWN:Lcom/androidnetworking/common/ConnectionQuality;

    const/4 v0, 0x5

    .line 23
    new-array v0, v0, [Lcom/androidnetworking/common/ConnectionQuality;

    sget-object v1, Lcom/androidnetworking/common/ConnectionQuality;->POOR:Lcom/androidnetworking/common/ConnectionQuality;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidnetworking/common/ConnectionQuality;->MODERATE:Lcom/androidnetworking/common/ConnectionQuality;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androidnetworking/common/ConnectionQuality;->GOOD:Lcom/androidnetworking/common/ConnectionQuality;

    aput-object v1, v0, v4

    sget-object v1, Lcom/androidnetworking/common/ConnectionQuality;->EXCELLENT:Lcom/androidnetworking/common/ConnectionQuality;

    aput-object v1, v0, v5

    sget-object v1, Lcom/androidnetworking/common/ConnectionQuality;->UNKNOWN:Lcom/androidnetworking/common/ConnectionQuality;

    aput-object v1, v0, v6

    sput-object v0, Lcom/androidnetworking/common/ConnectionQuality;->$VALUES:[Lcom/androidnetworking/common/ConnectionQuality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidnetworking/common/ConnectionQuality;
    .locals 1

    .line 23
    const-class v0, Lcom/androidnetworking/common/ConnectionQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidnetworking/common/ConnectionQuality;

    return-object p0
.end method

.method public static values()[Lcom/androidnetworking/common/ConnectionQuality;
    .locals 1

    .line 23
    sget-object v0, Lcom/androidnetworking/common/ConnectionQuality;->$VALUES:[Lcom/androidnetworking/common/ConnectionQuality;

    invoke-virtual {v0}, [Lcom/androidnetworking/common/ConnectionQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidnetworking/common/ConnectionQuality;

    return-object v0
.end method
