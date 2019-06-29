.class final Lcom/google/android/gms/internal/zzact;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzWv:Lcom/google/android/gms/internal/zzacs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzacs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzact;->zzWv:Lcom/google/android/gms/internal/zzacs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzact;->zzWv:Lcom/google/android/gms/internal/zzacs;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzacs;->zza(Lcom/google/android/gms/internal/zzacs;I)V

    return-void
.end method
