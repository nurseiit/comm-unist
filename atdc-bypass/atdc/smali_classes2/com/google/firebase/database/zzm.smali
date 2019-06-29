.class final Lcom/google/firebase/database/zzm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbYM:Lcom/google/android/gms/internal/xm;

.field private synthetic zzbYN:Lcom/google/android/gms/internal/za;

.field private synthetic zzbZg:Lcom/google/firebase/database/OnDisconnect;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/OnDisconnect;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/za;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/zzm;->zzbZg:Lcom/google/firebase/database/OnDisconnect;

    iput-object p2, p0, Lcom/google/firebase/database/zzm;->zzbYM:Lcom/google/android/gms/internal/xm;

    iput-object p3, p0, Lcom/google/firebase/database/zzm;->zzbYN:Lcom/google/android/gms/internal/za;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/zzm;->zzbZg:Lcom/google/firebase/database/OnDisconnect;

    invoke-static {v0}, Lcom/google/firebase/database/OnDisconnect;->zzb(Lcom/google/firebase/database/OnDisconnect;)Lcom/google/android/gms/internal/qu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/zzm;->zzbZg:Lcom/google/firebase/database/OnDisconnect;

    invoke-static {v1}, Lcom/google/firebase/database/OnDisconnect;->zza(Lcom/google/firebase/database/OnDisconnect;)Lcom/google/android/gms/internal/qr;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/zzm;->zzbYM:Lcom/google/android/gms/internal/xm;

    iget-object v3, p0, Lcom/google/firebase/database/zzm;->zzbYN:Lcom/google/android/gms/internal/za;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/za;->zzJG()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/qu;->zzb(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    return-void
.end method
