.class final Lcom/google/android/gms/internal/qy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/sm;


# instance fields
.field private synthetic zzcdA:Lcom/google/android/gms/internal/qu;

.field private synthetic zzcdE:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qu;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/qy;->zzcdA:Lcom/google/android/gms/internal/qu;

    iput-object p2, p0, Lcom/google/android/gms/internal/qy;->zzcdE:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/qy;->zzcdE:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/qy;->zzcdA:Lcom/google/android/gms/internal/qu;

    invoke-static {v1}, Lcom/google/android/gms/internal/qu;->zzg(Lcom/google/android/gms/internal/qu;)Lcom/google/android/gms/internal/so;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/so;->zzi(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/google/android/gms/internal/qy;->zzcdA:Lcom/google/android/gms/internal/qu;

    const/16 v0, -0x9

    invoke-static {p2, p1, v0}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;I)Lcom/google/android/gms/internal/qr;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/qy;->zzcdA:Lcom/google/android/gms/internal/qu;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/qu;->zzb(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;

    return-void
.end method
