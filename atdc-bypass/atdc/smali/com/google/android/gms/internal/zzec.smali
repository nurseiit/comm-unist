.class public abstract Lcom/google/android/gms/internal/zzec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private TAG:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field protected final zzpJ:Lcom/google/android/gms/internal/zzdb;

.field private zzrB:I

.field private zzrC:I

.field protected final zzro:Lcom/google/android/gms/internal/zzax;

.field private zzrv:Ljava/lang/String;

.field protected zzrx:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzax;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzec;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzec;->zzpJ:Lcom/google/android/gms/internal/zzdb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzec;->className:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzec;->zzrv:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzec;->zzro:Lcom/google/android/gms/internal/zzax;

    iput p5, p0, Lcom/google/android/gms/internal/zzec;->zzrB:I

    iput p6, p0, Lcom/google/android/gms/internal/zzec;->zzrC:I

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzec;->zzV()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zzT()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method public zzV()Ljava/lang/Void;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzec;->zzpJ:Lcom/google/android/gms/internal/zzdb;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzec;->className:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzec;->zzrv:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzdb;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/zzec;->zzrx:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzec;->zzrx:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzec;->zzT()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzec;->zzpJ:Lcom/google/android/gms/internal/zzdb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdb;->zzI()Lcom/google/android/gms/internal/zzcn;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v4, p0, Lcom/google/android/gms/internal/zzec;->zzrB:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/google/android/gms/internal/zzec;->zzrC:I

    iget v5, p0, Lcom/google/android/gms/internal/zzec;->zzrB:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const/4 v8, 0x0

    sub-long v8, v6, v1

    const-wide/16 v1, 0x3e8

    div-long/2addr v8, v1

    invoke-virtual {v3, v4, v5, v8, v9}, Lcom/google/android/gms/internal/zzcn;->zza(IIJ)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method
