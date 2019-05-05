.class public final Lcom/google/android/gms/internal/vu;
.super Ljava/lang/Object;


# instance fields
.field private final zzcgU:Lcom/google/android/gms/internal/vt;

.field private final zzchl:Lcom/google/android/gms/internal/vx;

.field private zzchm:Lcom/google/android/gms/internal/vw;

.field private final zzchn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/qi;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcho:Lcom/google/android/gms/internal/vm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/vw;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vu;->zzcgU:Lcom/google/android/gms/internal/vt;

    new-instance v0, Lcom/google/android/gms/internal/wd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vt;->zzIm()Lcom/google/android/gms/internal/xe;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/wd;-><init>(Lcom/google/android/gms/internal/xe;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vt;->zzIu()Lcom/google/android/gms/internal/vq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vq;->zzIs()Lcom/google/android/gms/internal/wf;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/vx;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/vx;-><init>(Lcom/google/android/gms/internal/wf;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/vu;->zzchl:Lcom/google/android/gms/internal/vx;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vw;->zzIA()Lcom/google/android/gms/internal/vg;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vw;->zzIy()Lcom/google/android/gms/internal/vg;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/internal/xd;->zzJb()Lcom/google/android/gms/internal/xd;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vt;->zzIm()Lcom/google/android/gms/internal/xe;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/xf;->zza(Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xe;)Lcom/google/android/gms/internal/xf;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vg;->zzHW()Lcom/google/android/gms/internal/xf;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/internal/wd;->zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wc;)Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vg;->zzHW()Lcom/google/android/gms/internal/xf;

    move-result-object v4

    invoke-interface {v1, v3, v4, v5}, Lcom/google/android/gms/internal/wf;->zza(Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/wc;)Lcom/google/android/gms/internal/xf;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/vg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vg;->zzHU()Z

    move-result v2

    const/4 v5, 0x0

    invoke-direct {v4, v0, v2, v5}, Lcom/google/android/gms/internal/vg;-><init>(Lcom/google/android/gms/internal/xf;ZZ)V

    new-instance v0, Lcom/google/android/gms/internal/vg;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vg;->zzHU()Z

    move-result p2

    invoke-interface {v1}, Lcom/google/android/gms/internal/wf;->zzIE()Z

    move-result v1

    invoke-direct {v0, v3, p2, v1}, Lcom/google/android/gms/internal/vg;-><init>(Lcom/google/android/gms/internal/xf;ZZ)V

    new-instance p2, Lcom/google/android/gms/internal/vw;

    invoke-direct {p2, v0, v4}, Lcom/google/android/gms/internal/vw;-><init>(Lcom/google/android/gms/internal/vg;Lcom/google/android/gms/internal/vg;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/vu;->zzchm:Lcom/google/android/gms/internal/vw;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/vu;->zzchn:Ljava/util/List;

    new-instance p2, Lcom/google/android/gms/internal/vm;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/vm;-><init>(Lcom/google/android/gms/internal/vt;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/vu;->zzcho:Lcom/google/android/gms/internal/vm;

    return-void
.end method

.method private final zza(Ljava/util/List;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/qi;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/vi;",
            ">;",
            "Lcom/google/android/gms/internal/xf;",
            "Lcom/google/android/gms/internal/qi;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/vj;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/vu;->zzchn:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/qi;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vu;->zzcho:Lcom/google/android/gms/internal/vm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/vm;->zza(Ljava/util/List;Lcom/google/android/gms/internal/xf;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vu;->zzchn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final zzIv()Lcom/google/android/gms/internal/vt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vu;->zzcgU:Lcom/google/android/gms/internal/vt;

    return-object v0
.end method

.method public final zzIw()Lcom/google/android/gms/internal/xm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vu;->zzchm:Lcom/google/android/gms/internal/vw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vw;->zzIA()Lcom/google/android/gms/internal/vg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vg;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    return-object v0
.end method

.method public final zzIx()Lcom/google/android/gms/internal/xm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vu;->zzchm:Lcom/google/android/gms/internal/vw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vw;->zzIy()Lcom/google/android/gms/internal/vg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vg;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/qi;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qi;",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/vk;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/vu;->zzcgU:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/vu;->zzchn:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/qi;

    new-instance v4, Lcom/google/android/gms/internal/vh;

    invoke-direct {v4, v3, p2, v1}, Lcom/google/android/gms/internal/vh;-><init>(Lcom/google/android/gms/internal/qi;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/qr;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    if-eqz p1, :cond_5

    const/4 p2, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/vu;->zzchn:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/vu;->zzchn:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/qi;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/qi;->zzc(Lcom/google/android/gms/internal/qi;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/qi;->zzGW()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v2

    :cond_4
    if-eq p2, v1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/vu;->zzchn:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/qi;

    iget-object v1, p0, Lcom/google/android/gms/internal/vu;->zzchn:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qi;->zzGV()V

    return-object v0

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/vu;->zzchn:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/qi;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/qi;->zzGV()V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/vu;->zzchn:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_7
    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/tx;Lcom/google/android/gms/internal/ts;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/vv;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tx;->zzHF()Lcom/google/android/gms/internal/ty;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ty;->zzcfJ:Lcom/google/android/gms/internal/ty;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tx;->zzHE()Lcom/google/android/gms/internal/tz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tz;->zzHI()Lcom/google/android/gms/internal/vq;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vu;->zzchm:Lcom/google/android/gms/internal/vw;

    iget-object v1, p0, Lcom/google/android/gms/internal/vu;->zzchl:Lcom/google/android/gms/internal/vx;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/gms/internal/vx;->zza(Lcom/google/android/gms/internal/vw;Lcom/google/android/gms/internal/tx;Lcom/google/android/gms/internal/ts;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/wa;

    move-result-object p1

    iget-object p2, p1, Lcom/google/android/gms/internal/wa;->zzchm:Lcom/google/android/gms/internal/vw;

    iput-object p2, p0, Lcom/google/android/gms/internal/vu;->zzchm:Lcom/google/android/gms/internal/vw;

    iget-object p2, p1, Lcom/google/android/gms/internal/wa;->zzchq:Ljava/util/List;

    iget-object p3, p1, Lcom/google/android/gms/internal/wa;->zzchm:Lcom/google/android/gms/internal/vw;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/vw;->zzIy()Lcom/google/android/gms/internal/vg;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/vg;->zzHW()Lcom/google/android/gms/internal/xf;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/gms/internal/vu;->zza(Ljava/util/List;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/qi;)Ljava/util/List;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/vv;

    iget-object p1, p1, Lcom/google/android/gms/internal/wa;->zzchq:Ljava/util/List;

    invoke-direct {p3, p2, p1}, Lcom/google/android/gms/internal/vv;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p3
.end method

.method public final zzb(Lcom/google/android/gms/internal/qi;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vu;->zzchn:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/qi;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qi;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/vj;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/vu;->zzchm:Lcom/google/android/gms/internal/vw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vw;->zzIy()Lcom/google/android/gms/internal/vg;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vg;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/xm;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/xl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/xl;->zzJk()Lcom/google/android/gms/internal/wp;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/xl;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vi;->zzc(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/vi;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vg;->zzHU()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vg;->zzHW()Lcom/google/android/gms/internal/xf;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/vi;->zza(Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/vi;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vg;->zzHW()Lcom/google/android/gms/internal/xf;

    move-result-object v0

    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/gms/internal/vu;->zza(Ljava/util/List;Lcom/google/android/gms/internal/xf;Lcom/google/android/gms/internal/qi;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zzr(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/xm;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/vu;->zzchm:Lcom/google/android/gms/internal/vw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vw;->zzIB()Lcom/google/android/gms/internal/xm;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/vu;->zzcgU:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vt;->zzIq()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHc()Lcom/google/android/gms/internal/wp;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/xm;->zzm(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/xm;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/xm;->zzN(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/xm;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
