.class final Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;
.super Ljava/lang/Object;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JDKLocaleHelper"
.end annotation


# static fields
.field private static eDISPLAY:Ljava/lang/Object; = null

.field private static eFORMAT:Ljava/lang/Object; = null

.field private static hasLocaleCategories:Z = false

.field private static mGetDefault:Ljava/lang/reflect/Method;

.field private static mSetDefault:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 4265
    :try_start_0
    const-class v0, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 4266
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 4267
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "java.util.Locale$Category"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_1
    if-nez v5, :cond_2

    goto :goto_4

    .line 4275
    :cond_2
    const-class v0, Ljava/util/Locale;

    const-string v1, "getDefault"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v5, v6, v2

    invoke-virtual {v0, v1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->mGetDefault:Ljava/lang/reflect/Method;

    .line 4276
    const-class v0, Ljava/util/Locale;

    const-string v1, "setDefault"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    aput-object v5, v6, v2

    const-class v7, Ljava/util/Locale;

    aput-object v7, v6, v3

    invoke-virtual {v0, v1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->mSetDefault:Ljava/lang/reflect/Method;

    const-string v0, "name"

    .line 4278
    move-object v1, v4

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v5, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4279
    invoke-virtual {v5}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    .line 4280
    array-length v5, v1

    :goto_2
    if-ge v2, v5, :cond_5

    aget-object v6, v1, v2

    .line 4281
    move-object v7, v4

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "DISPLAY"

    .line 4282
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4283
    sput-object v6, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->eDISPLAY:Ljava/lang/Object;

    goto :goto_3

    :cond_3
    const-string v8, "FORMAT"

    .line 4284
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4285
    sput-object v6, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->eFORMAT:Ljava/lang/Object;

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4288
    :cond_5
    sget-object v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->eDISPLAY:Ljava/lang/Object;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->eFORMAT:Ljava/lang/Object;

    if-nez v0, :cond_6

    goto :goto_4

    .line 4292
    :cond_6
    sput-boolean v3, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    :goto_4
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault(Lcom/ibm/icu/util/ULocale$Category;)Ljava/util/Locale;
    .locals 4

    .line 4474
    sget-boolean v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z

    if-eqz v0, :cond_2

    .line 4476
    sget-object v0, Lcom/ibm/icu/util/ULocale$3;->$SwitchMap$com$ibm$icu$util$ULocale$Category:[I

    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale$Category;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    move-object p0, v1

    goto :goto_0

    .line 4481
    :cond_0
    sget-object p0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->eFORMAT:Ljava/lang/Object;

    goto :goto_0

    .line 4478
    :cond_1
    sget-object p0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->eDISPLAY:Ljava/lang/Object;

    :goto_0
    if-eqz p0, :cond_2

    .line 4486
    :try_start_0
    sget-object v2, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->mGetDefault:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v0, v3

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 4496
    :catch_0
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static hasLocaleCategories()Z
    .locals 1

    .line 4307
    sget-boolean v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z

    return v0
.end method

.method public static setDefault(Lcom/ibm/icu/util/ULocale$Category;Ljava/util/Locale;)V
    .locals 5

    .line 4500
    sget-boolean v0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z

    if-eqz v0, :cond_2

    .line 4502
    sget-object v0, Lcom/ibm/icu/util/ULocale$3;->$SwitchMap$com$ibm$icu$util$ULocale$Category:[I

    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale$Category;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    move-object p0, v2

    goto :goto_0

    .line 4507
    :cond_0
    sget-object p0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->eFORMAT:Ljava/lang/Object;

    goto :goto_0

    .line 4504
    :cond_1
    sget-object p0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->eDISPLAY:Ljava/lang/Object;

    :goto_0
    if-eqz p0, :cond_2

    .line 4512
    :try_start_0
    sget-object v3, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->mSetDefault:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v0, v4

    aput-object p1, v0, v1

    invoke-virtual {v3, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public static toLocale(Lcom/ibm/icu/util/ULocale;)Ljava/util/Locale;
    .locals 3

    .line 4441
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4442
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 4449
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 4462
    invoke-static {v0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4463
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    .line 4468
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public static toULocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
    .locals 12

    .line 4311
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 4313
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 4314
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    .line 4319
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v3

    .line 4320
    invoke-virtual {p0}, Ljava/util/Locale;->getExtensionKeys()Ljava/util/Set;

    move-result-object v4

    .line 4321
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_8

    .line 4322
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v6

    move-object v7, v5

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Character;

    .line 4323
    invoke-virtual {v8}, Ljava/lang/Character;->charValue()C

    move-result v9

    const/16 v10, 0x75

    if-ne v9, v10, :cond_6

    .line 4328
    invoke-virtual {p0}, Ljava/util/Locale;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object v8

    .line 4329
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 4330
    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7}, Ljava/util/TreeSet;-><init>()V

    .line 4331
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 4332
    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4337
    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v8

    .line 4338
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 4339
    invoke-virtual {p0, v9}, Ljava/util/Locale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    const-string v11, "va"

    .line 4341
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 4343
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    move-object v2, v10

    goto :goto_2

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    if-nez v5, :cond_5

    .line 4346
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 4348
    :cond_5
    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 4353
    :cond_6
    invoke-virtual {v8}, Ljava/lang/Character;->charValue()C

    move-result v9

    invoke-virtual {p0, v9}, Ljava/util/Locale;->getExtension(C)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    if-nez v5, :cond_7

    .line 4356
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 4358
    :cond_7
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    move-object v5, v6

    move-object v7, v5

    :cond_9
    const-string v4, "no"

    .line 4370
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "NO"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "NY"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v0, "nn"

    const-string v2, ""

    .line 4376
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4378
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v8, 0x5f

    if-lez v0, :cond_b

    .line 4379
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4380
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4383
    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 4384
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4385
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4388
    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 4389
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 4390
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4392
    :cond_d
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4393
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    if-eqz v7, :cond_12

    .line 4398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4399
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4400
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_f

    const/16 v3, 0x2d

    .line 4401
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4403
    :cond_f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_10
    if-nez v5, :cond_11

    .line 4406
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    move-object v5, v1

    .line 4408
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "attribute"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    if-eqz v5, :cond_16

    const/16 v0, 0x40

    .line 4412
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 4414
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4415
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4416
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4418
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_14

    .line 4420
    invoke-static {v3}, Lcom/ibm/icu/util/ULocale;->toLegacyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4422
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_13

    const-string v2, "yes"

    :cond_13
    invoke-static {v3, v2}, Lcom/ibm/icu/util/ULocale;->toLegacyType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_14
    if-eqz v0, :cond_15

    const/16 v5, 0x3b

    .line 4426
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_15
    const/4 v0, 0x1

    .line 4430
    :goto_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    .line 4431
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4432
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 4436
    :cond_16
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v6}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;Lcom/ibm/icu/util/ULocale$1;)V

    return-object v0
.end method
