.class public final enum Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;
.super Ljava/lang/Enum;
.source "HttpLoggingInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

.field public static final enum BASIC:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

.field public static final enum BODY:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

.field public static final enum HEADERS:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

.field public static final enum NONE:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 55
    new-instance v0, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;->NONE:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    .line 66
    new-instance v0, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    const-string v1, "BASIC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;->BASIC:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    .line 84
    new-instance v0, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    const-string v1, "HEADERS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;->HEADERS:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    .line 106
    new-instance v0, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    const-string v1, "BODY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;->BODY:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    const/4 v0, 0x4

    .line 51
    new-array v0, v0, [Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    sget-object v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;->NONE:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    aput-object v1, v0, v2

    sget-object v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;->BASIC:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;->HEADERS:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;->BODY:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    aput-object v1, v0, v5

    sput-object v0, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;->$VALUES:[Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;
    .locals 1

    .line 51
    const-class v0, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    return-object p0
.end method

.method public static values()[Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;
    .locals 1

    .line 51
    sget-object v0, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;->$VALUES:[Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    invoke-virtual {v0}, [Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    return-object v0
.end method
