.class final Lcom/google/android/gms/internal/rf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcdA:Lcom/google/android/gms/internal/qu;

.field private synthetic zzcdK:Lcom/google/android/gms/internal/rv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/rv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rf;->zzcdA:Lcom/google/android/gms/internal/qu;

    iput-object p2, p0, Lcom/google/android/gms/internal/rf;->zzcdK:Lcom/google/android/gms/internal/rv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/rf;->zzcdA:Lcom/google/android/gms/internal/qu;

    new-instance v1, Lcom/google/android/gms/internal/to;

    iget-object v2, p0, Lcom/google/android/gms/internal/rf;->zzcdA:Lcom/google/android/gms/internal/qu;

    iget-object v3, p0, Lcom/google/android/gms/internal/rf;->zzcdK:Lcom/google/android/gms/internal/rv;

    invoke-static {v3}, Lcom/google/android/gms/internal/rv;->zzi(Lcom/google/android/gms/internal/rv;)Lcom/google/firebase/database/ValueEventListener;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/rf;->zzcdK:Lcom/google/android/gms/internal/rv;

    invoke-static {v4}, Lcom/google/android/gms/internal/rv;->zze(Lcom/google/android/gms/internal/rv;)Lcom/google/android/gms/internal/qr;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/vt;->zzM(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/vt;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/to;-><init>(Lcom/google/android/gms/internal/qu;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/vt;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qu;->zze(Lcom/google/android/gms/internal/qi;)V

    return-void
.end method
