.class public final enum Lcom/google/android/gms/internal/zzana;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/zzana;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzagG:Lcom/google/android/gms/internal/zzana;

.field private static enum zzagH:Lcom/google/android/gms/internal/zzana;

.field private static enum zzagI:Lcom/google/android/gms/internal/zzana;

.field private static enum zzagJ:Lcom/google/android/gms/internal/zzana;

.field public static final enum zzagK:Lcom/google/android/gms/internal/zzana;

.field private static enum zzagL:Lcom/google/android/gms/internal/zzana;

.field private static final synthetic zzagM:[Lcom/google/android/gms/internal/zzana;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/google/android/gms/internal/zzana;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzana;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzana;->zzagG:Lcom/google/android/gms/internal/zzana;

    new-instance v0, Lcom/google/android/gms/internal/zzana;

    const-string v1, "BATCH_BY_SESSION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzana;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzana;->zzagH:Lcom/google/android/gms/internal/zzana;

    new-instance v0, Lcom/google/android/gms/internal/zzana;

    const-string v1, "BATCH_BY_TIME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/zzana;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzana;->zzagI:Lcom/google/android/gms/internal/zzana;

    new-instance v0, Lcom/google/android/gms/internal/zzana;

    const-string v1, "BATCH_BY_BRUTE_FORCE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/zzana;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzana;->zzagJ:Lcom/google/android/gms/internal/zzana;

    new-instance v0, Lcom/google/android/gms/internal/zzana;

    const-string v1, "BATCH_BY_COUNT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/zzana;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzana;->zzagK:Lcom/google/android/gms/internal/zzana;

    new-instance v0, Lcom/google/android/gms/internal/zzana;

    const-string v1, "BATCH_BY_SIZE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/android/gms/internal/zzana;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzana;->zzagL:Lcom/google/android/gms/internal/zzana;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/gms/internal/zzana;

    sget-object v1, Lcom/google/android/gms/internal/zzana;->zzagG:Lcom/google/android/gms/internal/zzana;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzana;->zzagH:Lcom/google/android/gms/internal/zzana;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/zzana;->zzagI:Lcom/google/android/gms/internal/zzana;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/zzana;->zzagJ:Lcom/google/android/gms/internal/zzana;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/zzana;->zzagK:Lcom/google/android/gms/internal/zzana;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/zzana;->zzagL:Lcom/google/android/gms/internal/zzana;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/gms/internal/zzana;->zzagM:[Lcom/google/android/gms/internal/zzana;

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

.method public static values()[Lcom/google/android/gms/internal/zzana;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzana;->zzagM:[Lcom/google/android/gms/internal/zzana;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzana;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzana;

    return-object v0
.end method

.method public static zzbx(Ljava/lang/String;)Lcom/google/android/gms/internal/zzana;
    .locals 1

    const-string v0, "BATCH_BY_SESSION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/zzana;->zzagH:Lcom/google/android/gms/internal/zzana;

    return-object p0

    :cond_0
    const-string v0, "BATCH_BY_TIME"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/zzana;->zzagI:Lcom/google/android/gms/internal/zzana;

    return-object p0

    :cond_1
    const-string v0, "BATCH_BY_BRUTE_FORCE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/zzana;->zzagJ:Lcom/google/android/gms/internal/zzana;

    return-object p0

    :cond_2
    const-string v0, "BATCH_BY_COUNT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/google/android/gms/internal/zzana;->zzagK:Lcom/google/android/gms/internal/zzana;

    return-object p0

    :cond_3
    const-string v0, "BATCH_BY_SIZE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/google/android/gms/internal/zzana;->zzagL:Lcom/google/android/gms/internal/zzana;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/zzana;->zzagG:Lcom/google/android/gms/internal/zzana;

    return-object p0
.end method
