.class public Lcom/ibm/icu/util/Region;
.super Ljava/lang/Object;
.source "Region.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/Region$RegionType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/ibm/icu/util/Region;",
        ">;"
    }
.end annotation


# static fields
.field private static final OUTLYING_OCEANIA_REGION_ID:Ljava/lang/String; = "QO"

.field private static final UNKNOWN_REGION_ID:Ljava/lang/String; = "ZZ"

.field private static final WORLD_ID:Ljava/lang/String; = "001"

.field private static availableRegions:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/util/Region;",
            ">;>;"
        }
    .end annotation
.end field

.field private static numericCodeMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ibm/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private static regionAliases:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private static regionDataIsLoaded:Z = false

.field private static regionIDMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private static regions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ibm/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:I

.field private containedRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ibm/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private containingRegion:Lcom/ibm/icu/util/Region;

.field private id:Ljava/lang/String;

.field private preferredValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lcom/ibm/icu/util/Region$RegionType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/ibm/icu/util/Region;->containingRegion:Lcom/ibm/icu/util/Region;

    .line 117
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/util/Region;->containedRegions:Ljava/util/Set;

    .line 118
    iput-object v0, p0, Lcom/ibm/icu/util/Region;->preferredValues:Ljava/util/List;

    return-void
.end method

