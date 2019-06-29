.class public final Lcom/google/android/gms/internal/lp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/auth/AuthResult;


# instance fields
.field private zzbXF:Lcom/google/android/gms/internal/ls;

.field private zzbXG:Lcom/google/android/gms/internal/lo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ls;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/ls;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ls;

    iput-object p1, p0, Lcom/google/android/gms/internal/lp;->zzbXF:Lcom/google/android/gms/internal/ls;

    iget-object p1, p0, Lcom/google/android/gms/internal/lp;->zzbXF:Lcom/google/android/gms/internal/ls;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ls;->zzEY()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/lp;->zzbXG:Lcom/google/android/gms/internal/lo;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/lq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/lq;->getRawUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/lo;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/lq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/lq;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/lq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/lq;->getRawUserInfo()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/lo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/lp;->zzbXG:Lcom/google/android/gms/internal/lo;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final getAdditionalUserInfo()Lcom/google/firebase/auth/AdditionalUserInfo;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/lp;->zzbXG:Lcom/google/android/gms/internal/lo;

    return-object v0
.end method

.method public final getUser()Lcom/google/firebase/auth/FirebaseUser;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/lp;->zzbXF:Lcom/google/android/gms/internal/ls;

    return-object v0
.end method
