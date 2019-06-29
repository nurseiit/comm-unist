.class final Lcom/google/firebase/database/zze;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbYN:Lcom/google/android/gms/internal/za;

.field private synthetic zzbYO:Lcom/google/firebase/database/DatabaseReference;

.field private synthetic zzbYQ:Lcom/google/android/gms/internal/pz;

.field private synthetic zzbYR:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/pz;Lcom/google/android/gms/internal/za;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/zze;->zzbYO:Lcom/google/firebase/database/DatabaseReference;

    iput-object p2, p0, Lcom/google/firebase/database/zze;->zzbYQ:Lcom/google/android/gms/internal/pz;

    iput-object p3, p0, Lcom/google/firebase/database/zze;->zzbYN:Lcom/google/android/gms/internal/za;

    iput-object p4, p0, Lcom/google/firebase/database/zze;->zzbYR:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/database/zze;->zzbYO:Lcom/google/firebase/database/DatabaseReference;

    iget-object v0, v0, Lcom/google/firebase/database/DatabaseReference;->zzbYY:Lcom/google/android/gms/internal/qu;

    iget-object v1, p0, Lcom/google/firebase/database/zze;->zzbYO:Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, v1, Lcom/google/firebase/database/Query;->zzbZf:Lcom/google/android/gms/internal/qr;

    iget-object v2, p0, Lcom/google/firebase/database/zze;->zzbYQ:Lcom/google/android/gms/internal/pz;

    iget-object v3, p0, Lcom/google/firebase/database/zze;->zzbYN:Lcom/google/android/gms/internal/za;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/za;->zzJG()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v4, p0, Lcom/google/firebase/database/zze;->zzbYR:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/pz;Lcom/google/firebase/database/DatabaseReference$CompletionListener;Ljava/util/Map;)V

    return-void
.end method
