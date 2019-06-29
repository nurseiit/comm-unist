.class final Lcom/google/android/gms/internal/zzahr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic zzZF:I

.field private synthetic zzZG:I

.field private synthetic zzZH:I

.field private synthetic zzZI:Lcom/google/android/gms/internal/zzahq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzahq;III)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzahr;->zzZI:Lcom/google/android/gms/internal/zzahq;

    iput p2, p0, Lcom/google/android/gms/internal/zzahr;->zzZF:I

    iput p3, p0, Lcom/google/android/gms/internal/zzahr;->zzZG:I

    iput p4, p0, Lcom/google/android/gms/internal/zzahr;->zzZH:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p1, p0, Lcom/google/android/gms/internal/zzahr;->zzZF:I

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzahr;->zzZI:Lcom/google/android/gms/internal/zzahq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzahq;->zza(Lcom/google/android/gms/internal/zzahq;)V

    return-void

    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/zzahr;->zzZG:I

    if-ne p2, p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/zzmo;->zzGr:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzahr;->zzZI:Lcom/google/android/gms/internal/zzahq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzahq;->zzb(Lcom/google/android/gms/internal/zzahq;)V

    return-void

    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/zzahr;->zzZH:I

    if-ne p2, p1, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/zzmo;->zzGs:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzahr;->zzZI:Lcom/google/android/gms/internal/zzahq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzahq;->zzc(Lcom/google/android/gms/internal/zzahq;)V

    :cond_2
    return-void
.end method
