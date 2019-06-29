.class public final Lcom/google/android/gms/internal/zzau;
.super Lcom/google/android/gms/internal/adj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/adj<",
        "Lcom/google/android/gms/internal/zzau;",
        ">;"
    }
.end annotation


# instance fields
.field public zzaQ:Lcom/google/android/gms/internal/zzav;

.field public zzaR:Lcom/google/android/gms/internal/zzaw;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/adj;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzau;->zzaQ:Lcom/google/android/gms/internal/zzav;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzau;->zzaR:Lcom/google/android/gms/internal/zzaw;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzau;->zzcsx:I

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/adg;)Lcom/google/android/gms/internal/adp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/adg;->zzLA()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adg;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzau;->zzaR:Lcom/google/android/gms/internal/zzaw;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzaw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzau;->zzaR:Lcom/google/android/gms/internal/zzaw;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzau;->zzaR:Lcom/google/android/gms/internal/zzaw;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzau;->zzaQ:Lcom/google/android/gms/internal/zzav;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzav;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzav;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzau;->zzaQ:Lcom/google/android/gms/internal/zzav;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzau;->zzaQ:Lcom/google/android/gms/internal/zzav;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/adg;->zza(Lcom/google/android/gms/internal/adp;)V

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/adh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzau;->zzaQ:Lcom/google/android/gms/internal/zzav;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzau;->zzaQ:Lcom/google/android/gms/internal/zzav;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zza(ILcom/google/android/gms/internal/adp;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzau;->zzaR:Lcom/google/android/gms/internal/zzaw;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzau;->zzaR:Lcom/google/android/gms/internal/zzaw;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/adh;->zza(ILcom/google/android/gms/internal/adp;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/adj;->zza(Lcom/google/android/gms/internal/adh;)V

    return-void
.end method

.method protected final zzn()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/adj;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzau;->zzaQ:Lcom/google/android/gms/internal/zzav;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzau;->zzaQ:Lcom/google/android/gms/internal/zzav;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzb(ILcom/google/android/gms/internal/adp;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzau;->zzaR:Lcom/google/android/gms/internal/zzaw;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzau;->zzaR:Lcom/google/android/gms/internal/zzaw;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/adh;->zzb(ILcom/google/android/gms/internal/adp;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method
