.class final Lcom/google/android/gms/ads/internal/zzl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzsW:Lcom/google/android/gms/internal/zzafg;

.field final synthetic zztb:Lcom/google/android/gms/ads/internal/zzi;

.field final synthetic zztc:Lcom/google/android/gms/internal/zzaet;

.field private synthetic zztd:Lcom/google/android/gms/internal/zznb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzi;Lcom/google/android/gms/internal/zzafg;Lcom/google/android/gms/internal/zzaet;Lcom/google/android/gms/internal/zznb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzl;->zztb:Lcom/google/android/gms/ads/internal/zzi;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsW:Lcom/google/android/gms/internal/zzafg;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzl;->zztc:Lcom/google/android/gms/internal/zzaet;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzl;->zztd:Lcom/google/android/gms/internal/zznb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsW:Lcom/google/android/gms/internal/zzafg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaai;->zzTx:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zztb:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzi;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwo:Lcom/google/android/gms/internal/zznh;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsW:Lcom/google/android/gms/internal/zzafg;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaai;->zzPi:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsW:Lcom/google/android/gms/internal/zzafg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaai;->zzPi:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagz;->zzaI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zznc;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzl;->zztb:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsW:Lcom/google/android/gms/internal/zzafg;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzaai;->body:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/gms/internal/zznc;-><init>(Lcom/google/android/gms/ads/internal/zzag;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zztb:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzi;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    const/4 v3, 0x1

    iput v3, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwt:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zztb:Lcom/google/android/gms/ads/internal/zzi;

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/zzi;->zzsN:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zztb:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzi;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwo:Lcom/google/android/gms/internal/zznh;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zznh;->zza(Lcom/google/android/gms/internal/zzne;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Could not call the onCustomRenderedAdLoadedListener."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zztb:Lcom/google/android/gms/ads/internal/zzi;

    iput-boolean v3, v0, Lcom/google/android/gms/ads/internal/zzi;->zzsN:Z

    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/zzw;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zztc:Lcom/google/android/gms/internal/zzaet;

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/zzw;-><init>(Lcom/google/android/gms/internal/zzaet;)V

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zztb:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsW:Lcom/google/android/gms/internal/zzafg;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzl;->zztc:Lcom/google/android/gms/internal/zzaet;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/android/gms/ads/internal/zzi;->zza(Lcom/google/android/gms/internal/zzafg;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzaet;)Lcom/google/android/gms/internal/zzaka;

    move-result-object v9
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzakm; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v2, Lcom/google/android/gms/ads/internal/zzn;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/zzn;-><init>(Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/ads/internal/zzw;)V

    invoke-interface {v9, v2}, Lcom/google/android/gms/internal/zzaka;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/google/android/gms/ads/internal/zzo;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/zzo;-><init>(Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/ads/internal/zzw;)V

    invoke-interface {v9, v2}, Lcom/google/android/gms/internal/zzaka;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zztb:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzi;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iput v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwt:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zztb:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzi;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzby()Lcom/google/android/gms/internal/zzxx;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zztb:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzi;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzl;->zztb:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzl;->zzsW:Lcom/google/android/gms/internal/zzafg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zztb:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzi;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v8, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzvS:Lcom/google/android/gms/internal/zzcu;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zztb:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v10, v1, Lcom/google/android/gms/ads/internal/zzi;->zzsX:Lcom/google/android/gms/internal/zzuq;

    iget-object v11, p0, Lcom/google/android/gms/ads/internal/zzl;->zztb:Lcom/google/android/gms/ads/internal/zzi;

    iget-object v12, p0, Lcom/google/android/gms/ads/internal/zzl;->zztd:Lcom/google/android/gms/internal/zznb;

    invoke-static/range {v5 .. v12}, Lcom/google/android/gms/internal/zzxx;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzafg;Lcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzaka;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzxy;Lcom/google/android/gms/internal/zznb;)Lcom/google/android/gms/internal/zzahp;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/internal/zzahp;

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Could not obtain webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafr;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/zzm;-><init>(Lcom/google/android/gms/ads/internal/zzl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
