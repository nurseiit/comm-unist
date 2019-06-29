.class final Lcom/google/android/gms/internal/zzamr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic val$name:Landroid/content/ComponentName;

.field private synthetic zzago:Lcom/google/android/gms/internal/zzamp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzamp;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzamr;->zzago:Lcom/google/android/gms/internal/zzamp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzamr;->val$name:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamr;->zzago:Lcom/google/android/gms/internal/zzamp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzamp;->zzagk:Lcom/google/android/gms/internal/zzamn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamr;->val$name:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzamn;->zza(Lcom/google/android/gms/internal/zzamn;Landroid/content/ComponentName;)V

    return-void
.end method
