.class final enum Lcom/google/android/gms/internal/ua;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ua;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzcfS:Lcom/google/android/gms/internal/ua;

.field public static final enum zzcfT:Lcom/google/android/gms/internal/ua;

.field private static final synthetic zzcfU:[Lcom/google/android/gms/internal/ua;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ua;

    const-string v1, "User"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ua;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ua;->zzcfS:Lcom/google/android/gms/internal/ua;

    new-instance v0, Lcom/google/android/gms/internal/ua;

    const-string v1, "Server"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ua;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ua;->zzcfT:Lcom/google/android/gms/internal/ua;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/ua;

    sget-object v1, Lcom/google/android/gms/internal/ua;->zzcfS:Lcom/google/android/gms/internal/ua;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ua;->zzcfT:Lcom/google/android/gms/internal/ua;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/ua;->zzcfU:[Lcom/google/android/gms/internal/ua;

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

.method public static values()[Lcom/google/android/gms/internal/ua;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ua;->zzcfU:[Lcom/google/android/gms/internal/ua;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ua;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ua;

    return-object v0
.end method
