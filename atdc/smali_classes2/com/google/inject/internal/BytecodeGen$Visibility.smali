.class public abstract enum Lcom/google/inject/internal/BytecodeGen$Visibility;
.super Ljava/lang/Enum;
.source "BytecodeGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/BytecodeGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Visibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/inject/internal/BytecodeGen$Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/inject/internal/BytecodeGen$Visibility;

.field public static final enum PUBLIC:Lcom/google/inject/internal/BytecodeGen$Visibility;

.field public static final enum SAME_PACKAGE:Lcom/google/inject/internal/BytecodeGen$Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 234
    new-instance v0, Lcom/google/inject/internal/BytecodeGen$Visibility$1;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/inject/internal/BytecodeGen$Visibility$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/inject/internal/BytecodeGen$Visibility;->PUBLIC:Lcom/google/inject/internal/BytecodeGen$Visibility;

    .line 247
    new-instance v0, Lcom/google/inject/internal/BytecodeGen$Visibility$2;

    const-string v1, "SAME_PACKAGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/inject/internal/BytecodeGen$Visibility$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/inject/internal/BytecodeGen$Visibility;->SAME_PACKAGE:Lcom/google/inject/internal/BytecodeGen$Visibility;

    const/4 v0, 0x2

    .line 228
    new-array v0, v0, [Lcom/google/inject/internal/BytecodeGen$Visibility;

    sget-object v1, Lcom/google/inject/internal/BytecodeGen$Visibility;->PUBLIC:Lcom/google/inject/internal/BytecodeGen$Visibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/inject/internal/BytecodeGen$Visibility;->SAME_PACKAGE:Lcom/google/inject/internal/BytecodeGen$Visibility;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/inject/internal/BytecodeGen$Visibility;->$VALUES:[Lcom/google/inject/internal/BytecodeGen$Visibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 228
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/inject/internal/BytecodeGen$1;)V
    .locals 0

    .line 228
    invoke-direct {p0, p1, p2}, Lcom/google/inject/internal/BytecodeGen$Visibility;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forMember(Ljava/lang/reflect/Member;)Lcom/google/inject/internal/BytecodeGen$Visibility;
    .locals 4

    .line 255
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_0

    .line 256
    sget-object p0, Lcom/google/inject/internal/BytecodeGen$Visibility;->SAME_PACKAGE:Lcom/google/inject/internal/BytecodeGen$Visibility;

    return-object p0

    .line 260
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    .line 261
    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 263
    :cond_1
    check-cast p0, Ljava/lang/reflect/Method;

    .line 264
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/BytecodeGen$Visibility;->forType(Ljava/lang/Class;)Lcom/google/inject/internal/BytecodeGen$Visibility;

    move-result-object v0

    sget-object v1, Lcom/google/inject/internal/BytecodeGen$Visibility;->SAME_PACKAGE:Lcom/google/inject/internal/BytecodeGen$Visibility;

    if-ne v0, v1, :cond_2

    .line 265
    sget-object p0, Lcom/google/inject/internal/BytecodeGen$Visibility;->SAME_PACKAGE:Lcom/google/inject/internal/BytecodeGen$Visibility;

    return-object p0

    .line 267
    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    .line 270
    :goto_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    aget-object v2, p0, v1

    .line 271
    invoke-static {v2}, Lcom/google/inject/internal/BytecodeGen$Visibility;->forType(Ljava/lang/Class;)Lcom/google/inject/internal/BytecodeGen$Visibility;

    move-result-object v2

    sget-object v3, Lcom/google/inject/internal/BytecodeGen$Visibility;->SAME_PACKAGE:Lcom/google/inject/internal/BytecodeGen$Visibility;

    if-ne v2, v3, :cond_3

    .line 272
    sget-object p0, Lcom/google/inject/internal/BytecodeGen$Visibility;->SAME_PACKAGE:Lcom/google/inject/internal/BytecodeGen$Visibility;

    return-object p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 276
    :cond_4
    sget-object p0, Lcom/google/inject/internal/BytecodeGen$Visibility;->PUBLIC:Lcom/google/inject/internal/BytecodeGen$Visibility;

    return-object p0
.end method

.method public static forType(Ljava/lang/Class;)Lcom/google/inject/internal/BytecodeGen$Visibility;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/inject/internal/BytecodeGen$Visibility;"
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    and-int/lit8 p0, p0, 0x5

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/inject/internal/BytecodeGen$Visibility;->PUBLIC:Lcom/google/inject/internal/BytecodeGen$Visibility;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/inject/internal/BytecodeGen$Visibility;->SAME_PACKAGE:Lcom/google/inject/internal/BytecodeGen$Visibility;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/inject/internal/BytecodeGen$Visibility;
    .locals 1

    .line 228
    const-class v0, Lcom/google/inject/internal/BytecodeGen$Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/inject/internal/BytecodeGen$Visibility;

    return-object p0
.end method

.method public static values()[Lcom/google/inject/internal/BytecodeGen$Visibility;
    .locals 1

    .line 228
    sget-object v0, Lcom/google/inject/internal/BytecodeGen$Visibility;->$VALUES:[Lcom/google/inject/internal/BytecodeGen$Visibility;

    invoke-virtual {v0}, [Lcom/google/inject/internal/BytecodeGen$Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/inject/internal/BytecodeGen$Visibility;

    return-object v0
.end method


# virtual methods
.method public abstract and(Lcom/google/inject/internal/BytecodeGen$Visibility;)Lcom/google/inject/internal/BytecodeGen$Visibility;
.end method
