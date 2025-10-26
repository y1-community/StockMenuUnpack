.class public final Lcom/ibm/icu/util/LocaleData;
.super Ljava/lang/Object;
.source "LocaleData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/LocaleData$PaperSize;,
        Lcom/ibm/icu/util/LocaleData$MeasurementSystem;
    }
.end annotation


# static fields
.field public static final ALT_QUOTATION_END:I = 0x3

.field public static final ALT_QUOTATION_START:I = 0x2

.field public static final DELIMITER_COUNT:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DELIMITER_TYPES:[Ljava/lang/String;

.field public static final ES_AUXILIARY:I = 0x1

.field public static final ES_COUNT:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ES_CURRENCY:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ES_INDEX:I = 0x2

.field public static final ES_PUNCTUATION:I = 0x4

.field public static final ES_STANDARD:I = 0x0

.field private static final LOCALE_DISPLAY_PATTERN:Ljava/lang/String; = "localeDisplayPattern"

.field private static final MEASUREMENT_SYSTEM:Ljava/lang/String; = "MeasurementSystem"

.field private static final PAPER_SIZE:Ljava/lang/String; = "PaperSize"

.field private static final PATTERN:Ljava/lang/String; = "pattern"

.field public static final QUOTATION_END:I = 0x1

.field public static final QUOTATION_START:I = 0x0

.field private static final SEPARATOR:Ljava/lang/String; = "separator"

.field private static gCLDRVersion:Lcom/ibm/icu/util/VersionInfo;


# instance fields
.field private bundle:Lcom/ibm/icu/impl/ICUResourceBundle;

.field private langBundle:Lcom/ibm/icu/impl/ICUResourceBundle;

.field private noSubstitute:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "quotationStart"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "quotationEnd"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "alternateQuotationStart"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "alternateQuotationEnd"

    aput-object v2, v0, v1

    .line 270
    sput-object v0, Lcom/ibm/icu/util/LocaleData;->DELIMITER_TYPES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCLDRVersion()Lcom/ibm/icu/util/VersionInfo;
    .locals 3

    .line 455
    sget-object v0, Lcom/ibm/icu/util/LocaleData;->gCLDRVersion:Lcom/ibm/icu/util/VersionInfo;

    if-nez v0, :cond_0

    .line 457
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "com/ibm/icu/impl/data/icudt69b"

    const-string v2, "supplementalData"

    invoke-static {v1, v2, v0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    const-string v1, "cldrVersion"

    .line 458
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 459
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/LocaleData;->gCLDRVersion:Lcom/ibm/icu/util/VersionInfo;

    .line 461
    :cond_0
    sget-object v0, Lcom/ibm/icu/util/LocaleData;->gCLDRVersion:Lcom/ibm/icu/util/VersionInfo;

    return-object v0
.end method

.method public static getExemplarSet(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 143
    invoke-static {p0}, Lcom/ibm/icu/util/LocaleData;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/LocaleData;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/util/LocaleData;->getExemplarSet(II)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public static getExemplarSet(Lcom/ibm/icu/util/ULocale;II)Lcom/ibm/icu/text/UnicodeSet;
    .locals 0

    .line 165
    invoke-static {p0}, Lcom/ibm/icu/util/LocaleData;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/LocaleData;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/LocaleData;->getExemplarSet(II)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance()Lcom/ibm/icu/util/LocaleData;
    .locals 1

    .line 241
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/util/LocaleData;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/LocaleData;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/LocaleData;
    .locals 2

    .line 226
    new-instance v0, Lcom/ibm/icu/util/LocaleData;

    invoke-direct {v0}, Lcom/ibm/icu/util/LocaleData;-><init>()V

    const-string v1, "com/ibm/icu/impl/data/icudt69b"

    .line 227
    invoke-static {v1, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;

    iput-object v1, v0, Lcom/ibm/icu/util/LocaleData;->bundle:Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v1, "com/ibm/icu/impl/data/icudt69b/lang"

    .line 228
    invoke-static {v1, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;

    iput-object p0, v0, Lcom/ibm/icu/util/LocaleData;->langBundle:Lcom/ibm/icu/impl/ICUResourceBundle;

    const/4 p0, 0x0

    .line 229
    iput-boolean p0, v0, Lcom/ibm/icu/util/LocaleData;->noSubstitute:Z

    return-object v0
.end method

.method public static final getMeasurementSystem(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/LocaleData$MeasurementSystem;
    .locals 1

    const-string v0, "MeasurementSystem"

    .line 361
    invoke-static {p0, v0}, Lcom/ibm/icu/util/LocaleData;->measurementTypeBundleForLocale(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    .line 363
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getInt()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 366
    :cond_0
    sget-object p0, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;->UK:Lcom/ibm/icu/util/LocaleData$MeasurementSystem;

    return-object p0

    .line 365
    :cond_1
    sget-object p0, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;->US:Lcom/ibm/icu/util/LocaleData$MeasurementSystem;

    return-object p0

    .line 364
    :cond_2
    sget-object p0, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;->SI:Lcom/ibm/icu/util/LocaleData$MeasurementSystem;

    return-object p0
.end method

.method public static final getPaperSize(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/LocaleData$PaperSize;
    .locals 3

    const-string v0, "PaperSize"

    .line 413
    invoke-static {p0, v0}, Lcom/ibm/icu/util/LocaleData;->measurementTypeBundleForLocale(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    .line 414
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object p0

    .line 415
    new-instance v0, Lcom/ibm/icu/util/LocaleData$PaperSize;

    const/4 v1, 0x0

    aget v1, p0, v1

    const/4 v2, 0x1

    aget p0, p0, v2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/ibm/icu/util/LocaleData$PaperSize;-><init>(IILcom/ibm/icu/util/LocaleData$1;)V

    return-object v0
.end method

.method private static measurementTypeBundleForLocale(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    .locals 3

    const/4 v0, 0x1

    .line 303
    invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getRegionForSupplementalData(Lcom/ibm/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    const-string v0, "com/ibm/icu/impl/data/icudt69b"

    const-string v1, "supplementalData"

    .line 305
    sget-object v2, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    const-string v1, "measurementData"

    .line 309
    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    .line 312
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    .line 313
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p0, "001"

    .line 316
    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    .line 317
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getDelimiter(I)Ljava/lang/String;
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/ibm/icu/util/LocaleData;->bundle:Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v1, "delimiters"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 289
    sget-object v1, Lcom/ibm/icu/util/LocaleData;->DELIMITER_TYPES:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p1

    .line 291
    iget-boolean v0, p0, Lcom/ibm/icu/util/LocaleData;->noSubstitute:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/util/LocaleData;->bundle:Lcom/ibm/icu/impl/ICUResourceBundle;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->isRoot()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 294
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExemplarSet(II)Lcom/ibm/icu/text/UnicodeSet;
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ExemplarCharacters"

    aput-object v2, v0, v1

    const-string v1, "AuxExemplarCharacters"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v3, "ExemplarCharactersIndex"

    aput-object v3, v0, v1

    const-string v1, "ExemplarCharactersCurrency"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v4, "ExemplarCharactersPunctuation"

    aput-object v4, v0, v1

    const/4 v1, 0x0

    if-ne p2, v3, :cond_1

    .line 199
    iget-boolean p1, p0, Lcom/ibm/icu/util/LocaleData;->noSubstitute:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/ibm/icu/text/UnicodeSet;->EMPTY:Lcom/ibm/icu/text/UnicodeSet;

    :goto_0
    return-object v1

    .line 203
    :cond_1
    :try_start_0
    aget-object p2, v0, p2

    .line 204
    iget-object v0, p0, Lcom/ibm/icu/util/LocaleData;->bundle:Lcom/ibm/icu/impl/ICUResourceBundle;

    invoke-virtual {v0, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 206
    iget-boolean v0, p0, Lcom/ibm/icu/util/LocaleData;->noSubstitute:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/util/LocaleData;->bundle:Lcom/ibm/icu/impl/ICUResourceBundle;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->isRoot()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 209
    :cond_2
    invoke-virtual {p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object p2

    .line 210
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    or-int/2addr p1, v2

    invoke-direct {v0, p2, p1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    nop

    .line 214
    iget-boolean p1, p0, Lcom/ibm/icu/util/LocaleData;->noSubstitute:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/ibm/icu/text/UnicodeSet;->EMPTY:Lcom/ibm/icu/text/UnicodeSet;

    :goto_1
    return-object v1

    :catch_1
    move-exception p1

    .line 212
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getLocaleDisplayPattern()Ljava/lang/String;
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/ibm/icu/util/LocaleData;->langBundle:Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v1, "localeDisplayPattern"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v1, "pattern"

    .line 425
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocaleSeparator()Ljava/lang/String;
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/ibm/icu/util/LocaleData;->langBundle:Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v1, "localeDisplayPattern"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v1, "separator"

    .line 438
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{0}"

    .line 439
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "{1}"

    .line 440
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    if-gt v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x3

    .line 442
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNoSubstitute()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/ibm/icu/util/LocaleData;->noSubstitute:Z

    return v0
.end method

.method public setNoSubstitute(Z)V
    .locals 0

    .line 254
    iput-boolean p1, p0, Lcom/ibm/icu/util/LocaleData;->noSubstitute:Z

    return-void
.end method
