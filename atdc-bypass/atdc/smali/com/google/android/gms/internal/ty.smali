.class public final enum Lcom/google/android/gms/internal/ty;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ty;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzcfI:Lcom/google/android/gms/internal/ty;

.field public static final enum zzcfJ:Lcom/google/android/gms/internal/ty;

.field public static final enum zzcfK:Lcom/google/android/gms/internal/ty;

.field public static final enum zzcfL:Lcom/google/android/gms/internal/ty;

.field private static final synthetic zzcfM:[Lcom/google/android/gms/internal/ty;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/ty;

    const-string v1, "Overwrite"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ty;->zzcfI:Lcom/google/android/gms/internal/ty;

    new-instance v0, Lcom/google/android/gms/internal/ty;

    const-string v1, "Merge"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ty;->zzcfJ:Lcom/google/android/gms/internal/ty;

    new-instance v0, Lcom/google/android/gms/internal/ty;

    const-string v1, "AckUserWrite"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ty;->zzcfK:Lcom/google/android/gms/internal/ty;

    new-instance v0, Lcom/google/android/gms/internal/ty;

    const-string v1, "ListenComplete"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/ty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ty;->zzcfL:Lcom/google/android/gms/internal/ty;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/ty;

    sget-object v1, Lcom/google/android/gms/internal/ty;->zzcfI:Lcom/google/android/gms/internal/ty;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ty;->zzcfJ:Lcom/google/android/gms/internal/ty;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ty;->zzcfK:Lcom/google/android/gms/internal/ty;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ty;->zzcfL:Lcom/google/android/gms/internal/ty;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/ty;->zzcfM:[Lcom/google/android/gms/internal/ty;

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

.method public static values()[Lcom/google/android/gms/internal/ty;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ty;->zzcfM:[Lcom/google/android/gms/internal/ty;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ty;

    return-object v0
.end method
