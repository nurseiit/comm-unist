.class final Lcom/google/firebase/database/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbYN:Lcom/google/android/gms/internal/za;

.field private synthetic zzbYO:Lcom/google/firebase/database/DatabaseReference;

.field private synthetic zzbYP:Lcom/google/android/gms/internal/xm;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/za;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/zzd;->zzbYO:Lcom/google/firebase/database/DatabaseReference;

    iput-object p2, p0, Lcom/google/firebase/database/zzd;->zzbYP:Lcom/google/android/gms/internal/xm;

    iput-object p3, p0, Lcom/google/firebase/database/zzd;->zzbYN:Lcom/google/android/gms/internal/za;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/zzd;->zzbYO:Lcom/google/firebase/database/DatabaseReference;

    iget-object v0, v0, Lcom/google/firebase/database/DatabaseReference;->zzbYY:Lcom/google/android/gms/internal/qu;

    iget-object v1, p0, Lcom/google/firebase/database/zzd;->zzbYO:Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, v1, Lcom/google/firebase/database/Query;->zzbZf:Lcom/google/android/gms/internal/qr;

    invoke-static {}, Lcom/google/android/gms/internal/wp;->zzIL()Lcom/google/android/gms/internal/wp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/qr;->zza(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/qr;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/zzd;->zzbYP:Lcom/google/android/gms/internal/xm;

    iget-object v3, p0, Lcom/google/firebase/database/zzd;->zzbYN:Lcom/google/android/gms/internal/za;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/za;->zzJG()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    return-void
.end method
