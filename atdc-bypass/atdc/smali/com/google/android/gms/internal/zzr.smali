.class public final enum Lcom/google/android/gms/internal/zzr;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/zzr;",
        ">;"
    }
.end annotation


# static fields
.field private static enum zzR:Lcom/google/android/gms/internal/zzr;

.field public static final enum zzS:Lcom/google/android/gms/internal/zzr;

.field private static enum zzT:Lcom/google/android/gms/internal/zzr;

.field private static enum zzU:Lcom/google/android/gms/internal/zzr;

.field private static final synthetic zzV:[Lcom/google/android/gms/internal/zzr;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/zzr;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzr;->zzR:Lcom/google/android/gms/internal/zzr;

    new-instance v0, Lcom/google/android/gms/internal/zzr;

    const-string v1, "NORMAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzr;->zzS:Lcom/google/android/gms/internal/zzr;

    new-instance v0, Lcom/google/android/gms/internal/zzr;

    const-string v1, "HIGH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/zzr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzr;->zzT:Lcom/google/android/gms/internal/zzr;

    new-instance v0, Lcom/google/android/gms/internal/zzr;

    const-string v1, "IMMEDIATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/zzr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzr;->zzU:Lcom/google/android/gms/internal/zzr;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/zzr;

    sget-object v1, Lcom/google/android/gms/internal/zzr;->zzR:Lcom/google/android/gms/internal/zzr;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzr;->zzS:Lcom/google/android/gms/internal/zzr;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/zzr;->zzT:Lcom/google/android/gms/internal/zzr;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/zzr;->zzU:Lcom/google/android/gms/internal/zzr;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/zzr;->zzV:[Lcom/google/android/gms/internal/zzr;

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

.method public static values()[Lcom/google/android/gms/internal/zzr;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzr;->zzV:[Lcom/google/android/gms/internal/zzr;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzr;

    return-object v0
.end method
