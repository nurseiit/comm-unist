.class final Lcom/google/android/gms/tagmanager/zzcb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbEU:Lcom/google/android/gms/tagmanager/zzbz;

.field private synthetic zzbEV:J

.field private synthetic zzbEW:Lcom/google/android/gms/tagmanager/zzca;

.field private synthetic zzsD:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzca;Lcom/google/android/gms/tagmanager/zzbz;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbEW:Lcom/google/android/gms/tagmanager/zzca;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbEU:Lcom/google/android/gms/tagmanager/zzbz;

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbEV:J

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzsD:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbEW:Lcom/google/android/gms/tagmanager/zzca;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzca;->zza(Lcom/google/android/gms/tagmanager/zzca;)Lcom/google/android/gms/tagmanager/zzcc;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfo;->zzBV()Lcom/google/android/gms/tagmanager/zzfo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbEW:Lcom/google/android/gms/tagmanager/zzca;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzca;->zzb(Lcom/google/android/gms/tagmanager/zzca;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbEU:Lcom/google/android/gms/tagmanager/zzbz;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzfo;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbz;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbEW:Lcom/google/android/gms/tagmanager/zzca;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzfo;->zzBW()Lcom/google/android/gms/tagmanager/zzcc;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/zzca;->zza(Lcom/google/android/gms/tagmanager/zzca;Lcom/google/android/gms/tagmanager/zzcc;)Lcom/google/android/gms/tagmanager/zzcc;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbEW:Lcom/google/android/gms/tagmanager/zzca;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzca;->zza(Lcom/google/android/gms/tagmanager/zzca;)Lcom/google/android/gms/tagmanager/zzcc;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzbEV:J

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzcb;->zzsD:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/zzcc;->zzb(JLjava/lang/String;)V

    return-void
.end method
