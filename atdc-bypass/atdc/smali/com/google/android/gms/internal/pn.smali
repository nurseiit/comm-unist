.class final Lcom/google/android/gms/internal/pn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcbS:Lcom/google/android/gms/internal/pl;

.field private synthetic zzcbT:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/pl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/pn;->zzcbS:Lcom/google/android/gms/internal/pl;

    iput-object p2, p0, Lcom/google/android/gms/internal/pn;->zzcbT:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/pn;->zzcbS:Lcom/google/android/gms/internal/pl;

    iget-object v0, v0, Lcom/google/android/gms/internal/pl;->zzcbQ:Lcom/google/android/gms/internal/pg;

    iget-object v1, p0, Lcom/google/android/gms/internal/pn;->zzcbT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/pg;->zza(Lcom/google/android/gms/internal/pg;Ljava/lang/String;)V

    return-void
.end method
