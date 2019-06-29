.class public abstract Lcom/google/android/gms/internal/cc;
.super Ljava/lang/Object;


# instance fields
.field private zzBM:I

.field protected final zzbHO:Lcom/google/android/gms/internal/zzcuo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final zzbKt:Lcom/google/android/gms/internal/cl;

.field private zzbKu:Lcom/google/android/gms/internal/ch;

.field private zzvw:Lcom/google/android/gms/common/util/zze;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/cl;Lcom/google/android/gms/internal/ch;Lcom/google/android/gms/internal/zzcuo;)V
    .locals 6
    .param p4    # Lcom/google/android/gms/internal/zzcuo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzrY()Lcom/google/android/gms/common/util/zze;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cc;-><init>(ILcom/google/android/gms/internal/cl;Lcom/google/android/gms/internal/ch;Lcom/google/android/gms/internal/zzcuo;Lcom/google/android/gms/common/util/zze;)V

    return-void
.end method

.method private constructor <init>(ILcom/google/android/gms/internal/cl;Lcom/google/android/gms/internal/ch;Lcom/google/android/gms/internal/zzcuo;Lcom/google/android/gms/common/util/zze;)V
    .locals 1
    .param p4    # Lcom/google/android/gms/internal/zzcuo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cl;

    iput-object v0, p0, Lcom/google/android/gms/internal/cc;->zzbKt:Lcom/google/android/gms/internal/cl;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/cl;->zzCP()Lcom/google/android/gms/internal/bz;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/internal/cc;->zzBM:I

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ch;

    iput-object p1, p0, Lcom/google/android/gms/internal/cc;->zzbKu:Lcom/google/android/gms/internal/ch;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/util/zze;

    iput-object p1, p0, Lcom/google/android/gms/internal/cc;->zzvw:Lcom/google/android/gms/common/util/zze;

    iput-object p4, p0, Lcom/google/android/gms/internal/cc;->zzbHO:Lcom/google/android/gms/internal/zzcuo;

    return-void
.end method

.method private final zzw([B)Lcom/google/android/gms/internal/cm;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->zzbKu:Lcom/google/android/gms/internal/ch;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ch;->zzx([B)Lcom/google/android/gms/internal/cm;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ca; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    :try_start_1
    const-string v0, "Parsed resource from is null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvk;->zzaS(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ca; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_0
    const/4 p1, 0x0

    :catch_1
    const-string v0, "Resource data is corrupted"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvk;->zzaS(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method protected abstract zza(Lcom/google/android/gms/internal/cm;)V
.end method

.method public final zzk(II)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->zzbHO:Lcom/google/android/gms/internal/zzcuo;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->zzbHO:Lcom/google/android/gms/internal/zzcuo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcuo;->zzAU()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cc;->zzbKt:Lcom/google/android/gms/internal/cl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cl;->zzCP()Lcom/google/android/gms/internal/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bz;->getContainerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    const-string p1, "Unknown reason"

    goto :goto_0

    :pswitch_0
    const-string p1, "Server error"

    goto :goto_0

    :pswitch_1
    const-string p1, "IOError"

    goto :goto_0

    :pswitch_2
    const-string p1, "Resource not available"

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3d

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to fetch the container resource for the container \""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/cm;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzaBo:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/cm;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cc;->zza(Lcom/google/android/gms/internal/cm;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzv([B)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cc;->zzw([B)Lcom/google/android/gms/internal/cm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cc;->zzbHO:Lcom/google/android/gms/internal/zzcuo;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/cc;->zzBM:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/cc;->zzbHO:Lcom/google/android/gms/internal/zzcuo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcuo;->zzAV()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cm;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cm;->zzCQ()Lcom/google/android/gms/internal/cn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cn;->zzCV()Lcom/google/android/gms/internal/db;

    move-result-object v5

    new-instance v1, Lcom/google/android/gms/internal/cn;

    iget-object v2, p0, Lcom/google/android/gms/internal/cc;->zzbKt:Lcom/google/android/gms/internal/cl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cl;->zzCP()Lcom/google/android/gms/internal/bz;

    move-result-object v3

    iget-object v2, p0, Lcom/google/android/gms/internal/cc;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v6

    move-object v2, v1

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/cn;-><init>(Lcom/google/android/gms/internal/bz;[BLcom/google/android/gms/internal/db;J)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cm;->zzCR()Lcom/google/android/gms/internal/dj;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/cm;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    iget v3, p0, Lcom/google/android/gms/internal/cc;->zzBM:I

    invoke-direct {v0, v2, v3, v1, p1}, Lcom/google/android/gms/internal/cm;-><init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/cn;Lcom/google/android/gms/internal/dj;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/cm;

    sget-object p1, Lcom/google/android/gms/common/api/Status;->zzaBo:Lcom/google/android/gms/common/api/Status;

    iget v1, p0, Lcom/google/android/gms/internal/cc;->zzBM:I

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/cm;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cc;->zza(Lcom/google/android/gms/internal/cm;)V

    return-void
.end method
