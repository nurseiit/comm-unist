.class final Lcom/google/android/gms/internal/zzto;
.super Ljava/lang/Object;


# instance fields
.field zzKA:Z

.field private synthetic zzKB:Lcom/google/android/gms/internal/zztn;

.field zzKv:Lcom/google/android/gms/ads/internal/zzal;

.field zzKw:Lcom/google/android/gms/internal/zzir;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzKx:Lcom/google/android/gms/internal/zzsj;

.field zzKy:J

.field zzKz:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zztn;Lcom/google/android/gms/internal/zzsi;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzto;->zzKB:Lcom/google/android/gms/internal/zztn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zztn;->zza(Lcom/google/android/gms/internal/zztn;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzsi;->zzX(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzal;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzto;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    new-instance p1, Lcom/google/android/gms/internal/zzsj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzsj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzto;->zzKx:Lcom/google/android/gms/internal/zzsj;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzto;->zzKx:Lcom/google/android/gms/internal/zzsj;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzto;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    new-instance v0, Lcom/google/android/gms/internal/zzsk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzsk;-><init>(Lcom/google/android/gms/internal/zzsj;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/zzal;->zza(Lcom/google/android/gms/internal/zzjo;)V

    new-instance v0, Lcom/google/android/gms/internal/zzss;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzss;-><init>(Lcom/google/android/gms/internal/zzsj;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/zzal;->zza(Lcom/google/android/gms/internal/zzke;)V

    new-instance v0, Lcom/google/android/gms/internal/zzsu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzsu;-><init>(Lcom/google/android/gms/internal/zzsj;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/zzal;->zza(Lcom/google/android/gms/internal/zznh;)V

    new-instance v0, Lcom/google/android/gms/internal/zzsw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzsw;-><init>(Lcom/google/android/gms/internal/zzsj;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/zzal;->zza(Lcom/google/android/gms/internal/zzjl;)V

    new-instance v0, Lcom/google/android/gms/internal/zzsy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzsy;-><init>(Lcom/google/android/gms/internal/zzsj;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/zzal;->zza(Lcom/google/android/gms/internal/zzadd;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zztn;Lcom/google/android/gms/internal/zzsi;Lcom/google/android/gms/internal/zzir;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzto;-><init>(Lcom/google/android/gms/internal/zztn;Lcom/google/android/gms/internal/zzsi;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzto;->zzKw:Lcom/google/android/gms/internal/zzir;

    return-void
.end method


# virtual methods
.method final load()Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzto;->zzKz:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzto;->zzKw:Lcom/google/android/gms/internal/zzir;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzto;->zzKw:Lcom/google/android/gms/internal/zzir;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzto;->zzKB:Lcom/google/android/gms/internal/zztn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zztn;->zzb(Lcom/google/android/gms/internal/zztn;)Lcom/google/android/gms/internal/zzir;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zztl;->zzj(Lcom/google/android/gms/internal/zzir;)Lcom/google/android/gms/internal/zzir;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzto;->zzKv:Lcom/google/android/gms/ads/internal/zzal;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/zzal;->zza(Lcom/google/android/gms/internal/zzir;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzto;->zzKA:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzto;->zzKz:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbF()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzto;->zzKy:J

    return v0
.end method
