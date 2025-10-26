.class public Lcom/ibm/icu/util/JapaneseCalendar;
.super Lcom/ibm/icu/util/GregorianCalendar;
.source "JapaneseCalendar.java"


# static fields
.field public static final CURRENT_ERA:I

.field private static final ERA_RULES:Lcom/ibm/icu/impl/EraRules;

.field private static final GREGORIAN_EPOCH:I = 0x7b2

.field public static final HEISEI:I

.field public static final MEIJI:I

.field public static final REIWA:I

.field public static final SHOWA:I

.field public static final TAISHO:I

.field private static final serialVersionUID:J = -0x29511a714d92d973L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 234
    sget-object v0, Lcom/ibm/icu/impl/CalType;->JAPANESE:Lcom/ibm/icu/impl/CalType;

    invoke-static {}, Lcom/ibm/icu/util/JapaneseCalendar;->enableTentativeEra()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/EraRules;->getInstance(Lcom/ibm/icu/impl/CalType;Z)Lcom/ibm/icu/impl/EraRules;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/JapaneseCalendar;->ERA_RULES:Lcom/ibm/icu/impl/EraRules;

    const/16 v1, 0xe8

    .line 398
    sput v1, Lcom/ibm/icu/util/JapaneseCalendar;->MEIJI:I

    const/16 v1, 0xe9

    .line 399
    sput v1, Lcom/ibm/icu/util/JapaneseCalendar;->TAISHO:I

    const/16 v1, 0xea

    .line 400
    sput v1, Lcom/ibm/icu/util/JapaneseCalendar;->SHOWA:I

    const/16 v1, 0xeb

    .line 401
    sput v1, Lcom/ibm/icu/util/JapaneseCalendar;->HEISEI:I

    const/16 v1, 0xec

    .line 402
    sput v1, Lcom/ibm/icu/util/JapaneseCalendar;->REIWA:I

    .line 403
    invoke-virtual {v0}, Lcom/ibm/icu/impl/EraRules;->getCurrentEraIndex()I

    move-result v0

    sput v0, Lcom/ibm/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 195
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(III)V

    .line 196
    sget p1, Lcom/ibm/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/ibm/icu/util/JapaneseCalendar;->set(II)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 176
    invoke-direct {p0, p2, p3, p4}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(III)V

    const/4 p2, 0x0

    .line 177
    invoke-virtual {p0, p2, p1}, Lcom/ibm/icu/util/JapaneseCalendar;->set(II)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    .line 222
    invoke-direct/range {p0 .. p6}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(IIIIII)V

    .line 223
    sget p1, Lcom/ibm/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/ibm/icu/util/JapaneseCalendar;->set(II)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/ibm/icu/util/JapaneseCalendar;-><init>()V

    .line 150
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/JapaneseCalendar;->setTime(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public static enableTentativeEra()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "ICU_ENABLE_TENTATIVE_ERA"

    .line 260
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 262
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "true"

    .line 266
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, "jdk.calendar.japanese.supplemental.era"

    .line 268
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getActualMaximum(I)I
    .locals 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 466
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/JapaneseCalendar;->get(I)I

    move-result v1

    .line 467
    sget-object v2, Lcom/ibm/icu/util/JapaneseCalendar;->ERA_RULES:Lcom/ibm/icu/impl/EraRules;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/EraRules;->getNumberOfEras()I

    move-result v3

    sub-int/2addr v3, v0

    if-ne v1, v3, :cond_0

    const/4 p1, 0x3

    .line 469
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/util/JapaneseCalendar;->handleGetLimit(II)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    .line 471
    invoke-virtual {v2, v3, v4}, Lcom/ibm/icu/impl/EraRules;->getStartDate(I[I)[I

    move-result-object v3

    .line 472
    aget p1, v3, p1

    .line 473
    aget v4, v3, v0

    const/4 v5, 0x2

    .line 474
    aget v3, v3, v5

    .line 476
    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/EraRules;->getStartYear(I)I

    move-result v1

    sub-int/2addr p1, v1

    add-int/2addr p1, v0

    if-ne v4, v0, :cond_1

    if-ne v3, v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    return p1

    .line 484
    :cond_2
    invoke-super {p0, p1}, Lcom/ibm/icu/util/GregorianCalendar;->getActualMaximum(I)I

    move-result p1

    return p1
.end method

.method protected getDefaultDayInMonth(II)I
    .locals 4

    .line 328
    sget v0, Lcom/ibm/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/util/JapaneseCalendar;->internalGet(II)I

    move-result v0

    .line 329
    sget-object v2, Lcom/ibm/icu/util/JapaneseCalendar;->ERA_RULES:Lcom/ibm/icu/impl/EraRules;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/ibm/icu/impl/EraRules;->getStartDate(I[I)[I

    move-result-object v0

    .line 331
    aget v1, v0, v1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    .line 332
    aget v2, v0, v1

    sub-int/2addr v2, v1

    if-ne p2, v2, :cond_0

    const/4 p1, 0x2

    .line 333
    aget p1, v0, p1

    return p1

    .line 337
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ibm/icu/util/GregorianCalendar;->getDefaultDayInMonth(II)I

    move-result p1

    return p1
.end method

.method protected getDefaultMonthInYear(I)I
    .locals 4

    .line 304
    sget v0, Lcom/ibm/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/util/JapaneseCalendar;->internalGet(II)I

    move-result v0

    .line 308
    sget-object v2, Lcom/ibm/icu/util/JapaneseCalendar;->ERA_RULES:Lcom/ibm/icu/impl/EraRules;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/ibm/icu/impl/EraRules;->getStartDate(I[I)[I

    move-result-object v0

    .line 309
    aget v1, v0, v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    .line 310
    aget v0, v0, p1

    sub-int/2addr v0, p1

    return v0

    .line 313
    :cond_0
    invoke-super {p0, p1}, Lcom/ibm/icu/util/GregorianCalendar;->getDefaultMonthInYear(I)I

    move-result p1

    return p1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "japanese"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 4

    .line 345
    invoke-super {p0, p1}, Lcom/ibm/icu/util/GregorianCalendar;->handleComputeFields(I)V

    const/16 p1, 0x13

    .line 346
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/JapaneseCalendar;->internalGet(I)I

    move-result p1

    .line 347
    sget-object v0, Lcom/ibm/icu/util/JapaneseCalendar;->ERA_RULES:Lcom/ibm/icu/impl/EraRules;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/JapaneseCalendar;->internalGet(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/ibm/icu/util/JapaneseCalendar;->internalGet(I)I

    move-result v3

    invoke-virtual {v0, p1, v1, v3}, Lcom/ibm/icu/impl/EraRules;->getEraIndex(III)I

    move-result v1

    const/4 v3, 0x0

    .line 349
    invoke-virtual {p0, v3, v1}, Lcom/ibm/icu/util/JapaneseCalendar;->internalSet(II)V

    .line 350
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/EraRules;->getStartYear(I)I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, v2

    invoke-virtual {p0, v2, p1}, Lcom/ibm/icu/util/JapaneseCalendar;->internalSet(II)V

    return-void
.end method

.method protected handleGetExtendedYear()I
    .locals 5

    const/16 v0, 0x13

    const/4 v1, 0x1

    .line 282
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/JapaneseCalendar;->newerField(II)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v0, :cond_0

    .line 283
    invoke-virtual {p0, v0, v3}, Lcom/ibm/icu/util/JapaneseCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v0, :cond_0

    const/16 v1, 0x7b2

    .line 284
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/JapaneseCalendar;->internalGet(II)I

    move-result v0

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/ibm/icu/util/JapaneseCalendar;->internalGet(II)I

    move-result v0

    sget-object v2, Lcom/ibm/icu/util/JapaneseCalendar;->ERA_RULES:Lcom/ibm/icu/impl/EraRules;

    sget v4, Lcom/ibm/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    .line 288
    invoke-virtual {p0, v3, v4}, Lcom/ibm/icu/util/JapaneseCalendar;->internalGet(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ibm/icu/impl/EraRules;->getStartYear(I)I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method protected handleGetLimit(II)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    .line 435
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/ibm/icu/util/GregorianCalendar;->handleGetLimit(II)I

    move-result p1

    return p1

    .line 430
    :cond_1
    invoke-super {p0, p1, v0}, Lcom/ibm/icu/util/GregorianCalendar;->handleGetLimit(II)I

    move-result p1

    sget-object p2, Lcom/ibm/icu/util/JapaneseCalendar;->ERA_RULES:Lcom/ibm/icu/impl/EraRules;

    sget v0, Lcom/ibm/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    invoke-virtual {p2, v0}, Lcom/ibm/icu/impl/EraRules;->getStartYear(I)I

    move-result p2

    sub-int/2addr p1, p2

    return p1

    :cond_2
    return v0

    :cond_3
    if-eqz p2, :cond_5

    if-ne p2, v0, :cond_4

    goto :goto_1

    .line 420
    :cond_4
    sget-object p1, Lcom/ibm/icu/util/JapaneseCalendar;->ERA_RULES:Lcom/ibm/icu/impl/EraRules;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/EraRules;->getNumberOfEras()I

    move-result p1

    sub-int/2addr p1, v0

    return p1

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public haveDefaultCentury()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
