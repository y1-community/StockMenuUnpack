.class Lcom/ibm/icu/util/ULocale$AliasReplacer;
.super Ljava/lang/Object;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AliasReplacer"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static aliasDataIsLoaded:Z

.field private static languageAliasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static scriptAliasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static subdivisionAliasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static territoryAliasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static variantAliasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private extensions:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private script:Ljava/lang/String;

.field private variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1205
    const-class v0, Lcom/ibm/icu/util/ULocale;

    const/4 v0, 0x0

    .line 1305
    sput-boolean v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->aliasDataIsLoaded:Z

    const/4 v0, 0x0

    .line 1306
    sput-object v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->languageAliasMap:Ljava/util/Map;

    .line 1307
    sput-object v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->scriptAliasMap:Ljava/util/Map;

    .line 1308
    sput-object v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->territoryAliasMap:Ljava/util/Map;

    .line 1309
    sput-object v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->variantAliasMap:Ljava/util/Map;

    .line 1310
    sput-object v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->subdivisionAliasMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1221
    iput-object p1, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->language:Ljava/lang/String;

    .line 1222
    iput-object p2, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->script:Ljava/lang/String;

    .line 1223
    iput-object p3, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->region:Ljava/lang/String;

    .line 1224
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1225
    new-instance p1, Ljava/util/ArrayList;

    const-string p2, "_"

    .line 1226
    invoke-virtual {p4, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    .line 1228
    :cond_0
    iput-object p5, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->extensions:Ljava/lang/String;

    return-void
.end method

.method private static deleteOrReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_1

    .line 1449
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 1450
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    move-object p0, p2

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 1451
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :cond_3
    :goto_0
    return-object p0
.end method

.method private static generateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1422
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5f

    if-eqz p1, :cond_0

    .line 1423
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1424
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1425
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p2, :cond_1

    .line 1427
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1428
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1429
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized loadAliasData()V
    .locals 14

    const-class v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;

    monitor-enter v0

    .line 1321
    :try_start_0
    sget-boolean v1, Lcom/ibm/icu/util/ULocale$AliasReplacer;->aliasDataIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1322
    monitor-exit v0

    return-void

    .line 1324
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/ibm/icu/util/ULocale$AliasReplacer;->languageAliasMap:Ljava/util/Map;

    .line 1325
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/ibm/icu/util/ULocale$AliasReplacer;->scriptAliasMap:Ljava/util/Map;

    .line 1326
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/ibm/icu/util/ULocale$AliasReplacer;->territoryAliasMap:Ljava/util/Map;

    .line 1327
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/ibm/icu/util/ULocale$AliasReplacer;->variantAliasMap:Ljava/util/Map;

    .line 1328
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/ibm/icu/util/ULocale$AliasReplacer;->subdivisionAliasMap:Ljava/util/Map;

    const-string v1, "com/ibm/icu/impl/data/icudt69b"

    const-string v2, "metadata"

    .line 1330
    sget-object v3, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v1, v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    const-string v2, "alias"

    .line 1333
    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    const-string v2, "language"

    .line 1334
    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    const-string v3, "script"

    .line 1335
    invoke-virtual {v1, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    const-string v4, "territory"

    .line 1336
    invoke-virtual {v1, v4}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    const-string v5, "variant"

    .line 1337
    invoke-virtual {v1, v5}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v5

    const-string v6, "subdivision"

    .line 1338
    invoke-virtual {v1, v6}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1340
    :goto_0
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 1341
    invoke-virtual {v2, v7}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v8

    .line 1342
    invoke-virtual {v8}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v9

    const-string v10, "replacement"

    .line 1343
    invoke-virtual {v8, v10}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v8

    .line 1344
    new-instance v10, Ljava/util/Locale;

    invoke-direct {v10, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 1347
    invoke-virtual {v10}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "und"

    .line 1348
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1353
    :cond_1
    sget-object v10, Lcom/ibm/icu/util/ULocale$AliasReplacer;->languageAliasMap:Ljava/util/Map;

    invoke-interface {v10, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1349
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] in alias:language contains unsupported fields combination."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v2, 0x0

    .line 1355
    :goto_1
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v7

    const/4 v8, 0x4

    if-ge v2, v7, :cond_5

    .line 1356
    invoke-virtual {v3, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v7

    .line 1357
    invoke-virtual {v7}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v9

    const-string v10, "replacement"

    .line 1358
    invoke-virtual {v7, v10}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v7

    .line 1359
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v8, :cond_4

    .line 1363
    sget-object v8, Lcom/ibm/icu/util/ULocale$AliasReplacer;->scriptAliasMap:Ljava/util/Map;

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1360
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect key ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] in alias:script."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const/4 v2, 0x0

    .line 1365
    :goto_2
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v3

    const/4 v7, 0x3

    const/4 v9, 0x2

    if-ge v2, v3, :cond_7

    .line 1366
    invoke-virtual {v4, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    .line 1367
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v10

    const-string v11, "replacement"

    .line 1368
    invoke-virtual {v3, v11}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v3

    .line 1369
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v11, v9, :cond_6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v9, v7, :cond_6

    .line 1373
    sget-object v7, Lcom/ibm/icu/util/ULocale$AliasReplacer;->territoryAliasMap:Ljava/util/Map;

    new-instance v9, Ljava/util/ArrayList;

    const-string v11, " "

    .line 1374
    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1373
    invoke-interface {v7, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1370
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect key ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] in alias:territory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    const/4 v2, 0x0

    .line 1376
    :goto_3
    invoke-virtual {v5}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v3

    const/16 v4, 0x8

    if-ge v2, v3, :cond_c

    .line 1377
    invoke-virtual {v5, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    .line 1378
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v10

    const-string v11, "replacement"

    .line 1379
    invoke-virtual {v3, v11}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v3

    .line 1380
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v11, v8, :cond_b

    .line 1381
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v11, v4, :cond_b

    .line 1382
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x39

    const/16 v13, 0x30

    if-ne v11, v8, :cond_8

    .line 1383
    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v13, :cond_b

    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-gt v11, v12, :cond_b

    .line 1387
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v11, v8, :cond_a

    .line 1388
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v11, v4, :cond_a

    .line 1389
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v8, :cond_9

    .line 1390
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v13, :cond_a

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v12, :cond_a

    .line 1395
    :cond_9
    sget-object v4, Lcom/ibm/icu/util/ULocale$AliasReplacer;->variantAliasMap:Ljava/util/Map;

    invoke-interface {v4, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1391
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incorrect variant ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] for the key ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] in alias:variant."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1384
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect key ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] in alias:variant."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    const/4 v2, 0x0

    .line 1397
    :goto_4
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v3

    if-ge v2, v3, :cond_10

    .line 1398
    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    .line 1399
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v8, "replacement"

    .line 1400
    invoke-virtual {v3, v8}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    .line 1401
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v7, :cond_f

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v8, v4, :cond_f

    .line 1405
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v9, :cond_d

    .line 1407
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "zzzz"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 1408
    :cond_d
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v9, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v8, v4, :cond_e

    .line 1412
    :goto_5
    sget-object v8, Lcom/ibm/icu/util/ULocale$AliasReplacer;->subdivisionAliasMap:Ljava/util/Map;

    invoke-interface {v8, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1409
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incorrect value ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] in alias:territory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1402
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect key ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] in alias:territory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    const/4 v1, 0x1

    .line 1415
    sput-boolean v1, Lcom/ibm/icu/util/ULocale$AliasReplacer;->aliasDataIsLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1416
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_7

    :goto_6
    throw v1

    :goto_7
    goto :goto_6
.end method

.method private replaceLanguage(ZZZ)Z
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 1456
    iget-object v2, v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->region:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    iget-object v2, v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    if-nez v2, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 v2, 0x1

    if-eqz p3, :cond_3

    .line 1461
    iget-object v3, v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    :goto_0
    const-string v4, "und"

    if-eqz p1, :cond_4

    .line 1464
    iget-object v5, v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->language:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v5, v4

    :goto_1
    if-eqz p2, :cond_5

    .line 1465
    iget-object v7, v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->region:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v8, v3, :cond_16

    if-eqz p3, :cond_6

    .line 1469
    iget-object v9, v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    :cond_6
    const/4 v10, 0x4

    if-eqz v9, :cond_7

    .line 1471
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v10, :cond_7

    const/4 v9, 0x0

    .line 1475
    :cond_7
    invoke-static {v5, v7, v9}, Lcom/ibm/icu/util/ULocale$AliasReplacer;->generateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1477
    sget-object v12, Lcom/ibm/icu/util/ULocale$AliasReplacer;->languageAliasMap:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-nez v11, :cond_8

    move/from16 v19, v3

    goto/16 :goto_8

    :cond_8
    const/16 v12, 0x5f

    .line 1488
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-gez v12, :cond_a

    .line 1489
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v11, v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->language:Ljava/lang/String;

    :cond_9
    move/from16 v19, v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_a
    const-string v12, "_"

    .line 1492
    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1493
    aget-object v13, v12, v1

    .line 1496
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1497
    iget-object v13, v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->language:Ljava/lang/String;

    .line 1499
    :cond_b
    aget-object v14, v12, v1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v2

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 1500
    :goto_4
    array-length v6, v12

    if-le v6, v15, :cond_11

    .line 1501
    aget-object v6, v12, v15

    .line 1502
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v2, v1, :cond_c

    .line 1504
    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v19, v3

    move-object v11, v13

    move-object/from16 v6, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    goto :goto_7

    :cond_c
    const/4 v2, 0x2

    if-lt v1, v2, :cond_d

    const/4 v2, 0x3

    if-gt v1, v2, :cond_d

    move/from16 v19, v3

    move-object/from16 v17, v6

    goto :goto_6

    :cond_d
    const/4 v2, 0x5

    if-lt v1, v2, :cond_e

    const/16 v2, 0x8

    if-gt v1, v2, :cond_e

    move/from16 v19, v3

    goto :goto_5

    :cond_e
    if-ne v1, v10, :cond_10

    const/4 v2, 0x0

    .line 1513
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move/from16 v19, v3

    const/16 v3, 0x30

    if-lt v10, v3, :cond_f

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x39

    if-gt v3, v2, :cond_f

    :goto_5
    move-object/from16 v18, v6

    goto :goto_6

    :cond_f
    move-object/from16 v16, v6

    goto :goto_6

    :cond_10
    move/from16 v19, v3

    :goto_6
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v14, v1

    move/from16 v3, v19

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v10, 0x4

    goto :goto_4

    :cond_11
    move/from16 v19, v3

    move-object v11, v13

    move-object/from16 v6, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    const/4 v1, 0x0

    .line 1526
    :goto_7
    iget-object v10, v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->script:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v10, v12, v6}, Lcom/ibm/icu/util/ULocale$AliasReplacer;->deleteOrReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1527
    iget-object v10, v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->region:Ljava/lang/String;

    invoke-static {v10, v7, v2}, Lcom/ibm/icu/util/ULocale$AliasReplacer;->deleteOrReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1528
    invoke-static {v9, v9, v3}, Lcom/ibm/icu/util/ULocale$AliasReplacer;->deleteOrReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1530
    iget-object v10, v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->language:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->script:Ljava/lang/String;

    .line 1531
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->region:Ljava/lang/String;

    .line 1532
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1533
    invoke-static {v9, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    if-nez v1, :cond_12

    :goto_8
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v19

    const/4 v1, 0x0

    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1539
    :cond_12
    iput-object v11, v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->language:Ljava/lang/String;

    .line 1540
    iput-object v6, v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->script:Ljava/lang/String;

    .line 1541
    iput-object v2, v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->region:Ljava/lang/String;

    if-eqz v9, :cond_14

    .line 1542
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    if-eqz v3, :cond_13

    .line 1543
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1544
    iget-object v2, v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    invoke-interface {v2, v8, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 1546
    :cond_13
    iget-object v2, v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1547
    iget-object v2, v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    .line 1548
    iput-object v2, v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    :cond_14
    :goto_9
    if-eqz v1, :cond_15

    .line 1552
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    :cond_15
    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method private replaceRegion()Z
    .locals 7

    .line 1572
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->region:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1573
    :cond_0
    sget-object v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->territoryAliasMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->region:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    return v1

    .line 1579
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 1580
    new-instance v2, Lcom/ibm/icu/util/ULocale;

    iget-object v4, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->language:Ljava/lang/String;

    iget-object v5, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->script:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v2, v4, v5, v6}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    invoke-static {v2}, Lcom/ibm/icu/util/ULocale;->addLikelySubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    .line 1583
    invoke-virtual {v2}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 1584
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 1585
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 1587
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 1590
    :goto_0
    iput-object v2, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->region:Ljava/lang/String;

    return v3

    :cond_4
    :goto_1
    return v1
.end method

.method private replaceScript()Z
    .locals 3

    .line 1596
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->script:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1597
    :cond_0
    sget-object v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->scriptAliasMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->script:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    return v1

    .line 1603
    :cond_1
    iput-object v0, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->script:Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private replaceSubdivision(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1637
    sget-object v0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->subdivisionAliasMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private replaceTransformedExtensions(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1642
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1643
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1647
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v4, ""

    const/4 v5, 0x0

    move-object v7, v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1648
    invoke-static {v9}, Lcom/ibm/icu/impl/locale/LanguageTag;->isTKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-nez v6, :cond_0

    add-int/lit8 v6, v8, -0x1

    .line 1654
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 1656
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1657
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1661
    :cond_1
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, v9

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_3

    .line 1664
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v9}, Lcom/ibm/icu/util/ULocale;->toUnicodeLocaleType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    :cond_3
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v8, v9

    goto :goto_0

    .line 1669
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 1671
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1672
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_5
    if-lez v6, :cond_6

    .line 1674
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 1675
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_7

    move-object v4, p1

    .line 1676
    :cond_7
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 1678
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    .line 1677
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->createCanonical(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    .line 1678
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    .line 1679
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a

    .line 1683
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_9

    .line 1684
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1687
    :cond_9
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1688
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->joinStrings(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1690
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private replaceVariant()Z
    .locals 5

    .line 1609
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 1610
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1611
    iget-object v2, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1612
    sget-object v3, Lcom/ibm/icu/util/ULocale$AliasReplacer;->variantAliasMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    .line 1621
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1622
    iget-object v1, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    invoke-interface {v1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const-string v0, "heploc"

    .line 1624
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1625
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    const-string v1, "hepburn"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1626
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1627
    iput-object v0, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method


# virtual methods
.method public replace()Ljava/lang/String;
    .locals 10

    .line 1239
    invoke-static {}, Lcom/ibm/icu/util/ULocale$AliasReplacer;->loadAliasData()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0xa

    const-string v6, ""

    const-string v7, "_"

    if-le v2, v5, :cond_1

    .line 1246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Have problem to resolve locale alias of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->language:Ljava/lang/String;

    iget-object v3, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->script:Ljava/lang/String;

    iget-object v4, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->region:Ljava/lang/String;

    iget-object v5, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    if-nez v5, :cond_0

    goto :goto_1

    .line 1249
    :cond_0
    invoke-static {v7, v5}, Lcom/ibm/icu/impl/Utility;->joinStrings(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 1248
    :goto_1
    invoke-static {v2, v3, v4, v6}, Lcom/ibm/icu/util/ULocale;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->extensions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1254
    :cond_1
    invoke-direct {p0, v1, v1, v1}, Lcom/ibm/icu/util/ULocale$AliasReplacer;->replaceLanguage(ZZZ)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1255
    invoke-direct {p0, v1, v1, v0}, Lcom/ibm/icu/util/ULocale$AliasReplacer;->replaceLanguage(ZZZ)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1256
    invoke-direct {p0, v1, v0, v1}, Lcom/ibm/icu/util/ULocale$AliasReplacer;->replaceLanguage(ZZZ)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1257
    invoke-direct {p0, v1, v0, v0}, Lcom/ibm/icu/util/ULocale$AliasReplacer;->replaceLanguage(ZZZ)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1258
    invoke-direct {p0, v0, v0, v1}, Lcom/ibm/icu/util/ULocale$AliasReplacer;->replaceLanguage(ZZZ)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1259
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$AliasReplacer;->replaceRegion()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1260
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$AliasReplacer;->replaceScript()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1261
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale$AliasReplacer;->replaceVariant()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_6

    .line 1270
    :cond_2
    iget-object v2, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->extensions:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    return-object v4

    .line 1273
    :cond_3
    iget-object v2, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->language:Ljava/lang/String;

    iget-object v5, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->script:Ljava/lang/String;

    iget-object v8, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->region:Ljava/lang/String;

    iget-object v9, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->variants:Ljava/util/List;

    if-nez v9, :cond_4

    goto :goto_2

    .line 1274
    :cond_4
    invoke-static {v7, v9}, Lcom/ibm/icu/impl/Utility;->joinStrings(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 1273
    :goto_2
    invoke-static {v2, v5, v8, v6}, Lcom/ibm/icu/util/ULocale;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1275
    iget-object v5, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->extensions:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 1277
    new-instance v5, Lcom/ibm/icu/util/ULocale;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->extensions:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 1278
    invoke-virtual {v5}, Lcom/ibm/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_3
    if-eqz v6, :cond_8

    .line 1279
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1280
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "rg"

    .line 1281
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "t"

    if-nez v8, :cond_6

    const-string v8, "sd"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1282
    :cond_6
    invoke-virtual {v5, v7}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1283
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1284
    invoke-direct {p0, v8}, Lcom/ibm/icu/util/ULocale$AliasReplacer;->replaceTransformedExtensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 1285
    :cond_7
    invoke-direct {p0, v8}, Lcom/ibm/icu/util/ULocale$AliasReplacer;->replaceSubdivision(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_4
    if-eqz v8, :cond_5

    .line 1287
    invoke-virtual {v5, v7, v8}, Lcom/ibm/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    move-object v5, v0

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_9

    .line 1293
    invoke-virtual {v5}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->extensions:Ljava/lang/String;

    goto :goto_5

    :cond_9
    move v1, v3

    .line 1296
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;->extensions:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v1

    :cond_a
    if-eqz v3, :cond_b

    return-object v2

    :cond_b
    return-object v4

    :cond_c
    :goto_6
    move v2, v4

    const/4 v3, 0x1

    goto/16 :goto_0
.end method
