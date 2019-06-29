.class public final Lcom/google/android/gms/internal/vm;
.super Ljava/lang/Object;


# instance fields
.field private final zzcgU:Lcom/google/android/gms/internal/vt;

.field private final zzcgV:Lcom/google/android/gms/internal/xe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vm;->zzcgU:Lcom/google/android/gms/internal/vt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vt;->zzIm()Lcom/google/android/gms/internal/xe;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/vm;->zzcgV:Lcom/google/android/gms/internal/xe;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/vm;)Lcom/google/android/gms/internal/xe;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/vm;->zzcgV:Lcom/google/android/gms/internal/xe;

    return-object p0
.end method

.method private final zza(Ljava/util/List;Lcom/google/android/gms/internal/vl;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/xf;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/vj;",
            ">;",
            "Lcom/google/android/gms/internal/vl;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/vi;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/qi;",
            ">;",
            "Lcom/google/android/gms/internal/xf;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/vi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vi;->zzHZ()Lcom/google/android/gms/internal/vl;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/vl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p3, Lcom/google/android/gms/internal/vn;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/vn;-><init>(Lcom/google/android/gms/internal/vm;)V

    invoke-static {v0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v1, 0x0

    :cond_2
    if-ge v1, p3, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/google/android/gms/internal/vi;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/qi;

    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/qi;->zza(Lcom/google/android/gms/internal/vl;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vi;->zzHZ()Lcom/google/android/gms/internal/vl;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/vl;->zzcgS:Lcom/google/android/gms/internal/vl;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/vl;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vi;->zzHZ()Lcom/google/android/gms/internal/vl;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/vl;->zzcgO:Lcom/google/android/gms/internal/vl;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/vl;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/vi;->zzHY()Lcom/google/android/gms/internal/wp;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vi;->zzHW()Lcom/google/android/gms/internal/xf;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/vm;->zzcgV:Lcom/google/android/gms/internal/xe;

    invoke-virtual {p5, v5, v6, v7}, Lcom/google/android/gms/internal/xf;->zza(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/xe;)Lcom/google/android/gms/internal/wp;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/vi;->zzg(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/vi;

    move-result-object v5

    goto :goto_3

    :cond_5
    :goto_2
    move-object v5, v2

    :goto_3
    iget-object v6, p0, Lcom/google/android/gms/internal/vm;->zzcgU:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/qi;->zza(Lcom/google/android/gms/internal/vi;Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vj;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/xf;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/vi;",
            ">;",
            "Lcom/google/android/gms/internal/xf;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/qi;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/vj;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/vi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vi;->zzHZ()Lcom/google/android/gms/internal/vl;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/vl;->zzcgR:Lcom/google/android/gms/internal/vl;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/vl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/vm;->zzcgV:Lcom/google/android/gms/internal/xe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vi;->zzIb()Lcom/google/android/gms/internal/xf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vi;->zzHW()Lcom/google/android/gms/internal/xf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/xf;->zzFn()Lcom/google/android/gms/internal/xm;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/xl;

    invoke-static {}, Lcom/google/android/gms/internal/wp;->zzIJ()Lcom/google/android/gms/internal/wp;

    move-result-object v8

    invoke-direct {v5, v8, v3}, Lcom/google/android/gms/internal/xl;-><init>(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    new-instance v3, Lcom/google/android/gms/internal/xl;

    invoke-static {}, Lcom/google/android/gms/internal/wp;->zzIJ()Lcom/google/android/gms/internal/wp;

    move-result-object v8

    invoke-direct {v3, v8, v4}, Lcom/google/android/gms/internal/xl;-><init>(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    invoke-virtual {v2, v5, v3}, Lcom/google/android/gms/internal/xe;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vi;->zzHY()Lcom/google/android/gms/internal/wp;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vi;->zzHW()Lcom/google/android/gms/internal/xf;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/vi;->zzc(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/vi;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/vl;->zzcgO:Lcom/google/android/gms/internal/vl;

    move-object v0, p0

    move-object v1, v6

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/vm;->zza(Ljava/util/List;Lcom/google/android/gms/internal/vl;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/xf;)V

    sget-object v2, Lcom/google/android/gms/internal/vl;->zzcgP:Lcom/google/android/gms/internal/vl;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/vm;->zza(Ljava/util/List;Lcom/google/android/gms/internal/vl;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/xf;)V

    sget-object v2, Lcom/google/android/gms/internal/vl;->zzcgQ:Lcom/google/android/gms/internal/vl;

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/vm;->zza(Ljava/util/List;Lcom/google/android/gms/internal/vl;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/xf;)V

    sget-object v2, Lcom/google/android/gms/internal/vl;->zzcgR:Lcom/google/android/gms/internal/vl;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/vm;->zza(Ljava/util/List;Lcom/google/android/gms/internal/vl;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/xf;)V

    sget-object v2, Lcom/google/android/gms/internal/vl;->zzcgS:Lcom/google/android/gms/internal/vl;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/vm;->zza(Ljava/util/List;Lcom/google/android/gms/internal/vl;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/xf;)V

    return-object v6
.end method
