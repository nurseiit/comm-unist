.class public final Lcom/google/android/gms/internal/zznn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# static fields
.field private static final zzHm:I

.field private static final zzHn:I

.field private static zzHo:I

.field private static zzHp:I


# instance fields
.field private final mTextColor:I

.field private final zzHq:Ljava/lang/String;

.field private final zzHr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final zzHs:I

.field private final zzHt:I

.field private final zzHu:I

.field private final zzHv:I

.field private final zzHw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    const/16 v1, 0xae

    const/16 v2, 0xce

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/zznn;->zzHm:I

    const/16 v0, 0xcc

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/zznn;->zzHn:I

    sput v0, Lcom/google/android/gms/internal/zznn;->zzHo:I

    sget v0, Lcom/google/android/gms/internal/zznn;->zzHm:I

    sput v0, Lcom/google/android/gms/internal/zznn;->zzHp:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "IIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zznn;->zzHq:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zznn;->zzHr:Ljava/util/List;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    sget p1, Lcom/google/android/gms/internal/zznn;->zzHo:I

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/zznn;->zzHs:I

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    sget p1, Lcom/google/android/gms/internal/zznn;->zzHp:I

    :goto_1
    iput p1, p0, Lcom/google/android/gms/internal/zznn;->mTextColor:I

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_2
    const/16 p1, 0xc

    :goto_2
    iput p1, p0, Lcom/google/android/gms/internal/zznn;->zzHt:I

    iput p6, p0, Lcom/google/android/gms/internal/zznn;->zzHu:I

    iput p7, p0, Lcom/google/android/gms/internal/zznn;->zzHv:I

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zznn;->zzHw:Z

    return-void
.end method


# virtual methods
.method public final getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zznn;->zzHs:I

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznn;->zzHq:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zznn;->mTextColor:I

    return v0
.end method

.method public final getTextSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zznn;->zzHt:I

    return v0
.end method

.method public final zzec()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zznn;->zzHr:Ljava/util/List;

    return-object v0
.end method

.method public final zzed()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zznn;->zzHu:I

    return v0
.end method

.method public final zzee()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zznn;->zzHv:I

    return v0
.end method

.method public final zzef()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zznn;->zzHw:Z

    return v0
.end method
