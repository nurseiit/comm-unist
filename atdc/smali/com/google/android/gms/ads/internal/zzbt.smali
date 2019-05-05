.class public final Lcom/google/android/gms/ads/internal/zzbt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field public final zzqD:Landroid/content/Context;

.field zzur:Z

.field final zzvQ:Ljava/lang/String;

.field public zzvR:Ljava/lang/String;

.field final zzvS:Lcom/google/android/gms/internal/zzcu;

.field public final zzvT:Lcom/google/android/gms/internal/zzaje;

.field zzvU:Lcom/google/android/gms/ads/internal/zzbu;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzvV:Lcom/google/android/gms/internal/zzafp;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzvW:Lcom/google/android/gms/internal/zzahp;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzvX:Lcom/google/android/gms/internal/zziv;

.field public zzvY:Lcom/google/android/gms/internal/zzaff;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzvZ:Lcom/google/android/gms/internal/zzafg;

.field private zzwA:Z

.field public zzwa:Lcom/google/android/gms/internal/zzafh;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzwb:Lcom/google/android/gms/internal/zzjl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzwc:Lcom/google/android/gms/internal/zzjo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzwd:Lcom/google/android/gms/internal/zzke;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzwe:Lcom/google/android/gms/internal/zzkk;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzwf:Lcom/google/android/gms/internal/zzpn;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzwg:Lcom/google/android/gms/internal/zzpq;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzwh:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzpt;",
            ">;"
        }
    .end annotation
.end field

.field zzwi:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzpw;",
            ">;"
        }
    .end annotation
.end field

.field zzwj:Lcom/google/android/gms/internal/zzon;

.field zzwk:Lcom/google/android/gms/internal/zzlx;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzwl:Lcom/google/android/gms/internal/zzky;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzwm:Lcom/google/android/gms/internal/zzpz;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzwn:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field zzwo:Lcom/google/android/gms/internal/zznh;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzwp:Lcom/google/android/gms/internal/zzadd;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzwq:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public zzwr:Lcom/google/android/gms/internal/zzafn;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzws:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzwt:I

.field private zzwu:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/zzafh;",
            ">;"
        }
    .end annotation
.end field

.field private zzwv:I

.field private zzww:I

.field private zzwx:Lcom/google/android/gms/internal/zzair;

.field private zzwy:Z

.field private zzwz:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Ljava/lang/String;Lcom/google/android/gms/internal/zzaje;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzbt;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Ljava/lang/String;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/internal/zzcu;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Ljava/lang/String;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/internal/zzcu;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x0

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwr:Lcom/google/android/gms/internal/zzafn;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzws:Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwt:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzur:Z

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwu:Ljava/util/HashSet;

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwv:I

    iput v1, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzww:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwy:Z

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwz:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwA:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzmo;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzafk;->zzhr()Lcom/google/android/gms/internal/zzmr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzmo;->zzdK()Ljava/util/List;

    move-result-object v0

    iget v1, p4, Lcom/google/android/gms/internal/zzaje;->zzaaO:I

    if-eqz v1, :cond_0

    iget v1, p4, Lcom/google/android/gms/internal/zzaje;->zzaaO:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzafk;->zzhr()Lcom/google/android/gms/internal/zzmr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmr;->zze(Ljava/util/List;)V

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvQ:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/google/android/gms/internal/zziv;->zzAt:Z

    if-nez v0, :cond_3

    iget-boolean v0, p2, Lcom/google/android/gms/internal/zziv;->zzAv:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p5, Lcom/google/android/gms/ads/internal/zzbu;

    iget-object v4, p4, Lcom/google/android/gms/internal/zzaje;->zzaP:Ljava/lang/String;

    move-object v1, p5

    move-object v2, p1

    move-object v3, p3

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/zzbu;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    iget-object p5, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    iget v0, p2, Lcom/google/android/gms/internal/zziv;->widthPixels:I

    invoke-virtual {p5, v0}, Lcom/google/android/gms/ads/internal/zzbu;->setMinimumWidth(I)V

    iget-object p5, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    iget v0, p2, Lcom/google/android/gms/internal/zziv;->heightPixels:I

    invoke-virtual {p5, v0}, Lcom/google/android/gms/ads/internal/zzbu;->setMinimumHeight(I)V

    iget-object p5, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    const/4 v0, 0x4

    invoke-virtual {p5, v0}, Lcom/google/android/gms/ads/internal/zzbu;->setVisibility(I)V

    goto :goto_1

    :cond_3
    :goto_0
    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    :goto_1
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvX:Lcom/google/android/gms/internal/zziv;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvR:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvT:Lcom/google/android/gms/internal/zzaje;

    new-instance p1, Lcom/google/android/gms/internal/zzcu;

    new-instance p2, Lcom/google/android/gms/ads/internal/zzah;

    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/zzah;-><init>(Lcom/google/android/gms/ads/internal/zzbt;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzcu;-><init>(Lcom/google/android/gms/internal/zzcp;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvS:Lcom/google/android/gms/internal/zzcu;

    new-instance p1, Lcom/google/android/gms/internal/zzair;

    const-wide/16 p2, 0xc8

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/zzair;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwx:Lcom/google/android/gms/internal/zzair;

    new-instance p1, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwi:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method private final zzd(Z)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwx:Lcom/google/android/gms/internal/zzair;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzair;->tryAcquire()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzakb;->zzcn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/internal/zzbu;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaiy;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    aget v3, v0, v1

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzaiy;->zzd(Landroid/content/Context;I)I

    move-result v2

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaiy;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzaiy;->zzd(Landroid/content/Context;I)I

    move-result v0

    iget v3, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwv:I

    if-ne v2, v3, :cond_2

    iget v3, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzww:I

    if-eq v0, v3, :cond_3

    :cond_2
    iput v2, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwv:I

    iput v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzww:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwv:I

    iget v3, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzww:I

    xor-int/2addr p1, v4

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/internal/zzakb;->zza(IIZ)V

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbu;->getRootView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/internal/zzbu;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq p1, v3, :cond_4

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwy:Z

    :cond_4
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    if-eq p1, v0, :cond_5

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwz:Z

    :cond_5
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzbt;->zzd(Z)V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzbt;->zzd(Z)V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwA:Z

    return-void
.end method

.method public final zza(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/zzafh;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwu:Ljava/util/HashSet;

    return-void
.end method

.method public final zzbZ()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/zzafh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwu:Ljava/util/HashSet;

    return-object v0
.end method

.method public final zzca()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->destroy()V

    :cond_0
    return-void
.end method

.method public final zzcb()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzMH:Lcom/google/android/gms/internal/zzut;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzMH:Lcom/google/android/gms/internal/zzut;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzut;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "Could not destroy mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zzcc()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwt:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzcd()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwt:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzce()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwy:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwz:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwy:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwA:Z

    if-eqz v0, :cond_1

    const-string v0, "top-scrollable"

    return-object v0

    :cond_1
    const-string v0, "top-locked"

    return-object v0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwz:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwA:Z

    if-eqz v0, :cond_3

    const-string v0, "bottom-scrollable"

    return-object v0

    :cond_3
    const-string v0, "bottom-locked"

    return-object v0

    :cond_4
    const-string v0, ""

    return-object v0
.end method

.method public final zze(Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzwt:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->stopLoading()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvV:Lcom/google/android/gms/internal/zzafp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvV:Lcom/google/android/gms/internal/zzafp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzafp;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/internal/zzahp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/internal/zzahp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzahp;->cancel()V

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    :cond_3
    return-void
.end method
