.class public final Lcom/google/android/gms/internal/zzbka;
.super Lcom/google/android/gms/common/internal/zzz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzz<",
        "Lcom/google/android/gms/internal/zzbkj;",
        ">;"
    }
.end annotation


# static fields
.field private static zzaLu:Lcom/google/android/gms/internal/zzel;


# instance fields
.field private final zzaLv:Lcom/google/android/gms/internal/zzbkb;

.field private zzaLw:Lcom/google/android/gms/internal/zzes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzes<",
            "Lcom/google/android/gms/awareness/fence/zza;",
            "Lcom/google/android/gms/internal/zzbit;",
            ">;"
        }
    .end annotation
.end field

.field private final zzrM:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzel;->zzrI:Lcom/google/android/gms/internal/zzel;

    sput-object v0, Lcom/google/android/gms/internal/zzbka;->zzaLu:Lcom/google/android/gms/internal/zzel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzq;Lcom/google/android/gms/awareness/AwarenessOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    const/16 v3, 0x2f

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzz;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzq;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/google/android/gms/internal/zzbka;->zzrM:Landroid/os/Looper;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/common/internal/zzq;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "@@ContextManagerNullAccount@@"

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/common/internal/zzq;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_0
    if-nez v9, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/zzbkb;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/google/android/gms/common/util/zzd;->zzA(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    move-object v8, v1

    move-object v9, v0

    invoke-direct/range {v8 .. v18}, Lcom/google/android/gms/internal/zzbkb;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    :cond_1
    invoke-static {v8, v0, v9}, Lcom/google/android/gms/internal/zzbkb;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/awareness/AwarenessOptions;)Lcom/google/android/gms/internal/zzbkb;

    move-result-object v1

    :goto_1
    iput-object v1, v7, Lcom/google/android/gms/internal/zzbka;->zzaLv:Lcom/google/android/gms/internal/zzbkb;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzbaz;Lcom/google/android/gms/internal/zzaub;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbaz<",
            "Lcom/google/android/gms/internal/zzaud;",
            ">;",
            "Lcom/google/android/gms/internal/zzaub;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbka;->zzre()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbka;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/zzbkj;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbkd;->zzd(Lcom/google/android/gms/internal/zzbaz;)Lcom/google/android/gms/internal/zzbkd;

    move-result-object v2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbka;->zzaLv:Lcom/google/android/gms/internal/zzbkb;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbkb;->packageName:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbka;->zzaLv:Lcom/google/android/gms/internal/zzbkb;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzbkb;->zzaLx:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbka;->zzaLv:Lcom/google/android/gms/internal/zzbkb;

    iget-object v5, p1, Lcom/google/android/gms/internal/zzbkb;->moduleId:Ljava/lang/String;

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/zzbkj;->zza(Lcom/google/android/gms/internal/zzbkh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaub;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbaz;Lcom/google/android/gms/internal/zzbja;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbaz<",
            "Lcom/google/android/gms/awareness/fence/FenceQueryResult;",
            ">;",
            "Lcom/google/android/gms/internal/zzbja;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbka;->zzre()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbka;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/zzbkj;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbkd;->zze(Lcom/google/android/gms/internal/zzbaz;)Lcom/google/android/gms/internal/zzbkd;

    move-result-object v2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbka;->zzaLv:Lcom/google/android/gms/internal/zzbkb;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbkb;->packageName:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbka;->zzaLv:Lcom/google/android/gms/internal/zzbkb;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzbkb;->zzaLx:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbka;->zzaLv:Lcom/google/android/gms/internal/zzbkb;

    iget-object v5, p1, Lcom/google/android/gms/internal/zzbkb;->moduleId:Ljava/lang/String;

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/zzbkj;->zza(Lcom/google/android/gms/internal/zzbkh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbja;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbaz;Lcom/google/android/gms/internal/zzbjj;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbaz<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/internal/zzbjj;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbka;->zzre()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbka;->zzaLw:Lcom/google/android/gms/internal/zzes;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzes;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbka;->zzrM:Landroid/os/Looper;

    sget-object v2, Lcom/google/android/gms/internal/zzbit;->zzaKT:Lcom/google/android/gms/internal/zzet;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzes;-><init>(Landroid/os/Looper;Lcom/google/android/gms/internal/zzet;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbka;->zzaLw:Lcom/google/android/gms/internal/zzes;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbka;->zzaLw:Lcom/google/android/gms/internal/zzes;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzbjj;->zzaLj:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/internal/zzbjt;

    iget-object v4, v3, Lcom/google/android/gms/internal/zzbjt;->zzaLp:Lcom/google/android/gms/internal/zzbjl;

    if-nez v4, :cond_1

    iget-object v3, v3, Lcom/google/android/gms/internal/zzbjt;->zzaLq:Lcom/google/android/gms/awareness/fence/zza;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbka;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/zzbkj;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbkd;->zza(Lcom/google/android/gms/internal/zzbaz;Lcom/google/android/gms/internal/zzbkg;)Lcom/google/android/gms/internal/zzbkd;

    move-result-object v2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbka;->zzaLv:Lcom/google/android/gms/internal/zzbkb;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbkb;->packageName:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbka;->zzaLv:Lcom/google/android/gms/internal/zzbkb;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzbkb;->zzaLx:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbka;->zzaLv:Lcom/google/android/gms/internal/zzbkb;

    iget-object v5, p1, Lcom/google/android/gms/internal/zzbkb;->moduleId:Ljava/lang/String;

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/zzbkj;->zza(Lcom/google/android/gms/internal/zzbkh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbjj;)V

    return-void
.end method

.method protected final synthetic zzd(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzbkj;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzbkj;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzbkk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbkk;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method protected final zzdb()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.contextmanager.service.ContextManagerService.START"

    return-object v0
.end method

.method protected final zzdc()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.contextmanager.internal.IContextManagerService"

    return-object v0
.end method

.method protected final zzmo()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.contextmanager.service.args"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbka;->zzaLv:Lcom/google/android/gms/internal/zzbkb;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/zze;->zza(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public final zzrg()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
