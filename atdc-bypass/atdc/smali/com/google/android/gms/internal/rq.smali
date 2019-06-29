.class final Lcom/google/android/gms/internal/rq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pf;


# instance fields
.field private synthetic zzcdA:Lcom/google/android/gms/internal/qu;

.field private synthetic zzcdU:Lcom/google/android/gms/internal/tm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/tm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rq;->zzcdA:Lcom/google/android/gms/internal/qu;

    iput-object p2, p0, Lcom/google/android/gms/internal/rq;->zzcdU:Lcom/google/android/gms/internal/tm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaa(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/qu;->zzac(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/rq;->zzcdA:Lcom/google/android/gms/internal/qu;

    const-string v0, "Persisted write"

    iget-object v1, p0, Lcom/google/android/gms/internal/rq;->zzcdU:Lcom/google/android/gms/internal/tm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tm;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v1

    invoke-static {p2, v0, v1, p1}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/qu;Ljava/lang/String;Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/DatabaseError;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/rq;->zzcdA:Lcom/google/android/gms/internal/qu;

    iget-object v0, p0, Lcom/google/android/gms/internal/rq;->zzcdU:Lcom/google/android/gms/internal/tm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tm;->zzHt()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/rq;->zzcdU:Lcom/google/android/gms/internal/tm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/tm;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v2

    invoke-static {p2, v0, v1, v2, p1}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/qu;JLcom/google/android/gms/internal/qr;Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method
