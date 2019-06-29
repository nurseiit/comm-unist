.class final Lcom/google/android/gms/internal/zzcwo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcwn$zzc;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;)Lcom/google/android/gms/internal/zzcwn;
    .locals 10

    new-instance v9, Lcom/google/android/gms/internal/zzcwn;

    new-instance v4, Lcom/google/android/gms/internal/zzcxi;

    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/zzcxi;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcxe$zza;->zzbx(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/zzcxg;->zzCD()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/zzcvs;->zzCw()Lcom/google/android/gms/internal/zzcvs;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/zzcwn$zza;

    invoke-direct {v8, p1}, Lcom/google/android/gms/internal/zzcwn$zza;-><init>(Landroid/content/Context;)V

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzcwn;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;Lcom/google/android/gms/internal/zzcxi;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/zzcvs;Lcom/google/android/gms/internal/zzcwn$zza;)V

    return-object v9
.end method
