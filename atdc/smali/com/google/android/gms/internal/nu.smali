.class public abstract Lcom/google/android/gms/internal/nu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/nq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/nq<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final zzcab:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private zzcac:Lcom/google/android/gms/internal/nq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nq<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final zzcad:Lcom/google/android/gms/internal/nq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nq<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/android/gms/internal/nq<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/nq<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nu;->zzcab:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/nu;->value:Ljava/lang/Object;

    if-nez p3, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/np;->zzFF()Lcom/google/android/gms/internal/np;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    if-nez p4, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/np;->zzFF()Lcom/google/android/gms/internal/np;

    move-result-object p4

    :cond_1
    iput-object p4, p0, Lcom/google/android/gms/internal/nu;->zzcad:Lcom/google/android/gms/internal/nq;

    return-void
.end method

.method private final zzFL()Lcom/google/android/gms/internal/nq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/nq<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nq;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/np;->zzFF()Lcom/google/android/gms/internal/np;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nq;->zzFE()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nq;->zzFG()Lcom/google/android/gms/internal/nq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/nq;->zzFE()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/nu;->zzFM()Lcom/google/android/gms/internal/nu;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    check-cast v1, Lcom/google/android/gms/internal/nu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/nu;->zzFL()Lcom/google/android/gms/internal/nq;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Lcom/google/android/gms/internal/nu;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)Lcom/google/android/gms/internal/nu;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/gms/internal/nu;->zzFN()Lcom/google/android/gms/internal/nu;

    move-result-object v0

    return-object v0
.end method

.method private final zzFM()Lcom/google/android/gms/internal/nu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/nu<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/nu;->zzFQ()Lcom/google/android/gms/internal/nu;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/nu;->zzcad:Lcom/google/android/gms/internal/nq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nq;->zzFG()Lcom/google/android/gms/internal/nq;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/nq;->zzFE()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/nu;->zzcad:Lcom/google/android/gms/internal/nq;

    check-cast v1, Lcom/google/android/gms/internal/nu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/nu;->zzFP()Lcom/google/android/gms/internal/nu;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/google/android/gms/internal/nu;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)Lcom/google/android/gms/internal/nu;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/gms/internal/nu;->zzFO()Lcom/google/android/gms/internal/nu;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/gms/internal/nu;->zzFQ()Lcom/google/android/gms/internal/nu;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private final zzFN()Lcom/google/android/gms/internal/nu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/nu<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcad:Lcom/google/android/gms/internal/nq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nq;->zzFE()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nq;->zzFE()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/nu;->zzFO()Lcom/google/android/gms/internal/nu;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nq;->zzFE()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    check-cast v1, Lcom/google/android/gms/internal/nu;

    iget-object v1, v1, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nq;->zzFE()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {v0}, Lcom/google/android/gms/internal/nu;->zzFP()Lcom/google/android/gms/internal/nu;

    move-result-object v0

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nq;->zzFE()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/nu;->zzcad:Lcom/google/android/gms/internal/nq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nq;->zzFE()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {v0}, Lcom/google/android/gms/internal/nu;->zzFQ()Lcom/google/android/gms/internal/nu;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private final zzFO()Lcom/google/android/gms/internal/nu;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/nu<",
            "TK;TV;>;"
        }
    .end annotation

    sget v3, Lcom/google/android/gms/internal/nr;->zzbZY:I

    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcad:Lcom/google/android/gms/internal/nq;

    check-cast v0, Lcom/google/android/gms/internal/nu;

    iget-object v5, v0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/nu;->zzb(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)Lcom/google/android/gms/internal/nu;

    move-result-object v10

    iget-object v6, p0, Lcom/google/android/gms/internal/nu;->zzcad:Lcom/google/android/gms/internal/nq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nu;->zzFD()I

    move-result v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/google/android/gms/internal/nq;->zza(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)Lcom/google/android/gms/internal/nq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nu;

    return-object v0
.end method

.method private final zzFP()Lcom/google/android/gms/internal/nu;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/nu<",
            "TK;TV;>;"
        }
    .end annotation

    sget v3, Lcom/google/android/gms/internal/nr;->zzbZY:I

    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    check-cast v0, Lcom/google/android/gms/internal/nu;

    iget-object v4, v0, Lcom/google/android/gms/internal/nu;->zzcad:Lcom/google/android/gms/internal/nq;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/nu;->zzb(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)Lcom/google/android/gms/internal/nu;

    move-result-object v11

    iget-object v6, p0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nu;->zzFD()I

    move-result v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/google/android/gms/internal/nq;->zza(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)Lcom/google/android/gms/internal/nq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nu;

    return-object v0
