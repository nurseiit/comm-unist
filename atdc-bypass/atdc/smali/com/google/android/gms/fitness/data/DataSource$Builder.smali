.class public final Lcom/google/android/gms/fitness/data/DataSource$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/data/DataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private type:I

.field private zzaSZ:Lcom/google/android/gms/fitness/data/DataType;

.field private zzaTF:Lcom/google/android/gms/fitness/data/Device;

.field private zzaTG:Lcom/google/android/gms/fitness/data/zzb;

.field private zzaTH:Ljava/lang/String;

.field private zzaTI:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->type:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzaTH:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/fitness/data/DataSource$Builder;)Lcom/google/android/gms/fitness/data/DataType;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzaSZ:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/fitness/data/DataSource$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->type:I

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/fitness/data/DataSource$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/fitness/data/DataSource$Builder;)Lcom/google/android/gms/fitness/data/Device;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzaTF:Lcom/google/android/gms/fitness/data/Device;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/fitness/data/DataSource$Builder;)Lcom/google/android/gms/fitness/data/zzb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzaTG:Lcom/google/android/gms/fitness/data/zzb;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/fitness/data/DataSource$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzaTH:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/fitness/data/DataSource$Builder;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzaTI:[I

    return-object p0
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzaSZ:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Must set data type"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->type:I

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string v0, "Must set data source type"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/data/DataSource;-><init>(Lcom/google/android/gms/fitness/data/DataSource$Builder;Lcom/google/android/gms/fitness/data/zzj;)V

    return-object v0
.end method

.method public final setAppPackageName(Landroid/content/Context;)Lcom/google/android/gms/fitness/data/DataSource$Builder;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setAppPackageName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setAppPackageName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/zzb;->zzcX(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/zzb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzaTG:Lcom/google/android/gms/fitness/data/zzb;

    return-object p0
.end method

.method public final varargs setDataQualityStandards([I)Lcom/google/android/gms/fitness/data/DataSource$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzaTI:[I

    return-object p0
.end method

.method public final setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzaSZ:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0
.end method

.method public final setDevice(Lcom/google/android/gms/fitness/data/Device;)Lcom/google/android/gms/fitness/data/DataSource$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzaTF:Lcom/google/android/gms/fitness/data/Device;

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final setStreamName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Must specify a valid stream name"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zzb(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzaTH:Ljava/lang/String;

    return-object p0
.end method

.method public final setType(I)Lcom/google/android/gms/fitness/data/DataSource$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->type:I

    return-object p0
.end method
