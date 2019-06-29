.class public final enum Lcom/google/android/gms/internal/wn;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/wn;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzchH:Lcom/google/android/gms/internal/wn;

.field public static final enum zzchI:Lcom/google/android/gms/internal/wn;

.field public static final enum zzchJ:Lcom/google/android/gms/internal/wn;

.field public static final enum zzchK:Lcom/google/android/gms/internal/wn;

.field public static final enum zzchL:Lcom/google/android/gms/internal/wn;

.field private static final synthetic zzchM:[Lcom/google/android/gms/internal/wn;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/wn;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/wn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/wn;->zzchH:Lcom/google/android/gms/internal/wn;

    new-instance v0, Lcom/google/android/gms/internal/wn;

    const-string v1, "INFO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/wn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/wn;->zzchI:Lcom/google/android/gms/internal/wn;

    new-instance v0, Lcom/google/android/gms/internal/wn;

    const-string v1, "WARN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/wn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/wn;->zzchJ:Lcom/google/android/gms/internal/wn;

    new-instance v0, Lcom/google/android/gms/internal/wn;

    const-string v1, "ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/wn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/wn;->zzchK:Lcom/google/android/gms/internal/wn;

    new-instance v0, Lcom/google/android/gms/internal/wn;

    const-string v1, "NONE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/wn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/wn;->zzchL:Lcom/google/android/gms/internal/wn;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gms/internal/wn;

    sget-object v1, Lcom/google/android/gms/internal/wn;->zzchH:Lcom/google/android/gms/internal/wn;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/wn;->zzchI:Lcom/google/android/gms/internal/wn;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/wn;->zzchJ:Lcom/google/android/gms/internal/wn;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/wn;->zzchK:Lcom/google/android/gms/internal/wn;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/wn;->zzchL:Lcom/google/android/gms/internal/wn;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/internal/wn;->zzchM:[Lcom/google/android/gms/internal/wn;

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

.method public static values()[Lcom/google/android/gms/internal/wn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/wn;->zzchM:[Lcom/google/android/gms/internal/wn;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/wn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/wn;

    return-object v0
.end method
