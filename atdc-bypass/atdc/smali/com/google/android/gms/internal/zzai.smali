.class final Lcom/google/android/gms/internal/zzai;
.super Ljava/lang/Object;


# instance fields
.field public key:Ljava/lang/String;

.field public size:J

.field public zza:Ljava/lang/String;

.field public zzb:J

.field public zzc:J

.field public zzd:J

.field public zze:J

.field public zzf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzc;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzai;->key:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/zzc;->data:[B

    array-length p1, p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzai;->size:J

    iget-object p1, p2, Lcom/google/android/gms/internal/zzc;->zza:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzai;->zza:Ljava/lang/String;

    iget-wide v0, p2, Lcom/google/android/gms/internal/zzc;->zzb:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzai;->zzb:J

    iget-wide v0, p2, Lcom/google/android/gms/internal/zzc;->zzc:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzai;->zzc:J

    iget-wide v0, p2, Lcom/google/android/gms/internal/zzc;->zzd:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzai;->zzd:J

    iget-wide v0, p2, Lcom/google/android/gms/internal/zzc;->zze:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzai;->zze:J

    iget-object p1, p2, Lcom/google/android/gms/internal/zzc;->zzf:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzai;->zzf:Ljava/util/Map;

    return-void
.end method

.method public static zzf(Ljava/io/InputStream;)Lcom/google/android/gms/internal/zzai;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzai;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzai;-><init>()V

    invoke-static {p0}, Lcom/google/android/gms/internal/zzag;->zzb(Ljava/io/InputStream;)I

    move-result v1

    const v2, 0x20150306

    if-eq v1, v2, :cond_0

    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/zzag;->zzd(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzai;->key:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzag;->zzd(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzai;->zza:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzai;->zza:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/zzai;->zza:Ljava/lang/String;

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/zzag;->zzc(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzai;->zzb:J

    invoke-static {p0}, Lcom/google/android/gms/internal/zzag;->zzc(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzai;->zzc:J

    invoke-static {p0}, Lcom/google/android/gms/internal/zzag;->zzc(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzai;->zzd:J

    invoke-static {p0}, Lcom/google/android/gms/internal/zzag;->zzc(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzai;->zze:J

    invoke-static {p0}, Lcom/google/android/gms/internal/zzag;->zze(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/zzai;->zzf:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/io/OutputStream;)Z
    .locals 5

    const v0, 0x20150306

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzag;->zza(Ljava/io/OutputStream;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzai;->key:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzag;->zza(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzai;->zza:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzai;->zza:Ljava/lang/String;

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzag;->zza(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzai;->zzb:J

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/zzag;->zza(Ljava/io/OutputStream;J)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzai;->zzc:J

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/zzag;->zza(Ljava/io/OutputStream;J)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzai;->zzd:J

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/zzag;->zza(Ljava/io/OutputStream;J)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzai;->zze:J

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/zzag;->zza(Ljava/io/OutputStream;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzai;->zzf:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/zzag;->zza(Ljava/io/OutputStream;I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/zzag;->zza(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/zzag;->zza(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzag;->zza(Ljava/io/OutputStream;I)V

    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    const-string v0, "%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzab;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
