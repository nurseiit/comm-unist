.class public Lcom/google/firebase/database/Query;
.super Ljava/lang/Object;


# instance fields
.field protected final zzbYY:Lcom/google/android/gms/internal/qu;

.field protected final zzbZf:Lcom/google/android/gms/internal/qr;

.field private zzbZj:Lcom/google/android/gms/internal/vq;

.field private final zzbZk:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/Query;->zzbYY:Lcom/google/android/gms/internal/qu;

    iput-object p2, p0, Lcom/google/firebase/database/Query;->zzbZf:Lcom/google/android/gms/internal/qr;

    sget-object p1, Lcom/google/android/gms/internal/vq;->zzcgZ:Lcom/google/android/gms/internal/vq;

    iput-object p1, p0, Lcom/google/firebase/database/Query;->zzbZj:Lcom/google/android/gms/internal/vq;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/firebase/database/Query;->zzbZk:Z

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/vq;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/Query;->zzbYY:Lcom/google/android/gms/internal/qu;

    iput-object p2, p0, Lcom/google/firebase/database/Query;->zzbZf:Lcom/google/android/gms/internal/qr;

    iput-object p3, p0, Lcom/google/firebase/database/Query;->zzbZj:Lcom/google/android/gms/internal/vq;

    iput-boolean p4, p0, Lcom/google/firebase/database/Query;->zzbZk:Z

    invoke-virtual {p3}, Lcom/google/android/gms/internal/vq;->zzIe()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/vq;->zzIh()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/vq;->zzIk()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/vq;->zzIl()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string p2, "Validation of queries failed."

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zd;->zzb(ZLjava/lang/String;)V

    return-void
.end method

.method private final zzFo()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZj:Lcom/google/android/gms/internal/vq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->zzIe()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call equalTo() and startAt() combined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZj:Lcom/google/android/gms/internal/vq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->zzIh()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call equalTo() and endAt() combined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private final zzFp()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/firebase/database/Query;->zzbZk:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can\'t combine multiple orderBy calls!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/xm;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 3

    invoke-static {p2}, Lcom/google/android/gms/internal/zf;->zzhd(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/xm;->zzIQ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can only use simple values for startAt()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZj:Lcom/google/android/gms/internal/vq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->zzIe()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t call startAt() or equalTo() multiple times"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/google/android/gms/internal/wp;->zzgT(Ljava/lang/String;)Lcom/google/android/gms/internal/wp;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZj:Lcom/google/android/gms/internal/vq;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/vq;->zza(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/vq;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/vq;)V

    invoke-static {p1}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/vq;)V

    new-instance p2, Lcom/google/firebase/database/Query;

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbYY:Lcom/google/android/gms/internal/qu;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbZf:Lcom/google/android/gms/internal/qr;

    iget-boolean v2, p0, Lcom/google/firebase/database/Query;->zzbZk:Z

    invoke-direct {p2, v0, v1, p1, v2}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/vq;Z)V

    return-object p2
.end method

