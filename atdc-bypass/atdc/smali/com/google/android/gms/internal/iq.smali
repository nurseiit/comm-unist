.class public final Lcom/google/android/gms/internal/iq;
.super Lcom/google/android/gms/common/api/GoogleApi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/GoogleApi<",
        "Lcom/google/android/gms/internal/kg;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/kg;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/kg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/internal/ke;->zzbWI:Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/firebase/zzb;

    invoke-direct {v1}, Lcom/google/firebase/zzb;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/internal/zzbem;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            "CallbackT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/kj<",
            "TResultT;TCallbackT;>;)",
            "Lcom/google/android/gms/internal/jb<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jb;-><init>(Lcom/google/android/gms/internal/kj;)V

    return-object v0
.end method

.method private static zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/ls;
    .locals 1
    .param p0    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/internal/kv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/kv;Z)Lcom/google/android/gms/internal/ls;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/kv;Z)Lcom/google/android/gms/internal/ls;
    .locals 4
    .param p0    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/internal/kv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/lq;

    const-string v2, "firebase"

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/lq;-><init>(Lcom/google/android/gms/internal/kv;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kv;->zzER()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/lq;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/kz;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/lq;-><init>(Lcom/google/android/gms/internal/kz;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ls;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ls;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ls;->zzay(Z)Lcom/google/android/gms/internal/ls;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/ls;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/ls;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/kv;Z)Lcom/google/android/gms/internal/ls;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/kv;Z)Lcom/google/android/gms/internal/ls;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/ll;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/android/gms/internal/ll;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jk;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jk;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/kj;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/AuthCredential;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ll;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Lcom/google/android/gms/internal/ll;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jl;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/jl;-><init>(Lcom/google/firebase/auth/AuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jl;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/kj;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/ma;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ma;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/android/gms/internal/ma;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jh;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jh;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/kj;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/kj;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/kj;->zza(Lcom/google/android/gms/internal/lw;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Lcom/google/android/gms/internal/ma;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/ma;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Lcom/google/android/gms/internal/ma;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jc;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/jc;-><init>(Lcom/google/firebase/auth/AuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jc;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/kj;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zza(Lcom/google/android/gms/internal/lw;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Lcom/google/android/gms/internal/ma;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/PhoneAuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/ma;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            "Lcom/google/android/gms/internal/ma;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jt;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/jt;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jt;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/kj;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zza(Lcom/google/android/gms/internal/lw;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/UserProfileChangeRequest;Lcom/google/android/gms/internal/ma;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/UserProfileChangeRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/ma;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/UserProfileChangeRequest;",
            "Lcom/google/android/gms/internal/ma;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ju;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ju;-><init>(Lcom/google/firebase/auth/UserProfileChangeRequest;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ju;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/kj;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zza(Lcom/google/android/gms/internal/lw;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/ll;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ll;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/GetTokenResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ix;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ix;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ix;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/kj;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/android/gms/internal/ma;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/ma;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ma;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jr;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/jr;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jr;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/kj;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zza(Lcom/google/android/gms/internal/lw;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ma;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/ma;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ma;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/je;

    invoke-direct {v0, p3, p4}, Lcom/google/android/gms/internal/je;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/je;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/kj;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/kj;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/kj;->zza(Lcom/google/android/gms/internal/lw;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/PhoneAuthCredential;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/PhoneAuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ll;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            "Lcom/google/android/gms/internal/ll;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jo;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/jo;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jo;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/kj;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/ProviderQueryResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/iw;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/iw;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/iw;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ll;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ll;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jm;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/jm;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jm;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/kj;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/it;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/it;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/it;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/ll;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ll;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/iu;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/iu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/iu;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/lv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/lv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/android/gms/internal/lv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/iv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/iv;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/iv;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/kj;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/kj;->zza(Lcom/google/android/gms/internal/lw;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/lf;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/lf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/internal/jw;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/jw;-><init>(Lcom/google/android/gms/internal/lf;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jw;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p3, p4, p5}, Lcom/google/android/gms/internal/kj;->zza(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Lcom/google/android/gms/internal/ma;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/ma;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Lcom/google/android/gms/internal/ma;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jd;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/jd;-><init>(Lcom/google/firebase/auth/AuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jd;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/kj;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zza(Lcom/google/android/gms/internal/lw;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Lcom/google/android/gms/internal/ma;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/PhoneAuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/ma;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            "Lcom/google/android/gms/internal/ma;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jg;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/jg;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/kj;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zza(Lcom/google/android/gms/internal/lw;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/android/gms/internal/ma;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/ma;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ma;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/js;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/js;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/js;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/kj;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zza(Lcom/google/android/gms/internal/lw;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ma;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/ma;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ma;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jf;

    invoke-direct {v0, p3, p4}, Lcom/google/android/gms/internal/jf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jf;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/kj;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/kj;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/kj;->zza(Lcom/google/android/gms/internal/lw;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jj;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/jj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jj;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/ll;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ll;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jn;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/jn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jn;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Lcom/google/android/gms/internal/ma;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/ma;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Lcom/google/android/gms/internal/ma;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jd;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/jd;-><init>(Lcom/google/firebase/auth/AuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jd;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/kj;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zza(Lcom/google/android/gms/internal/lw;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/android/gms/internal/ma;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/ma;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ma;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->getProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x4278

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/jz;->zzK(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x4889ba9b

    if-eq v1, v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "password"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/jq;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/jq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jq;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/kj;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zza(Lcom/google/android/gms/internal/lw;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p3, Lcom/google/android/gms/internal/jp;

    invoke-direct {p3}, Lcom/google/android/gms/internal/jp;-><init>()V

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/jp;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/kj;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zza(Lcom/google/android/gms/internal/lw;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ji;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ji;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ji;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Lcom/google/android/gms/internal/ma;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/ma;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Lcom/google/android/gms/internal/ma;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p3, Lcom/google/firebase/auth/EmailAuthCredential;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/google/firebase/auth/EmailAuthCredential;

    new-instance v0, Lcom/google/android/gms/internal/iy;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/iy;-><init>(Lcom/google/firebase/auth/EmailAuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/iy;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/kj;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zza(Lcom/google/android/gms/internal/lw;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p3, Lcom/google/firebase/auth/PhoneAuthCredential;

    const/16 v1, 0x4277

    if-eqz v0, :cond_2

    check-cast p3, Lcom/google/firebase/auth/PhoneAuthCredential;

    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->getProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/google/firebase/auth/PhoneAuthCredential;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/jz;->zzK(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ja;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ja;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ja;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/kj;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zza(Lcom/google/android/gms/internal/lw;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->getProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Lcom/google/firebase/auth/AuthCredential;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/jz;->zzK(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/iz;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/iz;-><init>(Lcom/google/firebase/auth/AuthCredential;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/iz;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/kj;->zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/kj;->zza(Lcom/google/android/gms/internal/lw;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/ActionCodeResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/is;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/is;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/is;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ir;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ir;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ir;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jv;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/jv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jv;->zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/iq;->zza(Lcom/google/android/gms/internal/kj;)Lcom/google/android/gms/internal/jb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/android/gms/internal/zzbeq;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
