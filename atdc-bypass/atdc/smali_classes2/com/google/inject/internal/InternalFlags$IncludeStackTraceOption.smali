.class public final enum Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;
.super Ljava/lang/Enum;
.source "InternalFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/InternalFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IncludeStackTraceOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

.field public static final enum COMPLETE:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

.field public static final enum OFF:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

.field public static final enum ONLY_FOR_DECLARING_SOURCE:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 31
    new-instance v0, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->OFF:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    .line 33
    new-instance v0, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    const-string v1, "ONLY_FOR_DECLARING_SOURCE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->ONLY_FOR_DECLARING_SOURCE:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    .line 35
    new-instance v0, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    const-string v1, "COMPLETE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->COMPLETE:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    const/4 v0, 0x3

    .line 29
    new-array v0, v0, [Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    sget-object v1, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->OFF:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->ONLY_FOR_DECLARING_SOURCE:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->COMPLETE:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->$VALUES:[Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;
    .locals 1

    .line 29
    const-class v0, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    return-object p0
.end method

.method public static values()[Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->$VALUES:[Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    invoke-virtual {v0}, [Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    return-object v0
.end method