.method public static getAvailable(Lcom/ibm/icu/util/Region$RegionType;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/Region$RegionType;",
            ")",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/util/Region;",
            ">;"
        }
    .end annotation

    .line 446
    invoke-static {}, Lcom/ibm/icu/util/Region;->loadRegionData()V

    .line 447
    sget-object v0, Lcom/ibm/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/ibm/icu/util/Region$RegionType;->ordinal()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(I)Lcom/ibm/icu/util/Region;
    .locals 3

    .line 410
    invoke-static {}, Lcom/ibm/icu/util/Region;->loadRegionData()V

    .line 412
    sget-object v0, Lcom/ibm/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Region;

    if-nez v0, :cond_2

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    const-string v0, "00"

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    if-ge p0, v0, :cond_1

    const-string v0, "0"

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 421
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    sget-object v1, Lcom/ibm/icu/util/Region;->regionAliases:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Region;

    :cond_2
    if-eqz v0, :cond_4

    .line 429
    iget-object p0, v0, Lcom/ibm/icu/util/Region;->type:Lcom/ibm/icu/util/Region$RegionType;

    sget-object v1, Lcom/ibm/icu/util/Region$RegionType;->DEPRECATED:Lcom/ibm/icu/util/Region$RegionType;

    if-ne p0, v1, :cond_3

    iget-object p0, v0, Lcom/ibm/icu/util/Region;->preferredValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_3

    .line 430
    iget-object p0, v0, Lcom/ibm/icu/util/Region;->preferredValues:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/ibm/icu/util/Region;

    :cond_3
    return-object v0

    .line 426
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown region code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Region;
    .locals 3

    .line 378
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    invoke-static {}, Lcom/ibm/icu/util/Region;->loadRegionData()V

    .line 383
    sget-object v0, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Region;

    if-nez v0, :cond_0

    .line 386
    sget-object v0, Lcom/ibm/icu/util/Region;->regionAliases:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Region;

    :cond_0
    if-eqz v0, :cond_2

    .line 393
    iget-object p0, v0, Lcom/ibm/icu/util/Region;->type:Lcom/ibm/icu/util/Region$RegionType;

    sget-object v1, Lcom/ibm/icu/util/Region$RegionType;->DEPRECATED:Lcom/ibm/icu/util/Region$RegionType;

    if-ne p0, v1, :cond_1

    iget-object p0, v0, Lcom/ibm/icu/util/Region;->preferredValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 394
    iget-object p0, v0, Lcom/ibm/icu/util/Region;->preferredValues:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/ibm/icu/util/Region;

    :cond_1
    return-object v0

    .line 390
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown region id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static declared-synchronized loadRegionData()V
    .locals 14

    const-class v0, Lcom/ibm/icu/util/Region;

    monitor-enter v0

    .line 149
    :try_start_0
    sget-boolean v1, Lcom/ibm/icu/util/Region;->regionDataIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 150
    monitor-exit v0

    return-void

    .line 153
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/ibm/icu/util/Region;->regionAliases:Ljava/util/Map;

    .line 154
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    .line 155
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/ibm/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/ibm/icu/util/Region$RegionType;->values()[Lcom/ibm/icu/util/Region$RegionType;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v1, Lcom/ibm/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    const-string v1, "com/ibm/icu/impl/data/icudt69b"

    const-string v2, "metadata"

    .line 172
    sget-object v3, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v1, v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    const-string v2, "alias"

    .line 173
    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    const-string v2, "territory"

    .line 174
    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    const-string v2, "com/ibm/icu/impl/data/icudt69b"

    const-string v3, "supplementalData"

    .line 176
    sget-object v4, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    const-string v3, "codeMappings"

    .line 177
    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    const-string v4, "idValidity"

    .line 178
    invoke-virtual {v2, v4}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    const-string v5, "region"

    .line 179
    invoke-virtual {v4, v5}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    const-string v5, "regular"

    .line 180
    invoke-virtual {v4, v5}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v5

    const-string v6, "macroregion"

    .line 181
    invoke-virtual {v4, v6}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v6

    const-string v7, "unknown"

    .line 182
    invoke-virtual {v4, v7}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    const-string v7, "territoryContainment"

    .line 184
    invoke-virtual {v2, v7}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    const-string v7, "001"

    .line 185
    invoke-virtual {v2, v7}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v7

    const-string v8, "grouping"

    .line 186
    invoke-virtual {v2, v8}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v8

    .line 188
    invoke-virtual {v7}, Lcom/ibm/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 189
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 190
    invoke-virtual {v8}, Lcom/ibm/icu/util/UResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v8

    .line 191
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 193
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-virtual {v5}, Lcom/ibm/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 195
    invoke-virtual {v6}, Lcom/ibm/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 196
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "~"

    .line 199
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    .line 201
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v6, 0x1

    .line 202
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    .line 203
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v6, v6, -0x1

    .line 204
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    :goto_1
    if-gt v11, v5, :cond_1

    .line 206
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 207
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    int-to-char v11, v11

    .line 209
    invoke-virtual {v10, v6, v11}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 212
    :cond_2
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v4, Lcom/ibm/icu/util/Region;->regions:Ljava/util/ArrayList;

    .line 219
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 220
    new-instance v9, Lcom/ibm/icu/util/Region;

    invoke-direct {v9}, Lcom/ibm/icu/util/Region;-><init>()V

    .line 221
    iput-object v5, v9, Lcom/ibm/icu/util/Region;->id:Ljava/lang/String;

    .line 222
    sget-object v10, Lcom/ibm/icu/util/Region$RegionType;->TERRITORY:Lcom/ibm/icu/util/Region$RegionType;

    iput-object v10, v9, Lcom/ibm/icu/util/Region;->type:Lcom/ibm/icu/util/Region$RegionType;

    .line 223
    sget-object v10, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v10, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "[0-9]{3}"

    .line 224
    invoke-virtual {v5, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 225
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v9, Lcom/ibm/icu/util/Region;->code:I

    .line 226
    sget-object v6, Lcom/ibm/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v5, Lcom/ibm/icu/util/Region$RegionType;->SUBCONTINENT:Lcom/ibm/icu/util/Region$RegionType;

    iput-object v5, v9, Lcom/ibm/icu/util/Region;->type:Lcom/ibm/icu/util/Region$RegionType;

    goto :goto_3

    .line 229
    :cond_4
    iput v6, v9, Lcom/ibm/icu/util/Region;->code:I

    .line 231
    :goto_3
    sget-object v5, Lcom/ibm/icu/util/Region;->regions:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 236
    :goto_4
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v9

    if-ge v5, v9, :cond_b

    .line 237
    invoke-virtual {v1, v5}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v9

    .line 238
    invoke-virtual {v9}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v10

    const-string v11, "replacement"

    .line 239
    invoke-virtual {v9, v11}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v9

    .line 241
    sget-object v11, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    sget-object v11, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 242
    sget-object v11, Lcom/ibm/icu/util/Region;->regionAliases:Ljava/util/Map;

    sget-object v12, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v11, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 245
    :cond_6
    sget-object v11, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 246
    sget-object v11, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ibm/icu/util/Region;

    goto :goto_6

    .line 248
    :cond_7
    new-instance v11, Lcom/ibm/icu/util/Region;

    invoke-direct {v11}, Lcom/ibm/icu/util/Region;-><init>()V

    .line 249
    iput-object v10, v11, Lcom/ibm/icu/util/Region;->id:Ljava/lang/String;

    .line 250
    sget-object v12, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v12, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "[0-9]{3}"

    .line 251
    invoke-virtual {v10, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 252
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v11, Lcom/ibm/icu/util/Region;->code:I

    .line 253
    sget-object v12, Lcom/ibm/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v12, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 255
    :cond_8
    iput v6, v11, Lcom/ibm/icu/util/Region;->code:I

    .line 257
    :goto_5
    sget-object v10, Lcom/ibm/icu/util/Region;->regions:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v10, v11

    .line 259
    :goto_6
    sget-object v11, Lcom/ibm/icu/util/Region$RegionType;->DEPRECATED:Lcom/ibm/icu/util/Region$RegionType;

    iput-object v11, v10, Lcom/ibm/icu/util/Region;->type:Lcom/ibm/icu/util/Region$RegionType;

    const-string v11, " "

    .line 260
    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 261
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v10, Lcom/ibm/icu/util/Region;->preferredValues:Ljava/util/List;

    .line 262
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 263
    sget-object v12, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 264
    iget-object v12, v10, Lcom/ibm/icu/util/Region;->preferredValues:Ljava/util/List;

    sget-object v13, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    :cond_b
    const/4 v1, 0x0

    .line 271
    :goto_9
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v5

    const/4 v6, 0x1

    if-ge v1, v5, :cond_d

    .line 272
    invoke-virtual {v3, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v5

    .line 273
    invoke-virtual {v5}, Lcom/ibm/icu/util/UResourceBundle;->getType()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_c

    .line 274
    invoke-virtual {v5}, Lcom/ibm/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 275
    aget-object v9, v5, v4

    .line 276
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x2

    .line 277
    aget-object v5, v5, v10

    .line 279
    sget-object v10, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 280
    sget-object v10, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ibm/icu/util/Region;

    .line 281
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v9, Lcom/ibm/icu/util/Region;->code:I

    .line 282
    sget-object v10, Lcom/ibm/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v10, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v6, Lcom/ibm/icu/util/Region;->regionAliases:Ljava/util/Map;

    invoke-interface {v6, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 290
    :cond_d
    sget-object v1, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    const-string v3, "001"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 291
    sget-object v1, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    const-string v3, "001"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/Region;

    .line 292
    sget-object v3, Lcom/ibm/icu/util/Region$RegionType;->WORLD:Lcom/ibm/icu/util/Region$RegionType;

    iput-object v3, v1, Lcom/ibm/icu/util/Region;->type:Lcom/ibm/icu/util/Region$RegionType;

    .line 295
    :cond_e
    sget-object v1, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    const-string v3, "ZZ"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 296
    sget-object v1, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    const-string v3, "ZZ"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/Region;

    .line 297
    sget-object v3, Lcom/ibm/icu/util/Region$RegionType;->UNKNOWN:Lcom/ibm/icu/util/Region$RegionType;

    iput-object v3, v1, Lcom/ibm/icu/util/Region;->type:Lcom/ibm/icu/util/Region$RegionType;

    .line 300
    :cond_f
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 301
    sget-object v5, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 302
    sget-object v5, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/util/Region;

    .line 303
    sget-object v5, Lcom/ibm/icu/util/Region$RegionType;->CONTINENT:Lcom/ibm/icu/util/Region$RegionType;

    iput-object v5, v3, Lcom/ibm/icu/util/Region;->type:Lcom/ibm/icu/util/Region$RegionType;

    goto :goto_a

    .line 307
    :cond_11
    :goto_b
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 308
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 309
    sget-object v3, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 310
    sget-object v3, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/Region;

    .line 311
    sget-object v3, Lcom/ibm/icu/util/Region$RegionType;->GROUPING:Lcom/ibm/icu/util/Region$RegionType;

    iput-object v3, v1, Lcom/ibm/icu/util/Region;->type:Lcom/ibm/icu/util/Region$RegionType;

    goto :goto_b

    .line 318
    :cond_12
    sget-object v1, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    const-string v3, "QO"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 319
    sget-object v1, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    const-string v3, "QO"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/Region;

    .line 320
    sget-object v3, Lcom/ibm/icu/util/Region$RegionType;->SUBCONTINENT:Lcom/ibm/icu/util/Region$RegionType;

    iput-object v3, v1, Lcom/ibm/icu/util/Region;->type:Lcom/ibm/icu/util/Region$RegionType;

    :cond_13
    const/4 v1, 0x0

    .line 324
    :goto_c
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v3

    if-ge v1, v3, :cond_17

    .line 325
    invoke-virtual {v2, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    .line 326
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v7, "containedGroupings"

    .line 327
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    const-string v7, "deprecated"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    const-string v7, "grouping"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    goto :goto_e

    .line 332
    :cond_14
    sget-object v7, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/util/Region;

    const/4 v7, 0x0

    .line 333
    :goto_d
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v8

    if-ge v7, v8, :cond_16

    .line 334
    invoke-virtual {v3, v7}, Lcom/ibm/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 335
    sget-object v9, Lcom/ibm/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ibm/icu/util/Region;

    if-eqz v5, :cond_15

    if-eqz v8, :cond_15

    .line 339
    iget-object v9, v5, Lcom/ibm/icu/util/Region;->containedRegions:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-virtual {v5}, Lcom/ibm/icu/util/Region;->getType()Lcom/ibm/icu/util/Region$RegionType;

    move-result-object v9

    sget-object v10, Lcom/ibm/icu/util/Region$RegionType;->GROUPING:Lcom/ibm/icu/util/Region$RegionType;

    if-eq v9, v10, :cond_15

    .line 345
    iput-object v5, v8, Lcom/ibm/icu/util/Region;->containingRegion:Lcom/ibm/icu/util/Region;

    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_16
    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 353
    :cond_17
    :goto_f
    invoke-static {}, Lcom/ibm/icu/util/Region$RegionType;->values()[Lcom/ibm/icu/util/Region$RegionType;

    move-result-object v1

    array-length v1, v1

    if-ge v4, v1, :cond_18

    .line 354
    sget-object v1, Lcom/ibm/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 357
    :cond_18
    sget-object v1, Lcom/ibm/icu/util/Region;->regions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/util/Region;

    .line 358
    sget-object v3, Lcom/ibm/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/ibm/icu/util/Region;->type:Lcom/ibm/icu/util/Region$RegionType;

    invoke-virtual {v4}, Lcom/ibm/icu/util/Region$RegionType;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 359
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v4, Lcom/ibm/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/ibm/icu/util/Region;->type:Lcom/ibm/icu/util/Region$RegionType;

    invoke-virtual {v2}, Lcom/ibm/icu/util/Region$RegionType;->ordinal()I

    move-result v2

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 363
    :cond_19
    sput-boolean v6, Lcom/ibm/icu/util/Region;->regionDataIsLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_12

    :goto_11
    throw v1

    :goto_12
    goto :goto_11
.end method


# virtual methods
.method public compareTo(Lcom/ibm/icu/util/Region;)I
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/ibm/icu/util/Region;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/ibm/icu/util/Region;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 62
    check-cast p1, Lcom/ibm/icu/util/Region;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Region;->compareTo(Lcom/ibm/icu/util/Region;)I

    move-result p1

    return p1
.end method

.method public contains(Lcom/ibm/icu/util/Region;)Z
    .locals 3

    .line 554
    invoke-static {}, Lcom/ibm/icu/util/Region;->loadRegionData()V

    .line 556
    iget-object v0, p0, Lcom/ibm/icu/util/Region;->containedRegions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/Region;->containedRegions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/util/Region;

    .line 560
    invoke-virtual {v2, p1}, Lcom/ibm/icu/util/Region;->contains(Lcom/ibm/icu/util/Region;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getContainedRegions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/util/Region;",
            ">;"
        }
    .end annotation

    .line 498
    invoke-static {}, Lcom/ibm/icu/util/Region;->loadRegionData()V

    .line 499
    iget-object v0, p0, Lcom/ibm/icu/util/Region;->containedRegions:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getContainedRegions(Lcom/ibm/icu/util/Region$RegionType;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/Region$RegionType;",
            ")",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/util/Region;",
            ">;"
        }
    .end annotation

    .line 514
    invoke-static {}, Lcom/ibm/icu/util/Region;->loadRegionData()V

    .line 516
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 517
    invoke-virtual {p0}, Lcom/ibm/icu/util/Region;->getContainedRegions()Ljava/util/Set;

    move-result-object v1

    .line 519
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/util/Region;

    .line 520
    invoke-virtual {v2}, Lcom/ibm/icu/util/Region;->getType()Lcom/ibm/icu/util/Region$RegionType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 521
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 523
    :cond_0
    invoke-virtual {v2, p1}, Lcom/ibm/icu/util/Region;->getContainedRegions(Lcom/ibm/icu/util/Region$RegionType;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 526
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getContainingRegion()Lcom/ibm/icu/util/Region;
    .locals 1

    .line 460
    invoke-static {}, Lcom/ibm/icu/util/Region;->loadRegionData()V

    .line 461
    iget-object v0, p0, Lcom/ibm/icu/util/Region;->containingRegion:Lcom/ibm/icu/util/Region;

    return-object v0
.end method

.method public getContainingRegion(Lcom/ibm/icu/util/Region$RegionType;)Lcom/ibm/icu/util/Region;
    .locals 1

    .line 473
    invoke-static {}, Lcom/ibm/icu/util/Region;->loadRegionData()V

    .line 474
    iget-object v0, p0, Lcom/ibm/icu/util/Region;->containingRegion:Lcom/ibm/icu/util/Region;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 477
    :cond_0
    iget-object v0, v0, Lcom/ibm/icu/util/Region;->type:Lcom/ibm/icu/util/Region$RegionType;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Region$RegionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    iget-object p1, p0, Lcom/ibm/icu/util/Region;->containingRegion:Lcom/ibm/icu/util/Region;

    return-object p1

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/util/Region;->containingRegion:Lcom/ibm/icu/util/Region;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/Region;->getContainingRegion(Lcom/ibm/icu/util/Region$RegionType;)Lcom/ibm/icu/util/Region;

    move-result-object p1

    return-object p1
.end method

.method public getNumericCode()I
    .locals 1

    .line 590
    iget v0, p0, Lcom/ibm/icu/util/Region;->code:I

    return v0
.end method

.method public getPreferredValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ibm/icu/util/Region;",
            ">;"
        }
    .end annotation

    .line 538
    invoke-static {}, Lcom/ibm/icu/util/Region;->loadRegionData()V

    .line 540
    iget-object v0, p0, Lcom/ibm/icu/util/Region;->type:Lcom/ibm/icu/util/Region$RegionType;

    sget-object v1, Lcom/ibm/icu/util/Region$RegionType;->DEPRECATED:Lcom/ibm/icu/util/Region$RegionType;

    if-ne v0, v1, :cond_0

    .line 541
    iget-object v0, p0, Lcom/ibm/icu/util/Region;->preferredValues:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/ibm/icu/util/Region$RegionType;
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/ibm/icu/util/Region;->type:Lcom/ibm/icu/util/Region$RegionType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/ibm/icu/util/Region;->id:Ljava/lang/String;

    return-object v0
.end method
