.class final Lcom/google/android/gms/internal/km;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/kr;


# instance fields
.field private synthetic zzbXe:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kl;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/km;->zzbXe:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zza(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;[Ljava/lang/Object;)V
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/km;->zzbXe:Ljava/lang/String;

    invoke-static {}, Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;->zzEK()Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;->onCodeSent(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)V

    return-void
.end method
