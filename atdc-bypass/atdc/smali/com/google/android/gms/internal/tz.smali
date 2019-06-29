.class public final Lcom/google/android/gms/internal/tz;
.super Ljava/lang/Object;


# static fields
.field public static final zzcfN:Lcom/google/android/gms/internal/tz;

.field public static final zzcfO:Lcom/google/android/gms/internal/tz;


# instance fields
.field private final zzcfP:Lcom/google/android/gms/internal/ua;

.field private final zzcfQ:Lcom/google/android/gms/internal/vq;

.field private final zzcfR:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/tz;

    sget-object v1, Lcom/google/android/gms/internal/ua;->zzcfS:Lcom/google/android/gms/internal/ua;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/tz;-><init>(Lcom/google/android/gms/internal/ua;Lcom/google/android/gms/internal/vq;Z)V

    sput-object v0, Lcom/google/android/gms/internal/tz;->zzcfN:Lcom/google/android/gms/internal/tz;

    new-instance v0, Lcom/google/android/gms/internal/tz;

    sget-object v1, Lcom/google/android/gms/internal/ua;->zzcfT:Lcom/google/android/gms/internal/ua;

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/tz;-><init>(Lcom/google/android/gms/internal/ua;Lcom/google/android/gms/internal/vq;Z)V

    sput-object v0, Lcom/google/android/gms/internal/tz;->zzcfO:Lcom/google/android/gms/internal/tz;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ua;Lcom/google/android/gms/internal/vq;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/tz;->zzcfP:Lcom/google/android/gms/internal/ua;

    iput-object p2, p0, Lcom/google/android/gms/internal/tz;->zzcfQ:Lcom/google/android/gms/internal/vq;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/tz;->zzcfR:Z

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/vq;)Lcom/google/android/gms/internal/tz;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/tz;

    sget-object v1, Lcom/google/android/gms/internal/ua;->zzcfT:Lcom/google/android/gms/internal/ua;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/tz;-><init>(Lcom/google/android/gms/internal/ua;Lcom/google/android/gms/internal/vq;Z)V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/tz;->zzcfP:Lcom/google/android/gms/internal/ua;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/tz;->zzcfQ:Lcom/google/android/gms/internal/vq;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/tz;->zzcfR:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x34

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "OperationSource{source="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", queryParams="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tagged="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzHG()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/tz;->zzcfP:Lcom/google/android/gms/internal/ua;

    sget-object v1, Lcom/google/android/gms/internal/ua;->zzcfS:Lcom/google/android/gms/internal/ua;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzHH()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/tz;->zzcfR:Z

    return v0
.end method

.method public final zzHI()Lcom/google/android/gms/internal/vq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/tz;->zzcfQ:Lcom/google/android/gms/internal/vq;

    return-object v0
.end method
