.class public interface abstract Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/auth/FirebaseAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AuthStateListener"
.end annotation


# virtual methods
.method public abstract onAuthStateChanged(Lcom/google/firebase/auth/FirebaseAuth;)V
    .param p1    # Lcom/google/firebase/auth/FirebaseAuth;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
