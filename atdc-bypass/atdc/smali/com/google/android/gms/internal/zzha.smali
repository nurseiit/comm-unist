.class final Lcom/google/android/gms/internal/zzha;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzyI:Landroid/view/View;

.field private synthetic zzyJ:Lcom/google/android/gms/internal/zzgz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgz;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzha;->zzyJ:Lcom/google/android/gms/internal/zzgz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzha;->zzyI:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzyJ:Lcom/google/android/gms/internal/zzgz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzha;->zzyI:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzgz;->zzf(Landroid/view/View;)V

    return-void
.end method
