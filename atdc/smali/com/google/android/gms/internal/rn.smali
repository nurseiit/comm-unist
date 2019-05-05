.class final Lcom/google/android/gms/internal/rn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcdP:Lcom/google/android/gms/internal/vt;

.field private synthetic zzcdQ:Lcom/google/android/gms/internal/td;

.field private synthetic zzcdR:Lcom/google/android/gms/internal/rm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/rm;Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/td;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rn;->zzcdR:Lcom/google/android/gms/internal/rm;

    iput-object p2, p0, Lcom/google/android/gms/internal/rn;->zzcdP:Lcom/google/android/gms/internal/vt;

    iput-object p3, p0, Lcom/google/android/gms/internal/rn;->zzcdQ:Lcom/google/android/gms/internal/td;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/rn;->zzcdR:Lcom/google/android/gms/internal/rm;

    iget-object v0, v0, Lcom/google/android/gms/internal/rm;->zzcdA:Lcom/google/android/gms/internal/qu;

    invoke-static {v0}, Lcom/google/android/gms/internal/qu;->zzd(Lcom/google/android/gms/internal/qu;)Lcom/google/android/gms/internal/sh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/rn;->zzcdP:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/sh;->zzp(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/xm;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/xm;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/rn;->zzcdR:Lcom/google/android/gms/internal/rm;

    iget-object v1, v1, Lcom/google/android/gms/internal/rm;->zzcdA:Lcom/google/android/gms/internal/qu;

    invoke-static {v1}, Lcom/google/android/gms/internal/qu;->zze(Lcom/google/android/gms/internal/qu;)Lcom/google/android/gms/internal/so;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/rn;->zzcdP:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vt;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/so;->zzi(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/rn;->zzcdR:Lcom/google/android/gms/internal/rm;

    iget-object v1, v1, Lcom/google/android/gms/internal/rm;->zzcdA:Lcom/google/android/gms/internal/qu;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/qu;Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/rn;->zzcdQ:Lcom/google/android/gms/internal/td;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/td;->zzb(Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    :cond_0
    return-void
.end method
