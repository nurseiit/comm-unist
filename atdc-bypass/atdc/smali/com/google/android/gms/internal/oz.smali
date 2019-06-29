.class final enum Lcom/google/android/gms/internal/oz;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/oz;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzcbn:Lcom/google/android/gms/internal/oz;

.field public static final enum zzcbo:Lcom/google/android/gms/internal/oz;

.field public static final enum zzcbp:Lcom/google/android/gms/internal/oz;

.field public static final enum zzcbq:Lcom/google/android/gms/internal/oz;

.field public static final enum zzcbr:Lcom/google/android/gms/internal/oz;

.field private static final synthetic zzcbs:[Lcom/google/android/gms/internal/oz;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/oz;

    const-string v1, "Disconnected"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/oz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/oz;->zzcbn:Lcom/google/android/gms/internal/oz;

    new-instance v0, Lcom/google/android/gms/internal/oz;

    const-string v1, "GettingToken"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/oz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/oz;->zzcbo:Lcom/google/android/gms/internal/oz;

    new-instance v0, Lcom/google/android/gms/internal/oz;

    const-string v1, "Connecting"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/oz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/oz;->zzcbp:Lcom/google/android/gms/internal/oz;

    new-instance v0, Lcom/google/android/gms/internal/oz;

    const-string v1, "Authenticating"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/oz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/oz;->zzcbq:Lcom/google/android/gms/internal/oz;

    new-instance v0, Lcom/google/android/gms/internal/oz;

    const-string v1, "Connected"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/oz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/oz;->zzcbr:Lcom/google/android/gms/internal/oz;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gms/internal/oz;

    sget-object v1, Lcom/google/android/gms/internal/oz;->zzcbn:Lcom/google/android/gms/internal/oz;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/oz;->zzcbo:Lcom/google/android/gms/internal/oz;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/oz;->zzcbp:Lcom/google/android/gms/internal/oz;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/oz;->zzcbq:Lcom/google/android/gms/internal/oz;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/oz;->zzcbr:Lcom/google/android/gms/internal/oz;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/internal/oz;->zzcbs:[Lcom/google/android/gms/internal/oz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/oz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/oz;->zzcbs:[Lcom/google/android/gms/internal/oz;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/oz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/oz;

    return-object v0
.end method
