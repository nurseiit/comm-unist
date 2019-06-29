.class public final Lcom/google/android/gms/internal/zzfm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzgs;


# instance fields
.field private zzxj:Lcom/google/android/gms/internal/zzny;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfm;->zzxj:Lcom/google/android/gms/internal/zzny;

    return-void
.end method


# virtual methods
.method public final zzcv()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfm;->zzxj:Lcom/google/android/gms/internal/zzny;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfm;->zzxj:Lcom/google/android/gms/internal/zzny;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzny;->zzeu()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzcw()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfm;->zzxj:Lcom/google/android/gms/internal/zzny;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzcx()Lcom/google/android/gms/internal/zzgs;
    .locals 0

    return-object p0
.end method
