.class final Lcom/google/android/gms/internal/ru;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pf;


# instance fields
.field private synthetic zzccH:Lcom/google/android/gms/internal/qr;

.field private synthetic zzcdA:Lcom/google/android/gms/internal/qu;

.field private synthetic zzcdD:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

.field private synthetic zzcdY:Lcom/google/android/gms/internal/xm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qu;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ru;->zzcdA:Lcom/google/android/gms/internal/qu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ru;->zzccH:Lcom/google/android/gms/internal/qr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ru;->zzcdY:Lcom/google/android/gms/internal/xm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ru;->zzcdD:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaa(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/qu;->zzac(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ru;->zzcdA:Lcom/google/android/gms/internal/qu;

    const-string v0, "onDisconnect().setValue"

    iget-object v1, p0, Lcom/google/android/gms/internal/ru;->zzccH:Lcom/google/android/gms/internal/qr;

    invoke-static {p2, v0, v1, p1}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/android/gms/internal/qu;Ljava/lang/String;Lcom/google/android/gms/internal/qr;Lcom/google/firebase/database/DatabaseError;)V

    if-nez p1, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ru;->zzcdA:Lcom/google/android/gms/internal/qu;

    invoke-static {p2}, Lcom/google/android/gms/internal/qu;->zzf(Lcom/google/android/gms/internal/qu;)Lcom/google/android/gms/internal/si;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ru;->zzccH:Lcom/google/android/gms/internal/qr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ru;->zzcdY:Lcom/google/android/gms/internal/xm;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/si;->zzh(Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ru;->zzcdA:Lcom/google/android/gms/internal/qu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ru;->zzcdD:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v1, p0, Lcom/google/android/gms/internal/ru;->zzccH:Lcom/google/android/gms/internal/qr;

    invoke-virtual {p2, v0, p1, v1}, Lcom/google/android/gms/internal/qu;->zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/qr;)V

    return-void
.end method
