.class final Lcom/google/android/gms/internal/wy;
.super Ljava/lang/Object;


# instance fields
.field private zzchY:Ljava/lang/StringBuilder;

.field private zzchZ:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/wp;",
            ">;"
        }
    .end annotation
.end field

.field private zzcia:I

.field private zzcib:I

.field private zzcic:Z

.field private final zzcid:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/qr;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcie:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcif:Lcom/google/android/gms/internal/xa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/xa;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/wy;->zzchY:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/wy;->zzchZ:Ljava/util/Stack;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/wy;->zzcia:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/wy;->zzcic:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/wy;->zzcid:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/wy;->zzcie:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/wy;->zzcif:Lcom/google/android/gms/internal/xa;

    return-void
.end method

.method private final zzIU()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wy;->zzchY:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzIX()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/wy;->zzIU()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/wy;->zzchY:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/wy;->zzchY:Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/wy;->zzcib:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/wy;->zzbY(I)Lcom/google/android/gms/internal/qr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qr;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/wp;

    iget-object v2, p0, Lcom/google/android/gms/internal/wy;->zzchY:Ljava/lang/StringBuilder;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/wy;->zza(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/wp;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/wy;->zzchY:Ljava/lang/StringBuilder;

    const-string v2, ":("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/wy;->zzcic:Z

    :cond_1
    return-void
.end method

.method private final zzIY()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/wy;->zzcib:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/wy;->zzcib:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/wy;->zzIU()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/wy;->zzchY:Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/wy;->zzcic:Z

    return-void
.end method

.method private final zzIZ()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/wy;->zzcib:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Can\'t finish hashing in the middle processing a child"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zd;->zzb(ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/wy;->zzIU()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/wy;->zzJa()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/wy;->zzcie:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final zzJa()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/wy;->zzIU()Z

    move-result v0

    const-string v1, "Can\'t end range without starting a range!"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zd;->zzb(ZLjava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/wy;->zzcib:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/wy;->zzchY:Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wy;->zzchY:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/wy;->zzcia:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/wy;->zzbY(I)Lcom/google/android/gms/internal/qr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/wy;->zzchY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zd;->zzgY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/wy;->zzcie:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/wy;->zzcid:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/wy;->zzchY:Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/wy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/wy;->zzIZ()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/wy;Lcom/google/android/gms/internal/wp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/wy;->zzn(Lcom/google/android/gms/internal/wp;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/wy;Lcom/google/android/gms/internal/xh;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/wy;->zzb(Lcom/google/android/gms/internal/xh;)V

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/wp;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wp;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zd;->zzgZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/wy;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/wy;->zzcid:Ljava/util/List;

    return-object p0
.end method

.method private final zzb(Lcom/google/android/gms/internal/xh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/xh<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/wy;->zzIX()V

    iget v0, p0, Lcom/google/android/gms/internal/wy;->zzcib:I

    iput v0, p0, Lcom/google/android/gms/internal/wy;->zzcia:I

    iget-object v0, p0, Lcom/google/android/gms/internal/wy;->zzchY:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/android/gms/internal/xo;->zzciy:Lcom/google/android/gms/internal/xo;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/xh;->zza(Lcom/google/android/gms/internal/xo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/wy;->zzcic:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/wy;->zzcif:Lcom/google/android/gms/internal/xa;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/xa;->zze(Lcom/google/android/gms/internal/wy;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/wy;->zzJa()V

    :cond_0
    return-void
.end method

.method private final zzbY(I)Lcom/google/android/gms/internal/qr;
    .locals 3

    new-array v0, p1, [Lcom/google/android/gms/internal/wp;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/wy;->zzchZ:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/wp;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/qr;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/qr;-><init>([Lcom/google/android/gms/internal/wp;)V

    return-object p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/wy;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/wy;->zzcie:Ljava/util/List;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/wy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/wy;->zzIY()V

    return-void
.end method

.method private final zzn(Lcom/google/android/gms/internal/wp;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/wy;->zzIX()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/wy;->zzcic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/wy;->zzchY:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wy;->zzchY:Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/wy;->zza(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/wp;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/wy;->zzchY:Ljava/lang/StringBuilder;

    const-string v1, ":("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/wy;->zzcib:I

    iget-object v1, p0, Lcom/google/android/gms/internal/wy;->zzchZ:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/wy;->zzchZ:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/wy;->zzchZ:Ljava/util/Stack;

    iget v1, p0, Lcom/google/android/gms/internal/wy;->zzcib:I

    invoke-virtual {v0, v1, p1}, Ljava/util/Stack;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/wy;->zzcib:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/wy;->zzcib:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/wy;->zzcic:Z

    return-void
.end method


# virtual methods
.method public final zzIV()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wy;->zzchY:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public final zzIW()Lcom/google/android/gms/internal/qr;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/wy;->zzcib:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/wy;->zzbY(I)Lcom/google/android/gms/internal/qr;

    move-result-object v0

    return-object v0
.end method
