.class public final Lcom/google/android/gms/internal/zzaox;
.super Ljava/lang/Object;


# instance fields
.field private zzaiY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzapb;",
            ">;"
        }
    .end annotation
.end field

.field private zzaiZ:Ljava/lang/String;

.field private zzaja:Z

.field private zzajb:Landroid/accounts/Account;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzJ(Z)Lcom/google/android/gms/internal/zzaox;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaox;->zzaja:Z

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzapb;)Lcom/google/android/gms/internal/zzaox;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaox;->zzaiY:Ljava/util/List;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaox;->zzaiY:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaox;->zzaiY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public final zzb(Landroid/accounts/Account;)Lcom/google/android/gms/internal/zzaox;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaox;->zzajb:Landroid/accounts/Account;

    return-object p0
.end method

.method public final zzbG(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaox;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaox;->zzaiZ:Ljava/lang/String;

    return-object p0
.end method

.method public final zzmj()Lcom/google/android/gms/internal/zzaow;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/zzaow;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaox;->zzaiZ:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaox;->zzaja:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaox;->zzajb:Landroid/accounts/Account;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaox;->zzaiY:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaox;->zzaiY:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaox;->zzaiY:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/gms/internal/zzapb;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/gms/internal/zzapb;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzaow;-><init>(Ljava/lang/String;ZLandroid/accounts/Account;[Lcom/google/android/gms/internal/zzapb;)V

    return-object v0
.end method
