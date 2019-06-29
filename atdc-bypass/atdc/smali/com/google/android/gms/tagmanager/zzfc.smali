.class final Lcom/google/android/gms/tagmanager/zzfc;
.super Ljava/lang/Object;


# static fields
.field private static final zzbGe:Lcom/google/android/gms/tagmanager/zzea;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzea<",
            "Lcom/google/android/gms/internal/zzbr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbDx:Lcom/google/android/gms/tagmanager/DataLayer;

.field private final zzbGf:Lcom/google/android/gms/internal/ek;

.field private final zzbGg:Lcom/google/android/gms/tagmanager/zzbo;

.field private final zzbGh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzbr;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbGi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzbr;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbGj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzbr;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbGk:Lcom/google/android/gms/tagmanager/zzp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzp<",
            "Lcom/google/android/gms/internal/ei;",
            "Lcom/google/android/gms/tagmanager/zzea<",
            "Lcom/google/android/gms/internal/zzbr;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzbGl:Lcom/google/android/gms/tagmanager/zzp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzp<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzfi;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbGm:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/em;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbGn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzfj;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzbGo:Ljava/lang/String;

.field private zzbGp:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/tagmanager/zzea;

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzgk;->zzCh()Lcom/google/android/gms/internal/zzbr;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzea;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGe:Lcom/google/android/gms/tagmanager/zzea;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ek;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/zzan;Lcom/google/android/gms/tagmanager/zzan;Lcom/google/android/gms/tagmanager/zzbo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "resource cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGf:Lcom/google/android/gms/internal/ek;

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ek;->zzCX()Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGm:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbDx:Lcom/google/android/gms/tagmanager/DataLayer;

    iput-object p6, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGg:Lcom/google/android/gms/tagmanager/zzbo;

    new-instance p2, Lcom/google/android/gms/tagmanager/zzfd;

    invoke-direct {p2, p0}, Lcom/google/android/gms/tagmanager/zzfd;-><init>(Lcom/google/android/gms/tagmanager/zzfc;)V

    new-instance p6, Lcom/google/android/gms/tagmanager/zzq;

    invoke-direct {p6}, Lcom/google/android/gms/tagmanager/zzq;-><init>()V

    const/high16 p6, 0x100000

    invoke-static {p6, p2}, Lcom/google/android/gms/tagmanager/zzq;->zza(ILcom/google/android/gms/tagmanager/zzs;)Lcom/google/android/gms/tagmanager/zzp;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGk:Lcom/google/android/gms/tagmanager/zzp;

    new-instance p2, Lcom/google/android/gms/tagmanager/zzfe;

    invoke-direct {p2, p0}, Lcom/google/android/gms/tagmanager/zzfe;-><init>(Lcom/google/android/gms/tagmanager/zzfc;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzq;-><init>()V

    invoke-static {p6, p2}, Lcom/google/android/gms/tagmanager/zzq;->zza(ILcom/google/android/gms/tagmanager/zzs;)Lcom/google/android/gms/tagmanager/zzp;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGl:Lcom/google/android/gms/tagmanager/zzp;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGh:Ljava/util/Map;

    new-instance p2, Lcom/google/android/gms/tagmanager/zzm;

    invoke-direct {p2, p1}, Lcom/google/android/gms/tagmanager/zzm;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zzb(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzam;

    invoke-direct {p2, p5}, Lcom/google/android/gms/tagmanager/zzam;-><init>(Lcom/google/android/gms/tagmanager/zzan;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zzb(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzaz;

    invoke-direct {p2, p3}, Lcom/google/android/gms/tagmanager/zzaz;-><init>(Lcom/google/android/gms/tagmanager/DataLayer;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zzb(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzgl;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/tagmanager/zzgl;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zzb(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGi:Ljava/util/Map;

    new-instance p2, Lcom/google/android/gms/tagmanager/zzak;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzak;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zzc(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzbl;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzbl;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zzc(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzbm;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzbm;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zzc(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzbt;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzbt;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zzc(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzbu;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzbu;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zzc(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzdf;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzdf;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zzc(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzdg;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzdg;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zzc(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzem;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzem;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zzc(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzfz;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzfz;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zzc(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGj:Ljava/util/Map;

    new-instance p2, Lcom/google/android/gms/tagmanager/zze;

    invoke-direct {p2, p1}, Lcom/google/android/gms/tagmanager/zze;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzf;

    invoke-direct {p2, p1}, Lcom/google/android/gms/tagmanager/zzf;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzh;

    invoke-direct {p2, p1}, Lcom/google/android/gms/tagmanager/zzh;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzi;

    invoke-direct {p2, p1}, Lcom/google/android/gms/tagmanager/zzi;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzj;

    invoke-direct {p2, p1}, Lcom/google/android/gms/tagmanager/zzj;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzk;

    invoke-direct {p2, p1}, Lcom/google/android/gms/tagmanager/zzk;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzl;

    invoke-direct {p2, p1}, Lcom/google/android/gms/tagmanager/zzl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzt;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzt;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzaj;

    iget-object p5, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGf:Lcom/google/android/gms/internal/ek;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ek;->getVersion()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p2, p5}, Lcom/google/android/gms/tagmanager/zzaj;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzam;

    invoke-direct {p2, p4}, Lcom/google/android/gms/tagmanager/zzam;-><init>(Lcom/google/android/gms/tagmanager/zzan;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzas;

    invoke-direct {p2, p3}, Lcom/google/android/gms/tagmanager/zzas;-><init>(Lcom/google/android/gms/tagmanager/DataLayer;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzbc;

    invoke-direct {p2, p1}, Lcom/google/android/gms/tagmanager/zzbc;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzbd;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzbd;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzbk;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzbk;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzbp;

    invoke-direct {p2, p0}, Lcom/google/android/gms/tagmanager/zzbp;-><init>(Lcom/google/android/gms/tagmanager/zzfc;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzbv;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzbv;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzbw;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzbw;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzcw;

    invoke-direct {p2, p1}, Lcom/google/android/gms/tagmanager/zzcw;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzcy;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzcy;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzde;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzde;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzdl;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzdl;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzdn;

    invoke-direct {p2, p1}, Lcom/google/android/gms/tagmanager/zzdn;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzeb;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzeb;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzef;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzef;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzej;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzej;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzel;

    invoke-direct {p2}, Lcom/google/android/gms/tagmanager/zzel;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p2, Lcom/google/android/gms/tagmanager/zzen;

    invoke-direct {p2, p1}, Lcom/google/android/gms/tagmanager/zzen;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p1, Lcom/google/android/gms/tagmanager/zzfk;

    invoke-direct {p1}, Lcom/google/android/gms/tagmanager/zzfk;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p1, Lcom/google/android/gms/tagmanager/zzfl;

    invoke-direct {p1}, Lcom/google/android/gms/tagmanager/zzfl;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p1, Lcom/google/android/gms/tagmanager/zzgf;

    invoke-direct {p1}, Lcom/google/android/gms/tagmanager/zzgf;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p1, Lcom/google/android/gms/tagmanager/zzgm;

    invoke-direct {p1}, Lcom/google/android/gms/tagmanager/zzgm;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/tagmanager/zzbr;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGn:Ljava/util/Map;

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGm:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/em;

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/em;->zzDC()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    if-ge p4, p5, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/em;->zzDC()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/android/gms/internal/ei;

    const-string p6, "Unknown"

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGn:Ljava/util/Map;

    invoke-static {p5}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/internal/ei;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/zzfc;->zzf(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzfj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/tagmanager/zzfj;->zza(Lcom/google/android/gms/internal/em;)V

    invoke-virtual {v0, p2, p5}, Lcom/google/android/gms/tagmanager/zzfj;->zza(Lcom/google/android/gms/internal/em;Lcom/google/android/gms/internal/ei;)V

    invoke-virtual {v0, p2, p6}, Lcom/google/android/gms/tagmanager/zzfj;->zza(Lcom/google/android/gms/internal/em;Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/em;->zzDD()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/em;->zzDD()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ei;

    const-string p5, "Unknown"

    iget-object p6, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGn:Ljava/util/Map;

    invoke-static {p4}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/internal/ei;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p6, v0}, Lcom/google/android/gms/tagmanager/zzfc;->zzf(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzfj;

    move-result-object p6

    invoke-virtual {p6, p2}, Lcom/google/android/gms/tagmanager/zzfj;->zza(Lcom/google/android/gms/internal/em;)V

    invoke-virtual {p6, p2, p4}, Lcom/google/android/gms/tagmanager/zzfj;->zzb(Lcom/google/android/gms/internal/em;Lcom/google/android/gms/internal/ei;)V

    invoke-virtual {p6, p2, p5}, Lcom/google/android/gms/tagmanager/zzfj;->zzb(Lcom/google/android/gms/internal/em;Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGf:Lcom/google/android/gms/internal/ek;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ek;->zzDA()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ei;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ei;->zzCZ()Ljava/util/Map;

    move-result-object p5

    sget-object p6, Lcom/google/android/gms/internal/zzbg;->zzix:Lcom/google/android/gms/internal/zzbg;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/zzbg;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-interface {p5, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/android/gms/internal/zzbr;

    invoke-static {p5}, Lcom/google/android/gms/tagmanager/zzgk;->zzf(Lcom/google/android/gms/internal/zzbr;)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-nez p5, :cond_5

    iget-object p5, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGn:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-static {p5, p6}, Lcom/google/android/gms/tagmanager/zzfc;->zzf(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzfj;

    move-result-object p5

    invoke-virtual {p5, p4}, Lcom/google/android/gms/tagmanager/zzfj;->zzb(Lcom/google/android/gms/internal/ei;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method private final zzBL()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGp:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGp:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    :goto_0
    iget v2, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGp:I

    if-ge v1, v2, :cond_1

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/ei;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzeo;)Lcom/google/android/gms/tagmanager/zzea;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ei;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzeo;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzea<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGi:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Ljava/util/Map;Lcom/google/android/gms/internal/ei;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzeo;)Lcom/google/android/gms/tagmanager/zzea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzea;->getObject()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzbr;

    invoke-static {p2}, Lcom/google/android/gms/tagmanager/zzgk;->zzf(Lcom/google/android/gms/internal/zzbr;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/tagmanager/zzgk;->zzI(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbr;

    new-instance p3, Lcom/google/android/gms/tagmanager/zzea;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzea;->zzBz()Z

    move-result p1

    invoke-direct {p3, p2, p1}, Lcom/google/android/gms/tagmanager/zzea;-><init>(Ljava/lang/Object;Z)V

    return-object p3
.end method

.method private final zza(Lcom/google/android/gms/internal/em;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzer;)Lcom/google/android/gms/tagmanager/zzea;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/em;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzer;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzea<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/em;->zzDc()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ei;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/zzer;->zzBr()Lcom/google/android/gms/tagmanager/zzeo;

    move-result-object v5

    invoke-direct {p0, v3, p2, v5}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/internal/ei;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzeo;)Lcom/google/android/gms/tagmanager/zzea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/zzea;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzgk;->zzI(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbr;

    new-instance p1, Lcom/google/android/gms/tagmanager/zzea;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/zzea;->zzBz()Z

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/tagmanager/zzea;-><init>(Ljava/lang/Object;Z)V

    return-object p1

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/zzea;->zzBz()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/em;->zzDb()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ei;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/zzer;->zzBs()Lcom/google/android/gms/tagmanager/zzeo;

    move-result-object v3

    invoke-direct {p0, v0, p2, v3}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/internal/ei;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzeo;)Lcom/google/android/gms/tagmanager/zzea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzea;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzgk;->zzI(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbr;

    new-instance p1, Lcom/google/android/gms/tagmanager/zzea;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzea;->zzBz()Z

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/tagmanager/zzea;-><init>(Ljava/lang/Object;Z)V

    return-object p1

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzea;->zzBz()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzgk;->zzI(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbr;

    new-instance p1, Lcom/google/android/gms/tagmanager/zzea;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, p2, v2}, Lcom/google/android/gms/tagmanager/zzea;-><init>(Ljava/lang/Object;Z)V

    return-object p1
.end method

.method private final zza(Lcom/google/android/gms/internal/zzbr;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzgn;)Lcom/google/android/gms/tagmanager/zzea;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbr;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzgn;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzea<",
            "Lcom/google/android/gms/internal/zzbr;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzbr;->zzlN:Z

    if-nez v0, :cond_0

    new-instance p2, Lcom/google/android/gms/tagmanager/zzea;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/tagmanager/zzea;-><init>(Ljava/lang/Object;Z)V

    return-object p2

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/zzbr;->type:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    packed-switch v0, :pswitch_data_0

    iget p1, p1, Lcom/google/android/gms/internal/zzbr;->type:I

    const/16 p2, 0x19

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Unknown type: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdj;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/tagmanager/zzfc;->zzbGe:Lcom/google/android/gms/tagmanager/zzea;

    return-object p1

    :pswitch_0
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbr;->zzlH:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbr;->zzlH:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x4f

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Macro cycle detected.  Current macro reference: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".  Previous macro references: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdj;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/tagmanager/zzfc;->zzbGe:Lcom/google/android/gms/tagmanager/zzea;

    return-object p1

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/zzbr;->zzlH:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbr;->zzlH:Ljava/lang/String;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/zzgn;->zzBy()Lcom/google/android/gms/tagmanager/zzdm;

    move-result-object p3

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzdm;)Lcom/google/android/gms/tagmanager/zzea;

    move-result-object p3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbr;->zzlM:[I

    invoke-static {p3, v0}, Lcom/google/android/gms/tagmanager/zzgo;->zza(Lcom/google/android/gms/tagmanager/zzea;[I)Lcom/google/android/gms/tagmanager/zzea;

    move-result-object p3

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbr;->zzlH:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p3

    :pswitch_1
    invoke-static {p1}, Lcom/google/android/gms/internal/eg;->zzj(Lcom/google/android/gms/internal/zzbr;)Lcom/google/android/gms/internal/zzbr;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbr;->zzlF:[Lcom/google/android/gms/internal/zzbr;

    array-length v1, v1

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    array-length v3, v3

    if-eq v1, v3, :cond_3

    const-string p2, "Invalid serving value: "

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbr;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdj;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/tagmanager/zzfc;->zzbGe:Lcom/google/android/gms/tagmanager/zzea;

    return-object p1

    :cond_3
    iget-object v1, p1, Lcom/google/android/gms/internal/zzbr;->zzlF:[Lcom/google/android/gms/internal/zzbr;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/android/gms/internal/zzbr;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbr;->zzlF:[Lcom/google/android/gms/internal/zzbr;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbr;->zzlF:[Lcom/google/android/gms/internal/zzbr;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/android/gms/internal/zzbr;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p1, Lcom/google/android/gms/internal/zzbr;->zzlF:[Lcom/google/android/gms/internal/zzbr;

    array-length v3, v3

    if-ge v1, v3, :cond_6

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbr;->zzlF:[Lcom/google/android/gms/internal/zzbr;

    aget-object v3, v3, v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/tagmanager/zzgn;->zzbA(I)Lcom/google/android/gms/tagmanager/zzgn;

    move-result-object v4

    invoke-direct {p0, v3, p2, v4}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/internal/zzbr;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzgn;)Lcom/google/android/gms/tagmanager/zzea;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    aget-object v4, v4, v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/tagmanager/zzgn;->zzbB(I)Lcom/google/android/gms/tagmanager/zzgn;

    move-result-object v5

    invoke-direct {p0, v4, p2, v5}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/internal/zzbr;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzgn;)Lcom/google/android/gms/tagmanager/zzea;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/tagmanager/zzfc;->zzbGe:Lcom/google/android/gms/tagmanager/zzea;

    if-eq v3, v5, :cond_5

    sget-object v5, Lcom/google/android/gms/tagmanager/zzfc;->zzbGe:Lcom/google/android/gms/tagmanager/zzea;

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, v0, Lcom/google/android/gms/internal/zzbr;->zzlF:[Lcom/google/android/gms/internal/zzbr;

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/zzea;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzbr;

    aput-object v3, v5, v1

    iget-object v3, v0, Lcom/google/android/gms/internal/zzbr;->zzlG:[Lcom/google/android/gms/internal/zzbr;

    invoke-virtual {v4}, Lcom/google/android/gms/tagmanager/zzea;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzbr;

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    sget-object p1, Lcom/google/android/gms/tagmanager/zzfc;->zzbGe:Lcom/google/android/gms/tagmanager/zzea;

    return-object p1

    :cond_6
    new-instance p1, Lcom/google/android/gms/tagmanager/zzea;

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/tagmanager/zzea;-><init>(Ljava/lang/Object;Z)V

    return-object p1

    :pswitch_2
    invoke-static {p1}, Lcom/google/android/gms/internal/eg;->zzj(Lcom/google/android/gms/internal/zzbr;)Lcom/google/android/gms/internal/zzbr;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbr;->zzlE:[Lcom/google/android/gms/internal/zzbr;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/android/gms/internal/zzbr;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbr;->zzlE:[Lcom/google/android/gms/internal/zzbr;

    const/4 v1, 0x0

    :goto_3
    iget-object v3, p1, Lcom/google/android/gms/internal/zzbr;->zzlE:[Lcom/google/android/gms/internal/zzbr;

    array-length v3, v3

    if-ge v1, v3, :cond_8

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbr;->zzlE:[Lcom/google/android/gms/internal/zzbr;

    aget-object v3, v3, v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/tagmanager/zzgn;->zzbz(I)Lcom/google/android/gms/tagmanager/zzgn;

    move-result-object v4

    invoke-direct {p0, v3, p2, v4}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/internal/zzbr;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzgn;)Lcom/google/android/gms/tagmanager/zzea;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/tagmanager/zzfc;->zzbGe:Lcom/google/android/gms/tagmanager/zzea;

    if-ne v3, v4, :cond_7

    sget-object p1, Lcom/google/android/gms/tagmanager/zzfc;->zzbGe:Lcom/google/android/gms/tagmanager/zzea;

    return-object p1

    :cond_7
    iget-object v4, v0, Lcom/google/android/gms/internal/zzbr;->zzlE:[Lcom/google/android/gms/internal/zzbr;

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/zzea;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzbr;

    aput-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    new-instance p1, Lcom/google/android/gms/tagmanager/zzea;

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/tagmanager/zzea;-><init>(Ljava/lang/Object;Z)V

    return-object p1

    :cond_9
    invoke-static {p1}, Lcom/google/android/gms/internal/eg;->zzj(Lcom/google/android/gms/internal/zzbr;)Lcom/google/android/gms/internal/zzbr;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbr;->zzlL:[Lcom/google/android/gms/internal/zzbr;

    array-length v1, v1

    new-array v1, v1, [Lcom/google/android/gms/internal/zzbr;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzbr;->zzlL:[Lcom/google/android/gms/internal/zzbr;

    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lcom/google/android/gms/internal/zzbr;->zzlL:[Lcom/google/android/gms/internal/zzbr;

    array-length v3, v3

    if-ge v1, v3, :cond_b

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbr;->zzlL:[Lcom/google/android/gms/internal/zzbr;

    aget-object v3, v3, v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/tagmanager/zzgn;->zzbC(I)Lcom/google/android/gms/tagmanager/zzgn;

    move-result-object v4

    invoke-direct {p0, v3, p2, v4}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/internal/zzbr;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzgn;)Lcom/google/android/gms/tagmanager/zzea;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/tagmanager/zzfc;->zzbGe:Lcom/google/android/gms/tagmanager/zzea;

    if-ne v3, v4, :cond_a

    sget-object p1, Lcom/google/android/gms/tagmanager/zzfc;->zzbGe:Lcom/google/android/gms/tagmanager/zzea;

    return-object p1

    :cond_a
    iget-object v4, v0, Lcom/google/android/gms/internal/zzbr;->zzlL:[Lcom/google/android/gms/internal/zzbr;

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/zzea;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzbr;

    aput-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    new-instance p1, Lcom/google/android/gms/tagmanager/zzea;

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/tagmanager/zzea;-><init>(Ljava/lang/Object;Z)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzdm;)Lcom/google/android/gms/tagmanager/zzea;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzdm;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzea<",
            "Lcom/google/android/gms/internal/zzbr;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGp:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGp:I

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGl:Lcom/google/android/gms/tagmanager/zzp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzfi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzfi;->zzBN()Lcom/google/android/gms/internal/zzbr;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/internal/zzbr;Ljava/util/Set;)V

    iget p1, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGp:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGp:I

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzfi;->zzBM()Lcom/google/android/gms/tagmanager/zzea;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGn:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzfj;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzfc;->zzBL()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0xf

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Invalid macro: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdj;->e(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGp:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGp:I

    sget-object p1, Lcom/google/android/gms/tagmanager/zzfc;->zzbGe:Lcom/google/android/gms/tagmanager/zzea;

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzfj;->zzBO()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzfj;->zzBP()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzfj;->zzBQ()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzfj;->zzBS()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzfj;->zzBR()Ljava/util/Map;

    move-result-object v8

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/zzdm;->zzAZ()Lcom/google/android/gms/tagmanager/zzfb;

    move-result-object v10

    move-object v2, p0

    move-object v3, p1

    move-object v9, p2

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzfb;)Lcom/google/android/gms/tagmanager/zzea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/zzea;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzfj;->zzBT()Lcom/google/android/gms/internal/ei;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/zzea;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzfc;->zzBL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x25

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Multiple macros active for macroName "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdj;->zzaT(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/zzea;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ei;

    :goto_0
    if-nez v0, :cond_4

    iget p1, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGp:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGp:I

    sget-object p1, Lcom/google/android/gms/tagmanager/zzfc;->zzbGe:Lcom/google/android/gms/tagmanager/zzea;

    return-object p1

    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGj:Ljava/util/Map;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/zzdm;->zzBq()Lcom/google/android/gms/tagmanager/zzeo;

    move-result-object p3

    invoke-direct {p0, v3, v0, p2, p3}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Ljava/util/Map;Lcom/google/android/gms/internal/ei;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzeo;)Lcom/google/android/gms/tagmanager/zzea;

    move-result-object p3

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/zzea;->zzBz()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p3}, Lcom/google/android/gms/tagmanager/zzea;->zzBz()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lcom/google/android/gms/tagmanager/zzfc;->zzbGe:Lcom/google/android/gms/tagmanager/zzea;

    if-ne p3, v3, :cond_6

    sget-object p3, Lcom/google/android/gms/tagmanager/zzfc;->zzbGe:Lcom/google/android/gms/tagmanager/zzea;

    goto :goto_2

    :cond_6
    new-instance v3, Lcom/google/android/gms/tagmanager/zzea;

    invoke-virtual {p3}, Lcom/google/android/gms/tagmanager/zzea;->getObject()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/zzbr;

    invoke-direct {v3, p3, v2}, Lcom/google/android/gms/tagmanager/zzea;-><init>(Ljava/lang/Object;Z)V

    move-object p3, v3

    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ei;->zzBN()Lcom/google/android/gms/internal/zzbr;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/gms/tagmanager/zzea;->zzBz()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGl:Lcom/google/android/gms/tagmanager/zzp;

    new-instance v3, Lcom/google/android/gms/tagmanager/zzfi;

    invoke-direct {v3, p3, v0}, Lcom/google/android/gms/tagmanager/zzfi;-><init>(Lcom/google/android/gms/tagmanager/zzea;Lcom/google/android/gms/internal/zzbr;)V

    invoke-interface {v2, p1, v3}, Lcom/google/android/gms/tagmanager/zzp;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/internal/zzbr;Ljava/util/Set;)V

    iget p1, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGp:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGp:I

    return-object p3
.end method

.method private final zza(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzfb;)Lcom/google/android/gms/tagmanager/zzea;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/em;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/em;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ei;",
            ">;>;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/em;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/em;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ei;",
            ">;>;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/em;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzfb;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzea<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ei;",
            ">;>;"
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/tagmanager/zzff;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/zzff;-><init>(Lcom/google/android/gms/tagmanager/zzfc;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-direct {p0, p2, p7, p1, p8}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzfh;Lcom/google/android/gms/tagmanager/zzfb;)Lcom/google/android/gms/tagmanager/zzea;

    move-result-object p1

    return-object p1
.end method

.method private final zza(Ljava/util/Map;Lcom/google/android/gms/internal/ei;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzeo;)Lcom/google/android/gms/tagmanager/zzea;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzbr;",
            ">;",
            "Lcom/google/android/gms/internal/ei;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzeo;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzea<",
            "Lcom/google/android/gms/internal/zzbr;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ei;->zzCZ()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbg;->zzhG:Lcom/google/android/gms/internal/zzbg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbg;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbr;

    if-nez v0, :cond_0

    const-string p1, "No function id in properties"

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdj;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/tagmanager/zzfc;->zzbGe:Lcom/google/android/gms/tagmanager/zzea;

    return-object p1

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/zzbr;->zzlI:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tagmanager/zzbr;

    if-nez p1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " has no backing implementation."

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGk:Lcom/google/android/gms/tagmanager/zzp;

    invoke-interface {v1, p2}, Lcom/google/android/gms/tagmanager/zzp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tagmanager/zzea;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ei;->zzCZ()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {p4, v7}, Lcom/google/android/gms/tagmanager/zzeo;->zzfp(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzeq;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzbr;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzbr;

    invoke-interface {v7, v9}, Lcom/google/android/gms/tagmanager/zzeq;->zza(Lcom/google/android/gms/internal/zzbr;)Lcom/google/android/gms/tagmanager/zzgn;

    move-result-object v7

    invoke-direct {p0, v8, p3, v7}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/internal/zzbr;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzgn;)Lcom/google/android/gms/tagmanager/zzea;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/tagmanager/zzfc;->zzbGe:Lcom/google/android/gms/tagmanager/zzea;

    if-ne v7, v8, :cond_3

    sget-object p1, Lcom/google/android/gms/tagmanager/zzfc;->zzbGe:Lcom/google/android/gms/tagmanager/zzea;

    return-object p1

    :cond_3
    invoke-virtual {v7}, Lcom/google/android/gms/tagmanager/zzea;->zzBz()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/gms/tagmanager/zzea;->getObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzbr;

    invoke-virtual {p2, v6, v8}, Lcom/google/android/gms/internal/ei;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbr;)V

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/gms/tagmanager/zzea;->getObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzbr;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/tagmanager/zzbr;->zzd(Ljava/util/Set;)Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzbr;->zzBl()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x2b

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/2addr p3, p4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    add-int/2addr p3, p4

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Incorrect keys for function "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " required "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " had "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzbr;->zzAE()Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    new-instance p3, Lcom/google/android/gms/tagmanager/zzea;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tagmanager/zzbr;->zzo(Ljava/util/Map;)Lcom/google/android/gms/internal/zzbr;

    move-result-object p1

    invoke-direct {p3, p1, v3}, Lcom/google/android/gms/tagmanager/zzea;-><init>(Ljava/lang/Object;Z)V

    if-eqz v3, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGk:Lcom/google/android/gms/tagmanager/zzp;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/tagmanager/zzp;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    return-object p3
.end method

.method private final zza(Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzfh;Lcom/google/android/gms/tagmanager/zzfb;)Lcom/google/android/gms/tagmanager/zzea;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/em;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzfh;",
            "Lcom/google/android/gms/tagmanager/zzfb;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzea<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ei;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/em;

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzfb;->zzBx()Lcom/google/android/gms/tagmanager/zzer;

    move-result-object v5

    invoke-direct {p0, v4, p2, v5}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/internal/em;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzer;)Lcom/google/android/gms/tagmanager/zzea;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/tagmanager/zzea;->getObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {p3, v4, v0, v1, v5}, Lcom/google/android/gms/tagmanager/zzfh;->zza(Lcom/google/android/gms/internal/em;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzer;)V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v6}, Lcom/google/android/gms/tagmanager/zzea;->zzBz()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    new-instance p1, Lcom/google/android/gms/tagmanager/zzea;

    invoke-direct {p1, v0, v3}, Lcom/google/android/gms/tagmanager/zzea;-><init>(Ljava/lang/Object;Z)V

    return-object p1
.end method

.method private static zza(Lcom/google/android/gms/internal/ei;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ei;->zzCZ()Ljava/util/Map;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/zzbg;->zzhS:Lcom/google/android/gms/internal/zzbg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbg;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzbr;

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzgk;->zzb(Lcom/google/android/gms/internal/zzbr;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/zzbr;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbr;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/tagmanager/zzdy;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzdy;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Lcom/google/android/gms/internal/zzbr;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzgn;)Lcom/google/android/gms/tagmanager/zzea;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/tagmanager/zzfc;->zzbGe:Lcom/google/android/gms/tagmanager/zzea;

    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzea;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbr;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzgk;->zzg(Lcom/google/android/gms/internal/zzbr;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/util/Map;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/util/Map;

    iget-object p2, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbDx:Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    return-void

    :cond_2
    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_5

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbDx:Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    const-string p2, "pushAfterEvaluate: value not a Map"

    invoke-static {p2}, Lcom/google/android/gms/tagmanager/zzdj;->zzaT(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    const-string p1, "pushAfterEvaluate: value not a Map or List"

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdj;->zzaT(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/tagmanager/zzbr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGj:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Ljava/util/Map;Lcom/google/android/gms/tagmanager/zzbr;)V

    return-void
.end method

.method private static zza(Ljava/util/Map;Lcom/google/android/gms/tagmanager/zzbr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzbr;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzbr;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzbr;->zzBk()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Duplicate function type name: "

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzbr;->zzBk()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzbr;->zzBk()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/tagmanager/zzbr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGh:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Ljava/util/Map;Lcom/google/android/gms/tagmanager/zzbr;)V

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/tagmanager/zzbr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGi:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Ljava/util/Map;Lcom/google/android/gms/tagmanager/zzbr;)V

    return-void
.end method

.method private static zzf(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzfj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/zzfj;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzfj;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzfj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/zzfj;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzfj;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private final declared-synchronized zzft(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGo:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method final declared-synchronized zzBK()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGo:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzL(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbp;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbp;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzbp;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzbp;->name:Ljava/lang/String;

    const-string v2, "gaExperiment:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbDx:Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/zzbq;->zza(Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/internal/zzbp;)V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ignored supplemental: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdj;->v(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzeZ(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzfc;->zzft(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGg:Lcom/google/android/gms/tagmanager/zzbo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzbo;->zzfj(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzbn;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/zzbn;->zzBj()Lcom/google/android/gms/tagmanager/zzar;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGm:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/zzar;->zzAZ()Lcom/google/android/gms/tagmanager/zzfb;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Lcom/google/android/gms/tagmanager/zzfg;

    invoke-direct {v3, p0}, Lcom/google/android/gms/tagmanager/zzfg;-><init>(Lcom/google/android/gms/tagmanager/zzfc;)V

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzfh;Lcom/google/android/gms/tagmanager/zzfb;)Lcom/google/android/gms/tagmanager/zzea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzea;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ei;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGh:Ljava/util/Map;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/zzar;->zzAY()Lcom/google/android/gms/tagmanager/zzeo;

    move-result-object v4

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Ljava/util/Map;Lcom/google/android/gms/internal/ei;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzeo;)Lcom/google/android/gms/tagmanager/zzea;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzfc;->zzft(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzfs(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzea;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tagmanager/zzea<",
            "Lcom/google/android/gms/internal/zzbr;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGp:I

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfc;->zzbGg:Lcom/google/android/gms/tagmanager/zzbo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzbo;->zzfi(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/zzbn;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzbn;->zzBi()Lcom/google/android/gms/tagmanager/zzdm;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/tagmanager/zzfc;->zza(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzdm;)Lcom/google/android/gms/tagmanager/zzea;

    move-result-object p1

    return-object p1
.end method
