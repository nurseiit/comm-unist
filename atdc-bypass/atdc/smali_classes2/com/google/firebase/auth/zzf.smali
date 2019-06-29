.class final Lcom/google/firebase/auth/zzf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbWg:Lcom/google/firebase/auth/FirebaseAuth$IdTokenListener;

.field private synthetic zzbWh:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseAuth$IdTokenListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/zzf;->zzbWh:Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p2, p0, Lcom/google/firebase/auth/zzf;->zzbWg:Lcom/google/firebase/auth/FirebaseAuth$IdTokenListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/auth/zzf;->zzbWg:Lcom/google/firebase/auth/FirebaseAuth$IdTokenListener;

    iget-object v1, p0, Lcom/google/firebase/auth/zzf;->zzbWh:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-interface {v0, v1}, Lcom/google/firebase/auth/FirebaseAuth$IdTokenListener;->onIdTokenChanged(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-void
.end method
