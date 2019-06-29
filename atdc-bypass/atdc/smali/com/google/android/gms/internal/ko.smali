.class final Lcom/google/android/gms/internal/ko;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/kr;


# instance fields
.field private synthetic zzbXe:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kl;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ko;->zzbXe:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs zza(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;[Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/gms/internal/ko;->zzbXe:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;->onCodeAutoRetrievalTimeOut(Ljava/lang/String;)V

    return-void
.end method