.end method

.method private final zzFQ()Lcom/google/android/gms/internal/nu;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/nu<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    iget-object v1, p0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    invoke-static {v1}, Lcom/google/android/gms/internal/nu;->zza(Lcom/google/android/gms/internal/nq;)I

    move-result v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/nq;->zza(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)Lcom/google/android/gms/internal/nq;

    move-result-object v10

    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcad:Lcom/google/android/gms/internal/nq;

    iget-object v1, p0, Lcom/google/android/gms/internal/nu;->zzcad:Lcom/google/android/gms/internal/nq;

    invoke-static {v1}, Lcom/google/android/gms/internal/nu;->zza(Lcom/google/android/gms/internal/nq;)I

    move-result v3

    const/4 v1, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/nq;->zza(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)Lcom/google/android/gms/internal/nq;

    move-result-object v11

    invoke-static {p0}, Lcom/google/android/gms/internal/nu;->zza(Lcom/google/android/gms/internal/nq;)I

    move-result v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/nu;->zzb(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)Lcom/google/android/gms/internal/nu;

    move-result-object v0

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/nq;)I
    .locals 0

    invoke-interface {p0}, Lcom/google/android/gms/internal/nq;->zzFE()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/google/android/gms/internal/nr;->zzbZZ:I

    return p0

    :cond_0
    sget p0, Lcom/google/android/gms/internal/nr;->zzbZY:I

    return p0
.end method

.method private final zzb(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)Lcom/google/android/gms/internal/nu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/nq<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/nq<",
            "TK;TV;>;)",
            "Lcom/google/android/gms/internal/nu<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/nu;->zzcab:Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/nu;->value:Ljava/lang/Object;

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    :cond_0
    if-nez p5, :cond_1

    iget-object p5, p0, Lcom/google/android/gms/internal/nu;->zzcad:Lcom/google/android/gms/internal/nq;

    :cond_1
    sget v0, Lcom/google/android/gms/internal/nr;->zzbZY:I

    if-ne p3, v0, :cond_2

    new-instance p3, Lcom/google/android/gms/internal/nt;

    invoke-direct {p3, p1, p2, p4, p5}, Lcom/google/android/gms/internal/nt;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)V

    return-object p3

    :cond_2
    new-instance p3, Lcom/google/android/gms/internal/no;

    invoke-direct {p3, p1, p2, p4, p5}, Lcom/google/android/gms/internal/no;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)V

    return-object p3
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcab:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract zzFD()I
.end method

.method public final zzFG()Lcom/google/android/gms/internal/nq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/nq<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    return-object v0
.end method

.method public final zzFH()Lcom/google/android/gms/internal/nq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/nq<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcad:Lcom/google/android/gms/internal/nq;

    return-object v0
.end method

.method public final zzFI()Lcom/google/android/gms/internal/nq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/nq<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nq;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nq;->zzFI()Lcom/google/android/gms/internal/nq;

    move-result-object v0

    return-object v0
.end method

.method public final zzFJ()Lcom/google/android/gms/internal/nq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/nq<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcad:Lcom/google/android/gms/internal/nq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nq;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcad:Lcom/google/android/gms/internal/nq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nq;->zzFJ()Lcom/google/android/gms/internal/nq;

    move-result-object v0

    return-object v0
.end method

