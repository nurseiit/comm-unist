.class public final enum Lcom/google/android/gms/internal/of;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/of;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzcav:Lcom/google/android/gms/internal/of;

.field public static final enum zzcaw:Lcom/google/android/gms/internal/of;

.field private static final synthetic zzcax:[Lcom/google/android/gms/internal/of;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/of;

    const-string v1, "SERVER_RESET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/of;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/of;->zzcav:Lcom/google/android/gms/internal/of;

    new-instance v0, Lcom/google/android/gms/internal/of;

    const-string v1, "OTHER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/of;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/of;->zzcaw:Lcom/google/android/gms/internal/of;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/of;

    sget-object v1, Lcom/google/android/gms/internal/of;->zzcav:Lcom/google/android/gms/internal/of;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/of;->zzcaw:Lcom/google/android/gms/internal/of;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/of;->zzcax:[Lcom/google/android/gms/internal/of;

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

.method public static values()[Lcom/google/android/gms/internal/of;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/of;->zzcax:[Lcom/google/android/gms/internal/of;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/of;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/of;

    return-object v0
.end method
