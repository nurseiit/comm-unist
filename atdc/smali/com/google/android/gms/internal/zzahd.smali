.class final Lcom/google/android/gms/internal/zzahd;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic zzZy:Lcom/google/android/gms/internal/zzagz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzagz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzahd;->zzZy:Lcom/google/android/gms/internal/zzagz;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzagz;Lcom/google/android/gms/internal/zzaha;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzahd;-><init>(Lcom/google/android/gms/internal/zzagz;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzahd;->zzZy:Lcom/google/android/gms/internal/zzagz;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzagz;->zza(Lcom/google/android/gms/internal/zzagz;Z)Z

    return-void

    :cond_0
    const-string p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzahd;->zzZy:Lcom/google/android/gms/internal/zzagz;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzagz;->zza(Lcom/google/android/gms/internal/zzagz;Z)Z

    :cond_1
    return-void
.end method
