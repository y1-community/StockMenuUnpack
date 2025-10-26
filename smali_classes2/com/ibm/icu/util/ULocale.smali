.class public final Lcom/ibm/icu/util/ULocale;
.super Ljava/lang/Object;
.source "ULocale.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;,
        Lcom/ibm/icu/util/ULocale$Builder;,
        Lcom/ibm/icu/util/ULocale$Minimize;,
        Lcom/ibm/icu/util/ULocale$Type;,
        Lcom/ibm/icu/util/ULocale$AliasReplacer;,
        Lcom/ibm/icu/util/ULocale$Category;,
        Lcom/ibm/icu/util/ULocale$AvailableType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/ibm/icu/util/ULocale;",
        ">;"
    }
.end annotation


# static fields
.field public static ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type; = null

.field private static final CACHE:Lcom/ibm/icu/impl/SoftCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/SoftCache<",
            "Ljava/util/Locale;",
            "Lcom/ibm/icu/util/ULocale;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static final CANADA:Lcom/ibm/icu/util/ULocale;

.field public static final CANADA_FRENCH:Lcom/ibm/icu/util/ULocale;

.field private static CANONICALIZE_MAP:[[Ljava/lang/String; = null

.field public static final CHINA:Lcom/ibm/icu/util/ULocale;

.field public static final CHINESE:Lcom/ibm/icu/util/ULocale;

.field private static final EMPTY_LOCALE:Ljava/util/Locale;

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final ENGLISH:Lcom/ibm/icu/util/ULocale;

.field public static final FRANCE:Lcom/ibm/icu/util/ULocale;

.field public static final FRENCH:Lcom/ibm/icu/util/ULocale;

.field public static final GERMAN:Lcom/ibm/icu/util/ULocale;

.field public static final GERMANY:Lcom/ibm/icu/util/ULocale;

.field public static final ITALIAN:Lcom/ibm/icu/util/ULocale;

.field public static final ITALY:Lcom/ibm/icu/util/ULocale;

.field public static final JAPAN:Lcom/ibm/icu/util/ULocale;

.field public static final JAPANESE:Lcom/ibm/icu/util/ULocale;

.field public static final KOREA:Lcom/ibm/icu/util/ULocale;

.field public static final KOREAN:Lcom/ibm/icu/util/ULocale;

.field private static final LANG_DIR_STRING:Ljava/lang/String; = "root-en-es-pt-zh-ja-ko-de-fr-it-ar+he+fa+ru-nl-pl-th-tr-"

.field private static final LOCALE_ATTRIBUTE_KEY:Ljava/lang/String; = "attribute"

.field public static final PRC:Lcom/ibm/icu/util/ULocale;

.field public static final PRIVATE_USE_EXTENSION:C = 'x'

.field public static final ROOT:Lcom/ibm/icu/util/ULocale;

.field public static final SIMPLIFIED_CHINESE:Lcom/ibm/icu/util/ULocale;

.field public static final TAIWAN:Lcom/ibm/icu/util/ULocale;

.field public static final TRADITIONAL_CHINESE:Lcom/ibm/icu/util/ULocale;

.field public static final UK:Lcom/ibm/icu/util/ULocale;

.field private static final UNDEFINED_LANGUAGE:Ljava/lang/String; = "und"

.field private static final UNDEFINED_REGION:Ljava/lang/String; = "ZZ"

.field private static final UNDEFINED_SCRIPT:Ljava/lang/String; = "Zzzz"

.field private static final UNDERSCORE:C = '_'

.field private static final UND_PATTERN:Ljava/util/regex/Pattern;

.field public static final UNICODE_LOCALE_EXTENSION:C = 'u'

.field public static final US:Lcom/ibm/icu/util/ULocale;

.field public static VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type; = null

.field private static defaultCategoryLocales:[Ljava/util/Locale; = null

.field private static defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale; = null

.field private static defaultLocale:Ljava/util/Locale; = null

.field private static defaultULocale:Lcom/ibm/icu/util/ULocale; = null

.field private static gKnownCanonicalizedCases:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static nameCache:Lcom/ibm/icu/impl/CacheBase; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x338ef66846d00be1L


# instance fields
.field private volatile transient baseLocale:Lcom/ibm/icu/impl/locale/BaseLocale;

.field private volatile transient extensions:Lcom/ibm/icu/impl/locale/LocaleExtensions;

.field private volatile transient locale:Ljava/util/Locale;

.field private localeID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "^und(?=$|[_-])"

    const/4 v1, 0x2

    .line 122
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/ULocale;->UND_PATTERN:Ljava/util/regex/Pattern;

    .line 124
    new-instance v0, Lcom/ibm/icu/util/ULocale$1;

    invoke-direct {v0}, Lcom/ibm/icu/util/ULocale$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->nameCache:Lcom/ibm/icu/impl/CacheBase;

    .line 177
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "en"

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->ENGLISH:Lcom/ibm/icu/util/ULocale;

    .line 183
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v2, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    const-string v3, "fr"

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->FRENCH:Lcom/ibm/icu/util/ULocale;

    .line 189
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v2, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    const-string v3, "de"

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->GERMAN:Lcom/ibm/icu/util/ULocale;

    .line 195
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v2, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    const-string v3, "it"

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->ITALIAN:Lcom/ibm/icu/util/ULocale;

    .line 201
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    const-string v3, "ja"

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->JAPANESE:Lcom/ibm/icu/util/ULocale;

    .line 207
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v2, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    const-string v3, "ko"

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->KOREAN:Lcom/ibm/icu/util/ULocale;

    .line 213
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string v3, "zh"

    invoke-direct {v0, v3, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->CHINESE:Lcom/ibm/icu/util/ULocale;

    .line 242
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    const-string v2, "zh_Hans"

    invoke-direct {v0, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->SIMPLIFIED_CHINESE:Lcom/ibm/icu/util/ULocale;

    .line 249
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    const-string v2, "zh_Hant"

    invoke-direct {v0, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->TRADITIONAL_CHINESE:Lcom/ibm/icu/util/ULocale;

    .line 255
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v2, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    const-string v4, "fr_FR"

    invoke-direct {v0, v4, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->FRANCE:Lcom/ibm/icu/util/ULocale;

    .line 261
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v2, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    const-string v4, "de_DE"

    invoke-direct {v0, v4, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->GERMANY:Lcom/ibm/icu/util/ULocale;

    .line 267
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v2, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    const-string v4, "it_IT"

    invoke-direct {v0, v4, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->ITALY:Lcom/ibm/icu/util/ULocale;

    .line 273
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v2, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    const-string v4, "ja_JP"

    invoke-direct {v0, v4, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->JAPAN:Lcom/ibm/icu/util/ULocale;

    .line 279
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    const-string v4, "ko_KR"

    invoke-direct {v0, v4, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->KOREA:Lcom/ibm/icu/util/ULocale;

    .line 285
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    const-string v2, "zh_Hans_CN"

    invoke-direct {v0, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->CHINA:Lcom/ibm/icu/util/ULocale;

    .line 291
    sput-object v0, Lcom/ibm/icu/util/ULocale;->PRC:Lcom/ibm/icu/util/ULocale;

    .line 297
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    const-string v2, "zh_Hant_TW"

    invoke-direct {v0, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->TAIWAN:Lcom/ibm/icu/util/ULocale;

    .line 303
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v4, "en_GB"

    invoke-direct {v0, v4, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->UK:Lcom/ibm/icu/util/ULocale;

    .line 309
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "en_US"

    invoke-direct {v0, v4, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->US:Lcom/ibm/icu/util/ULocale;

    .line 315
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v2, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    const-string v4, "en_CA"

    invoke-direct {v0, v4, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->CANADA:Lcom/ibm/icu/util/ULocale;

    .line 321
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    sget-object v2, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    const-string v4, "fr_CA"

    invoke-direct {v0, v4, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->CANADA_FRENCH:Lcom/ibm/icu/util/ULocale;

    .line 332
    new-instance v0, Ljava/util/Locale;

    const-string v2, ""

    invoke-direct {v0, v2, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->EMPTY_LOCALE:Ljava/util/Locale;

    .line 341
    new-instance v4, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v4, v2, v0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v4, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    .line 361
    new-instance v0, Lcom/ibm/icu/util/ULocale$2;

    invoke-direct {v0}, Lcom/ibm/icu/util/ULocale$2;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->CACHE:Lcom/ibm/icu/impl/SoftCache;

    const/16 v0, 0x11

    new-array v0, v0, [[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "art__LOJBAN"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string v4, "jbo"

    const/4 v6, 0x1

    aput-object v4, v2, v6

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "cel__GAULISH"

    aput-object v4, v2, v5

    aput-object v4, v2, v6

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "de__1901"

    aput-object v4, v2, v5

    aput-object v4, v2, v6

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "de__1906"

    aput-object v4, v2, v5

    aput-object v4, v2, v6

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string v7, "en__BOONT"

    aput-object v7, v2, v5

    aput-object v7, v2, v6

    const/4 v7, 0x4

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/String;

    const-string v8, "en__SCOUSE"

    aput-object v8, v2, v5

    aput-object v8, v2, v6

    const/4 v8, 0x5

    aput-object v2, v0, v8

    new-array v2, v7, [Ljava/lang/String;

    const-string v8, "hy__AREVELA"

    aput-object v8, v2, v5

    const-string v8, "hy"

    aput-object v8, v2, v6

    const/4 v8, 0x0

    aput-object v8, v2, v1

    aput-object v8, v2, v4

    const/4 v9, 0x6

    aput-object v2, v0, v9

    new-array v2, v7, [Ljava/lang/String;

    const-string v7, "hy__AREVMDA"

    aput-object v7, v2, v5

    const-string v7, "hyw"

    aput-object v7, v2, v6

    aput-object v8, v2, v1

    aput-object v8, v2, v4

    const/4 v4, 0x7

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "sl__ROZAJ"

    aput-object v4, v2, v5

    aput-object v4, v2, v6

    const/16 v4, 0x8

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "zh__GUOYU"

    aput-object v4, v2, v5

    aput-object v3, v2, v6

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "zh__HAKKA"

    aput-object v3, v2, v5

    const-string v3, "hak"

    aput-object v3, v2, v6

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "zh__XIANG"

    aput-object v3, v2, v5

    const-string v3, "hsn"

    aput-object v3, v2, v6

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "zh_GAN"

    aput-object v3, v2, v5

    const-string v3, "gan"

    aput-object v3, v2, v6

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "zh_MIN"

    aput-object v3, v2, v5

    const-string v3, "zh__MIN"

    aput-object v3, v2, v6

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "zh_MIN_NAN"

    aput-object v3, v2, v5

    const-string v3, "nan"

    aput-object v3, v2, v6

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "zh_WUU"

    aput-object v3, v2, v5

    const-string v3, "wuu"

    aput-object v3, v2, v6

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "zh_YUE"

    aput-object v2, v1, v5

    const-string v2, "yue"

    aput-object v2, v1, v6

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 390
    sput-object v0, Lcom/ibm/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    .line 550
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    .line 553
    invoke-static {}, Lcom/ibm/icu/util/ULocale$Category;->values()[Lcom/ibm/icu/util/ULocale$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/util/Locale;

    sput-object v0, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    .line 554
    invoke-static {}, Lcom/ibm/icu/util/ULocale$Category;->values()[Lcom/ibm/icu/util/ULocale$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/ibm/icu/util/ULocale;

    sput-object v0, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    .line 557
    sget-object v0, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    .line 559
    invoke-static {}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    invoke-static {}, Lcom/ibm/icu/util/ULocale$Category;->values()[Lcom/ibm/icu/util/ULocale$Category;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v5, v1, :cond_1

    aget-object v2, v0, v5

    .line 561
    invoke-virtual {v2}, Lcom/ibm/icu/util/ULocale$Category;->ordinal()I

    move-result v3

    .line 562
    sget-object v4, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    invoke-static {v2}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Ljava/util/Locale;

    move-result-object v2

    aput-object v2, v4, v3

    .line 563
    sget-object v2, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    sget-object v4, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 568
    :cond_0
    invoke-static {}, Lcom/ibm/icu/util/ULocale$Category;->values()[Lcom/ibm/icu/util/ULocale$Category;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v5, v1, :cond_1

    aget-object v2, v0, v5

    .line 569
    invoke-virtual {v2}, Lcom/ibm/icu/util/ULocale$Category;->ordinal()I

    move-result v2

    .line 570
    sget-object v3, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    sget-object v4, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    aput-object v4, v3, v2

    .line 571
    sget-object v3, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    sget-object v4, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    aput-object v4, v3, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1776
    :cond_1
    sput-object v8, Lcom/ibm/icu/util/ULocale;->gKnownCanonicalizedCases:Ljava/util/Set;

    .line 2478
    new-instance v0, Lcom/ibm/icu/util/ULocale$Type;

    invoke-direct {v0, v8}, Lcom/ibm/icu/util/ULocale$Type;-><init>(Lcom/ibm/icu/util/ULocale$1;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    .line 2493
    new-instance v0, Lcom/ibm/icu/util/ULocale$Type;

    invoke-direct {v0, v8}, Lcom/ibm/icu/util/ULocale$Type;-><init>(Lcom/ibm/icu/util/ULocale$1;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 463
    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 487
    invoke-static {p1, p2, p3, v0}, Lcom/ibm/icu/util/ULocale;->lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput-object p1, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    .line 416
    iput-object p2, p0, Lcom/ibm/icu/util/ULocale;->locale:Ljava/util/Locale;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Locale;Lcom/ibm/icu/util/ULocale$1;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public static acceptLanguage(Ljava/lang/String;[Lcom/ibm/icu/util/ULocale;[Z)Lcom/ibm/icu/util/ULocale;
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 2530
    aput-boolean v1, p2, v0

    :cond_0
    const/4 v1, 0x0

    .line 2534
    :try_start_0
    invoke-static {p0}, Lcom/ibm/icu/util/LocalePriorityList;->add(Ljava/lang/String;)Lcom/ibm/icu/util/LocalePriorityList$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ibm/icu/util/LocalePriorityList$Builder;->build()Lcom/ibm/icu/util/LocalePriorityList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2538
    invoke-static {}, Lcom/ibm/icu/util/LocaleMatcher;->builder()Lcom/ibm/icu/util/LocaleMatcher$Builder;

    move-result-object v2

    .line 2539
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p1, v4

    .line 2540
    invoke-virtual {v2, v5}, Lcom/ibm/icu/util/LocaleMatcher$Builder;->addSupportedULocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/LocaleMatcher$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2542
    :cond_1
    invoke-virtual {v2}, Lcom/ibm/icu/util/LocaleMatcher$Builder;->build()Lcom/ibm/icu/util/LocaleMatcher;

    move-result-object p1

    .line 2543
    invoke-virtual {p1, p0}, Lcom/ibm/icu/util/LocaleMatcher;->getBestMatchResult(Ljava/lang/Iterable;)Lcom/ibm/icu/util/LocaleMatcher$Result;

    move-result-object p0

    .line 2544
    invoke-virtual {p0}, Lcom/ibm/icu/util/LocaleMatcher$Result;->getDesiredIndex()I

    move-result p1

    if-ltz p1, :cond_3

    if-eqz p2, :cond_2

    .line 2545
    invoke-virtual {p0}, Lcom/ibm/icu/util/LocaleMatcher$Result;->getDesiredULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ibm/icu/util/LocaleMatcher$Result;->getSupportedULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2546
    aput-boolean v0, p2, v0

    .line 2548
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/util/LocaleMatcher$Result;->getSupportedULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    return-object p0

    :catch_0
    :cond_3
    return-object v1
.end method

.method public static acceptLanguage(Ljava/lang/String;[Z)Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 2621
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getAvailableLocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/ibm/icu/util/ULocale;->acceptLanguage(Ljava/lang/String;[Lcom/ibm/icu/util/ULocale;[Z)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public static acceptLanguage([Lcom/ibm/icu/util/ULocale;[Lcom/ibm/icu/util/ULocale;[Z)Lcom/ibm/icu/util/ULocale;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 2576
    aput-boolean v0, p2, v1

    .line 2578
    :cond_0
    invoke-static {}, Lcom/ibm/icu/util/LocaleMatcher;->builder()Lcom/ibm/icu/util/LocaleMatcher$Builder;

    move-result-object v2

    .line 2579
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p1, v4

    .line 2580
    invoke-virtual {v2, v5}, Lcom/ibm/icu/util/LocaleMatcher$Builder;->addSupportedULocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/LocaleMatcher$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2582
    :cond_1
    invoke-virtual {v2}, Lcom/ibm/icu/util/LocaleMatcher$Builder;->build()Lcom/ibm/icu/util/LocaleMatcher;

    move-result-object p1

    .line 2584
    array-length v2, p0

    if-ne v2, v0, :cond_2

    .line 2585
    aget-object p0, p0, v1

    invoke-virtual {p1, p0}, Lcom/ibm/icu/util/LocaleMatcher;->getBestMatchResult(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/LocaleMatcher$Result;

    move-result-object p0

    goto :goto_1

    .line 2587
    :cond_2
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ibm/icu/util/LocaleMatcher;->getBestMatchResult(Ljava/lang/Iterable;)Lcom/ibm/icu/util/LocaleMatcher$Result;

    move-result-object p0

    .line 2589
    :goto_1
    invoke-virtual {p0}, Lcom/ibm/icu/util/LocaleMatcher$Result;->getDesiredIndex()I

    move-result p1

    if-ltz p1, :cond_4

    if-eqz p2, :cond_3

    .line 2590
    invoke-virtual {p0}, Lcom/ibm/icu/util/LocaleMatcher$Result;->getDesiredULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ibm/icu/util/LocaleMatcher$Result;->getSupportedULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2591
    aput-boolean v1, p2, v1

    .line 2593
    :cond_3
    invoke-virtual {p0}, Lcom/ibm/icu/util/LocaleMatcher$Result;->getSupportedULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static acceptLanguage([Lcom/ibm/icu/util/ULocale;[Z)Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 2646
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getAvailableLocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/ibm/icu/util/ULocale;->acceptLanguage([Lcom/ibm/icu/util/ULocale;[Lcom/ibm/icu/util/ULocale;[Z)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 118
    invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/util/ULocale;->lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/locale/BaseLocale;
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->base()Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/locale/LocaleExtensions;
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->extensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/util/ULocale;
    .locals 0

    .line 118
    invoke-static {p0, p1}, Lcom/ibm/icu/util/ULocale;->getInstance(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public static addLikelySubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 2685
    iget-object v1, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ibm/icu/util/ULocale;->parseTagString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2689
    iget-object v2, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2690
    iget-object v2, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v0, v0, v4

    .line 2694
    invoke-static {v2, v3, v0, v1}, Lcom/ibm/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 2700
    :cond_1
    new-instance p0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method private static appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 2954
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5f

    .line 2955
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2958
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private base()Lcom/ibm/icu/impl/locale/BaseLocale;
    .locals 5

    .line 4188
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->baseLocale:Lcom/ibm/icu/impl/locale/BaseLocale;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 4191
    sget-object v1, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4192
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    iget-object v1, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 4193
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 4194
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object v2

    .line 4195
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 4196
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    move-result-object v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :cond_0
    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    .line 4198
    :goto_0
    invoke-static {v0, v2, v3, v1}, Lcom/ibm/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/util/ULocale;->baseLocale:Lcom/ibm/icu/impl/locale/BaseLocale;

    .line 4200
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->baseLocale:Lcom/ibm/icu/impl/locale/BaseLocale;

    return-object v0
.end method

.method public static canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1702
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;Z)V

    .line 1703
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getBaseName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 1706
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v3

    :cond_0
    const/4 p0, 0x0

    const/4 v3, 0x0

    .line 1713
    :goto_0
    sget-object v4, Lcom/ibm/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 1714
    aget-object v4, v4, v3

    .line 1715
    aget-object v5, v4, p0

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1718
    aget-object p0, v4, v1

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/LocaleIDParser;->setBaseName(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    .line 1725
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "nb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1726
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "nn"

    invoke-static {v3, p0, v1, v2}, Lcom/ibm/icu/util/ULocale;->lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/LocaleIDParser;->setBaseName(Ljava/lang/String;)V

    .line 1730
    :cond_3
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 1731
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->isKnownCanonicalizedLocale(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 1732
    new-instance p0, Lcom/ibm/icu/util/ULocale$AliasReplacer;

    .line 1733
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 1734
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1735
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getBaseName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/util/ULocale$AliasReplacer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale$AliasReplacer;->replace()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 1738
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 1742
    :cond_4
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createCanonical(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;
    .locals 0

    .line 507
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->createCanonical(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public static createCanonical(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;
    .locals 3

    .line 497
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method private static createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3203
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3206
    invoke-static {p0, p1, p2, v1}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3212
    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3232
    invoke-static {v1, v1, v1, p3, v0}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3244
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3247
    invoke-static {p0, p1, v1, v1}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3253
    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3258
    invoke-static {v1, v1, p2, p3, v0}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3270
    :cond_1
    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3273
    invoke-static {p0, v1, p2, v1}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3279
    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3285
    invoke-static {v1, p1, v1, p3, v0}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3299
    :cond_2
    invoke-static {p0, v1, v1, v1}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3305
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 3311
    invoke-static {v1, p1, p2, p3, p0}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method static createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3117
    invoke-static {p0, p1, p2, p3, v0}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2985
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2986
    invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 2990
    :cond_0
    invoke-static {p4}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result p0

    const-string v1, "und"

    if-eqz p0, :cond_1

    .line 2995
    invoke-static {v1, v0}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    .line 3000
    :cond_1
    new-instance p0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {p0, p4}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 3002
    invoke-virtual {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 3009
    invoke-static {v2}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v1, v2

    .line 3008
    :cond_2
    invoke-static {v1, v0}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3013
    :goto_1
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3014
    invoke-static {p1, v0}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 3018
    :cond_3
    invoke-static {p4}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    if-nez p0, :cond_4

    .line 3023
    new-instance p0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {p0, p4}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 3026
    :cond_4
    invoke-virtual {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object p1

    .line 3028
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3029
    invoke-static {p1, v0}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3035
    :cond_5
    :goto_2
    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_6

    .line 3036
    invoke-static {p2, v0}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :goto_3
    const/4 p0, 0x1

    goto :goto_4

    .line 3042
    :cond_6
    invoke-static {p4}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    if-nez p0, :cond_7

    .line 3047
    new-instance p0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {p0, p4}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 3050
    :cond_7
    invoke-virtual {p0}, Lcom/ibm/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object p0

    .line 3052
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 3053
    invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_3

    :cond_8
    const/4 p0, 0x0

    :goto_4
    if-eqz p3, :cond_e

    .line 3061
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v2, :cond_e

    .line 3069
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/4 p2, 0x2

    const/16 p4, 0x5f

    if-ne p1, p4, :cond_9

    .line 3070
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, p4, :cond_a

    const/4 v1, 0x2

    goto :goto_5

    :cond_9
    const/4 v1, 0x1

    :cond_a
    :goto_5
    if-eqz p0, :cond_c

    if-ne v1, p2, :cond_b

    .line 3084
    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 3087
    :cond_b
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_c
    if-ne v1, v2, :cond_d

    .line 3096
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3098
    :cond_d
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3102
    :cond_e
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private extensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;
    .locals 6

    .line 4204
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->extensions:Lcom/ibm/icu/impl/locale/LocaleExtensions;

    if-nez v0, :cond_5

    .line 4205
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4207
    sget-object v0, Lcom/ibm/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Lcom/ibm/icu/impl/locale/LocaleExtensions;

    iput-object v0, p0, Lcom/ibm/icu/util/ULocale;->extensions:Lcom/ibm/icu/impl/locale/LocaleExtensions;

    goto/16 :goto_2

    .line 4209
    :cond_0
    new-instance v1, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    invoke-direct {v1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    .line 4210
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4211
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "attribute"

    .line 4212
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 4214
    invoke-virtual {p0, v2}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[-_]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4215
    array-length v3, v2

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 4217
    :try_start_0
    invoke-virtual {v1, v5}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->addUnicodeLocaleAttribute(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4222
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x2

    if-lt v3, v5, :cond_3

    .line 4223
    invoke-static {v2}, Lcom/ibm/icu/util/ULocale;->toUnicodeLocaleKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4224
    invoke-virtual {p0, v2}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ibm/icu/util/ULocale;->toUnicodeLocaleType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 4227
    :try_start_1
    invoke-virtual {v1, v3, v2}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    :try_end_1
    .catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    goto :goto_0

    .line 4232
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x75

    if-eq v3, v5, :cond_1

    .line 4234
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v2}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "_"

    const-string v5, "-"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setExtension(CLjava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    :try_end_2
    .catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 4241
    :cond_4
    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/util/ULocale;->extensions:Lcom/ibm/icu/impl/locale/LocaleExtensions;

    .line 4244
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->extensions:Lcom/ibm/icu/impl/locale/LocaleExtensions;

    return-object v0
.end method

.method public static forLanguageTag(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;
    .locals 1

    const/4 v0, 0x0

    .line 3621
    invoke-static {p0, v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->parse(Ljava/lang/String;Lcom/ibm/icu/impl/locale/ParseStatus;)Lcom/ibm/icu/impl/locale/LanguageTag;

    move-result-object p0

    .line 3622
    new-instance v0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    invoke-direct {v0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    .line 3623
    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setLanguageTag(Lcom/ibm/icu/impl/locale/LanguageTag;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    .line 3624
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->getBaseLocale()Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object p0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getInstance(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public static forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 429
    :cond_0
    sget-object v1, Lcom/ibm/icu/util/ULocale;->CACHE:Lcom/ibm/icu/impl/SoftCache;

    invoke-virtual {v1, p0, v0}, Lcom/ibm/icu/impl/SoftCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/ULocale;

    return-object p0
.end method

.method public static getAvailableLocales()[Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 848
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, [Lcom/ibm/icu/util/ULocale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/ULocale;

    return-object v0
.end method

.method public static getAvailableLocalesByType(Lcom/ibm/icu/util/ULocale$AvailableType;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/ULocale$AvailableType;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/ibm/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 861
    sget-object v0, Lcom/ibm/icu/util/ULocale$AvailableType;->WITH_LEGACY_ALIASES:Lcom/ibm/icu/util/ULocale$AvailableType;

    if-ne p0, v0, :cond_0

    .line 862
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 863
    sget-object v0, Lcom/ibm/icu/util/ULocale$AvailableType;->DEFAULT:Lcom/ibm/icu/util/ULocale$AvailableType;

    .line 864
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales(Lcom/ibm/icu/util/ULocale$AvailableType;)[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 863
    invoke-static {p0, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 865
    sget-object v0, Lcom/ibm/icu/util/ULocale$AvailableType;->ONLY_LEGACY_ALIASES:Lcom/ibm/icu/util/ULocale$AvailableType;

    .line 866
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales(Lcom/ibm/icu/util/ULocale$AvailableType;)[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 865
    invoke-static {p0, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 868
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailableULocales(Lcom/ibm/icu/util/ULocale$AvailableType;)[Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 870
    :goto_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 858
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x40

    .line 1083
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 1086
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getBaseName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCountry(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 958
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefault()Lcom/ibm/icu/util/ULocale;
    .locals 8

    .line 586
    const-class v0, Lcom/ibm/icu/util/ULocale;

    monitor-enter v0

    .line 587
    :try_start_0
    sget-object v1, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    if-nez v1, :cond_0

    .line 596
    sget-object v1, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    monitor-exit v0

    return-object v1

    .line 598
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 599
    sget-object v2, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 600
    sput-object v1, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    .line 601
    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    sput-object v2, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    .line 603
    invoke-static {}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories()Z

    move-result v2

    if-nez v2, :cond_1

    .line 607
    invoke-static {}, Lcom/ibm/icu/util/ULocale$Category;->values()[Lcom/ibm/icu/util/ULocale$Category;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 608
    invoke-virtual {v5}, Lcom/ibm/icu/util/ULocale$Category;->ordinal()I

    move-result v5

    .line 609
    sget-object v6, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aput-object v1, v6, v5

    .line 610
    sget-object v6, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 613
    :cond_1
    sget-object v1, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 614
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public static getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;
    .locals 8

    .line 652
    const-class v0, Lcom/ibm/icu/util/ULocale;

    monitor-enter v0

    .line 653
    :try_start_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale$Category;->ordinal()I

    move-result v1

    .line 654
    sget-object v2, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 658
    sget-object p0, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    monitor-exit v0

    return-object p0

    .line 660
    :cond_0
    invoke-static {}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 661
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Ljava/util/Locale;

    move-result-object p0

    .line 662
    sget-object v2, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 663
    sget-object v2, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aput-object p0, v2, v1

    .line 664
    sget-object v2, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    aput-object p0, v2, v1

    goto :goto_1

    .line 679
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 680
    sget-object v2, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {v2, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 681
    sput-object p0, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    .line 682
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    sput-object v2, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    .line 684
    invoke-static {}, Lcom/ibm/icu/util/ULocale$Category;->values()[Lcom/ibm/icu/util/ULocale$Category;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 685
    invoke-virtual {v5}, Lcom/ibm/icu/util/ULocale$Category;->ordinal()I

    move-result v5

    .line 686
    sget-object v6, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aput-object p0, v6, v5

    .line 687
    sget-object v6, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 694
    :cond_2
    :goto_1
    sget-object p0, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    aget-object p0, p0, v1

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 695
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static getDisplayCountry(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 2185
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/ibm/icu/util/ULocale;->getDisplayCountryInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayCountry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2171
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, p1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/ibm/icu/util/ULocale;->getDisplayCountryInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDisplayCountryInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 2190
    invoke-static {p1}, Lcom/ibm/icu/text/LocaleDisplayNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/LocaleDisplayNames;

    move-result-object p1

    .line 2191
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayKeyword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2252
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayKeywordInternal(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayKeyword(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 2276
    invoke-static {p0, p1}, Lcom/ibm/icu/util/ULocale;->getDisplayKeywordInternal(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2264
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayKeywordInternal(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDisplayKeywordInternal(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 2280
    invoke-static {p1}, Lcom/ibm/icu/text/LocaleDisplayNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/LocaleDisplayNames;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/LocaleDisplayNames;->keyDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayKeywordValue(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 2331
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/ibm/icu/util/ULocale;->getDisplayKeywordValueInternal(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayKeywordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2316
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, p2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p0}, Lcom/ibm/icu/util/ULocale;->getDisplayKeywordValueInternal(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDisplayKeywordValueInternal(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 2337
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2338
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2339
    invoke-static {p2}, Lcom/ibm/icu/text/LocaleDisplayNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/LocaleDisplayNames;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/ibm/icu/text/LocaleDisplayNames;->keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayLanguage(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 1976
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {v0, p1, p0}, Lcom/ibm/icu/util/ULocale;->getDisplayLanguageInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1963
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, p1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Lcom/ibm/icu/util/ULocale;->getDisplayLanguageInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDisplayLanguageInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 2029
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    .line 2030
    :goto_0
    invoke-static {p1}, Lcom/ibm/icu/text/LocaleDisplayNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/LocaleDisplayNames;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/LocaleDisplayNames;->languageDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayLanguageWithDialect(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 2024
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {v0, p1, p0}, Lcom/ibm/icu/util/ULocale;->getDisplayLanguageInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayLanguageWithDialect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2010
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, p1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p0, p1}, Lcom/ibm/icu/util/ULocale;->getDisplayLanguageInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayName(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 2383
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/ibm/icu/util/ULocale;->getDisplayNameInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2371
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, p1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/ibm/icu/util/ULocale;->getDisplayNameInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDisplayNameInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 2387
    invoke-static {p1}, Lcom/ibm/icu/text/LocaleDisplayNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/LocaleDisplayNames;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/LocaleDisplayNames;->localeDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayNameWithDialect(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 2436
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/ibm/icu/util/ULocale;->getDisplayNameWithDialectInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayNameWithDialect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2422
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, p1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/ibm/icu/util/ULocale;->getDisplayNameWithDialectInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDisplayNameWithDialectInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 2440
    sget-object v0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    invoke-static {p1, v0}, Lcom/ibm/icu/text/LocaleDisplayNames;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;)Lcom/ibm/icu/text/LocaleDisplayNames;

    move-result-object p1

    .line 2441
    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/LocaleDisplayNames;->localeDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayScript(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 2110
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/ibm/icu/util/ULocale;->getDisplayScriptInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayScript(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2086
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, p1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/ibm/icu/util/ULocale;->getDisplayScriptInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayScriptInContext(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2122
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/ibm/icu/util/ULocale;->getDisplayScriptInContextInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayScriptInContext(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2099
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, p1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/ibm/icu/util/ULocale;->getDisplayScriptInContextInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDisplayScriptInContextInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 2132
    invoke-static {p1}, Lcom/ibm/icu/text/LocaleDisplayNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/LocaleDisplayNames;

    move-result-object p1

    .line 2133
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/LocaleDisplayNames;->scriptDisplayNameInContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDisplayScriptInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 2127
    invoke-static {p1}, Lcom/ibm/icu/text/LocaleDisplayNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/LocaleDisplayNames;

    move-result-object p1

    .line 2128
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/LocaleDisplayNames;->scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayVariant(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 2235
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/ibm/icu/util/ULocale;->getDisplayVariantInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayVariant(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2223
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, p1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/ibm/icu/util/ULocale;->getDisplayVariantInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDisplayVariantInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 2239
    invoke-static {p1}, Lcom/ibm/icu/text/LocaleDisplayNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/LocaleDisplayNames;

    move-result-object p1

    .line 2240
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ibm/icu/text/LocaleDisplayNames;->variantDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1025
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->getFallbackString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFallbackString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x40

    .line 1044
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1046
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    const/16 v2, 0x5f

    .line 1048
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    if-lez v3, :cond_3

    add-int/lit8 v1, v3, -0x1

    .line 1054
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1060
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getISO3Country(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1881
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->getCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/impl/LocaleIDs;->getISO3Country(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getISO3Language(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1857
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->getLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/impl/LocaleIDs;->getISO3Language(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getISOCountries()[Ljava/lang/String;
    .locals 1

    .line 879
    invoke-static {}, Lcom/ibm/icu/impl/LocaleIDs;->getISOCountries()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getISOLanguages()[Ljava/lang/String;
    .locals 1

    .line 891
    invoke-static {}, Lcom/ibm/icu/impl/LocaleIDs;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/util/ULocale;
    .locals 9

    .line 4121
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    .line 4122
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 4121
    invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/util/ULocale;->lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4124
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v1

    .line 4125
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 4130
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 4131
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    .line 4132
    invoke-virtual {p1, v3}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Lcom/ibm/icu/impl/locale/Extension;

    move-result-object v4

    .line 4133
    instance-of v5, v4, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;

    if-eqz v5, :cond_6

    .line 4134
    check-cast v4, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;

    .line 4135
    invoke-virtual {v4}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v3

    .line 4136
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4137
    invoke-virtual {v4, v5}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4139
    invoke-static {v5}, Lcom/ibm/icu/util/ULocale;->toLegacyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4140
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    const-string v6, "yes"

    :cond_1
    invoke-static {v5, v6}, Lcom/ibm/icu/util/ULocale;->toLegacyType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "va"

    .line 4142
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "posix"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 4143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_POSIX"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 4145
    :cond_2
    invoke-virtual {v2, v7, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4149
    :cond_3
    invoke-virtual {v4}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object v3

    .line 4150
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 4151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 4152
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4153
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    const/16 v6, 0x2d

    .line 4154
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4156
    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 4158
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "attribute"

    invoke-virtual {v2, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4161
    :cond_6
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/ibm/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 4165
    :cond_7
    invoke-virtual {v2}, Ljava/util/TreeMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    .line 4166
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "@"

    .line 4167
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4168
    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x0

    .line 4170
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_8

    const-string v2, ";"

    .line 4172
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    const/4 v0, 0x1

    .line 4176
    :goto_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 4177
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4178
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 4181
    :cond_9
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4184
    :cond_a
    new-instance p0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getKeywordValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1202
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/LocaleIDParser;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getKeywords(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1180
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getKeywords()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static getLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 914
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_0

    const-string v1, "@"

    .line 1139
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->getShortestSubtagLength(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1140
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1141
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_0
    const-string v1, "root"

    .line 1144
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move-object p0, v0

    goto :goto_0

    .line 1147
    :cond_2
    sget-object v1, Lcom/ibm/icu/util/ULocale;->UND_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1149
    :goto_0
    sget-object v0, Lcom/ibm/icu/util/ULocale;->nameCache:Lcom/ibm/icu/impl/CacheBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getRegionForSupplementalData(Lcom/ibm/icu/util/ULocale;Z)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "rg"

    .line 984
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 985
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 986
    invoke-static {v0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZZZZ"

    .line 987
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x2

    .line 988
    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 991
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 992
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 993
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->addLikelySubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    .line 994
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 935
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getShortestSubtagLength(Ljava/lang/String;)I
    .locals 9

    .line 1106
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v4, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    if-ge v3, v0, :cond_3

    .line 1112
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5f

    if-eq v7, v8, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_1

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_0
    add-int/2addr v5, v2

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    if-ge v5, v4, :cond_2

    move v4, v5

    :cond_2
    const/4 v6, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method public static getVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1016
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isEmptyString(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 2943
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static declared-synchronized isKnownCanonicalizedLocale(Ljava/lang/String;)Z
    .locals 5

    const-class v0, Lcom/ibm/icu/util/ULocale;

    monitor-enter v0

    :try_start_0
    const-string v1, "c"

    .line 1746
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const-string v1, "en"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "en_US"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 1749
    :cond_0
    sget-object v1, Lcom/ibm/icu/util/ULocale;->gKnownCanonicalizedCases:Ljava/util/Set;

    if-nez v1, :cond_1

    const/16 v1, 0xb1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "af"

    aput-object v4, v1, v3

    const-string v3, "af_ZA"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "am"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "am_ET"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "ar"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "ar_001"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "as"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "as_IN"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "az"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "az_AZ"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "be"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "be_BY"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "bg"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "bg_BG"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "bn"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "bn_IN"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "bs"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "bs_BA"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "ca"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "ca_ES"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "cs"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "cs_CZ"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "cy"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "cy_GB"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "da"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "da_DK"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "de"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "de_DE"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "el"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "el_GR"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "en"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "en_GB"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "en_US"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "es"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "es_419"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "es_ES"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "et"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "et_EE"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "eu"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "eu_ES"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "fa"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "fa_IR"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "fi"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "fi_FI"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "fil"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "fil_PH"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "fr"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "fr_FR"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "ga"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "ga_IE"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "gl"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "gl_ES"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "gu"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "gu_IN"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "he"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "he_IL"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "hi"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "hi_IN"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "hr"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "hr_HR"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "hu"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "hu_HU"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "hy"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "hy_AM"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "id"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "id_ID"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "is"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "is_IS"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "it"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "it_IT"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "ja"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "ja_JP"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "jv"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "jv_ID"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "ka"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "ka_GE"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "kk"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "kk_KZ"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "km"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "km_KH"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "kn"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "kn_IN"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "ko"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "ko_KR"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "ky"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "ky_KG"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "lo"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string v3, "lo_LA"

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "lt"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string v3, "lt_LT"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "lv"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "lv_LV"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "mk"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "mk_MK"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "ml"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "ml_IN"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, "mn"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string v3, "mn_MN"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string v3, "mr"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-string v3, "mr_IN"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "ms"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-string v3, "ms_MY"

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-string v3, "my"

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string v3, "my_MM"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string v3, "nb"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string v3, "nb_NO"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, "ne"

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    const-string v3, "ne_NP"

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    const-string v3, "nl"

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    const-string v3, "nl_NL"

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    const-string v3, "no"

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    const-string v3, "or"

    aput-object v3, v1, v2

    const/16 v2, 0x70

    const-string v3, "or_IN"

    aput-object v3, v1, v2

    const/16 v2, 0x71

    const-string v3, "pa"

    aput-object v3, v1, v2

    const/16 v2, 0x72

    const-string v3, "pa_IN"

    aput-object v3, v1, v2

    const/16 v2, 0x73

    const-string v3, "pl"

    aput-object v3, v1, v2

    const/16 v2, 0x74

    const-string v3, "pl_PL"

    aput-object v3, v1, v2

    const/16 v2, 0x75

    const-string v3, "ps"

    aput-object v3, v1, v2

    const/16 v2, 0x76

    const-string v3, "ps_AF"

    aput-object v3, v1, v2

    const/16 v2, 0x77

    const-string v3, "pt"

    aput-object v3, v1, v2

    const/16 v2, 0x78

    const-string v3, "pt_BR"

    aput-object v3, v1, v2

    const/16 v2, 0x79

    const-string v3, "pt_PT"

    aput-object v3, v1, v2

    const/16 v2, 0x7a

    const-string v3, "ro"

    aput-object v3, v1, v2

    const/16 v2, 0x7b

    const-string v3, "ro_RO"

    aput-object v3, v1, v2

    const/16 v2, 0x7c

    const-string v3, "ru"

    aput-object v3, v1, v2

    const/16 v2, 0x7d

    const-string v3, "ru_RU"

    aput-object v3, v1, v2

    const/16 v2, 0x7e

    const-string v3, "sd"

    aput-object v3, v1, v2

    const/16 v2, 0x7f

    const-string v3, "sd_IN"

    aput-object v3, v1, v2

    const/16 v2, 0x80

    const-string v3, "si"

    aput-object v3, v1, v2

    const/16 v2, 0x81

    const-string v3, "si_LK"

    aput-object v3, v1, v2

    const/16 v2, 0x82

    const-string v3, "sk"

    aput-object v3, v1, v2

    const/16 v2, 0x83

    const-string v3, "sk_SK"

    aput-object v3, v1, v2

    const/16 v2, 0x84

    const-string v3, "sl"

    aput-object v3, v1, v2

    const/16 v2, 0x85

    const-string v3, "sl_SI"

    aput-object v3, v1, v2

    const/16 v2, 0x86

    const-string v3, "so"

    aput-object v3, v1, v2

    const/16 v2, 0x87

    const-string v3, "so_SO"

    aput-object v3, v1, v2

    const/16 v2, 0x88

    const-string v3, "sq"

    aput-object v3, v1, v2

    const/16 v2, 0x89

    const-string v3, "sq_AL"

    aput-object v3, v1, v2

    const/16 v2, 0x8a

    const-string v3, "sr"

    aput-object v3, v1, v2

    const/16 v2, 0x8b

    const-string v3, "sr_Cyrl_RS"

    aput-object v3, v1, v2

    const/16 v2, 0x8c

    const-string v3, "sr_Latn"

    aput-object v3, v1, v2

    const/16 v2, 0x8d

    const-string v3, "sr_RS"

    aput-object v3, v1, v2

    const/16 v2, 0x8e

    const-string v3, "sv"

    aput-object v3, v1, v2

    const/16 v2, 0x8f

    const-string v3, "sv_SE"

    aput-object v3, v1, v2

    const/16 v2, 0x90

    const-string v3, "sw"

    aput-object v3, v1, v2

    const/16 v2, 0x91

    const-string v3, "sw_TZ"

    aput-object v3, v1, v2

    const/16 v2, 0x92

    const-string v3, "ta"

    aput-object v3, v1, v2

    const/16 v2, 0x93

    const-string v3, "ta_IN"

    aput-object v3, v1, v2

    const/16 v2, 0x94

    const-string v3, "te"

    aput-object v3, v1, v2

    const/16 v2, 0x95

    const-string v3, "te_IN"

    aput-object v3, v1, v2

    const/16 v2, 0x96

    const-string v3, "th"

    aput-object v3, v1, v2

    const/16 v2, 0x97

    const-string v3, "th_TH"

    aput-object v3, v1, v2

    const/16 v2, 0x98

    const-string v3, "tk"

    aput-object v3, v1, v2

    const/16 v2, 0x99

    const-string v3, "tk_TM"

    aput-object v3, v1, v2

    const/16 v2, 0x9a

    const-string v3, "tr"

    aput-object v3, v1, v2

    const/16 v2, 0x9b

    const-string v3, "tr_TR"

    aput-object v3, v1, v2

    const/16 v2, 0x9c

    const-string v3, "uk"

    aput-object v3, v1, v2

    const/16 v2, 0x9d

    const-string v3, "uk_UA"

    aput-object v3, v1, v2

    const/16 v2, 0x9e

    const-string v3, "ur"

    aput-object v3, v1, v2

    const/16 v2, 0x9f

    const-string v3, "ur_PK"

    aput-object v3, v1, v2

    const/16 v2, 0xa0

    const-string v3, "uz"

    aput-object v3, v1, v2

    const/16 v2, 0xa1

    const-string v3, "uz_UZ"

    aput-object v3, v1, v2

    const/16 v2, 0xa2

    const-string v3, "vi"

    aput-object v3, v1, v2

    const/16 v2, 0xa3

    const-string v3, "vi_VN"

    aput-object v3, v1, v2

    const/16 v2, 0xa4

    const-string v3, "yue"

    aput-object v3, v1, v2

    const/16 v2, 0xa5

    const-string v3, "yue_Hant"

    aput-object v3, v1, v2

    const/16 v2, 0xa6

    const-string v3, "yue_Hant_HK"

    aput-object v3, v1, v2

    const/16 v2, 0xa7

    const-string v3, "yue_HK"

    aput-object v3, v1, v2

    const/16 v2, 0xa8

    const-string v3, "zh"

    aput-object v3, v1, v2

    const/16 v2, 0xa9

    const-string v3, "zh_CN"

    aput-object v3, v1, v2

    const/16 v2, 0xaa

    const-string v3, "zh_Hans"

    aput-object v3, v1, v2

    const/16 v2, 0xab

    const-string v3, "zh_Hans_CN"

    aput-object v3, v1, v2

    const/16 v2, 0xac

    const-string v3, "zh_Hant"

    aput-object v3, v1, v2

    const/16 v2, 0xad

    const-string v3, "zh_Hant_TW"

    aput-object v3, v1, v2

    const/16 v2, 0xae

    const-string v3, "zh_TW"

    aput-object v3, v1, v2

    const/16 v2, 0xaf

    const-string v3, "zu"

    aput-object v3, v1, v2

    const/16 v2, 0xb0

    const-string v3, "zu_ZA"

    aput-object v3, v1, v2

    .line 1750
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1770
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v2, Lcom/ibm/icu/util/ULocale;->gKnownCanonicalizedCases:Ljava/util/Set;

    .line 1773
    :cond_1
    sget-object v1, Lcom/ibm/icu/util/ULocale;->gKnownCanonicalizedCases:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    .line 1747
    :cond_2
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com/ibm/icu/impl/data/icudt69b"

    const-string v1, "likelySubtags"

    .line 3187
    invoke-static {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 3190
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    .line 513
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 514
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 p0, 0x5f

    if-eqz p1, :cond_1

    .line 516
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 517
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p2, :cond_2

    .line 520
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 521
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p3, :cond_5

    .line 524
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_5

    if-eqz p2, :cond_3

    .line 525
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    .line 526
    :cond_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 528
    :cond_4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static minimizeSubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 2731
    sget-object v0, Lcom/ibm/icu/util/ULocale$Minimize;->FAVOR_REGION:Lcom/ibm/icu/util/ULocale$Minimize;

    invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->minimizeSubtags(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale$Minimize;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public static minimizeSubtags(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale$Minimize;)Lcom/ibm/icu/util/ULocale;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 2791
    iget-object v1, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ibm/icu/util/ULocale;->parseTagString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v0, v0, v4

    .line 2800
    iget-object v4, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    if-ge v1, v4, :cond_0

    .line 2805
    iget-object v4, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v5

    .line 2813
    :goto_0
    invoke-static {v2, v3, v0, v5}, Lcom/ibm/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2823
    invoke-static {v4}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object p0

    .line 2831
    :cond_1
    invoke-static {v2, v5, v5, v5}, Lcom/ibm/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2837
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2839
    invoke-static {v2, v5, v5, v1}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2845
    new-instance p1, Lcom/ibm/icu/util/ULocale;

    invoke-direct {p1, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 2852
    :cond_2
    sget-object v6, Lcom/ibm/icu/util/ULocale$Minimize;->FAVOR_REGION:Lcom/ibm/icu/util/ULocale$Minimize;

    if-ne p1, v6, :cond_4

    .line 2853
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_3

    .line 2855
    invoke-static {v2, v5, v0, v5}, Lcom/ibm/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2861
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2863
    invoke-static {v2, v5, v0, v1}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2869
    new-instance p1, Lcom/ibm/icu/util/ULocale;

    invoke-direct {p1, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 2872
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_6

    .line 2874
    invoke-static {v2, v3, v5, v5}, Lcom/ibm/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2880
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2882
    invoke-static {v2, v3, v5, v1}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2888
    new-instance p1, Lcom/ibm/icu/util/ULocale;

    invoke-direct {p1, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 2892
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_5

    .line 2894
    invoke-static {v2, v3, v5, v5}, Lcom/ibm/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2900
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2902
    invoke-static {v2, v3, v5, v1}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2908
    new-instance p1, Lcom/ibm/icu/util/ULocale;

    invoke-direct {p1, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 2911
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_6

    .line 2913
    invoke-static {v2, v5, v0, v5}, Lcom/ibm/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2919
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2921
    invoke-static {v2, v5, v0, v1}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2927
    new-instance p1, Lcom/ibm/icu/util/ULocale;

    invoke-direct {p1, p0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_6
    return-object p0
.end method

.method private static parseTagString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .line 3130
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 3132
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 3133
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object v2

    .line 3134
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 3136
    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const-string v1, "und"

    .line 3137
    aput-object v1, p1, v5

    goto :goto_0

    .line 3140
    :cond_0
    aput-object v1, p1, v5

    :goto_0
    const-string v1, "Zzzz"

    .line 3143
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, ""

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 3144
    aput-object v4, p1, v5

    goto :goto_1

    .line 3147
    :cond_1
    aput-object v2, p1, v5

    :goto_1
    const-string v1, "ZZ"

    .line 3150
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    .line 3151
    aput-object v4, p1, v2

    goto :goto_2

    .line 3154
    :cond_2
    aput-object v3, p1, v2

    .line 3169
    :goto_2
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    move-result-object p1

    .line 3171
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3172
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_3

    add-int/lit8 p0, p0, -0x1

    :cond_3
    return p0

    :cond_4
    const/16 p1, 0x40

    .line 3179
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    .line 3181
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    :cond_5
    return p1
.end method

.method public static declared-synchronized setDefault(Lcom/ibm/icu/util/ULocale$Category;Lcom/ibm/icu/util/ULocale;)V
    .locals 4

    const-class v0, Lcom/ibm/icu/util/ULocale;

    monitor-enter v0

    .line 712
    :try_start_0
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v1

    .line 713
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale$Category;->ordinal()I

    move-result v2

    .line 714
    sget-object v3, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    aput-object p1, v3, v2

    .line 715
    sget-object p1, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aput-object v1, p1, v2

    .line 716
    invoke-static {p0, v1}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->setDefault(Lcom/ibm/icu/util/ULocale$Category;Ljava/util/Locale;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setDefault(Lcom/ibm/icu/util/ULocale;)V
    .locals 5

    const-class v0, Lcom/ibm/icu/util/ULocale;

    monitor-enter v0

    .line 635
    :try_start_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    .line 636
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 637
    sput-object p0, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    .line 639
    invoke-static {}, Lcom/ibm/icu/util/ULocale$Category;->values()[Lcom/ibm/icu/util/ULocale$Category;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 640
    invoke-static {v4, p0}, Lcom/ibm/icu/util/ULocale;->setDefault(Lcom/ibm/icu/util/ULocale$Category;Lcom/ibm/icu/util/ULocale;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 642
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static setKeywordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1812
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 1813
    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/impl/LocaleIDParser;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toLegacyKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3705
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/KeyTypeData;->toLegacyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "[0-9a-zA-Z]+"

    .line 3715
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3716
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static toLegacyType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3749
    invoke-static {p0, p1, v0, v0}, Lcom/ibm/icu/impl/locale/KeyTypeData;->toLegacyType(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/util/Output;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string v0, "[0-9a-zA-Z]+([_/\\-][0-9a-zA-Z]+)*"

    .line 3760
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3761
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static toUnicodeLocaleKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3648
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/KeyTypeData;->toBcpKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3649
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3651
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static toUnicodeLocaleType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3684
    invoke-static {p0, p1, v0, v0}, Lcom/ibm/icu/impl/locale/KeyTypeData;->toBcpType(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/util/Output;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 3685
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->isType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3687
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public compareTo(Lcom/ibm/icu/util/ULocale;)I
    .locals 8

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 779
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-nez v1, :cond_a

    .line 782
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    .line 785
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    .line 788
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    .line 791
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v4

    .line 792
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v5

    if-nez v4, :cond_1

    if-nez v5, :cond_9

    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    if-nez v5, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    :goto_0
    if-nez v1, :cond_8

    .line 800
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 801
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    .line 806
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 807
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 808
    invoke-virtual {v1, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    .line 811
    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 812
    invoke-virtual {p1, v6}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v1, :cond_5

    if-nez v6, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/4 v1, -0x1

    goto :goto_0

    :cond_5
    if-nez v6, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    .line 818
    :cond_6
    invoke-virtual {v1, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_7
    move v1, v7

    goto :goto_0

    :cond_8
    :goto_1
    if-nez v1, :cond_a

    .line 822
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    const/4 v1, -0x1

    :cond_a
    :goto_2
    if-gez v1, :cond_b

    const/4 v0, -0x1

    goto :goto_3

    :cond_b
    if-lez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    :goto_3
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 117
    check-cast p1, Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/ULocale;->compareTo(Lcom/ibm/icu/util/ULocale;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 753
    :cond_0
    instance-of v0, p1, Lcom/ibm/icu/util/ULocale;

    if-eqz v0, :cond_1

    .line 754
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    check-cast p1, Lcom/ibm/icu/util/ULocale;

    iget-object p1, p1, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getBaseName()Ljava/lang/String;
    .locals 1

    .line 1071
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterOrientation()Ljava/lang/String;
    .locals 3

    const-string v0, "com/ibm/icu/impl/data/icudt69b"

    const-string v1, "layout"

    const-string v2, "characters"

    .line 2452
    invoke-static {v0, p0, v1, v2, v2}, Lcom/ibm/icu/impl/ICUResourceTableAccess;->getTableString(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 946
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->base()Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayCountry()Ljava/lang/String;
    .locals 1

    .line 2145
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayCountryInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayCountry(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 2157
    invoke-static {p0, p1}, Lcom/ibm/icu/util/ULocale;->getDisplayCountryInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayKeywordValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2291
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayKeywordValueInternal(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayKeywordValue(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 2302
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/util/ULocale;->getDisplayKeywordValueInternal(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayLanguage()Ljava/lang/String;
    .locals 2

    .line 1941
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ibm/icu/util/ULocale;->getDisplayLanguageInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayLanguage(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1951
    invoke-static {p0, p1, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayLanguageInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayLanguageWithDialect()Ljava/lang/String;
    .locals 2

    .line 1986
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/ibm/icu/util/ULocale;->getDisplayLanguageInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayLanguageWithDialect(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1997
    invoke-static {p0, p1, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayLanguageInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 2349
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayNameInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 2359
    invoke-static {p0, p1}, Lcom/ibm/icu/util/ULocale;->getDisplayNameInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayNameWithDialect()Ljava/lang/String;
    .locals 1

    .line 2398
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayNameWithDialectInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNameWithDialect(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 2409
    invoke-static {p0, p1}, Lcom/ibm/icu/util/ULocale;->getDisplayNameWithDialectInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayScript()Ljava/lang/String;
    .locals 1

    .line 2040
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayScriptInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayScript(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 2062
    invoke-static {p0, p1}, Lcom/ibm/icu/util/ULocale;->getDisplayScriptInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayScriptInContext()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2052
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayScriptInContextInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayScriptInContext(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2074
    invoke-static {p0, p1}, Lcom/ibm/icu/util/ULocale;->getDisplayScriptInContextInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayVariant()Ljava/lang/String;
    .locals 1

    .line 2201
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayVariantInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayVariant(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 2211
    invoke-static {p0, p1}, Lcom/ibm/icu/util/ULocale;->getDisplayVariantInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExtension(C)Ljava/lang/String;
    .locals 3

    .line 3364
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->isValidKey(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3367
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->extensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getExtensionValue(Ljava/lang/Character;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3365
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid extension key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtensionKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 3380
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->extensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFallback()Lcom/ibm/icu/util/ULocale;
    .locals 4

    .line 1034
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x40

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1037
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    iget-object v2, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v2}, Lcom/ibm/icu/util/ULocale;->getFallbackString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/util/Locale;

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getISO3Country()Ljava/lang/String;
    .locals 1

    .line 1869
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getISO3Country(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getISO3Language()Ljava/lang/String;
    .locals 1

    .line 1843
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getISO3Language(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeywordValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1191
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKeywords()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1169
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getKeywords(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 902
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->base()Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineOrientation()Ljava/lang/String;
    .locals 3

    const-string v0, "com/ibm/icu/impl/data/icudt69b"

    const-string v1, "layout"

    const-string v2, "lines"

    .line 2464
    invoke-static {v0, p0, v1, v2, v2}, Lcom/ibm/icu/impl/ICUResourceTableAccess;->getTableString(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1096
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    .line 924
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->base()Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeLocaleAttributes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3392
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->extensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeLocaleKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3427
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->extensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 3411
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->isValidUnicodeLocaleKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3414
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->extensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3412
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Unicode locale key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    .line 1006
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->base()Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isRightToLeft()Z
    .locals 4

    .line 1906
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 1907
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 1910
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1911
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "root-en-es-pt-zh-ja-ko-de-fr-it-ar+he+fa+ru-nl-pl-th-tr-"

    .line 1912
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 1914
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1922
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->addLikelySubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 1923
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 1924
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1928
    :cond_3
    invoke-static {v0}, Lcom/ibm/icu/lang/UScript;->getCodeFromName(Ljava/lang/String;)I

    move-result v0

    .line 1929
    invoke-static {v0}, Lcom/ibm/icu/lang/UScript;->isRightToLeft(I)Z

    move-result v0

    return v0
.end method

.method public setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;
    .locals 2

    .line 1793
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    iget-object v1, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Lcom/ibm/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    move-object v1, p2

    check-cast v1, Ljava/util/Locale;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public toLanguageTag()Ljava/lang/String;
    .locals 5

    .line 3486
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->base()Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    .line 3487
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->extensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;

    move-result-object v1

    .line 3489
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POSIX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3491
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-static {v2, v3, v0, v4}, Lcom/ibm/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    const-string v2, "va"

    .line 3492
    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3494
    new-instance v3, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    invoke-direct {v3}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    .line 3496
    :try_start_0
    sget-object v4, Lcom/ibm/icu/impl/locale/BaseLocale;->ROOT:Lcom/ibm/icu/impl/locale/BaseLocale;

    invoke-virtual {v3, v4, v1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setLocale(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    const-string v1, "posix"

    .line 3497
    invoke-virtual {v3, v2, v1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    .line 3498
    invoke-virtual {v3}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;

    move-result-object v1
    :try_end_0
    .catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3501
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3506
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/locale/LanguageTag;->parseLocale(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/impl/locale/LanguageTag;

    move-result-object v0

    .line 3508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3509
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 3510
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 3511
    invoke-static {v2}, Lcom/ibm/icu/impl/locale/LanguageTag;->canonicalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3514
    :cond_1
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->getScript()Ljava/lang/String;

    move-result-object v2

    .line 3515
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "-"

    if-lez v3, :cond_2

    .line 3516
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3517
    invoke-static {v2}, Lcom/ibm/icu/impl/locale/LanguageTag;->canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3520
    :cond_2
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->getRegion()Ljava/lang/String;

    move-result-object v2

    .line 3521
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 3522
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3523
    invoke-static {v2}, Lcom/ibm/icu/impl/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3526
    :cond_3
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->getVariants()Ljava/util/List;

    move-result-object v2

    .line 3528
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3529
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3530
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3531
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3532
    invoke-static {v3}, Lcom/ibm/icu/impl/locale/LanguageTag;->canonicalizeVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3535
    :cond_4
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->getExtensions()Ljava/util/List;

    move-result-object v2

    .line 3536
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3537
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3538
    invoke-static {v3}, Lcom/ibm/icu/impl/locale/LanguageTag;->canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3541
    :cond_5
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->getPrivateuse()Ljava/lang/String;

    move-result-object v0

    .line 3542
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 3543
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "und"

    .line 3544
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3546
    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "x"

    .line 3547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3548
    invoke-static {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->canonicalizePrivateuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3551
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toLocale()Ljava/util/Locale;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 542
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->toLocale(Lcom/ibm/icu/util/ULocale;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/util/ULocale;->locale:Ljava/util/Locale;

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1159
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    return-object v0
.end method
