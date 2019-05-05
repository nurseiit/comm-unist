.class public final Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/AutocompleteFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzbjm:Z

.field private zzbjo:Ljava/lang/String;

.field private zzbjp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;->zzbjm:Z

    iput v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;->zzbjp:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;->zzbjo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/location/places/AutocompleteFilter;
    .locals 5

    new-instance v0, Lcom/google/android/gms/location/places/AutocompleteFilter;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Integer;

    iget v3, p0, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;->zzbjp:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;->zzbjo:Ljava/lang/String;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/android/gms/location/places/AutocompleteFilter;-><init>(IZLjava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setCountry(Ljava/lang/String;)Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;->zzbjo:Ljava/lang/String;

    return-object p0
.end method

.method public final setTypeFilter(I)Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;->zzbjp:I

    return-object p0
.end method