.method private final zza(Lcom/google/android/gms/internal/qi;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/tt;->zzHA()Lcom/google/android/gms/internal/tt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/tt;->zzj(Lcom/google/android/gms/internal/qi;)V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbYY:Lcom/google/android/gms/internal/qu;

    new-instance v1, Lcom/google/firebase/database/zzq;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/zzq;-><init>(Lcom/google/firebase/database/Query;Lcom/google/android/gms/internal/qi;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qu;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/vq;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vq;->zzIm()Lcom/google/android/gms/internal/xe;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/xg;->zzJh()Lcom/google/android/gms/internal/xg;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "You must use startAt(String value), endAt(String value) or equalTo(String value) in combination with orderByKey(). Other type of values or using the version with 2 parameters is not supported"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vq;->zzIe()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vq;->zzIf()Lcom/google/android/gms/internal/xm;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vq;->zzIg()Lcom/google/android/gms/internal/wp;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/wp;->zzIJ()Lcom/google/android/gms/internal/wp;

    move-result-object v3

    if-ne v2, v3, :cond_0

    instance-of v1, v1, Lcom/google/android/gms/internal/xu;

    if-nez v1, :cond_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vq;->zzIh()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vq;->zzIi()Lcom/google/android/gms/internal/xm;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vq;->zzIj()Lcom/google/android/gms/internal/wp;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/wp;->zzIK()Lcom/google/android/gms/internal/wp;

    move-result-object v2

    if-ne p0, v2, :cond_2

    instance-of p0, v1, Lcom/google/android/gms/internal/xu;

    if-nez p0, :cond_3

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vq;->zzIm()Lcom/google/android/gms/internal/xe;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/xr;->zzJl()Lcom/google/android/gms/internal/xr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vq;->zzIe()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vq;->zzIf()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/xs;->zzl(Lcom/google/android/gms/internal/xm;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vq;->zzIh()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vq;->zzIi()Lcom/google/android/gms/internal/xm;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/xs;->zzl(Lcom/google/android/gms/internal/xm;)Z

    move-result p0

    if-nez p0, :cond_7

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "When using orderByPriority(), values provided to startAt(), endAt(), or equalTo() must be valid priorities."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/xm;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 3

    invoke-static {p2}, Lcom/google/android/gms/internal/zf;->zzhd(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/xm;->zzIQ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can only use simple values for endAt()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/internal/wp;->zzgT(Ljava/lang/String;)Lcom/google/android/gms/internal/wp;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZj:Lcom/google/android/gms/internal/vq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->zzIh()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t call endAt() or equalTo() multiple times"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZj:Lcom/google/android/gms/internal/vq;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/vq;->zzb(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/vq;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/vq;)V

    invoke-static {p1}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/vq;)V

    new-instance p2, Lcom/google/firebase/database/Query;

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbYY:Lcom/google/android/gms/internal/qu;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbZf:Lcom/google/android/gms/internal/qr;

    iget-boolean v2, p0, Lcom/google/firebase/database/Query;->zzbZk:Z

    invoke-direct {p2, v0, v1, p1, v2}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/vq;Z)V

    return-object p2
.end method

.method private final zzb(Lcom/google/android/gms/internal/qi;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/tt;->zzHA()Lcom/google/android/gms/internal/tt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/tt;->zzi(Lcom/google/android/gms/internal/qi;)V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbYY:Lcom/google/android/gms/internal/qu;

    new-instance v1, Lcom/google/firebase/database/zzr;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/zzr;-><init>(Lcom/google/firebase/database/Query;Lcom/google/android/gms/internal/qi;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qu;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/vq;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vq;->zzIe()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vq;->zzIh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vq;->zzIk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vq;->zzIl()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t combine startAt(), endAt() and limit(). Use limitToFirst() or limitToLast() instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method


# virtual methods
.method public addChildEventListener(Lcom/google/firebase/database/ChildEventListener;)Lcom/google/firebase/database/ChildEventListener;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/px;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbYY:Lcom/google/android/gms/internal/qu;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzFr()Lcom/google/android/gms/internal/vt;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/px;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/firebase/database/ChildEventListener;Lcom/google/android/gms/internal/vt;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/qi;)V

    return-object p1
.end method

.method public addListenerForSingleValueEvent(Lcom/google/firebase/database/ValueEventListener;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/to;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbYY:Lcom/google/android/gms/internal/qu;

    new-instance v2, Lcom/google/firebase/database/zzp;

    invoke-direct {v2, p0, p1}, Lcom/google/firebase/database/zzp;-><init>(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/ValueEventListener;)V

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzFr()Lcom/google/android/gms/internal/vt;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/to;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/vt;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/qi;)V

    return-void
.end method

.method public addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/to;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbYY:Lcom/google/android/gms/internal/qu;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzFr()Lcom/google/android/gms/internal/vt;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/to;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/vt;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/qi;)V

    return-object p1
.end method

.method public endAt(D)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/Query;->endAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/xc;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/xc;-><init>(Ljava/lang/Double;Lcom/google/android/gms/internal/xm;)V

    invoke-direct {p0, v0, p3}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/xm;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/xu;

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/xu;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/xm;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/xm;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endAt(Z)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->endAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/wo;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/wo;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/internal/xm;)V

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/xm;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(D)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzFo()V

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/Query;->startAt(D)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/Query;->endAt(D)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(DLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzFo()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/database/Query;->startAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/database/Query;->endAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzFo()V

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzFo()V

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Z)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzFo()V

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/Query;->startAt(Z)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/Query;->endAt(Z)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(ZLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzFo()V

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/Query;->startAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/Query;->endAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public getRef()Lcom/google/firebase/database/DatabaseReference;
    .locals 3

    new-instance v0, Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbYY:Lcom/google/android/gms/internal/qu;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzbZf:Lcom/google/android/gms/internal/qr;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;)V

    return-object v0
.end method

.method public keepSynced(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZf:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qr;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZf:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qr;->zzHc()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/wp;->zzIM()Lcom/google/android/gms/internal/wp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/firebase/database/DatabaseException;

    const-string v0, "Can\'t call keepSynced() on .info paths."

    invoke-direct {p1, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbYY:Lcom/google/android/gms/internal/qu;

    new-instance v1, Lcom/google/firebase/database/zzs;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/zzs;-><init>(Lcom/google/firebase/database/Query;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qu;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public limitToFirst(I)Lcom/google/firebase/database/Query;
    .locals 4

    if-gtz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Limit must be a positive integer!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZj:Lcom/google/android/gms/internal/vq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->zzIk()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t call limitToLast on query with previously set limit!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbYY:Lcom/google/android/gms/internal/qu;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzbZf:Lcom/google/android/gms/internal/qr;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzbZj:Lcom/google/android/gms/internal/vq;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/vq;->zzbW(I)Lcom/google/android/gms/internal/vq;

    move-result-object p1

    iget-boolean v3, p0, Lcom/google/firebase/database/Query;->zzbZk:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/vq;Z)V

    return-object v0
.end method

.method public limitToLast(I)Lcom/google/firebase/database/Query;
    .locals 4

    if-gtz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Limit must be a positive integer!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZj:Lcom/google/android/gms/internal/vq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vq;->zzIk()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t call limitToLast on query with previously set limit!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbYY:Lcom/google/android/gms/internal/qu;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzbZf:Lcom/google/android/gms/internal/qr;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzbZj:Lcom/google/android/gms/internal/vq;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/vq;->zzbX(I)Lcom/google/android/gms/internal/vq;

    move-result-object p1

    iget-boolean v3, p0, Lcom/google/firebase/database/Query;->zzbZk:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/vq;Z)V

    return-object v0
.end method

.method public orderByChild(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Key can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string v0, "$key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, ".key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v0, "$priority"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, ".priority"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "$value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/internal/zf;->zzhb(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzFp()V

    new-instance v0, Lcom/google/android/gms/internal/qr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/qr;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qr;->size()I

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t use empty path, use orderByValue() instead!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/xq;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/xq;-><init>(Lcom/google/android/gms/internal/qr;)V

    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbYY:Lcom/google/android/gms/internal/qu;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzbZf:Lcom/google/android/gms/internal/qr;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzbZj:Lcom/google/android/gms/internal/vq;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/vq;->zza(Lcom/google/android/gms/internal/xe;)Lcom/google/android/gms/internal/vq;

    move-result-object p1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/vq;Z)V

    return-object v0

    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Can\'t use \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' as path, please use orderByValue() instead!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Can\'t use \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' as path, please use orderByPriority() instead!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Can\'t use \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' as path, please use orderByKey() instead!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orderByKey()Lcom/google/firebase/database/Query;
    .locals 5

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzFp()V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZj:Lcom/google/android/gms/internal/vq;

    invoke-static {}, Lcom/google/android/gms/internal/xg;->zzJh()Lcom/google/android/gms/internal/xg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vq;->zza(Lcom/google/android/gms/internal/xe;)Lcom/google/android/gms/internal/vq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/vq;)V

    new-instance v1, Lcom/google/firebase/database/Query;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzbYY:Lcom/google/android/gms/internal/qu;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzbZf:Lcom/google/android/gms/internal/qr;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/vq;Z)V

    return-object v1