.method public final zzFK()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nq;->zzFK()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/nu;->zzcad:Lcom/google/android/gms/internal/nq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nq;->zzFK()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final synthetic zza(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)Lcom/google/android/gms/internal/nq;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/nu;->zzb(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)Lcom/google/android/gms/internal/nu;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/nq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lcom/google/android/gms/internal/nq<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcab:Ljava/lang/Object;

    invoke-interface {p3, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/nq;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/nq;

    move-result-object p1

    invoke-virtual {p0, v1, v1, p1, v1}, Lcom/google/android/gms/internal/nu;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)Lcom/google/android/gms/internal/nu;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/nu;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)Lcom/google/android/gms/internal/nu;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcad:Lcom/google/android/gms/internal/nq;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/nq;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/nq;

    move-result-object p1

    invoke-virtual {p0, v1, v1, v1, p1}, Lcom/google/android/gms/internal/nu;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)Lcom/google/android/gms/internal/nu;

    move-result-object p1

    :goto_0
    invoke-direct {p1}, Lcom/google/android/gms/internal/nu;->zzFN()Lcom/google/android/gms/internal/nu;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/nq;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lcom/google/android/gms/internal/nq<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcab:Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nq;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nq;->zzFE()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    check-cast v0, Lcom/google/android/gms/internal/nu;

    iget-object v0, v0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nq;->zzFE()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/nu;->zzFM()Lcom/google/android/gms/internal/nu;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/nq;->zza(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/nq;

    move-result-object p1

    invoke-virtual {v0, v1, v1, p1, v1}, Lcom/google/android/gms/internal/nu;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)Lcom/google/android/gms/internal/nu;

    move-result-object p1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nq;->zzFE()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/nu;->zzFP()Lcom/google/android/gms/internal/nu;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    iget-object v2, v0, Lcom/google/android/gms/internal/nu;->zzcad:Lcom/google/android/gms/internal/nq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/nq;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/google/android/gms/internal/nu;->zzcad:Lcom/google/android/gms/internal/nq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/nq;->zzFE()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/google/android/gms/internal/nu;->zzcad:Lcom/google/android/gms/internal/nq;

    check-cast v2, Lcom/google/android/gms/internal/nu;

    iget-object v2, v2, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/nq;->zzFE()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {v0}, Lcom/google/android/gms/internal/nu;->zzFQ()Lcom/google/android/gms/internal/nu;

    move-result-object v0

    iget-object v2, v0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/nq;->zzFG()Lcom/google/android/gms/internal/nq;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/nq;->zzFE()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {v0}, Lcom/google/android/gms/internal/nu;->zzFP()Lcom/google/android/gms/internal/nu;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/gms/internal/nu;->zzFQ()Lcom/google/android/gms/internal/nu;

    move-result-object v0

    :cond_3
    iget-object v2, v0, Lcom/google/android/gms/internal/nu;->zzcab:Ljava/lang/Object;

    invoke-interface {p2, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/google/android/gms/internal/nu;->zzcad:Lcom/google/android/gms/internal/nq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/nq;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/np;->zzFF()Lcom/google/android/gms/internal/np;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/internal/nu;->zzcad:Lcom/google/android/gms/internal/nq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/nq;->zzFI()Lcom/google/android/gms/internal/nq;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/nq;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/android/gms/internal/nq;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/internal/nu;->zzcad:Lcom/google/android/gms/internal/nq;

    check-cast v4, Lcom/google/android/gms/internal/nu;

    invoke-direct {v4}, Lcom/google/android/gms/internal/nu;->zzFL()Lcom/google/android/gms/internal/nq;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v1, v4}, Lcom/google/android/gms/internal/nu;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)Lcom/google/android/gms/internal/nu;

    move-result-object v0

    :cond_5
    iget-object v2, v0, Lcom/google/android/gms/internal/nu;->zzcad:Lcom/google/android/gms/internal/nq;

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/nq;->zza(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/nq;

    move-result-object p1

    invoke-virtual {v0, v1, v1, v1, p1}, Lcom/google/android/gms/internal/nu;->zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)Lcom/google/android/gms/internal/nu;

    move-result-object p1

    :goto_2
    invoke-direct {p1}, Lcom/google/android/gms/internal/nu;->zzFN()Lcom/google/android/gms/internal/nu;

    move-result-object p1

    return-object p1
.end method

.method protected abstract zza(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/nq;Lcom/google/android/gms/internal/nq;)Lcom/google/android/gms/internal/nu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/android/gms/internal/nq<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/nq<",
            "TK;TV;>;)",
            "Lcom/google/android/gms/internal/nu<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public final zza(Lcom/google/android/gms/internal/ns;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ns<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nq;->zza(Lcom/google/android/gms/internal/ns;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcab:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/nu;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ns;->zzh(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/nu;->zzcad:Lcom/google/android/gms/internal/nq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/nq;->zza(Lcom/google/android/gms/internal/ns;)V

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/nq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/nq<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/nu;->zzcac:Lcom/google/android/gms/internal/nq;

    return-void
.end method
