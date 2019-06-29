.class public final Lcom/google/android/gms/internal/zzdz;
.super Lcom/google/android/gms/internal/zzec;


# instance fields
.field private final zzru:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzax;IILandroid/view/View;)V
    .locals 7

    const/16 v6, 0x39

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzec;-><init>(Lcom/google/android/gms/internal/zzdb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzax;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/zzdz;->zzru:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected final zzT()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzru:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdz;->zzpJ:Lcom/google/android/gms/internal/zzdb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzmo;->zzEY:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdz;->zzrx:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzdz;->zzru:Landroid/view/View;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/zzdh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzdh;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaz;-><init>()V

    iget-object v2, v1, Lcom/google/android/gms/internal/zzdh;->zzrj:Ljava/lang/Long;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzaz;->zzcu:Ljava/lang/Long;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzdh;->zzcv:Ljava/lang/Long;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzaz;->zzcv:Ljava/lang/Long;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzdh;->zzcw:Ljava/lang/Long;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaz;->zzcw:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdz;->zzro:Lcom/google/android/gms/internal/zzax;

    iput-object v0, v1, Lcom/google/android/gms/internal/zzax;->zzbR:Lcom/google/android/gms/internal/zzaz;

    :cond_0
    return-void
.end method
