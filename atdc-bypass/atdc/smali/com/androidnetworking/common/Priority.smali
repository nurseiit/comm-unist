.class public final enum Lcom/androidnetworking/common/Priority;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidnetworking/common/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidnetworking/common/Priority;

.field public static final enum HIGH:Lcom/androidnetworking/common/Priority;

.field public static final enum IMMEDIATE:Lcom/androidnetworking/common/Priority;

.field public static final enum LOW:Lcom/androidnetworking/common/Priority;

.field public static final enum MEDIUM:Lcom/androidnetworking/common/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 37
    new-instance v0, Lcom/androidnetworking/common/Priority;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidnetworking/common/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidnetworking/common/Priority;->LOW:Lcom/androidnetworking/common/Priority;

    .line 42
    new-instance v0, Lcom/androidnetworking/common/Priority;

    const-string v1, "MEDIUM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/androidnetworking/common/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidnetworking/common/Priority;->MEDIUM:Lcom/androidnetworking/common/Priority;

    .line 47
    new-instance v0, Lcom/androidnetworking/common/Priority;

    const-string v1, "HIGH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/androidnetworking/common/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidnetworking/common/Priority;->HIGH:Lcom/androidnetworking/common/Priority;

    .line 52
    new-instance v0, Lcom/androidnetworking/common/Priority;

    const-string v1, "IMMEDIATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/androidnetworking/common/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidnetworking/common/Priority;->IMMEDIATE:Lcom/androidnetworking/common/Priority;

    const/4 v0, 0x4

    .line 28
    new-array v0, v0, [Lcom/androidnetworking/common/Priority;

    sget-object v1, Lcom/androidnetworking/common/Priority;->LOW:Lcom/androidnetworking/common/Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidnetworking/common/Priority;->MEDIUM:Lcom/androidnetworking/common/Priority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androidnetworking/common/Priority;->HIGH:Lcom/androidnetworking/common/Priority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/androidnetworking/common/Priority;->IMMEDIATE:Lcom/androidnetworking/common/Priority;

    aput-object v1, v0, v5

    sput-object v0, Lcom/androidnetworking/common/Priority;->$VALUES:[Lcom/androidnetworking/common/Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidnetworking/common/Priority;
    .locals 1

    .line 28
    const-class v0, Lcom/androidnetworking/common/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidnetworking/common/Priority;

    return-object p0
.end method

.method public static values()[Lcom/androidnetworking/common/Priority;
    .locals 1

    .line 28
    sget-object v0, Lcom/androidnetworking/common/Priority;->$VALUES:[Lcom/androidnetworking/common/Priority;

    invoke-virtual {v0}, [Lcom/androidnetworking/common/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidnetworking/common/Priority;

    return-object v0
.end method
