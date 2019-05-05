.class public final enum Lcom/androidnetworking/common/ResponseType;
.super Ljava/lang/Enum;
.source "ResponseType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidnetworking/common/ResponseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidnetworking/common/ResponseType;

.field public static final enum BITMAP:Lcom/androidnetworking/common/ResponseType;

.field public static final enum JSON_ARRAY:Lcom/androidnetworking/common/ResponseType;

.field public static final enum JSON_OBJECT:Lcom/androidnetworking/common/ResponseType;

.field public static final enum OK_HTTP_RESPONSE:Lcom/androidnetworking/common/ResponseType;

.field public static final enum PARSED:Lcom/androidnetworking/common/ResponseType;

.field public static final enum PREFETCH:Lcom/androidnetworking/common/ResponseType;

.field public static final enum STRING:Lcom/androidnetworking/common/ResponseType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 24
    new-instance v0, Lcom/androidnetworking/common/ResponseType;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidnetworking/common/ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidnetworking/common/ResponseType;->STRING:Lcom/androidnetworking/common/ResponseType;

    .line 25
    new-instance v0, Lcom/androidnetworking/common/ResponseType;

    const-string v1, "JSON_OBJECT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/androidnetworking/common/ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidnetworking/common/ResponseType;->JSON_OBJECT:Lcom/androidnetworking/common/ResponseType;

    .line 26
    new-instance v0, Lcom/androidnetworking/common/ResponseType;

    const-string v1, "JSON_ARRAY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/androidnetworking/common/ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidnetworking/common/ResponseType;->JSON_ARRAY:Lcom/androidnetworking/common/ResponseType;

    .line 27
    new-instance v0, Lcom/androidnetworking/common/ResponseType;

    const-string v1, "OK_HTTP_RESPONSE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/androidnetworking/common/ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidnetworking/common/ResponseType;->OK_HTTP_RESPONSE:Lcom/androidnetworking/common/ResponseType;

    .line 28
    new-instance v0, Lcom/androidnetworking/common/ResponseType;

    const-string v1, "BITMAP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/androidnetworking/common/ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidnetworking/common/ResponseType;->BITMAP:Lcom/androidnetworking/common/ResponseType;

    .line 29
    new-instance v0, Lcom/androidnetworking/common/ResponseType;

    const-string v1, "PREFETCH"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/androidnetworking/common/ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidnetworking/common/ResponseType;->PREFETCH:Lcom/androidnetworking/common/ResponseType;

    .line 30
    new-instance v0, Lcom/androidnetworking/common/ResponseType;

    const-string v1, "PARSED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/androidnetworking/common/ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidnetworking/common/ResponseType;->PARSED:Lcom/androidnetworking/common/ResponseType;

    const/4 v0, 0x7

    .line 23
    new-array v0, v0, [Lcom/androidnetworking/common/ResponseType;

    sget-object v1, Lcom/androidnetworking/common/ResponseType;->STRING:Lcom/androidnetworking/common/ResponseType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidnetworking/common/ResponseType;->JSON_OBJECT:Lcom/androidnetworking/common/ResponseType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androidnetworking/common/ResponseType;->JSON_ARRAY:Lcom/androidnetworking/common/ResponseType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/androidnetworking/common/ResponseType;->OK_HTTP_RESPONSE:Lcom/androidnetworking/common/ResponseType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/androidnetworking/common/ResponseType;->BITMAP:Lcom/androidnetworking/common/ResponseType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/androidnetworking/common/ResponseType;->PREFETCH:Lcom/androidnetworking/common/ResponseType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/androidnetworking/common/ResponseType;->PARSED:Lcom/androidnetworking/common/ResponseType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/androidnetworking/common/ResponseType;->$VALUES:[Lcom/androidnetworking/common/ResponseType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/androidnetworking/common/ResponseType;
    .locals 1

    .line 23
    const-class v0, Lcom/androidnetworking/common/ResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidnetworking/common/ResponseType;

    return-object p0
.end method

.method public static values()[Lcom/androidnetworking/common/ResponseType;
    .locals 1

    .line 23
    sget-object v0, Lcom/androidnetworking/common/ResponseType;->$VALUES:[Lcom/androidnetworking/common/ResponseType;

    invoke-virtual {v0}, [Lcom/androidnetworking/common/ResponseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidnetworking/common/ResponseType;

    return-object v0
.end method
