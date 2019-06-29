.class final enum Lcom/google/android/gms/internal/qp;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/qt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/qp;",
        ">;",
        "Lcom/google/android/gms/internal/qt;"
    }
.end annotation


# static fields
.field public static final enum zzcde:Lcom/google/android/gms/internal/qp;

.field private static final synthetic zzcdf:[Lcom/google/android/gms/internal/qp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/qp;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/qp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/qp;->zzcde:Lcom/google/android/gms/internal/qp;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/qp;

    sget-object v1, Lcom/google/android/gms/internal/qp;->zzcde:Lcom/google/android/gms/internal/qp;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/qp;->zzcdf:[Lcom/google/android/gms/internal/qp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/qp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/qp;->zzcdf:[Lcom/google/android/gms/internal/qp;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/qp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/qp;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/qd;Lcom/google/android/gms/internal/oj;Lcom/google/android/gms/internal/ol;Lcom/google/android/gms/internal/oo;)Lcom/google/android/gms/internal/on;
    .locals 0

    new-instance p2, Lcom/google/android/gms/internal/op;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qd;->zzGR()Lcom/google/android/gms/internal/oj;

    move-result-object p1

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/gms/internal/op;-><init>(Lcom/google/android/gms/internal/oj;Lcom/google/android/gms/internal/ol;Lcom/google/android/gms/internal/oo;)V

    return-object p2
.end method

.method public final zza(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/pu;
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Authentication is not implemented yet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/qd;)Lcom/google/android/gms/internal/qk;
    .locals 2

    new-instance p1, Lcom/google/android/gms/internal/tk;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ti;->zzcfh:Lcom/google/android/gms/internal/ti;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/tk;-><init>(Ljava/util/concurrent/ThreadFactory;Lcom/google/android/gms/internal/ti;)V

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/qd;Ljava/lang/String;)Lcom/google/android/gms/internal/uh;
    .locals 0

    const/4 p1, 0x0

    return-object p1
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

    new-instance p1, Lcom/google/android/gms/internal/wj;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/wj;-><init>(Lcom/google/android/gms/internal/wn;Ljava/util/List;)V

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/qd;)Lcom/google/android/gms/internal/sd;
    .locals 1

    const-string v0, "RunLoop"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/qd;->zzgP(Ljava/lang/String;)Lcom/google/android/gms/internal/wl;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/qq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/qq;-><init>(Lcom/google/android/gms/internal/qp;Lcom/google/android/gms/internal/wl;)V

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/qd;)Ljava/lang/String;
    .locals 3

    const-string p1, "java.vm.name"

    const-string v0, "Unknown JVM"

    invoke-static {p1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.specification.version"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
