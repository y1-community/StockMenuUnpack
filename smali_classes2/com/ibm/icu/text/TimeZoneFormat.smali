.class public Lcom/ibm/icu/text/TimeZoneFormat;
.super Lcom/ibm/icu/text/UFormat;
.source "TimeZoneFormat.java"

# interfaces
.implements Lcom/ibm/icu/util/Freezable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/TimeZoneFormat$TimeZoneFormatCache;,
        Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;,
        Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;,
        Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;,
        Lcom/ibm/icu/text/TimeZoneFormat$TimeType;,
        Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;,
        Lcom/ibm/icu/text/TimeZoneFormat$Style;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/text/UFormat;",
        "Lcom/ibm/icu/util/Freezable<",
        "Lcom/ibm/icu/text/TimeZoneFormat;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ALL_GENERIC_NAME_TYPES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/text/TimeZoneNames$NameType;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALT_GMT_STRINGS:[Ljava/lang/String;

.field private static final ASCII_DIGITS:Ljava/lang/String; = "0123456789"

.field private static final DEFAULT_GMT_DIGITS:[Ljava/lang/String;

.field private static final DEFAULT_GMT_OFFSET_SEP:C = ':'

.field private static final DEFAULT_GMT_PATTERN:Ljava/lang/String; = "GMT{0}"

.field private static final DEFAULT_GMT_ZERO:Ljava/lang/String; = "GMT"

.field private static final ISO8601_UTC:Ljava/lang/String; = "Z"

.field private static final ISO_LOCAL_STYLE_FLAG:I = 0x100

.field private static final ISO_Z_STYLE_FLAG:I = 0x80

.field private static final MAX_OFFSET:I = 0x5265c00

.field private static final MAX_OFFSET_HOUR:I = 0x17

.field private static final MAX_OFFSET_MINUTE:I = 0x3b

.field private static final MAX_OFFSET_SECOND:I = 0x3b

.field private static final MILLIS_PER_HOUR:I = 0x36ee80

.field private static final MILLIS_PER_MINUTE:I = 0xea60

.field private static final MILLIS_PER_SECOND:I = 0x3e8

.field private static final PARSE_GMT_OFFSET_TYPES:[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field private static volatile SHORT_ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TZID_GMT:Ljava/lang/String; = "Etc/GMT"

.field private static final UNKNOWN_LOCATION:Ljava/lang/String; = "Unknown"

.field private static final UNKNOWN_OFFSET:I = 0x7fffffff

.field private static final UNKNOWN_SHORT_ZONE_ID:Ljava/lang/String; = "unk"

.field private static final UNKNOWN_ZONE_ID:Ljava/lang/String; = "Etc/Unknown"

.field private static volatile ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static _tzfCache:Lcom/ibm/icu/text/TimeZoneFormat$TimeZoneFormatCache; = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x1fa89ded0bc7456eL


# instance fields
.field private transient _abuttingOffsetHoursAndMinutes:Z

.field private volatile transient _frozen:Z

.field private _gmtOffsetDigits:[Ljava/lang/String;

.field private transient _gmtOffsetPatternItems:[[Ljava/lang/Object;

.field private _gmtOffsetPatterns:[Ljava/lang/String;

.field private _gmtPattern:Ljava/lang/String;

.field private transient _gmtPatternPrefix:Ljava/lang/String;

.field private transient _gmtPatternSuffix:Ljava/lang/String;

.field private _gmtZeroFormat:Ljava/lang/String;

.field private volatile transient _gnames:Lcom/ibm/icu/impl/TimeZoneGenericNames;

.field private _locale:Lcom/ibm/icu/util/ULocale;

.field private _parseAllStyles:Z

.field private _parseTZDBNames:Z

.field private transient _region:Ljava/lang/String;

.field private volatile transient _tzdbNames:Lcom/ibm/icu/text/TimeZoneNames;

.field private _tznames:Lcom/ibm/icu/text/TimeZoneNames;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "GMT"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "UTC"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "UT"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 362
    sput-object v1, Lcom/ibm/icu/text/TimeZoneFormat;->ALT_GMT_STRINGS:[Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v3

    const-string v2, "1"

    aput-object v2, v1, v4

    const-string v2, "2"

    aput-object v2, v1, v5

    const-string v2, "3"

    aput-object v2, v1, v0

    const-string v2, "4"

    const/4 v6, 0x4

    aput-object v2, v1, v6

    const-string v2, "5"

    const/4 v7, 0x5

    aput-object v2, v1, v7

    const-string v2, "6"

    const/4 v8, 0x6

    aput-object v2, v1, v8

    const-string v2, "7"

    const/4 v9, 0x7

    aput-object v2, v1, v9

    const/16 v2, 0x8

    const-string v10, "8"

    aput-object v10, v1, v2

    const/16 v2, 0x9

    const-string v10, "9"

    aput-object v10, v1, v2

    .line 366
    sput-object v1, Lcom/ibm/icu/text/TimeZoneFormat;->DEFAULT_GMT_DIGITS:[Ljava/lang/String;

    new-array v1, v8, [Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 377
    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    aput-object v2, v1, v0

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    aput-object v2, v1, v7

    sput-object v1, Lcom/ibm/icu/text/TimeZoneFormat;->PARSE_GMT_OFFSET_TYPES:[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 397
    new-instance v1, Lcom/ibm/icu/text/TimeZoneFormat$TimeZoneFormatCache;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ibm/icu/text/TimeZoneFormat$TimeZoneFormatCache;-><init>(Lcom/ibm/icu/text/TimeZoneFormat$1;)V

    sput-object v1, Lcom/ibm/icu/text/TimeZoneFormat;->_tzfCache:Lcom/ibm/icu/text/TimeZoneFormat$TimeZoneFormatCache;

    .line 400
    sget-object v1, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v10, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v11, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v12, Lcom/ibm/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-static {v1, v2, v10, v11, v12}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/text/TimeZoneFormat;->ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;

    .line 407
    sget-object v1, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v2, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v10, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v1, v2, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/text/TimeZoneFormat;->ALL_GENERIC_NAME_TYPES:Ljava/util/EnumSet;

    new-array v1, v9, [Ljava/io/ObjectStreamField;

    .line 3154
    new-instance v2, Ljava/io/ObjectStreamField;

    const-class v9, Lcom/ibm/icu/util/ULocale;

    const-string v10, "_locale"

    invoke-direct {v2, v10, v9}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-class v3, Lcom/ibm/icu/text/TimeZoneNames;

    const-string v9, "_tznames"

    invoke-direct {v2, v9, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-class v3, Ljava/lang/String;

    const-string v4, "_gmtPattern"

    invoke-direct {v2, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-class v3, [Ljava/lang/String;

    const-string v4, "_gmtOffsetPatterns"

    invoke-direct {v2, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v0

    new-instance v0, Ljava/io/ObjectStreamField;

    const-class v2, [Ljava/lang/String;

    const-string v3, "_gmtOffsetDigits"

    invoke-direct {v0, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v0, v1, v6

    new-instance v0, Ljava/io/ObjectStreamField;

    const-class v2, Ljava/lang/String;

    const-string v3, "_gmtZeroFormat"

    invoke-direct {v0, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v0, v1, v7

    new-instance v0, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "_parseAllStyles"

    invoke-direct {v0, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v0, v1, v8

    sput-object v1, Lcom/ibm/icu/text/TimeZoneFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method protected constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 6

    .line 419
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    .line 420
    iput-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    .line 421
    invoke-static {p1}, Lcom/ibm/icu/text/TimeZoneNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    const-string v0, "GMT"

    .line 426
    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com/ibm/icu/impl/data/icudt69b/zone"

    .line 429
    invoke-static {v1, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v2, "zoneStrings/gmtFormat"

    .line 432
    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v0

    :goto_0
    :try_start_2
    const-string v3, "zoneStrings/hourFormat"

    .line 437
    invoke-virtual {v1, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :try_start_3
    const-string v3, "zoneStrings/gmtZeroFormat"

    .line 442
    invoke-virtual {v1, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    :catch_3
    move-object v1, v0

    :goto_1
    if-nez v0, :cond_0

    const-string v0, "GMT{0}"

    .line 453
    :cond_0
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->initGMTPattern(Ljava/lang/String;)V

    .line 455
    invoke-static {}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    const-string v4, ";"

    .line 457
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 458
    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/ibm/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 459
    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object v4, v1, v2

    aput-object v4, v0, v3

    .line 460
    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/ibm/icu/text/TimeZoneFormat;->expandOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 461
    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/ibm/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 462
    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v2

    aget-object v4, v1, v3

    aput-object v4, v0, v2

    .line 463
    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v2

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/ibm/icu/text/TimeZoneFormat;->expandOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_3

    .line 465
    :cond_1
    invoke-static {}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v1

    array-length v3, v1

    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 466
    invoke-virtual {v4}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v5

    invoke-static {v4}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->access$100(Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 469
    :cond_2
    :goto_3
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->initGMTOffsetPatterns([Ljava/lang/String;)V

    .line 471
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat;->DEFAULT_GMT_DIGITS:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    .line 472
    invoke-static {p1}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object p1

    .line 473
    invoke-virtual {p1}, Lcom/ibm/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v0

    if-nez v0, :cond_3

    .line 475
    invoke-virtual {p1}, Lcom/ibm/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ibm/icu/text/TimeZoneFormat;->toCodePoints(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private appendOffsetDigits(Ljava/lang/StringBuilder;II)V
    .locals 6

    const/4 v0, 0x2

    const/16 v1, 0xa

    if-lt p2, v1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    sub-int v5, p3, v2

    if-ge v4, v5, :cond_1

    .line 2168
    iget-object v5, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-ne v2, v0, :cond_2

    .line 2171
    iget-object p3, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    div-int/lit8 v0, p2, 0xa

    aget-object p3, p3, v0

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2173
    :cond_2
    iget-object p3, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    rem-int/2addr p2, v1

    aget-object p2, p3, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private checkAbuttingHoursAndMinutes()V
    .locals 11

    const/4 v0, 0x0

    .line 1962
    iput-boolean v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_abuttingOffsetHoursAndMinutes:Z

    .line 1963
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 1965
    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v8, v4, v6

    .line 1966
    instance-of v9, v8, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    if-eqz v9, :cond_1

    .line 1967
    check-cast v8, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    .line 1969
    iput-boolean v9, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_abuttingOffsetHoursAndMinutes:Z

    goto :goto_2

    .line 1970
    :cond_0
    invoke-virtual {v8}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;->getType()C

    move-result v8

    const/16 v10, 0x48

    if-ne v8, v10, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static expandOffsetPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "mm"

    .line 2120
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    .line 2125
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 2127
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ":"

    .line 2129
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ss"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2122
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Bad time zone hour pattern data"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private formatExemplarLocation(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;
    .locals 1

    .line 1804
    invoke-virtual {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneNames()Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object v0

    invoke-static {p1}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1807
    invoke-virtual {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneNames()Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object p1

    const-string v0, "Etc/Unknown"

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Unknown"

    :cond_0
    return-object p1
.end method

.method private formatOffsetISO8601(IZZZZ)Ljava/lang/String;
    .locals 6

    if-gez p1, :cond_0

    neg-int v0, p1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    const/16 v1, 0x3e8

    const v2, 0xea60

    if-eqz p3, :cond_2

    if-lt v0, v1, :cond_1

    if-eqz p5, :cond_2

    if-ge v0, v2, :cond_2

    :cond_1
    const-string p1, "Z"

    return-object p1

    :cond_2
    if-eqz p4, :cond_3

    .line 1716
    sget-object p3, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->H:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    goto :goto_1

    :cond_3
    sget-object p3, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HM:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    :goto_1
    if-eqz p5, :cond_4

    .line 1717
    sget-object p4, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HM:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    goto :goto_2

    :cond_4
    sget-object p4, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HMS:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    :goto_2
    if-eqz p2, :cond_5

    const/4 p2, 0x0

    goto :goto_3

    :cond_5
    const/16 p2, 0x3a

    .line 1718
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    :goto_3
    const p5, 0x5265c00

    if-ge v0, p5, :cond_d

    const/4 p5, 0x3

    new-array p5, p5, [I

    const v3, 0x36ee80

    .line 1728
    div-int v4, v0, v3

    const/4 v5, 0x0

    aput v4, p5, v5

    .line 1729
    rem-int/2addr v0, v3

    .line 1730
    div-int v3, v0, v2

    const/4 v4, 0x1

    aput v3, p5, v4

    .line 1731
    rem-int/2addr v0, v2

    const/4 v2, 0x2

    .line 1732
    div-int/2addr v0, v1

    aput v0, p5, v2

    .line 1738
    invoke-virtual {p4}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result p4

    .line 1739
    :goto_4
    invoke-virtual {p3}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result v0

    if-le p4, v0, :cond_7

    .line 1740
    aget v0, p5, p4

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 p4, p4, -0x1

    goto :goto_4

    .line 1746
    :cond_7
    :goto_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x2b

    if-gez p1, :cond_9

    const/4 p1, 0x0

    :goto_6
    if-gt p1, p4, :cond_9

    .line 1751
    aget v1, p5, p1

    if-eqz v1, :cond_8

    const/16 v0, 0x2d

    goto :goto_7

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 1757
    :cond_9
    :goto_7
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_8
    if-gt v5, p4, :cond_c

    if-eqz p2, :cond_a

    if-eqz v5, :cond_a

    .line 1761
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1763
    :cond_a
    aget p1, p5, v5

    const/16 v0, 0xa

    if-ge p1, v0, :cond_b

    const/16 p1, 0x30

    .line 1764
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1766
    :cond_b
    aget p1, p5, v5

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 1768
    :cond_c
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1724
    :cond_d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Offset out of range :"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw p2

    :goto_a
    goto :goto_9
.end method

.method private formatOffsetLocalizedGMT(IZ)Ljava/lang/String;
    .locals 10

    if-nez p1, :cond_0

    .line 1638
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    return-object p1

    .line 1641
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez p1, :cond_1

    neg-int p1, p1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    const v4, 0x36ee80

    .line 1648
    div-int v5, p1, v4

    .line 1649
    rem-int/2addr p1, v4

    const v4, 0xea60

    .line 1650
    div-int v6, p1, v4

    .line 1651
    rem-int/2addr p1, v4

    .line 1652
    div-int/lit16 v4, p1, 0x3e8

    const/16 v7, 0x17

    if-gt v5, v7, :cond_10

    const/16 v7, 0x3b

    if-gt v6, v7, :cond_10

    if-gt v4, v7, :cond_10

    if-eqz v3, :cond_5

    if-eqz v4, :cond_2

    .line 1661
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object p1, p1, v3

    goto :goto_3

    :cond_2
    if-nez v6, :cond_4

    if-nez p2, :cond_3

    goto :goto_1

    .line 1665
    :cond_3
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object p1, p1, v3

    goto :goto_3

    .line 1663
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object p1, p1, v3

    goto :goto_3

    :cond_5
    if-eqz v4, :cond_6

    .line 1669
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object p1, p1, v3

    goto :goto_3

    :cond_6
    if-nez v6, :cond_8

    if-nez p2, :cond_7

    goto :goto_2

    .line 1673
    :cond_7
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object p1, p1, v3

    goto :goto_3

    .line 1671
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object p1, p1, v3

    .line 1678
    :goto_3
    iget-object v3, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    array-length v3, p1

    :goto_4
    if-ge v1, v3, :cond_f

    aget-object v7, p1, v1

    .line 1681
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_9

    .line 1683
    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1684
    :cond_9
    instance-of v8, v7, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    if-eqz v8, :cond_e

    .line 1686
    check-cast v7, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    .line 1687
    invoke-virtual {v7}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;->getType()C

    move-result v7

    const/16 v8, 0x48

    const/4 v9, 0x2

    if-eq v7, v8, :cond_c

    const/16 v8, 0x6d

    if-eq v7, v8, :cond_b

    const/16 v8, 0x73

    if-eq v7, v8, :cond_a

    goto :goto_5

    .line 1695
    :cond_a
    invoke-direct {p0, v0, v4, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->appendOffsetDigits(Ljava/lang/StringBuilder;II)V

    goto :goto_5

    .line 1692
    :cond_b
    invoke-direct {p0, v0, v6, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->appendOffsetDigits(Ljava/lang/StringBuilder;II)V

    goto :goto_5

    :cond_c
    if-eqz p2, :cond_d

    const/4 v9, 0x1

    .line 1689
    :cond_d
    invoke-direct {p0, v0, v5, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->appendOffsetDigits(Ljava/lang/StringBuilder;II)V

    :cond_e
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1700
    :cond_f
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1701
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1655
    :cond_10
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Offset out of range :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p2

    :goto_7
    goto :goto_6
.end method

.method private formatSpecific(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/text/TimeZoneNames$NameType;Lcom/ibm/icu/text/TimeZoneNames$NameType;JLcom/ibm/icu/util/Output;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/TimeZone;",
            "Lcom/ibm/icu/text/TimeZoneNames$NameType;",
            "Lcom/ibm/icu/text/TimeZoneNames$NameType;",
            "J",
            "Lcom/ibm/icu/util/Output<",
            "Lcom/ibm/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1785
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p4, p5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1787
    invoke-virtual {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneNames()Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object p2

    invoke-static {p1}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/ibm/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1788
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneNames()Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object p3

    invoke-static {p1}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2, p4, p5}, Lcom/ibm/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    if-eqz p6, :cond_2

    if-eqz v0, :cond_1

    .line 1791
    sget-object p2, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    :goto_1
    iput-object p2, p6, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    :cond_2
    return-object p1
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneFormat;
    .locals 1

    if-eqz p0, :cond_0

    .line 493
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat;->_tzfCache:Lcom/ibm/icu/text/TimeZoneFormat$TimeZoneFormatCache;

    invoke-virtual {v0, p0, p0}, Lcom/ibm/icu/text/TimeZoneFormat$TimeZoneFormatCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/TimeZoneFormat;

    return-object p0

    .line 491
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "locale is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/TimeZoneFormat;
    .locals 0

    .line 508
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object p0

    return-object p0
.end method

.method private getTZDBTimeZoneNames()Lcom/ibm/icu/text/TimeZoneNames;
    .locals 2

    .line 549
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tzdbNames:Lcom/ibm/icu/text/TimeZoneNames;

    if-nez v0, :cond_1

    .line 550
    monitor-enter p0

    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tzdbNames:Lcom/ibm/icu/text/TimeZoneNames;

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Lcom/ibm/icu/impl/TZDBTimeZoneNames;

    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/TZDBTimeZoneNames;-><init>(Lcom/ibm/icu/util/ULocale;)V

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tzdbNames:Lcom/ibm/icu/text/TimeZoneNames;

    .line 554
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 556
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tzdbNames:Lcom/ibm/icu/text/TimeZoneNames;

    return-object v0
.end method

.method private declared-synchronized getTargetRegion()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1850
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1851
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    .line 1852
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1853
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->addLikelySubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 1854
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    .line 1855
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "001"

    .line 1856
    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    .line 1860
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getTimeType(Lcom/ibm/icu/text/TimeZoneNames$NameType;)Lcom/ibm/icu/text/TimeZoneFormat$TimeType;
    .locals 1

    .line 1869
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$1;->$SwitchMap$com$ibm$icu$text$TimeZoneNames$NameType:[I

    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 1879
    sget-object p1, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    return-object p1

    .line 1876
    :cond_0
    sget-object p1, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    return-object p1

    .line 1872
    :cond_1
    sget-object p1, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    return-object p1
.end method

.method private getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "Etc/GMT"

    .line 2184
    invoke-static {p1}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object p1

    return-object p1

    .line 2186
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/impl/ZoneMeta;->getCustomTimeZone(I)Lcom/ibm/icu/util/SimpleTimeZone;

    move-result-object p1

    return-object p1
.end method

.method private getTimeZoneGenericNames()Lcom/ibm/icu/impl/TimeZoneGenericNames;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gnames:Lcom/ibm/icu/impl/TimeZoneGenericNames;

    if-nez v0, :cond_1

    .line 533
    monitor-enter p0

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gnames:Lcom/ibm/icu/impl/TimeZoneGenericNames;

    if-nez v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gnames:Lcom/ibm/icu/impl/TimeZoneGenericNames;

    .line 537
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 539
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gnames:Lcom/ibm/icu/impl/TimeZoneGenericNames;

    return-object v0
.end method

.method private getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_1

    .line 1833
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTargetRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/ibm/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1835
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid mzID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private initGMTOffsetPatterns([Ljava/lang/String;)V
    .locals 9

    .line 1942
    invoke-static {}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v0

    array-length v0, v0

    .line 1943
    array-length v1, p1

    if-lt v1, v0, :cond_1

    .line 1946
    new-array v1, v0, [[Ljava/lang/Object;

    .line 1947
    invoke-static {}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 1948
    invoke-virtual {v6}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v7

    .line 1951
    aget-object v8, p1, v7

    invoke-static {v6}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->access$200(Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetPattern(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v6

    .line 1952
    aput-object v6, v1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1955
    :cond_0
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    .line 1956
    invoke-static {p1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1957
    iput-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    .line 1958
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->checkAbuttingHoursAndMinutes()V

    return-void

    .line 1944
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Insufficient number of elements in gmtOffsetPatterns"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private initGMTPattern(Ljava/lang/String;)V
    .locals 3

    const-string v0, "{0}"

    .line 1893
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1897
    iput-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1898
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/text/TimeZoneFormat;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3

    .line 1899
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ibm/icu/text/TimeZoneFormat;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    return-void

    .line 1895
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad localized GMT pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseAbuttingAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;Z)I
    .locals 9

    .line 2838
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 2840
    invoke-virtual {p2}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result p2

    const/4 v1, 0x1

    add-int/2addr p2, v1

    const/4 v2, 0x2

    mul-int/lit8 p2, p2, 0x2

    xor-int/lit8 v3, p4, 0x1

    sub-int/2addr p2, v3

    .line 2841
    invoke-virtual {p3}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result p3

    add-int/2addr p3, v1

    mul-int/lit8 p3, p3, 0x2

    .line 2843
    new-array v3, p3, [I

    const/4 v4, 0x0

    move v6, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p3, :cond_1

    .line 2846
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 2847
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const-string v8, "0123456789"

    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_0

    goto :goto_1

    .line 2851
    :cond_0
    aput v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p4, :cond_2

    and-int/lit8 p0, v5, 0x1

    if-eqz p0, :cond_2

    add-int/lit8 v5, v5, -0x1

    :cond_2
    if-ge v5, p2, :cond_3

    .line 2862
    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v4

    :cond_3
    :goto_2
    if-lt v5, p2, :cond_6

    const/4 p0, 0x4

    const/4 p3, 0x3

    packed-switch v5, :pswitch_data_0

    const/4 p0, 0x0

    const/4 v6, 0x0

    :goto_3
    const/4 v7, 0x0

    goto :goto_6

    .line 2890
    :pswitch_0
    aget v6, v3, v4

    mul-int/lit8 v6, v6, 0xa

    aget v7, v3, v1

    add-int/2addr v6, v7

    .line 2891
    aget v7, v3, v2

    mul-int/lit8 v7, v7, 0xa

    aget p3, v3, p3

    add-int/2addr v7, p3

    .line 2892
    aget p0, v3, p0

    mul-int/lit8 p0, p0, 0xa

    const/4 p3, 0x5

    aget p3, v3, p3

    add-int/2addr p0, p3

    goto :goto_6

    .line 2885
    :pswitch_1
    aget v6, v3, v4

    .line 2886
    aget v7, v3, v1

    mul-int/lit8 v7, v7, 0xa

    aget v8, v3, v2

    add-int/2addr v7, v8

    .line 2887
    aget p3, v3, p3

    mul-int/lit8 p3, p3, 0xa

    aget p0, v3, p0

    add-int/2addr p0, p3

    goto :goto_6

    .line 2881
    :pswitch_2
    aget p0, v3, v4

    mul-int/lit8 p0, p0, 0xa

    aget v6, v3, v1

    add-int/2addr v6, p0

    .line 2882
    aget p0, v3, v2

    mul-int/lit8 p0, p0, 0xa

    aget p3, v3, p3

    goto :goto_4

    .line 2877
    :pswitch_3
    aget v6, v3, v4

    .line 2878
    aget p0, v3, v1

    mul-int/lit8 p0, p0, 0xa

    aget p3, v3, v2

    :goto_4
    add-int v7, p0, p3

    const/4 p0, 0x0

    goto :goto_6

    .line 2874
    :pswitch_4
    aget p0, v3, v4

    mul-int/lit8 p0, p0, 0xa

    aget p3, v3, v1

    add-int v6, p0, p3

    goto :goto_5

    .line 2871
    :pswitch_5
    aget v6, v3, v4

    :goto_5
    const/4 p0, 0x0

    goto :goto_3

    :goto_6
    const/16 p3, 0x17

    if-gt v6, p3, :cond_4

    const/16 p3, 0x3b

    if-gt v7, p3, :cond_4

    if-gt p0, p3, :cond_4

    goto :goto_8

    :cond_4
    if-eqz p4, :cond_5

    const/4 p0, 0x2

    goto :goto_7

    :cond_5
    const/4 p0, 0x1

    :goto_7
    sub-int/2addr v5, p0

    goto :goto_2

    :cond_6
    const/4 p0, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_8
    if-nez v1, :cond_7

    .line 2908
    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v4

    :cond_7
    add-int/2addr v0, v5

    .line 2911
    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    mul-int/lit8 v6, v6, 0x3c

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x3c

    add-int/2addr v6, p0

    mul-int/lit16 v6, v6, 0x3e8

    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAbuttingOffsetFields(Ljava/lang/String;I[I)I
    .locals 10

    const/4 v0, 0x6

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v5, v4, v5

    move v7, p2

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v6, v0, :cond_1

    .line 2592
    invoke-direct {p0, p1, v7, v4}, Lcom/ibm/icu/text/TimeZoneFormat;->parseSingleLocalizedDigit(Ljava/lang/String;I[I)I

    move-result v9

    aput v9, v1, v6

    .line 2593
    aget v9, v1, v6

    if-gez v9, :cond_0

    goto :goto_1

    :cond_0
    aget v9, v4, v5

    add-int/2addr v7, v9

    sub-int v9, v7, p2

    .line 2597
    aput v9, v2, v6

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v8, :cond_2

    .line 2602
    aput v5, p3, v5

    return v5

    :cond_2
    :goto_2
    if-lez v8, :cond_4

    const/4 p1, 0x4

    const/4 p2, 0x3

    const/4 v0, 0x2

    packed-switch v8, :pswitch_data_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_5

    :pswitch_0
    aget v4, v1, v5

    mul-int/lit8 v4, v4, 0xa

    aget v6, v1, v3

    add-int/2addr v4, v6

    aget v0, v1, v0

    mul-int/lit8 v0, v0, 0xa

    aget p2, v1, p2

    add-int/2addr v0, p2

    aget p1, v1, p1

    mul-int/lit8 p1, p1, 0xa

    const/4 p2, 0x5

    aget p2, v1, p2

    add-int/2addr p1, p2

    goto :goto_5

    :pswitch_1
    aget v4, v1, v5

    aget v6, v1, v3

    mul-int/lit8 v6, v6, 0xa

    aget v0, v1, v0

    add-int/2addr v0, v6

    aget p2, v1, p2

    mul-int/lit8 p2, p2, 0xa

    aget p1, v1, p1

    add-int/2addr p1, p2

    goto :goto_5

    :pswitch_2
    aget p1, v1, v5

    mul-int/lit8 p1, p1, 0xa

    aget v4, v1, v3

    add-int/2addr v4, p1

    aget p1, v1, v0

    mul-int/lit8 p1, p1, 0xa

    aget p2, v1, p2

    goto :goto_3

    :pswitch_3
    aget v4, v1, v5

    aget p1, v1, v3

    mul-int/lit8 p1, p1, 0xa

    aget p2, v1, v0

    :goto_3
    add-int v0, p1, p2

    const/4 p1, 0x0

    goto :goto_5

    :pswitch_4
    aget p1, v1, v5

    mul-int/lit8 p1, p1, 0xa

    aget p2, v1, v3

    add-int v4, p1, p2

    goto :goto_4

    :pswitch_5
    aget v4, v1, v5

    :goto_4
    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_5
    const/16 p2, 0x17

    if-gt v4, p2, :cond_3

    const/16 p2, 0x3b

    if-gt v0, p2, :cond_3

    if-gt p1, p2, :cond_3

    const p2, 0x36ee80

    mul-int v4, v4, p2

    const p2, 0xea60

    mul-int v0, v0, p2

    add-int/2addr v4, v0

    mul-int/lit16 p1, p1, 0x3e8

    add-int/2addr v4, p1

    sub-int/2addr v8, v3

    .line 2642
    aget p1, v2, v8

    aput p1, p3, v5

    move v5, v4

    goto :goto_6

    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_4
    :goto_6
    return v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;CLcom/ibm/icu/text/TimeZoneFormat$OffsetFields;Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;)I
    .locals 14

    move-object v0, p1

    .line 2930
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    const/4 v2, 0x3

    new-array v3, v2, [I

    .line 2931
    fill-array-data v3, :array_0

    new-array v2, v2, [I

    .line 2932
    fill-array-data v2, :array_1

    const/4 v4, 0x0

    move v5, v1

    const/4 v6, 0x0

    .line 2933
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v5, v7, :cond_7

    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result v7

    if-gt v6, v7, :cond_7

    move-object v7, p0

    .line 2934
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/4 v11, -0x1

    move/from16 v12, p2

    if-ne v10, v12, :cond_3

    if-nez v6, :cond_1

    aget v10, v2, v4

    if-nez v10, :cond_0

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2944
    :cond_1
    aget v10, v2, v6

    if-eq v10, v11, :cond_2

    goto :goto_3

    .line 2948
    :cond_2
    aput v4, v2, v6

    goto :goto_2

    .line 2951
    :cond_3
    aget v13, v2, v6

    if-ne v13, v11, :cond_4

    goto :goto_3

    :cond_4
    const-string v11, "0123456789"

    .line 2955
    invoke-virtual {v11, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_5

    goto :goto_3

    .line 2960
    :cond_5
    aget v11, v3, v6

    mul-int/lit8 v11, v11, 0xa

    add-int/2addr v11, v10

    aput v11, v3, v6

    .line 2961
    aget v10, v2, v6

    add-int/2addr v10, v9

    aput v10, v2, v6

    .line 2962
    aget v9, v2, v6

    if-lt v9, v8, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    const/4 v5, 0x0

    aget v6, v2, v4

    if-nez v6, :cond_8

    const/4 v2, 0x0

    const/4 v9, 0x0

    goto :goto_5

    :cond_8
    aget v5, v3, v4

    const/16 v6, 0x17

    const v7, 0x36ee80

    if-le v5, v6, :cond_9

    aget v2, v3, v4

    .line 2977
    div-int/lit8 v2, v2, 0xa

    mul-int v2, v2, v7

    .line 2978
    sget-object v5, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->H:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    goto :goto_5

    :cond_9
    aget v5, v3, v4

    mul-int v5, v5, v7

    aget v6, v2, v4

    .line 2984
    sget-object v7, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->H:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    aget v10, v2, v9

    if-ne v10, v8, :cond_c

    aget v10, v3, v9

    const/16 v11, 0x3b

    if-le v10, v11, :cond_a

    goto :goto_4

    :cond_a
    aget v7, v3, v9

    const v10, 0xea60

    mul-int v7, v7, v10

    add-int/2addr v5, v7

    aget v7, v2, v9

    add-int/2addr v7, v9

    add-int/2addr v6, v7

    .line 2992
    sget-object v7, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HM:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    aget v10, v2, v8

    if-ne v10, v8, :cond_c

    aget v10, v3, v8

    if-le v10, v11, :cond_b

    goto :goto_4

    :cond_b
    aget v3, v3, v8

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v3, v5

    aget v2, v2, v8

    add-int/2addr v2, v9

    add-int v9, v6, v2

    .line 3000
    sget-object v5, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HMS:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    move v2, v3

    goto :goto_5

    :cond_c
    :goto_4
    move v2, v5

    move v9, v6

    move-object v5, v7

    :goto_5
    if-eqz v5, :cond_e

    .line 3003
    invoke-virtual {v5}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result v5

    if-ge v3, v5, :cond_d

    goto :goto_6

    :cond_d
    add-int/2addr v1, v9

    .line 3008
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    return v2

    .line 3004
    :cond_e
    :goto_6
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v4

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x1
        -0x1
    .end array-data
.end method

.method private parseDefaultOffsetFields(Ljava/lang/String;IC[I)I
    .locals 18

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    .line 2537
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    new-array v13, v12, [I

    const/4 v14, 0x0

    aput v14, v13, v14

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v7, v13

    .line 2543
    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v15

    aget v0, v13, v14

    if-nez v0, :cond_0

    move v7, v9

    goto :goto_1

    :cond_0
    aget v0, v13, v14

    add-int v7, v9, v0

    add-int/lit8 v2, v7, 0x1

    if-ge v2, v11, :cond_4

    .line 2549
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v10, :cond_4

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x3b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v16, v7

    move-object v7, v13

    .line 2550
    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v17

    aget v0, v13, v14

    if-nez v0, :cond_1

    move/from16 v7, v16

    goto :goto_0

    :cond_1
    aget v0, v13, v14

    add-int/2addr v0, v12

    add-int v7, v16, v0

    add-int/lit8 v2, v7, 0x1

    if-ge v2, v11, :cond_3

    .line 2556
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v10, :cond_3

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x3b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v8, v7

    move-object v7, v13

    .line 2557
    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v0

    aget v1, v13, v14

    if-nez v1, :cond_2

    move v7, v8

    goto :goto_2

    :cond_2
    aget v1, v13, v14

    add-int/2addr v1, v12

    add-int v7, v8, v1

    goto :goto_2

    :cond_3
    move v8, v7

    move v7, v8

    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    move/from16 v16, v7

    move/from16 v7, v16

    :goto_1
    const/4 v0, 0x0

    const/16 v17, 0x0

    :goto_2
    if-ne v7, v9, :cond_5

    .line 2567
    aput v14, p4, v14

    return v14

    :cond_5
    sub-int/2addr v7, v9

    .line 2571
    aput v7, p4, v14

    const v1, 0x36ee80

    mul-int v15, v15, v1

    const v1, 0xea60

    mul-int v17, v17, v1

    add-int v15, v15, v17

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v15, v0

    return v15
.end method

.method private parseExemplarLocation(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 6

    .line 3096
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 3100
    sget-object v1, Lcom/ibm/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 3101
    iget-object v2, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {v2, p1, v0, v1}, Lcom/ibm/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 3104
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, -0x1

    move-object v3, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;

    .line 3105
    invoke-virtual {v4}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v5

    add-int/2addr v5, v0

    if-le v5, v2, :cond_0

    .line 3107
    invoke-virtual {v4}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v2

    add-int/2addr v2, v0

    move-object v3, v4

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 3111
    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3112
    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_2
    if-nez v1, :cond_3

    .line 3116
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    :cond_3
    return-object v1
.end method

.method private parseOffsetDefaultLocalizedGMT(Ljava/lang/String;I[I)I
    .locals 11

    .line 2471
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat;->ALT_GMT_STRINGS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v7, v0, v3

    .line 2472
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v4, p1

    move v6, p2

    move v9, v10

    .line 2473
    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-nez v10, :cond_2

    goto :goto_5

    :cond_2
    add-int/2addr v10, p2

    add-int/lit8 v0, v10, 0x1

    .line 2484
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_3

    goto :goto_5

    .line 2490
    :cond_3
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2b

    const/4 v4, 0x1

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/16 v3, 0x2d

    if-ne v1, v3, :cond_7

    const/4 v1, -0x1

    :goto_2
    new-array v3, v4, [I

    aput v2, v3, v2

    const/16 v5, 0x3a

    .line 2503
    invoke-direct {p0, p1, v0, v5, v3}, Lcom/ibm/icu/text/TimeZoneFormat;->parseDefaultOffsetFields(Ljava/lang/String;IC[I)I

    move-result v5

    aget v6, v3, v2

    .line 2504
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v0

    if-ne v6, v7, :cond_5

    mul-int v5, v5, v1

    aget p1, v3, v2

    :goto_3
    add-int/2addr v0, p1

    goto :goto_4

    :cond_5
    new-array v4, v4, [I

    aput v2, v4, v2

    .line 2511
    invoke-direct {p0, p1, v0, v4}, Lcom/ibm/icu/text/TimeZoneFormat;->parseAbuttingOffsetFields(Ljava/lang/String;I[I)I

    move-result p1

    aget v6, v3, v2

    aget v7, v4, v2

    if-le v6, v7, :cond_6

    mul-int v5, v5, v1

    aget p1, v3, v2

    goto :goto_3

    :cond_6
    mul-int v5, p1, v1

    aget p1, v4, v2

    goto :goto_3

    :goto_4
    sub-int/2addr v0, p2

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 2524
    :goto_6
    aput v0, p3, v2

    return v5
.end method

.method private parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I
    .locals 7

    const/4 v0, 0x0

    .line 2667
    aput v0, p7, v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v0, v1, v0

    move v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2673
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    if-ge v3, p4, :cond_2

    .line 2674
    invoke-direct {p0, p1, v2, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->parseSingleLocalizedDigit(Ljava/lang/String;I[I)I

    move-result v5

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    mul-int/lit8 v6, v4, 0xa

    add-int/2addr v6, v5

    if-le v6, p6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    aget v4, v1, v0

    add-int/2addr v2, v4

    move v4, v6

    goto :goto_0

    :cond_2
    :goto_1
    if-lt v3, p3, :cond_4

    if-ge v4, p5, :cond_3

    goto :goto_2

    :cond_3
    sub-int/2addr v2, p2

    .line 2692
    aput v2, p7, v0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, -0x1

    :goto_3
    return v4
.end method

.method private parseOffsetFields(Ljava/lang/String;IZ[I)I
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    .line 2318
    array-length v0, v7

    if-lt v0, v8, :cond_0

    .line 2319
    aput v9, v7, v9

    :cond_0
    const/4 v0, 0x3

    new-array v10, v0, [I

    .line 2325
    fill-array-data v10, :array_0

    .line 2326
    sget-object v11, Lcom/ibm/icu/text/TimeZoneFormat;->PARSE_GMT_OFFSET_TYPES:[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    array-length v12, v11

    const/4 v0, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x2

    const/4 v15, -0x1

    if-ge v13, v12, :cond_3

    aget-object v16, v11, v13

    .line 2327
    iget-object v0, v6, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    invoke-virtual/range {v16 .. v16}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v1

    aget-object v3, v0, v1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v5, v10

    .line 2330
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFieldsWithPattern(Ljava/lang/String;I[Ljava/lang/Object;Z[I)I

    move-result v0

    if-lez v0, :cond_2

    .line 2332
    invoke-static/range {v16 .. v16}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->access$300(Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    aget v2, v10, v9

    aget v3, v10, v8

    aget v4, v10, v14

    move v11, v0

    move v12, v1

    move v13, v2

    move/from16 v16, v3

    move/from16 v17, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    move v11, v0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_2
    if-lez v11, :cond_7

    .line 2339
    iget-boolean v0, v6, Lcom/ibm/icu/text/TimeZoneFormat;->_abuttingOffsetHoursAndMinutes:Z

    if-eqz v0, :cond_7

    .line 2346
    sget-object v5, Lcom/ibm/icu/text/TimeZoneFormat;->PARSE_GMT_OFFSET_TYPES:[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    array-length v4, v5

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_5

    aget-object v18, v5, v3

    .line 2347
    iget-object v0, v6, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    invoke-virtual/range {v18 .. v18}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v1

    aget-object v19, v0, v1

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v21, v3

    move-object/from16 v3, v19

    move/from16 v19, v4

    move/from16 v4, v20

    move-object/from16 v20, v5

    move-object v5, v10

    .line 2351
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFieldsWithPattern(Ljava/lang/String;I[Ljava/lang/Object;Z[I)I

    move-result v0

    if-lez v0, :cond_4

    .line 2353
    invoke-static/range {v18 .. v18}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->access$300(Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v21, 0x1

    move/from16 v4, v19

    move-object/from16 v5, v20

    goto :goto_3

    :cond_5
    :goto_4
    const/4 v15, 0x1

    :cond_6
    if-le v0, v11, :cond_7

    aget v13, v10, v9

    aget v16, v10, v8

    aget v17, v10, v14

    move v11, v0

    move v12, v15

    :cond_7
    if-eqz v7, :cond_8

    .line 2367
    array-length v0, v7

    if-lt v0, v8, :cond_8

    .line 2368
    aput v11, v7, v9

    :cond_8
    if-lez v11, :cond_9

    mul-int/lit8 v13, v13, 0x3c

    add-int v13, v13, v16

    mul-int/lit8 v13, v13, 0x3c

    add-int v13, v13, v17

    mul-int/lit16 v13, v13, 0x3e8

    mul-int v9, v13, v12

    :cond_9
    return v9

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private parseOffsetFieldsWithPattern(Ljava/lang/String;I[Ljava/lang/Object;Z[I)I
    .locals 18

    move-object/from16 v0, p3

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 2390
    aput v2, p5, v1

    const/4 v3, 0x1

    aput v2, p5, v3

    aput v2, p5, v2

    new-array v12, v3, [I

    aput v2, v12, v2

    move/from16 v14, p2

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 2397
    :goto_0
    array-length v4, v0

    if-ge v13, v4, :cond_a

    .line 2398
    aget-object v4, v0, v13

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 2399
    aget-object v4, v0, v13

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    .line 2400
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v13, :cond_1

    .line 2407
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v14, v5, :cond_1

    move-object/from16 v11, p1

    invoke-virtual {v11, v14}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-lez v4, :cond_0

    .line 2409
    invoke-virtual {v7, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 2410
    invoke-static {v6}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2411
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    sub-int/2addr v4, v6

    add-int/2addr v5, v6

    goto :goto_1

    :cond_0
    move v10, v4

    move v8, v5

    goto :goto_2

    :cond_1
    move-object/from16 v11, p1

    :cond_2
    move v10, v4

    const/4 v8, 0x0

    :goto_2
    const/4 v5, 0x1

    move-object/from16 v4, p1

    move v6, v14

    move v9, v10

    .line 2420
    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_3

    :goto_3
    const/4 v0, 0x1

    goto :goto_7

    :cond_3
    add-int/2addr v14, v10

    goto :goto_6

    :cond_4
    move-object/from16 v11, p1

    .line 2427
    aget-object v4, v0, v13

    check-cast v4, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    .line 2428
    invoke-virtual {v4}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;->getType()C

    move-result v4

    const/16 v5, 0x48

    if-ne v4, v5, :cond_6

    if-eqz p4, :cond_5

    const/4 v8, 0x1

    goto :goto_4

    :cond_5
    const/4 v8, 0x2

    :goto_4
    const/4 v7, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x17

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v6, v14

    move-object v11, v12

    .line 2431
    invoke-direct/range {v4 .. v11}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v15

    goto :goto_5

    :cond_6
    const/16 v5, 0x6d

    if-ne v4, v5, :cond_7

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/16 v10, 0x3b

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v6, v14

    move-object v11, v12

    .line 2433
    invoke-direct/range {v4 .. v11}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v16

    goto :goto_5

    :cond_7
    const/16 v5, 0x73

    if-ne v4, v5, :cond_8

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/16 v10, 0x3b

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v6, v14

    move-object v11, v12

    .line 2435
    invoke-direct/range {v4 .. v11}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v17

    :cond_8
    :goto_5
    aget v4, v12, v2

    if-nez v4, :cond_9

    goto :goto_3

    :cond_9
    aget v4, v12, v2

    add-int/2addr v14, v4

    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_b

    return v2

    .line 2450
    :cond_b
    aput v15, p5, v2

    .line 2451
    aput v16, p5, v3

    .line 2452
    aput v17, p5, v1

    sub-int v14, v14, p2

    return v14
.end method

.method private static parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Z",
            "Lcom/ibm/icu/util/Output<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2772
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p3, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 2774
    :cond_0
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 2775
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 2776
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v0

    .line 2780
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2781
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    const-string v4, "Z"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    add-int/2addr v1, v5

    .line 2783
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    return v0

    :cond_2
    const/16 v3, 0x2b

    const/4 v4, -0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_7

    const/4 v2, -0x1

    .line 2797
    :goto_0
    new-instance v3, Ljava/text/ParsePosition;

    add-int/lit8 v6, v1, 0x1

    invoke-direct {v3, v6}, Ljava/text/ParsePosition;-><init>(I)V

    const/16 v7, 0x3a

    .line 2798
    sget-object v8, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->H:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    sget-object v9, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HMS:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    invoke-static {p0, v3, v7, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat;->parseAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;CLcom/ibm/icu/text/TimeZoneFormat$OffsetFields;Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;)I

    move-result v7

    .line 2799
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v8

    if-ne v8, v4, :cond_4

    if-nez p2, :cond_4

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    sub-int/2addr p2, v1

    const/4 v8, 0x3

    if-gt p2, v8, :cond_4

    .line 2803
    new-instance p2, Ljava/text/ParsePosition;

    invoke-direct {p2, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2804
    sget-object v6, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->H:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    sget-object v8, Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;->HMS:Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;

    invoke-static {p0, p2, v6, v8, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->parseAbuttingAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;Lcom/ibm/icu/text/TimeZoneFormat$OffsetFields;Z)I

    move-result p0

    .line 2805
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v6

    if-ne v6, v4, :cond_4

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    if-le v6, v8, :cond_4

    .line 2807
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/text/ParsePosition;->setIndex(I)V

    move v7, p0

    .line 2811
    :cond_4
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result p0

    if-eq p0, v4, :cond_5

    .line 2812
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v0

    .line 2816
    :cond_5
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/text/ParsePosition;->setIndex(I)V

    if-eqz p3, :cond_6

    .line 2818
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, p3, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    :cond_6
    mul-int v2, v2, v7

    return v2

    .line 2794
    :cond_7
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v0
.end method

.method private parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Z",
            "Lcom/ibm/icu/util/Output<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .line 2203
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    const/4 v0, 0x1

    .line 2223
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v0, v0, [I

    const/4 v7, 0x0

    aput v7, v0, v7

    if-eqz p4, :cond_0

    .line 2208
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p4, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 2211
    :cond_0
    invoke-direct {p0, p1, v6, p3, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMTPattern(Ljava/lang/String;IZ[I)I

    move-result p3

    aget v2, v0, v7

    if-lez v2, :cond_2

    if-eqz p4, :cond_1

    .line 2223
    iput-object v1, p4, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    :cond_1
    aget p1, v0, v7

    add-int/2addr v6, p1

    .line 2225
    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    return p3

    .line 2230
    :cond_2
    invoke-direct {p0, p1, v6, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetDefaultLocalizedGMT(Ljava/lang/String;I[I)I

    move-result p3

    aget v2, v0, v7

    if-lez v2, :cond_4

    if-eqz p4, :cond_3

    .line 2233
    iput-object v1, p4, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    :cond_3
    aget p1, v0, v7

    add-int/2addr v6, p1

    .line 2235
    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    return p3

    :cond_4
    const/4 v1, 0x1

    .line 2240
    iget-object v3, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 2241
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v6, p1

    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    return v7

    .line 2246
    :cond_5
    sget-object p3, Lcom/ibm/icu/text/TimeZoneFormat;->ALT_GMT_STRINGS:[Ljava/lang/String;

    array-length p4, p3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, p4, :cond_7

    aget-object v9, p3, v8

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2247
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, v6

    move-object v3, v9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2248
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v6, p1

    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    return v7

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2254
    :cond_7
    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v7
.end method

.method private parseOffsetLocalizedGMTPattern(Ljava/lang/String;IZ[I)I
    .locals 16

    move-object/from16 v0, p0

    .line 2274
    iget-object v1, v0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lez v7, :cond_0

    const/4 v2, 0x1

    .line 2275
    iget-object v4, v0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    move/from16 v1, p2

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    add-int v1, p2, v7

    new-array v2, v8, [I

    move-object/from16 v3, p1

    .line 2283
    invoke-direct {v0, v3, v1, v9, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetFields(Ljava/lang/String;IZ[I)I

    move-result v4

    aget v5, v2, v9

    if-nez v5, :cond_1

    :goto_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    aget v2, v2, v9

    add-int/2addr v1, v2

    .line 2291
    iget-object v2, v0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v11, 0x1

    .line 2292
    iget-object v13, v0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v10, p1

    move v12, v1

    move v15, v2

    invoke-virtual/range {v10 .. v15}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    add-int/2addr v1, v2

    :goto_1
    if-eqz v8, :cond_3

    sub-int v1, v1, p2

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 2300
    :goto_2
    aput v1, p4, v9

    return v4
.end method

.method private static parseOffsetPattern(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 12

    .line 2018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2023
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2024
    new-instance v2, Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 2026
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_a

    .line 2027
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x27

    if-ne v10, v11, :cond_3

    if-eqz v7, :cond_0

    .line 2030
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    goto :goto_1

    :cond_0
    if-eqz v8, :cond_2

    .line 2035
    invoke-static {v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2036
    new-instance v7, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-direct {v7, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    goto :goto_5

    :cond_2
    const/4 v7, 0x1

    :goto_1
    xor-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    if-eqz v6, :cond_4

    .line 2048
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    const/4 v7, 0x0

    goto :goto_4

    .line 2050
    :cond_4
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_8

    if-ne v10, v8, :cond_5

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    if-nez v8, :cond_6

    .line 2057
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_7

    .line 2058
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2059
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_3

    .line 2062
    :cond_6
    invoke-static {v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2063
    new-instance v11, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-direct {v11, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2071
    :cond_7
    :goto_3
    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    move v8, v10

    const/4 v7, 0x0

    const/4 v9, 0x1

    goto :goto_4

    :cond_8
    if-eqz v8, :cond_9

    .line 2076
    invoke-static {v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2077
    new-instance v7, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-direct {v7, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    .line 2084
    :cond_9
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_a
    const/4 v5, 0x0

    :goto_5
    if-nez v5, :cond_c

    if-nez v8, :cond_b

    .line 2092
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_c

    .line 2093
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2094
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_6

    .line 2097
    :cond_b
    invoke-static {v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2098
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-direct {v0, v8, v9}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_6
    move v3, v5

    :cond_d
    if-nez v3, :cond_e

    .line 2105
    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v0, p1, :cond_e

    .line 2109
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2106
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad localized GMT offset pattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method private static parseShortZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 6

    .line 3058
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 3059
    const-class v0, Lcom/ibm/icu/text/TimeZoneFormat;

    monitor-enter v0

    .line 3060
    :try_start_0
    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    if-nez v2, :cond_2

    .line 3062
    new-instance v2, Lcom/ibm/icu/impl/TextTrieMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/ibm/icu/impl/TextTrieMap;-><init>(Z)V

    .line 3063
    sget-object v3, Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;

    invoke-static {v3, v1, v1}, Lcom/ibm/icu/util/TimeZone;->getAvailableIDs(Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v3

    .line 3064
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3065
    invoke-static {v4}, Lcom/ibm/icu/impl/ZoneMeta;->getShortID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3067
    invoke-virtual {v2, v5, v4}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;

    goto :goto_0

    :cond_1
    const-string v3, "unk"

    const-string v4, "Etc/Unknown"

    .line 3071
    invoke-virtual {v2, v3, v4}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;

    .line 3072
    sput-object v2, Lcom/ibm/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    .line 3074
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 3077
    :cond_3
    :goto_1
    new-instance v0, Lcom/ibm/icu/impl/TextTrieMap$Output;

    invoke-direct {v0}, Lcom/ibm/icu/impl/TextTrieMap$Output;-><init>()V

    .line 3078
    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {v2, p0, v3, v0}, Lcom/ibm/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;ILcom/ibm/icu/impl/TextTrieMap$Output;)Ljava/util/Iterator;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 3080
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 3081
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    iget v0, v0, Lcom/ibm/icu/impl/TextTrieMap$Output;->matchLength:I

    add-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_2

    .line 3083
    :cond_4
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    :goto_2
    return-object v1
.end method

.method private parseSingleLocalizedDigit(Ljava/lang/String;I[I)I
    .locals 4

    const/4 v0, 0x0

    .line 2710
    aput v0, p3, v0

    .line 2711
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-ge p2, v1, :cond_3

    .line 2712
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    const/4 p2, 0x0

    .line 2715
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    array-length v3, v1

    if-ge p2, v3, :cond_1

    .line 2716
    aget-object v1, v1, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    move v2, p2

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gez v2, :cond_2

    .line 2723
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->digit(I)I

    move-result p2

    move v2, p2

    :cond_2
    if-ltz v2, :cond_3

    .line 2727
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    aput p1, p3, v0

    :cond_3
    return v2
.end method

.method private static parseZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 6

    .line 3020
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    if-nez v0, :cond_2

    .line 3021
    const-class v0, Lcom/ibm/icu/text/TimeZoneFormat;

    monitor-enter v0

    .line 3022
    :try_start_0
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    if-nez v1, :cond_1

    .line 3024
    new-instance v1, Lcom/ibm/icu/impl/TextTrieMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/ibm/icu/impl/TextTrieMap;-><init>(Z)V

    .line 3025
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v2

    .line 3026
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 3027
    invoke-virtual {v1, v5, v5}, Lcom/ibm/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Lcom/ibm/icu/impl/TextTrieMap;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3029
    :cond_0
    sput-object v1, Lcom/ibm/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    .line 3031
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 3034
    :cond_2
    :goto_1
    new-instance v0, Lcom/ibm/icu/impl/TextTrieMap$Output;

    invoke-direct {v0}, Lcom/ibm/icu/impl/TextTrieMap$Output;-><init>()V

    .line 3035
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {v1, p0, v2, v0}, Lcom/ibm/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;ILcom/ibm/icu/impl/TextTrieMap$Output;)Ljava/util/Iterator;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 3037
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3038
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    iget v0, v0, Lcom/ibm/icu/impl/TextTrieMap$Output;->matchLength:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_2

    .line 3045
    :cond_3
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3190
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object p1

    const-string v0, "_locale"

    const/4 v1, 0x0

    .line 3192
    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/ULocale;

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    if-eqz v0, :cond_b

    const-string v0, "_tznames"

    .line 3197
    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/TimeZoneNames;

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    if-eqz v0, :cond_a

    const-string v0, "_gmtPattern"

    .line 3202
    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v0, "_gmtOffsetPatterns"

    .line 3207
    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 3210
    array-length v2, v0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    .line 3213
    iput-object v2, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    .line 3214
    array-length v2, v0

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 3216
    iget-object v5, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    aget-object v6, v0, v2

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3218
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    sget-object v5, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v5}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v5

    aget-object v3, v3, v5

    invoke-static {v3}, Lcom/ibm/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 3219
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v2}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    sget-object v5, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v5}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v5

    aget-object v3, v3, v5

    invoke-static {v3}, Lcom/ibm/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_1

    .line 3221
    :cond_1
    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    :goto_1
    const-string v0, "_gmtOffsetDigits"

    .line 3224
    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 3227
    array-length v0, v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_5

    const-string v0, "_gmtZeroFormat"

    .line 3231
    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "_parseAllStyles"

    .line 3236
    invoke-virtual {p1, v0, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    .line 3237
    invoke-virtual {p1, v0}, Ljava/io/ObjectInputStream$GetField;->defaulted(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 3256
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    instance-of p1, p1, Lcom/ibm/icu/impl/TimeZoneNamesImpl;

    if-eqz p1, :cond_2

    .line 3257
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {p1}, Lcom/ibm/icu/text/TimeZoneNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    .line 3258
    iput-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gnames:Lcom/ibm/icu/impl/TimeZoneGenericNames;

    goto :goto_2

    .line 3262
    :cond_2
    new-instance p1, Lcom/ibm/icu/impl/TimeZoneGenericNames;

    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-direct {p1, v0, v1}, Lcom/ibm/icu/impl/TimeZoneGenericNames;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/TimeZoneNames;)V

    iput-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gnames:Lcom/ibm/icu/impl/TimeZoneGenericNames;

    .line 3266
    :goto_2
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/TimeZoneFormat;->initGMTPattern(Ljava/lang/String;)V

    .line 3267
    iget-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/TimeZoneFormat;->initGMTOffsetPatterns([Ljava/lang/String;)V

    return-void

    .line 3238
    :cond_3
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Missing field: parseAllStyles"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3233
    :cond_4
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Missing field: gmtZeroFormat"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3228
    :cond_5
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Incompatible field: gmtOffsetDigits"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3226
    :cond_6
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Missing field: gmtOffsetDigits"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3211
    :cond_7
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Incompatible field: gmtOffsetPatterns"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3209
    :cond_8
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Missing field: gmtOffsetPatterns"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3204
    :cond_9
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Missing field: gmtPattern"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3199
    :cond_a
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Missing field: tznames"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3194
    :cond_b
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Missing field: locale"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private static toCodePoints(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 2742
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    .line 2743
    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2746
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 2747
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v4, v3

    .line 2748
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "mm"

    .line 2140
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "Bad time zone hour pattern data"

    if-ltz v0, :cond_2

    const/4 v2, 0x0

    .line 2144
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "HH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    add-int/lit8 v3, v3, 0x2

    .line 2146
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2148
    :cond_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 2150
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2152
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2142
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x27

    .line 1909
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    return-object p0

    .line 1914
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1915
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 1916
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v0, :cond_2

    if-eqz v4, :cond_1

    .line 1919
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    goto :goto_2

    .line 1927
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v4, 0x0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1930
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3170
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 3172
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    const-string v2, "_locale"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3173
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    const-string v2, "_tznames"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3174
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    const-string v2, "_gmtPattern"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3175
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    const-string v2, "_gmtOffsetPatterns"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3176
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    const-string v2, "_gmtOffsetDigits"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3177
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    const-string v2, "_gmtZeroFormat"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3178
    iget-boolean v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    const-string v2, "_parseAllStyles"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 3180
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    return-void
.end method


# virtual methods
.method public cloneAsThawed()Lcom/ibm/icu/text/TimeZoneFormat;
    .locals 2

    .line 3300
    invoke-super {p0}, Lcom/ibm/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/TimeZoneFormat;

    const/4 v1, 0x0

    .line 3301
    iput-boolean v1, v0, Lcom/ibm/icu/text/TimeZoneFormat;->_frozen:Z

    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->cloneAsThawed()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    return-object v0
.end method

.method public final format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;J)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 861
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;JLcom/ibm/icu/util/Output;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Lcom/ibm/icu/text/TimeZoneFormat$Style;Lcom/ibm/icu/util/TimeZone;JLcom/ibm/icu/util/Output;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/TimeZoneFormat$Style;",
            "Lcom/ibm/icu/util/TimeZone;",
            "J",
            "Lcom/ibm/icu/util/Output<",
            "Lcom/ibm/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 885
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    iput-object v0, p5, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 890
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$1;->$SwitchMap$com$ibm$icu$text$TimeZoneFormat$Style:[I

    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    goto :goto_2

    .line 919
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/TimeZoneFormat;->formatExemplarLocation(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 912
    :pswitch_1
    invoke-static {p2}, Lcom/ibm/icu/impl/ZoneMeta;->getShortID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "unk"

    goto :goto_1

    .line 908
    :pswitch_2
    invoke-virtual {p2}, Lcom/ibm/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    .line 904
    :pswitch_3
    sget-object v5, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v6, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move-object v3, p0

    move-object v4, p2

    move-wide v7, p3

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/ibm/icu/text/TimeZoneFormat;->formatSpecific(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/text/TimeZoneNames$NameType;Lcom/ibm/icu/text/TimeZoneNames$NameType;JLcom/ibm/icu/util/Output;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 901
    :pswitch_4
    sget-object v5, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v6, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move-object v3, p0

    move-object v4, p2

    move-wide v7, p3

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/ibm/icu/text/TimeZoneFormat;->formatSpecific(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/text/TimeZoneNames$NameType;Lcom/ibm/icu/text/TimeZoneNames$NameType;JLcom/ibm/icu/util/Output;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 898
    :pswitch_5
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Lcom/ibm/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {v0, p2, v3, p3, p4}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getDisplayName(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 895
    :pswitch_6
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Lcom/ibm/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {v0, p2, v3, p3, p4}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getDisplayName(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 892
    :pswitch_7
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Lcom/ibm/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    invoke-static {p2}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_2
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 929
    fill-array-data v3, :array_0

    .line 930
    invoke-virtual {p2, p3, p4, v2, v3}, Lcom/ibm/icu/util/TimeZone;->getOffset(JZ[I)V

    aget p2, v3, v2

    aget p3, v3, v1

    add-int/2addr p2, p3

    .line 933
    sget-object p3, Lcom/ibm/icu/text/TimeZoneFormat$1;->$SwitchMap$com$ibm$icu$text$TimeZoneFormat$Style:[I

    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result p1

    aget p1, p3, p1

    packed-switch p1, :pswitch_data_1

    :pswitch_8
    goto :goto_3

    .line 984
    :pswitch_9
    invoke-virtual {p0, p2, v2, v2, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 980
    :pswitch_a
    invoke-virtual {p0, p2, v1, v2, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 976
    :pswitch_b
    invoke-virtual {p0, p2, v2, v2, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 972
    :pswitch_c
    invoke-virtual {p0, p2, v1, v2, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 968
    :pswitch_d
    invoke-virtual {p0, p2, v2, v2, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 964
    :pswitch_e
    invoke-virtual {p0, p2, v1, v2, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 960
    :pswitch_f
    invoke-virtual {p0, p2, v2, v2, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 956
    :pswitch_10
    invoke-virtual {p0, p2, v1, v2, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 952
    :pswitch_11
    invoke-virtual {p0, p2, v2, v1, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 948
    :pswitch_12
    invoke-virtual {p0, p2, v1, v1, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 944
    :pswitch_13
    invoke-virtual {p0, p2}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetShortLocalizedGMT(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 938
    :pswitch_14
    invoke-virtual {p0, p2}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    if-eqz p5, :cond_3

    aget p1, v3, v1

    if-eqz p1, :cond_2

    .line 995
    sget-object p1, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    goto :goto_4

    :cond_2
    sget-object p1, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->STANDARD:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    :goto_4
    iput-object p1, p5, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    :cond_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_14
        :pswitch_13
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    .line 1579
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1581
    instance-of v2, p1, Lcom/ibm/icu/util/TimeZone;

    if-eqz v2, :cond_0

    .line 1582
    check-cast p1, Lcom/ibm/icu/util/TimeZone;

    goto :goto_0

    .line 1583
    :cond_0
    instance-of v0, p1, Lcom/ibm/icu/util/Calendar;

    if-eqz v0, :cond_3

    .line 1584
    check-cast p1, Lcom/ibm/icu/util/Calendar;

    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeZone()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    .line 1585
    invoke-virtual {p1}, Lcom/ibm/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    move-object p1, v0

    move-wide v0, v1

    .line 1591
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/ibm/icu/util/TimeZone;->getOffset(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    move-result-object p1

    .line 1592
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1594
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    if-eq v0, v1, :cond_1

    .line 1595
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 1596
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1597
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_2
    return-object p2

    .line 1587
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot format given Object ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") as a time zone"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 772
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601(IZZZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 791
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetISO8601(IZZZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatOffsetLocalizedGMT(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 814
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatOffsetShortLocalizedGMT(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 837
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 3

    .line 1609
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1610
    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    .line 1611
    invoke-virtual {p0, p1, v0, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 1614
    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 1615
    sget-object p1, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    sget-object v1, Lcom/ibm/icu/text/DateFormat$Field;->TIME_ZONE:Lcom/ibm/icu/text/DateFormat$Field;

    invoke-virtual {v0, p1, v1}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    .line 1617
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p1

    return-object p1
.end method

.method public freeze()Lcom/ibm/icu/text/TimeZoneFormat;
    .locals 1

    const/4 v0, 0x1

    .line 3290
    iput-boolean v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_frozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->freeze()Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultParseOptions()Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;",
            ">;"
        }
    .end annotation

    .line 746
    iget-boolean v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_parseTZDBNames:Z

    if-eqz v1, :cond_0

    .line 747
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 749
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 750
    :cond_1
    iget-boolean v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_parseTZDBNames:Z

    if-eqz v0, :cond_2

    .line 751
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 753
    :cond_2
    const-class v0, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getGMTOffsetDigits()Ljava/lang/String;
    .locals 5

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 657
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 658
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 660
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGMTOffsetPattern(Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getGMTPattern()Ljava/lang/String;
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getGMTZeroFormat()Ljava/lang/String;
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZoneNames()Lcom/ibm/icu/text/TimeZoneNames;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    return-object v0
.end method

.method public isFrozen()Z
    .locals 1

    .line 3281
    iget-boolean v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_frozen:Z

    return v0
.end method

.method public parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/TimeZoneFormat$Style;",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Lcom/ibm/icu/util/Output<",
            "Lcom/ibm/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Lcom/ibm/icu/util/TimeZone;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1531
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/EnumSet;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/EnumSet;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/TimeZoneFormat$Style;",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;",
            ">;",
            "Lcom/ibm/icu/util/Output<",
            "Lcom/ibm/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Lcom/ibm/icu/util/TimeZone;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    if-nez v5, :cond_0

    .line 1074
    new-instance v5, Lcom/ibm/icu/util/Output;

    sget-object v6, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    invoke-direct {v5, v6}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 1076
    :cond_0
    sget-object v6, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    iput-object v6, v5, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 1079
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    .line 1080
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    .line 1084
    sget-object v8, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const/4 v10, 0x0

    if-eq v1, v8, :cond_2

    sget-object v8, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    if-eq v1, v8, :cond_2

    sget-object v8, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    if-ne v1, v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v8, 0x1

    .line 1086
    :goto_2
    sget-object v11, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    if-eq v1, v11, :cond_4

    sget-object v11, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    if-ne v1, v11, :cond_3

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v11, 0x1

    .line 1090
    :goto_4
    new-instance v12, Ljava/text/ParsePosition;

    invoke-direct {v12, v6}, Ljava/text/ParsePosition;-><init>(I)V

    const/4 v14, -0x1

    if-nez v8, :cond_6

    if-eqz v11, :cond_5

    goto :goto_5

    :cond_5
    const/4 v8, -0x1

    const v11, 0x7fffffff

    const/4 v13, 0x0

    goto :goto_8

    .line 1097
    :cond_6
    :goto_5
    new-instance v8, Lcom/ibm/icu/util/Output;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-direct {v8, v15}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 1098
    invoke-direct {v0, v2, v12, v11, v8}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I

    move-result v11

    .line 1099
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v15

    if-ne v15, v14, :cond_9

    .line 1104
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v15

    if-eq v15, v7, :cond_8

    iget-object v8, v8, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_6

    .line 1109
    :cond_7
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    goto :goto_7

    .line 1105
    :cond_8
    :goto_6
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1106
    invoke-direct {v0, v11}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    :cond_9
    const/4 v8, -0x1

    const v11, 0x7fffffff

    .line 1114
    :goto_7
    sget-object v15, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v15, v15, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    sget-object v13, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v13, v13, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    or-int/2addr v13, v15

    or-int/2addr v13, v10

    :goto_8
    if-nez v4, :cond_a

    .line 1118
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getDefaultParseOptions()Ljava/util/EnumSet;

    move-result-object v15

    sget-object v9, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {v15, v9}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_9

    :cond_a
    sget-object v9, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    .line 1119
    invoke-virtual {v4, v9}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 1122
    :goto_9
    sget-object v15, Lcom/ibm/icu/text/TimeZoneFormat$1;->$SwitchMap$com$ibm$icu$text$TimeZoneFormat$Style:[I

    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v17

    aget v15, v15, v17

    const/16 v17, 0x0

    packed-switch v15, :pswitch_data_0

    goto/16 :goto_f

    .line 1177
    :pswitch_0
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1178
    invoke-virtual {v12, v14}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1181
    new-instance v15, Lcom/ibm/icu/util/Output;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-direct {v15, v14}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 1182
    invoke-static {v2, v12, v10, v15}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I

    move-result v14

    .line 1183
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v10

    const/4 v4, -0x1

    if-ne v10, v4, :cond_16

    iget-object v4, v15, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1184
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1185
    invoke-direct {v0, v14}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    .line 1160
    :pswitch_1
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v4, -0x1

    .line 1161
    invoke-virtual {v12, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1163
    invoke-virtual {v0, v2, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v10

    .line 1164
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v4, :cond_16

    .line 1165
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1166
    invoke-direct {v0, v10}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    :pswitch_2
    const/4 v4, -0x1

    .line 1140
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1141
    invoke-virtual {v12, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1143
    invoke-virtual {v0, v2, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetShortLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v10

    .line 1144
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v4, :cond_b

    .line 1145
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1146
    invoke-direct {v0, v10}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    .line 1150
    :cond_b
    sget-object v10, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v10, v10, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    goto :goto_a

    :pswitch_3
    const/4 v4, -0x1

    .line 1125
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1126
    invoke-virtual {v12, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1128
    invoke-virtual {v0, v2, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v10

    .line 1129
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v4, :cond_c

    .line 1130
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1131
    invoke-direct {v0, v10}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    .line 1135
    :cond_c
    sget-object v10, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v10, v10, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    :goto_a
    or-int/2addr v13, v10

    goto/16 :goto_f

    :pswitch_4
    const/4 v4, -0x1

    .line 1294
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1295
    invoke-virtual {v12, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1297
    invoke-direct {v0, v2, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->parseExemplarLocation(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v10

    .line 1298
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v4, :cond_16

    .line 1299
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1300
    invoke-static {v10}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    :pswitch_5
    const/4 v4, -0x1

    .line 1282
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1283
    invoke-virtual {v12, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1285
    invoke-static {v2, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->parseShortZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v10

    .line 1286
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v4, :cond_16

    .line 1287
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1288
    invoke-static {v10}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    :pswitch_6
    const/4 v4, -0x1

    .line 1270
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1271
    invoke-virtual {v12, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1273
    invoke-static {v2, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->parseZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v10

    .line 1274
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v4, :cond_16

    .line 1275
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1276
    invoke-static {v10}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    .line 1195
    :pswitch_7
    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    if-ne v1, v4, :cond_d

    .line 1196
    sget-object v4, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v10, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-static {v4, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    goto :goto_b

    .line 1199
    :cond_d
    sget-object v4, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v10, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-static {v4, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    .line 1201
    :goto_b
    iget-object v10, v0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-virtual {v10, v2, v6, v4}, Lcom/ibm/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v10

    if-eqz v10, :cond_10

    .line 1204
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object/from16 v14, v17

    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;

    .line 1205
    invoke-virtual {v15}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v18

    move-object/from16 v19, v10

    add-int v10, v6, v18

    if-le v10, v8, :cond_e

    .line 1207
    invoke-virtual {v15}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v8

    add-int/2addr v8, v6

    move-object v14, v15

    :cond_e
    move-object/from16 v10, v19

    goto :goto_c

    :cond_f
    if-eqz v14, :cond_10

    .line 1211
    invoke-virtual {v14}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->nameType()Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeType(Lcom/ibm/icu/text/TimeZoneNames$NameType;)Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    move-result-object v1

    iput-object v1, v5, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 1212
    invoke-virtual {v3, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1213
    invoke-virtual {v14}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    :cond_10
    if-eqz v9, :cond_16

    .line 1217
    sget-object v10, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    if-ne v1, v10, :cond_16

    .line 1222
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTZDBTimeZoneNames()Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object v10

    invoke-virtual {v10, v2, v6, v4}, Lcom/ibm/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 1225
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v10, v17

    :cond_11
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;

    .line 1226
    invoke-virtual {v14}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v15

    add-int/2addr v15, v6

    if-le v15, v8, :cond_11

    .line 1228
    invoke-virtual {v14}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v8

    add-int/2addr v8, v6

    move-object v10, v14

    goto :goto_d

    :cond_12
    if-eqz v10, :cond_16

    .line 1232
    invoke-virtual {v10}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->nameType()Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeType(Lcom/ibm/icu/text/TimeZoneNames$NameType;)Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    move-result-object v1

    iput-object v1, v5, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 1233
    invoke-virtual {v3, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1234
    invoke-virtual {v10}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    .line 1245
    :pswitch_8
    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$1;->$SwitchMap$com$ibm$icu$text$TimeZoneFormat$Style:[I

    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v10

    aget v4, v4, v10

    const/4 v10, 0x1

    if-eq v4, v10, :cond_15

    const/4 v10, 0x2

    if-eq v4, v10, :cond_14

    const/4 v10, 0x3

    if-eq v4, v10, :cond_13

    move-object/from16 v4, v17

    goto :goto_e

    .line 1253
    :cond_13
    sget-object v4, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v10, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v4, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    goto :goto_e

    .line 1250
    :cond_14
    sget-object v4, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v10, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v4, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    goto :goto_e

    .line 1247
    :cond_15
    sget-object v4, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    .line 1260
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Lcom/ibm/icu/impl/TimeZoneGenericNames;

    move-result-object v10

    invoke-virtual {v10, v2, v6, v4}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->findBestMatch(Ljava/lang/String;ILjava/util/EnumSet;)Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 1261
    invoke-virtual {v4}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v10

    add-int/2addr v10, v6

    if-le v10, v8, :cond_16

    .line 1262
    invoke-virtual {v4}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType()Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    move-result-object v1

    iput-object v1, v5, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 1263
    invoke-virtual {v4}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v1

    add-int/2addr v6, v1

    invoke-virtual {v3, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1264
    invoke-virtual {v4}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    .line 1305
    :cond_16
    :goto_f
    iget v1, v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    or-int/2addr v1, v13

    if-le v8, v6, :cond_17

    .line 1315
    invoke-virtual {v3, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1316
    invoke-direct {v0, v11}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    .line 1323
    :cond_17
    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    if-ge v8, v7, :cond_1b

    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_18

    and-int/lit16 v10, v1, 0x100

    if-nez v10, :cond_1b

    .line 1330
    :cond_18
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v10, -0x1

    .line 1331
    invoke-virtual {v12, v10}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1333
    new-instance v13, Lcom/ibm/icu/util/Output;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-direct {v13, v15}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 1334
    invoke-static {v2, v12, v14, v13}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I

    move-result v15

    .line 1335
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v10, :cond_1b

    .line 1336
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-eq v10, v7, :cond_1a

    iget-object v10, v13, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_19

    goto :goto_10

    .line 1343
    :cond_19
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-ge v8, v10, :cond_1b

    .line 1346
    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    .line 1347
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    move v11, v15

    goto :goto_11

    .line 1337
    :cond_1a
    :goto_10
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1338
    invoke-direct {v0, v15}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    :cond_1b
    :goto_11
    if-ge v8, v7, :cond_1e

    .line 1355
    sget-object v10, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v10, v10, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    and-int/2addr v10, v1

    if-nez v10, :cond_1e

    .line 1357
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v10, -0x1

    .line 1358
    invoke-virtual {v12, v10}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1360
    new-instance v13, Lcom/ibm/icu/util/Output;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-direct {v13, v15}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 1361
    invoke-direct {v0, v2, v12, v14, v13}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I

    move-result v15

    .line 1362
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v10, :cond_1e

    .line 1363
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-eq v10, v7, :cond_1d

    iget-object v10, v13, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1c

    goto :goto_12

    .line 1368
    :cond_1c
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-ge v8, v10, :cond_1e

    .line 1371
    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    .line 1372
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    move v11, v15

    goto :goto_13

    .line 1364
    :cond_1d
    :goto_12
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1365
    invoke-direct {v0, v15}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    :cond_1e
    :goto_13
    if-ge v8, v7, :cond_21

    .line 1377
    sget-object v10, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v10, v10, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    and-int/2addr v10, v1

    if-nez v10, :cond_21

    .line 1379
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v10, -0x1

    .line 1380
    invoke-virtual {v12, v10}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1382
    new-instance v13, Lcom/ibm/icu/util/Output;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/ibm/icu/util/Output;-><init>(Ljava/lang/Object;)V

    const/4 v14, 0x1

    .line 1383
    invoke-direct {v0, v2, v12, v14, v13}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I

    move-result v14

    .line 1384
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v15

    if-ne v15, v10, :cond_21

    .line 1385
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-eq v10, v7, :cond_20

    iget-object v10, v13, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1f

    goto :goto_14

    .line 1390
    :cond_1f
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-ge v8, v10, :cond_21

    .line 1393
    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    .line 1394
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    move-object/from16 v10, p4

    move v11, v14

    goto :goto_15

    .line 1386
    :cond_20
    :goto_14
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1387
    invoke-direct {v0, v14}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    return-object v1

    :cond_21
    move-object/from16 v10, p4

    :goto_15
    if-nez v10, :cond_22

    .line 1409
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getDefaultParseOptions()Ljava/util/EnumSet;

    move-result-object v10

    sget-object v13, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {v10, v13}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_16

    :cond_22
    sget-object v13, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    .line 1410
    invoke-virtual {v10, v13}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    :goto_16
    if-eqz v10, :cond_2e

    if-ge v8, v7, :cond_26

    .line 1415
    iget-object v10, v0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    sget-object v13, Lcom/ibm/icu/text/TimeZoneFormat;->ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;

    invoke-virtual {v10, v2, v6, v13}, Lcom/ibm/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v10

    if-eqz v10, :cond_25

    .line 1419
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object/from16 v14, v17

    const/4 v13, -0x1

    :goto_17
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_24

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;

    .line 1420
    invoke-virtual {v15}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v16

    move-object/from16 p1, v4

    add-int v4, v6, v16

    if-le v4, v13, :cond_23

    .line 1422
    invoke-virtual {v15}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v4

    add-int v13, v6, v4

    move-object v14, v15

    :cond_23
    move-object/from16 v4, p1

    goto :goto_17

    :cond_24
    move-object/from16 p1, v4

    goto :goto_18

    :cond_25
    move-object/from16 p1, v4

    move-object/from16 v14, v17

    const/4 v13, -0x1

    :goto_18
    if-ge v8, v13, :cond_27

    .line 1428
    invoke-virtual {v14}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v4, v8}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1429
    invoke-virtual {v14}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->nameType()Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeType(Lcom/ibm/icu/text/TimeZoneNames$NameType;)Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    move-result-object v8

    const v11, 0x7fffffff

    goto :goto_19

    :cond_26
    move-object/from16 p1, v4

    :cond_27
    move v13, v8

    move-object/from16 v4, v17

    move-object/from16 v8, p1

    :goto_19
    if-eqz v9, :cond_2a

    if-ge v13, v7, :cond_2a

    .line 1433
    sget-object v9, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v9, v9, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    and-int/2addr v9, v1

    if-nez v9, :cond_2a

    .line 1435
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTZDBTimeZoneNames()Lcom/ibm/icu/text/TimeZoneNames;

    move-result-object v9

    sget-object v10, Lcom/ibm/icu/text/TimeZoneFormat;->ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;

    invoke-virtual {v9, v2, v6, v10}, Lcom/ibm/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v9

    if-eqz v9, :cond_2a

    .line 1439
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object/from16 v14, v17

    const/4 v10, -0x1

    :goto_1a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_29

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;

    .line 1440
    invoke-virtual {v15}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v16

    move-object/from16 p1, v4

    add-int v4, v6, v16

    if-le v4, v10, :cond_28

    .line 1442
    invoke-virtual {v15}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v4

    add-int/2addr v4, v6

    move v10, v4

    move-object v14, v15

    :cond_28
    move-object/from16 v4, p1

    goto :goto_1a

    :cond_29
    move-object/from16 p1, v4

    if-ge v13, v10, :cond_2b

    .line 1447
    invoke-virtual {v14}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v4, v8}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1448
    invoke-virtual {v14}, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->nameType()Lcom/ibm/icu/text/TimeZoneNames$NameType;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeType(Lcom/ibm/icu/text/TimeZoneNames$NameType;)Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    move-result-object v8

    move v13, v10

    const v11, 0x7fffffff

    goto :goto_1b

    :cond_2a
    move-object/from16 p1, v4

    :cond_2b
    move-object/from16 v4, p1

    :goto_1b
    if-ge v13, v7, :cond_2c

    .line 1456
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Lcom/ibm/icu/impl/TimeZoneGenericNames;

    move-result-object v9

    sget-object v10, Lcom/ibm/icu/text/TimeZoneFormat;->ALL_GENERIC_NAME_TYPES:Ljava/util/EnumSet;

    invoke-virtual {v9, v2, v6, v10}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->findBestMatch(Ljava/lang/String;ILjava/util/EnumSet;)Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    move-result-object v9

    if-eqz v9, :cond_2c

    .line 1457
    invoke-virtual {v9}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v10

    add-int/2addr v10, v6

    if-ge v13, v10, :cond_2c

    .line 1458
    invoke-virtual {v9}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v4

    add-int v13, v6, v4

    .line 1459
    invoke-virtual {v9}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID()Ljava/lang/String;

    move-result-object v4

    .line 1460
    invoke-virtual {v9}, Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType()Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    move-result-object v8

    const v11, 0x7fffffff

    :cond_2c
    if-ge v13, v7, :cond_2d

    .line 1466
    sget-object v9, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ZONE_ID:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v9, v9, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    and-int/2addr v9, v1

    if-nez v9, :cond_2d

    .line 1467
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v9, -0x1

    .line 1468
    invoke-virtual {v12, v9}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1470
    invoke-static {v2, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->parseZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v10

    .line 1471
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v9, :cond_2d

    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    if-ge v13, v9, :cond_2d

    .line 1472
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 1474
    sget-object v8, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    move v13, v4

    move-object v4, v10

    const v11, 0x7fffffff

    :cond_2d
    if-ge v13, v7, :cond_2f

    .line 1479
    sget-object v7, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    iget v7, v7, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    and-int/2addr v1, v7

    if-nez v1, :cond_2f

    .line 1480
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v1, -0x1

    .line 1481
    invoke-virtual {v12, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1483
    invoke-static {v2, v12}, Lcom/ibm/icu/text/TimeZoneFormat;->parseShortZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v2

    .line 1484
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v7

    if-ne v7, v1, :cond_2f

    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-ge v13, v1, :cond_2f

    .line 1485
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    .line 1487
    sget-object v4, Lcom/ibm/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Lcom/ibm/icu/text/TimeZoneFormat$TimeType;

    move v13, v8

    const v11, 0x7fffffff

    move-object v8, v4

    move-object v4, v2

    goto :goto_1c

    :cond_2e
    move-object/from16 p1, v4

    move v13, v8

    move-object/from16 v4, v17

    move-object/from16 v8, p1

    :cond_2f
    :goto_1c
    if-le v13, v6, :cond_31

    if-eqz v4, :cond_30

    .line 1497
    invoke-static {v4}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    goto :goto_1d

    .line 1500
    :cond_30
    invoke-direct {v0, v11}, Lcom/ibm/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    .line 1502
    :goto_1d
    iput-object v8, v5, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 1503
    invoke-virtual {v3, v13}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v1

    .line 1507
    :cond_31
    invoke-virtual {v3, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v17

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final parse(Ljava/lang/String;)Lcom/ibm/icu/util/TimeZone;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1562
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1563
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/TimeZone;

    move-result-object v2

    .line 1564
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    if-gez v0, :cond_0

    return-object v2

    .line 1565
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unparseable time zone: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/TimeZone;
    .locals 6

    .line 1548
    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Lcom/ibm/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/EnumSet;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/util/TimeZone;

    move-result-object p1

    return-object p1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 1627
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/TimeZoneFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/TimeZone;

    move-result-object p1

    return-object p1
.end method

.method public final parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1020
    invoke-static {p1, p2, v0, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I

    move-result p1

    return p1
.end method

.method public parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1037
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I

    move-result p1

    return p1
.end method

.method public parseOffsetShortLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1054
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLcom/ibm/icu/util/Output;)I

    move-result p1

    return p1
.end method

.method public setDefaultParseOptions(Ljava/util/EnumSet;)Lcom/ibm/icu/text/TimeZoneFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;",
            ">;)",
            "Lcom/ibm/icu/text/TimeZoneFormat;"
        }
    .end annotation

    .line 734
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    .line 735
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Lcom/ibm/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_parseTZDBNames:Z

    return-object p0
.end method

.method public setGMTOffsetDigits(Ljava/lang/String;)Lcom/ibm/icu/text/TimeZoneFormat;
    .locals 2

    .line 674
    invoke-virtual {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 680
    invoke-static {p1}, Lcom/ibm/icu/text/TimeZoneFormat;->toCodePoints(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 681
    array-length v0, p1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 684
    iput-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    return-object p0

    .line 682
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Length of digits must be 10"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 678
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null GMT offset digits"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 675
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify frozen object"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGMTOffsetPattern(Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;Ljava/lang/String;)Lcom/ibm/icu/text/TimeZoneFormat;
    .locals 3

    .line 631
    invoke-virtual {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 638
    invoke-static {p1}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->access$200(Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ibm/icu/text/TimeZoneFormat;->parseOffsetPattern(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 640
    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v2

    aput-object p2, v1, v2

    .line 641
    iget-object p2, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result p1

    aput-object v0, p2, p1

    .line 642
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->checkAbuttingHoursAndMinutes()V

    return-object p0

    .line 635
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null GMT offset pattern"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 632
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Attempt to modify frozen object"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGMTPattern(Ljava/lang/String;)Lcom/ibm/icu/text/TimeZoneFormat;
    .locals 1

    .line 601
    invoke-virtual {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 604
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/TimeZoneFormat;->initGMTPattern(Ljava/lang/String;)V

    return-object p0

    .line 602
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify frozen object"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGMTZeroFormat(Ljava/lang/String;)Lcom/ibm/icu/text/TimeZoneFormat;
    .locals 1

    .line 709
    invoke-virtual {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 715
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iput-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    return-object p0

    .line 716
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Empty GMT zero format"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 713
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null GMT zero format"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 710
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify frozen object"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTimeZoneNames(Lcom/ibm/icu/text/TimeZoneNames;)Lcom/ibm/icu/text/TimeZoneFormat;
    .locals 2

    .line 569
    invoke-virtual {p0}, Lcom/ibm/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    iput-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    .line 574
    new-instance p1, Lcom/ibm/icu/impl/TimeZoneGenericNames;

    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_locale:Lcom/ibm/icu/util/ULocale;

    iget-object v1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_tznames:Lcom/ibm/icu/text/TimeZoneNames;

    invoke-direct {p1, v0, v1}, Lcom/ibm/icu/impl/TimeZoneGenericNames;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/TimeZoneNames;)V

    iput-object p1, p0, Lcom/ibm/icu/text/TimeZoneFormat;->_gnames:Lcom/ibm/icu/impl/TimeZoneGenericNames;

    return-object p0

    .line 570
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify frozen object"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