.end method

.method public orderByPriority()Lcom/google/firebase/database/Query;
    .locals 5

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzFp()V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZj:Lcom/google/android/gms/internal/vq;

    invoke-static {}, Lcom/google/android/gms/internal/xr;->zzJl()Lcom/google/android/gms/internal/xr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vq;->zza(Lcom/google/android/gms/internal/xe;)Lcom/google/android/gms/internal/vq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/vq;)V

    new-instance v1, Lcom/google/firebase/database/Query;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzbYY:Lcom/google/android/gms/internal/qu;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzbZf:Lcom/google/android/gms/internal/qr;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/vq;Z)V

    return-object v1
.end method

.method public orderByValue()Lcom/google/firebase/database/Query;
    .locals 5

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzFp()V

    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbYY:Lcom/google/android/gms/internal/qu;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzbZf:Lcom/google/android/gms/internal/qr;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzbZj:Lcom/google/android/gms/internal/vq;

    invoke-static {}, Lcom/google/android/gms/internal/xw;->zzJm()Lcom/google/android/gms/internal/xw;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/vq;->zza(Lcom/google/android/gms/internal/xe;)Lcom/google/android/gms/internal/vq;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/vq;Z)V

    return-object v0
.end method

.method public removeEventListener(Lcom/google/firebase/database/ChildEventListener;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/px;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbYY:Lcom/google/android/gms/internal/qu;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzFr()Lcom/google/android/gms/internal/vt;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/px;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/firebase/database/ChildEventListener;Lcom/google/android/gms/internal/vt;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/qi;)V

    return-void
.end method

.method public removeEventListener(Lcom/google/firebase/database/ValueEventListener;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/to;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbYY:Lcom/google/android/gms/internal/qu;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzFr()Lcom/google/android/gms/internal/vt;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/to;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/vt;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/qi;)V

    return-void
.end method

.method public startAt(D)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/Query;->startAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/xc;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/xc;-><init>(Ljava/lang/Double;Lcom/google/android/gms/internal/xm;)V

    invoke-direct {p0, v0, p3}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/xm;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/xu;

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/xu;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/xm;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/xm;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAt(Z)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->startAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/wo;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/wo;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/internal/xm;)V

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/xm;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public final zzFq()Lcom/google/android/gms/internal/qr;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZf:Lcom/google/android/gms/internal/qr;

    return-object v0
.end method

.method public final zzFr()Lcom/google/android/gms/internal/vt;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/vt;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbZf:Lcom/google/android/gms/internal/qr;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzbZj:Lcom/google/android/gms/internal/vq;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/vt;-><init>(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/vq;)V

    return-object v0
.end method
