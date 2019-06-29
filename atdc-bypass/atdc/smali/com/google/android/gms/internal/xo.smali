.class public final enum Lcom/google/android/gms/internal/xo;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/xo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzcix:Lcom/google/android/gms/internal/xo;

.field public static final enum zzciy:Lcom/google/android/gms/internal/xo;

.field private static final synthetic zzciz:[Lcom/google/android/gms/internal/xo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/xo;

    const-string v1, "V1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/xo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/xo;->zzcix:Lcom/google/android/gms/internal/xo;

    new-instance v0, Lcom/google/android/gms/internal/xo;

    const-string v1, "V2"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/xo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/xo;->zzciy:Lcom/google/android/gms/internal/xo;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/xo;

    sget-object v1, Lcom/google/android/gms/internal/xo;->zzcix:Lcom/google/android/gms/internal/xo;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/xo;->zzciy:Lcom/google/android/gms/internal/xo;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/xo;->zzciz:[Lcom/google/android/gms/internal/xo;

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

.method public static values()[Lcom/google/android/gms/internal/xo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/xo;->zzciz:[Lcom/google/android/gms/internal/xo;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/xo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/xo;

    return-object v0
.end method
