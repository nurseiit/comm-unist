.class final Lcom/google/android/gms/fitness/data/zzf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbug;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzbug<",
        "Lcom/google/android/gms/fitness/data/DataPoint;",
        "Lcom/google/android/gms/fitness/data/DataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzaTt:Lcom/google/android/gms/fitness/data/zzf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/zzf;->zzaTt:Lcom/google/android/gms/fitness/data/zzf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/data/DataPoint;->getEndTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/data/DataPoint;->getStartTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    sub-long v2, v0, p1

    return-wide v2
.end method

.method public final synthetic zzb(Ljava/lang/Object;I)D
    .locals 0

    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/data/DataPoint;->zzaT(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Value;->asFloat()F

    move-result p1

    float-to-double p1, p1

    return-wide p1
.end method

.method public final synthetic zzc(Ljava/lang/Object;I)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/data/DataPoint;->zzaT(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result p1

    return p1
.end method

.method public final synthetic zzd(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/fitness/data/DataPoint;->zzaT(I)Lcom/google/android/gms/fitness/data/Value;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Value;->isSet()Z

    move-result p1

    return p1
.end method

.method public final zztF()Lcom/google/android/gms/internal/zzbuh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbuh<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/fitness/data/zzg;->zzaTu:Lcom/google/android/gms/fitness/data/zzg;

    return-object v0
.end method

.method public final synthetic zzx(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzy(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataPoint;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
