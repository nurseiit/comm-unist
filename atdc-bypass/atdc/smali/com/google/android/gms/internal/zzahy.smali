.class final Lcom/google/android/gms/internal/zzahy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic zzZR:Lcom/google/android/gms/internal/zzahx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzahx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzahy;->zzZR:Lcom/google/android/gms/internal/zzahx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzahy;->zzZR:Lcom/google/android/gms/internal/zzahx;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzahx;->zztF:Landroid/content/Context;

    const-string p2, "https://support.google.com/dfp_premium/answer/7160685#push"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzagz;->zza(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
