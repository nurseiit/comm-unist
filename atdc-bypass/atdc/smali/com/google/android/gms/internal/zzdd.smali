.class final Lcom/google/android/gms/internal/zzdd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzqW:Lcom/google/android/gms/internal/zzdb;

.field private synthetic zzqX:I

.field private synthetic zzqY:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdb;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdd;->zzqW:Lcom/google/android/gms/internal/zzdb;

    iput p2, p0, Lcom/google/android/gms/internal/zzdd;->zzqX:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzdd;->zzqY:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdd;->zzqW:Lcom/google/android/gms/internal/zzdb;

    iget v1, p0, Lcom/google/android/gms/internal/zzdd;->zzqX:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzdd;->zzqY:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzdb;->zzb(IZ)Lcom/google/android/gms/internal/zzax;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdd;->zzqW:Lcom/google/android/gms/internal/zzdb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzdb;->zza(Lcom/google/android/gms/internal/zzdb;Lcom/google/android/gms/internal/zzax;)Lcom/google/android/gms/internal/zzax;

    iget v1, p0, Lcom/google/android/gms/internal/zzdd;->zzqX:I

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzdb;->zzb(ILcom/google/android/gms/internal/zzax;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdd;->zzqW:Lcom/google/android/gms/internal/zzdb;

    iget v1, p0, Lcom/google/android/gms/internal/zzdd;->zzqX:I

    add-int/lit8 v1, v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzdd;->zzqY:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzdb;->zza(IZ)V

    :cond_0
    return-void
.end method
