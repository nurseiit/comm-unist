.class public final Lcom/google/android/gms/internal/mx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/qt;


# instance fields
.field private final zzbZt:Lcom/google/firebase/FirebaseApp;

.field private final zzbZy:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzqE:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mx;->zzbZy:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/mx;->zzbZt:Lcom/google/firebase/FirebaseApp;

    iget-object p1, p0, Lcom/google/android/gms/internal/mx;->zzbZt:Lcom/google/firebase/FirebaseApp;

    if-nez p1, :cond_0

    const-string p1, "FirebaseDatabase"

    const-string v0, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "FirebaseDatabase"

    const-string v0, "ERROR: You must call FirebaseApp.initializeApp() before using Firebase Database."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "FirebaseDatabase"

    const-string v0, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "You need to call FirebaseApp.initializeApp() before using Firebase Database."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mx;->zzbZt:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mx;->zzqE:Landroid/content/Context;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/mx;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mx;->zzqE:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/qd;Lcom/google/android/gms/internal/oj;Lcom/google/android/gms/internal/ol;Lcom/google/android/gms/internal/oo;)Lcom/google/android/gms/internal/on;
    .locals 8

    new-instance v7, Lcom/google/firebase/database/connection/idl/zzc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qd;->zzGQ()Lcom/google/android/gms/internal/wn;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qd;->zzFW()Z

    move-result v4

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qd;->zzht()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/database/connection/idl/zzc;-><init>(Lcom/google/android/gms/internal/ol;Lcom/google/android/gms/internal/wn;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mx;->zzqE:Landroid/content/Context;

    invoke-static {p1, v7, p2, p4}, Lcom/google/firebase/database/connection/idl/zzf;->zza(Landroid/content/Context;Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/android/gms/internal/oj;Lcom/google/android/gms/internal/oo;)Lcom/google/firebase/database/connection/idl/zzf;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/mx;->zzbZt:Lcom/google/firebase/FirebaseApp;

    new-instance p3, Lcom/google/android/gms/internal/na;

    invoke-direct {p3, p0, p1}, Lcom/google/android/gms/internal/na;-><init>(Lcom/google/android/gms/internal/mx;Lcom/google/android/gms/internal/on;)V

    invoke-virtual {p2, p3}, Lcom/google/firebase/FirebaseApp;->zza(Lcom/google/firebase/FirebaseApp$zzc;)V

    return-object p1
.end method

.method public final zza(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/pu;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mr;

    iget-object v1, p0, Lcom/google/android/gms/internal/mx;->zzbZt:Lcom/google/firebase/FirebaseApp;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/mr;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/qd;)Lcom/google/android/gms/internal/qk;
    .locals 0

    new-instance p1, Lcom/google/android/gms/internal/mw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mw;-><init>()V

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/qd;Ljava/lang/String;)Lcom/google/android/gms/internal/uh;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qd;->zzGU()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/internal/mx;->zzbZy:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lcom/google/firebase/database/DatabaseException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "SessionPersistenceKey \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' has already been used."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mx;->zzbZy:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/nb;

    iget-object v1, p0, Lcom/google/android/gms/internal/mx;->zzqE:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/internal/nb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/qd;Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/uf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qd;->zzGS()J

    move-result-wide v1

    invoke-direct {p2, v1, v2}, Lcom/google/android/gms/internal/uf;-><init>(J)V

    new-instance v1, Lcom/google/android/gms/internal/ue;

    invoke-direct {v1, p1, v0, p2}, Lcom/google/android/gms/internal/ue;-><init>(Lcom/google/android/gms/internal/qd;Lcom/google/android/gms/internal/ui;Lcom/google/android/gms/internal/uc;)V

    return-object v1
.end method

.method public final zza(Lcom/google/android/gms/internal/qd;Lcom/google/android/gms/internal/wn;Ljava/util/List;)Lcom/google/android/gms/internal/wm;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qd;",
            "Lcom/google/android/gms/internal/wn;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/wm;"
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/wi;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/wi;-><init>(Lcom/google/android/gms/internal/wn;Ljava/util/List;)V

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/qd;)Lcom/google/android/gms/internal/sd;
    .locals 1

    const-string v0, "RunLoop"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/qd;->zzgP(Ljava/lang/String;)Lcom/google/android/gms/internal/wl;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/my;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/my;-><init>(Lcom/google/android/gms/internal/mx;Lcom/google/android/gms/internal/wl;)V

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/qd;)Ljava/lang/String;
    .locals 2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/Android"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
