.class final Lcom/google/firebase/database/zzs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbZm:Lcom/google/firebase/database/Query;

.field private synthetic zzbZp:Z


# direct methods
.method constructor <init>(Lcom/google/firebase/database/Query;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/zzs;->zzbZm:Lcom/google/firebase/database/Query;

    iput-boolean p2, p0, Lcom/google/firebase/database/zzs;->zzbZp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/database/zzs;->zzbZm:Lcom/google/firebase/database/Query;

    iget-object v0, v0, Lcom/google/firebase/database/Query;->zzbYY:Lcom/google/android/gms/internal/qu;

    iget-object v1, p0, Lcom/google/firebase/database/zzs;->zzbZm:Lcom/google/firebase/database/Query;

    invoke-virtual {v1}, Lcom/google/firebase/database/Query;->zzFr()Lcom/google/android/gms/internal/vt;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/firebase/database/zzs;->zzbZp:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/vt;Z)V

    return-void
.end method
