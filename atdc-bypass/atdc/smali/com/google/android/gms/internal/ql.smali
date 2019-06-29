.class final enum Lcom/google/android/gms/internal/ql;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/qt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ql;",
        ">;",
        "Lcom/google/android/gms/internal/qt;"
    }
.end annotation


# static fields
.field public static final enum zzcda:Lcom/google/android/gms/internal/ql;

.field static zzcdb:Ljava/util/concurrent/ThreadFactory;

.field static final zzcdc:Lcom/google/android/gms/internal/ti;

.field private static final synthetic zzcdd:[Lcom/google/android/gms/internal/ql;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ql;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ql;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ql;->zzcda:Lcom/google/android/gms/internal/ql;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ql;

    sget-object v1, Lcom/google/android/gms/internal/ql;->zzcda:Lcom/google/android/gms/internal/ql;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/ql;->zzcdd:[Lcom/google/android/gms/internal/ql;

    new-instance v0, Lcom/google/android/gms/internal/qm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/qm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ql;->zzcdc:Lcom/google/android/gms/internal/ti;

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

.method public static isActive()Z
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ql;->zzGX()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static values()[Lcom/google/android/gms/internal/ql;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ql;->zzcdd:[Lcom/google/android/gms/internal/ql;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ql;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ql;

    return-object v0
.end method

.method private static zzGX()Ljava/util/concurrent/ThreadFactory;
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/ql;->zzcdb:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.appengine.api.ThreadManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "backgroundThreadFactory"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadFactory;

    sput-object v1, Lcom/google/android/gms/internal/ql;->zzcdb:Ljava/util/concurrent/ThreadFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    return-object v0

    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ql;->zzcdb:Ljava/util/concurrent/ThreadFactory;

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

    invoke-static {}, Lcom/google/android/gms/internal/ql;->zzGX()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ql;->zzcdc:Lcom/google/android/gms/internal/ti;

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

    new-instance v0, Lcom/google/android/gms/internal/qo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/qo;-><init>(Lcom/google/android/gms/internal/ql;Lcom/google/android/gms/internal/wl;)V

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/qd;)Ljava/lang/String;
    .locals 3

    const-string p1, "AppEngine"

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
