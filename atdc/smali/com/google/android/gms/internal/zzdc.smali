.class final Lcom/google/android/gms/internal/zzdc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzqW:Lcom/google/android/gms/internal/zzdb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdc;->zzqW:Lcom/google/android/gms/internal/zzdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdc;->zzqW:Lcom/google/android/gms/internal/zzdb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdb;->zza(Lcom/google/android/gms/internal/zzdb;)V

    return-void
.end method
