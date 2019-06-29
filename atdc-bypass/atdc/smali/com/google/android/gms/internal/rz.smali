.class final Lcom/google/android/gms/internal/rz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcdI:Lcom/google/android/gms/internal/qu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rz;->zzcdI:Lcom/google/android/gms/internal/qu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rz;->zzcdI:Lcom/google/android/gms/internal/qu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qu;->interrupt()V

    return-void
.end method
