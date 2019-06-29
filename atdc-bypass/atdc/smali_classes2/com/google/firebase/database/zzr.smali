.class final Lcom/google/firebase/database/zzr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbZm:Lcom/google/firebase/database/Query;

.field private synthetic zzbZo:Lcom/google/android/gms/internal/qi;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/Query;Lcom/google/android/gms/internal/qi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/zzr;->zzbZm:Lcom/google/firebase/database/Query;

    iput-object p2, p0, Lcom/google/firebase/database/zzr;->zzbZo:Lcom/google/android/gms/internal/qi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/zzr;->zzbZm:Lcom/google/firebase/database/Query;

    iget-object v0, v0, Lcom/google/firebase/database/Query;->zzbYY:Lcom/google/android/gms/internal/qu;

    iget-object v1, p0, Lcom/google/firebase/database/zzr;->zzbZo:Lcom/google/android/gms/internal/qi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qu;->zzf(Lcom/google/android/gms/internal/qi;)V

    return-void
.end method
