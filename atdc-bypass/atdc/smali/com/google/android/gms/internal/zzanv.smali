.class final Lcom/google/android/gms/internal/zzanv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzanj<",
        "Lcom/google/android/gms/internal/zzanw;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzafJ:Lcom/google/android/gms/internal/zzamj;

.field private final zzahX:Lcom/google/android/gms/internal/zzanw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzamj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzanv;->zzafJ:Lcom/google/android/gms/internal/zzamj;

    new-instance p1, Lcom/google/android/gms/internal/zzanw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzanw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzanv;->zzahX:Lcom/google/android/gms/internal/zzanw;

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "ga_dispatchPeriod"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzanv;->zzahX:Lcom/google/android/gms/internal/zzanw;

    iput p2, p1, Lcom/google/android/gms/internal/zzanw;->zzahZ:I

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzanv;->zzafJ:Lcom/google/android/gms/internal/zzamj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzamj;->zzkr()Lcom/google/android/gms/internal/zzaoc;

    move-result-object p2

    const-string v0, "Int xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzaoc;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zze(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "ga_dryRun"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzanv;->zzahX:Lcom/google/android/gms/internal/zzanw;

    iput p2, p1, Lcom/google/android/gms/internal/zzanw;->zzaia:I

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzanv;->zzafJ:Lcom/google/android/gms/internal/zzamj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzamj;->zzkr()Lcom/google/android/gms/internal/zzaoc;

    move-result-object p2

    const-string v0, "Bool xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzaoc;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final synthetic zzlm()Lcom/google/android/gms/internal/zzanh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanv;->zzahX:Lcom/google/android/gms/internal/zzanw;

    return-object v0
.end method

.method public final zzm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ga_appName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzanv;->zzahX:Lcom/google/android/gms/internal/zzanw;

    iput-object p2, p1, Lcom/google/android/gms/internal/zzanw;->zzaeH:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "ga_appVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzanv;->zzahX:Lcom/google/android/gms/internal/zzanw;

    iput-object p2, p1, Lcom/google/android/gms/internal/zzanw;->zzaeI:Ljava/lang/String;

    return-void

    :cond_1
    const-string v0, "ga_logLevel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzanv;->zzahX:Lcom/google/android/gms/internal/zzanw;

    iput-object p2, p1, Lcom/google/android/gms/internal/zzanw;->zzahY:Ljava/lang/String;

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/zzanv;->zzafJ:Lcom/google/android/gms/internal/zzamj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzamj;->zzkr()Lcom/google/android/gms/internal/zzaoc;

    move-result-object p2

    const-string v0, "String xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzaoc;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
