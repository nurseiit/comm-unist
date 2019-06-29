.class public final Lcom/google/android/gms/internal/zzbuk;
.super Ljava/lang/Object;


# static fields
.field public static final zzaVr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzaVu:Lcom/google/android/gms/internal/zzbuk;


# instance fields
.field private final zzaVs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbum;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzaVt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "altitude"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "duration"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "food_item"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "meal_type"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "repetitions"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "resistance"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "resistance_type"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "debug_session"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "google.android.fitness.SessionV2"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbuk;->zzaVr:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/internal/zzbuk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbuk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbuk;->zzaVu:Lcom/google/android/gms/internal/zzbuk;

    return-void
.end method

.method private constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "latitude"

    new-instance v8, Lcom/google/android/gms/internal/zzbum;

    const-wide v3, -0x3fa9800000000000L    # -90.0

    const-wide v5, 0x4056800000000000L    # 90.0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzbum;-><init>(DDLcom/google/android/gms/internal/zzbul;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "longitude"

    new-instance v8, Lcom/google/android/gms/internal/zzbum;

    const-wide v3, -0x3f99800000000000L    # -180.0

    const-wide v5, 0x4066800000000000L    # 180.0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzbum;-><init>(DDLcom/google/android/gms/internal/zzbul;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "accuracy"

    new-instance v8, Lcom/google/android/gms/internal/zzbum;

    const-wide/16 v3, 0x0

    const-wide v5, 0x40c3880000000000L    # 10000.0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzbum;-><init>(DDLcom/google/android/gms/internal/zzbul;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bpm"

    new-instance v8, Lcom/google/android/gms/internal/zzbum;

    const-wide v5, 0x408f400000000000L    # 1000.0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzbum;-><init>(DDLcom/google/android/gms/internal/zzbul;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "altitude"

    new-instance v8, Lcom/google/android/gms/internal/zzbum;

    const-wide v3, -0x3f07960000000000L    # -100000.0

    const-wide v5, 0x40f86a0000000000L    # 100000.0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzbum;-><init>(DDLcom/google/android/gms/internal/zzbul;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "percentage"

    new-instance v8, Lcom/google/android/gms/internal/zzbum;

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzbum;-><init>(DDLcom/google/android/gms/internal/zzbul;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "confidence"

    new-instance v8, Lcom/google/android/gms/internal/zzbum;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzbum;-><init>(DDLcom/google/android/gms/internal/zzbul;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "duration"

    new-instance v8, Lcom/google/android/gms/internal/zzbum;

    const-wide/high16 v5, 0x43e0000000000000L    # 9.223372036854776E18

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzbum;-><init>(DDLcom/google/android/gms/internal/zzbul;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "height"

    new-instance v8, Lcom/google/android/gms/internal/zzbum;

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzbum;-><init>(DDLcom/google/android/gms/internal/zzbul;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "weight"

    new-instance v8, Lcom/google/android/gms/internal/zzbum;

    const-wide v5, 0x408f400000000000L    # 1000.0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzbum;-><init>(DDLcom/google/android/gms/internal/zzbul;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "speed"

    new-instance v8, Lcom/google/android/gms/internal/zzbum;

    const-wide v5, 0x40c57c0000000000L    # 11000.0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzbum;-><init>(DDLcom/google/android/gms/internal/zzbul;)V

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbuk;->zzaVt:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "com.google.step_count.delta"

    const-string v2, "steps"

    new-instance v9, Lcom/google/android/gms/internal/zzbum;

    const-wide/16 v4, 0x0

    const-wide v6, 0x3e45798ee2308c3aL    # 1.0E-8

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzbum;-><init>(DDLcom/google/android/gms/internal/zzbul;)V

    invoke-static {v2, v9}, Lcom/google/android/gms/internal/zzbuk;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.google.calories.consumed"

    const-string v2, "calories"

    new-instance v9, Lcom/google/android/gms/internal/zzbum;

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzbum;-><init>(DDLcom/google/android/gms/internal/zzbul;)V

    invoke-static {v2, v9}, Lcom/google/android/gms/internal/zzbuk;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.google.calories.expended"

    const-string v2, "calories"

    new-instance v9, Lcom/google/android/gms/internal/zzbum;

    const-wide v6, 0x3e0316b7e5807ca5L    # 5.555555555555555E-10

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzbum;-><init>(DDLcom/google/android/gms/internal/zzbul;)V

    invoke-static {v2, v9}, Lcom/google/android/gms/internal/zzbuk;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.google.distance.delta"

    const-string v2, "distance"

    new-instance v9, Lcom/google/android/gms/internal/zzbum;

    const-wide v6, 0x3e7ad7f29abcaf48L    # 1.0E-7

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzbum;-><init>(DDLcom/google/android/gms/internal/zzbul;)V

    invoke-static {v2, v9}, Lcom/google/android/gms/internal/zzbuk;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbuk;->zzaVs:Ljava/util/Map;

    return-void
.end method

.method private static zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static zztR()Lcom/google/android/gms/internal/zzbuk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbuk;->zzaVu:Lcom/google/android/gms/internal/zzbuk;

    return-object v0
.end method


# virtual methods
.method final zzC(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbum;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbuk;->zzaVs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbum;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method final zzdg(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbum;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbuk;->zzaVt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbum;

    return-object p1
.end method
