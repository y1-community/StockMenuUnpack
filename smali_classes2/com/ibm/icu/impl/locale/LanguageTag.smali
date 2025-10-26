.class public Lcom/ibm/icu/impl/locale/LanguageTag;
.super Ljava/lang/Object;
.source "LanguageTag.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final JDKIMPL:Z = false

.field private static final LEGACY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ibm/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATEUSE:Ljava/lang/String; = "x"

.field public static final PRIVUSE_VARIANT_PREFIX:Ljava/lang/String; = "lvariant"

.field public static final SEP:Ljava/lang/String; = "-"

.field public static UNDETERMINED:Ljava/lang/String; = "und"


# instance fields
.field private _extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _extlangs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _language:Ljava/lang/String;

.field private _privateuse:Ljava/lang/String;

.field private _region:Ljava/lang/String;

.field private _script:Ljava/lang/String;

.field private _variants:Ljava/util/List;
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
    .locals 9

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/locale/LanguageTag;->LEGACY:Ljava/util/Map;

    const/16 v0, 0x1a

    new-array v1, v0, [[Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "art-lojban"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "jbo"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    aput-object v3, v1, v5

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "cel-gaulish"

    aput-object v4, v3, v5

    const-string v4, "xtg"

    aput-object v4, v3, v6

    aput-object v3, v1, v6

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "en-GB-oed"

    aput-object v4, v3, v5

    const-string v4, "en-GB-x-oed"

    aput-object v4, v3, v6

    aput-object v3, v1, v2

    const/4 v3, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const-string v7, "i-ami"

    aput-object v7, v4, v5

    const-string v7, "ami"

    aput-object v7, v4, v6

    aput-object v4, v1, v3

    const/4 v3, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const-string v7, "i-bnn"

    aput-object v7, v4, v5

    const-string v7, "bnn"

    aput-object v7, v4, v6

    aput-object v4, v1, v3

    const/4 v3, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const-string v7, "i-default"

    aput-object v7, v4, v5

    const-string v7, "en-x-i-default"

    aput-object v7, v4, v6

    aput-object v4, v1, v3

    const/4 v3, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const-string v7, "i-enochian"

    aput-object v7, v4, v5

    const-string v7, "und-x-i-enochian"

    aput-object v7, v4, v6

    aput-object v4, v1, v3

    const/4 v3, 0x7

    new-array v4, v2, [Ljava/lang/String;

    const-string v7, "i-hak"

    aput-object v7, v4, v5

    const-string v7, "hak"

    aput-object v7, v4, v6

    aput-object v4, v1, v3

    const/16 v3, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const-string v8, "i-klingon"

    aput-object v8, v4, v5

    const-string v8, "tlh"

    aput-object v8, v4, v6

    aput-object v4, v1, v3

    const/16 v3, 0x9

    new-array v4, v2, [Ljava/lang/String;

    const-string v8, "i-lux"

    aput-object v8, v4, v5

    const-string v8, "lb"

    aput-object v8, v4, v6

    aput-object v4, v1, v3

    const/16 v3, 0xa

    new-array v4, v2, [Ljava/lang/String;

    const-string v8, "i-mingo"

    aput-object v8, v4, v5

    const-string v8, "see-x-i-mingo"

    aput-object v8, v4, v6

    aput-object v4, v1, v3

    const/16 v3, 0xb

    new-array v4, v2, [Ljava/lang/String;

    const-string v8, "i-navajo"

    aput-object v8, v4, v5

    const-string v8, "nv"

    aput-object v8, v4, v6

    aput-object v4, v1, v3

    const/16 v3, 0xc

    new-array v4, v2, [Ljava/lang/String;

    const-string v8, "i-pwn"

    aput-object v8, v4, v5

    const-string v8, "pwn"

    aput-object v8, v4, v6

    aput-object v4, v1, v3

    const/16 v3, 0xd

    new-array v4, v2, [Ljava/lang/String;

    const-string v8, "i-tao"

    aput-object v8, v4, v5

    const-string v8, "tao"

    aput-object v8, v4, v6

    aput-object v4, v1, v3

    const/16 v3, 0xe

    new-array v4, v2, [Ljava/lang/String;

    const-string v8, "i-tay"

    aput-object v8, v4, v5

    const-string v8, "tay"

    aput-object v8, v4, v6

    aput-object v4, v1, v3

    const/16 v3, 0xf

    new-array v4, v2, [Ljava/lang/String;

    const-string v8, "i-tsu"

    aput-object v8, v4, v5

    const-string v8, "tsu"

    aput-object v8, v4, v6

    aput-object v4, v1, v3

    const/16 v3, 0x10

    new-array v4, v2, [Ljava/lang/String;

    const-string v8, "no-bok"

    aput-object v8, v4, v5

    const-string v8, "nb"

    aput-object v8, v4, v6

    aput-object v4, v1, v3

    const/16 v3, 0x11

    new-array v4, v2, [Ljava/lang/String;

    const-string v8, "no-nyn"

    aput-object v8, v4, v5

    const-string v8, "nn"

    aput-object v8, v4, v6

    aput-object v4, v1, v3

    const/16 v3, 0x12

    new-array v4, v2, [Ljava/lang/String;

    const-string v8, "sgn-BE-FR"

    aput-object v8, v4, v5

    const-string v8, "sfb"

    aput-object v8, v4, v6

    aput-object v4, v1, v3

    const/16 v3, 0x13

    new-array v4, v2, [Ljava/lang/String;

    const-string v8, "sgn-BE-NL"

    aput-object v8, v4, v5

    const-string v8, "vgt"

    aput-object v8, v4, v6

    aput-object v4, v1, v3

    const/16 v3, 0x14

    new-array v4, v2, [Ljava/lang/String;

    const-string v8, "sgn-CH-DE"

    aput-object v8, v4, v5

    const-string v8, "sgg"

    aput-object v8, v4, v6

    aput-object v4, v1, v3

    const/16 v3, 0x15

    new-array v4, v2, [Ljava/lang/String;

    const-string v8, "zh-guoyu"

    aput-object v8, v4, v5

    const-string v8, "cmn"

    aput-object v8, v4, v6

    aput-object v4, v1, v3

    const/16 v3, 0x16

    new-array v4, v2, [Ljava/lang/String;

    const-string v8, "zh-hakka"

    aput-object v8, v4, v5

    aput-object v7, v4, v6

    aput-object v4, v1, v3

    const/16 v3, 0x17

    new-array v4, v2, [Ljava/lang/String;

    const-string v7, "zh-min"

    aput-object v7, v4, v5

    const-string v7, "nan-x-zh-min"

    aput-object v7, v4, v6

    aput-object v4, v1, v3

    const/16 v3, 0x18

    new-array v4, v2, [Ljava/lang/String;

    const-string v7, "zh-min-nan"

    aput-object v7, v4, v5

    const-string v7, "nan"

    aput-object v7, v4, v6

    aput-object v4, v1, v3

    const/16 v3, 0x19

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "zh-xiang"

    aput-object v4, v2, v5

    const-string v4, "hsn"

    aput-object v4, v2, v6

    aput-object v2, v1, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 107
    aget-object v3, v1, v2

    .line 108
    sget-object v4, Lcom/ibm/icu/impl/locale/LanguageTag;->LEGACY:Ljava/util/Map;

    new-instance v6, Lcom/ibm/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;

    aget-object v7, v3, v5

    invoke-direct {v6, v7}, Lcom/ibm/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    return-void
.end method

.method public static canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 665
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "u-"

    .line 666
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    const-string v0, "-true"

    .line 668
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    :goto_1
    const-string v0, "-true-"

    .line 671
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_2
    const-string v0, "-yes"

    .line 674
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 675
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    :goto_3
    const-string v0, "-yes-"

    .line 677
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    return-object p0
.end method

.method public static canonicalizeExtensionSingleton(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 685
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static canonicalizeExtensionSubtag(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 689
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static canonicalizeExtlang(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 649
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static canonicalizeLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 645
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static canonicalizePrivateuse(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 693
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static canonicalizePrivateuseSubtag(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 697
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 657
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 653
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static canonicalizeVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 661
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isExtensionSingleton(Ljava/lang/String;)Z
    .locals 2

    .line 611
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 612
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "x"

    .line 613
    invoke-static {v0, p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isExtensionSingletonChar(C)Z
    .locals 0

    .line 617
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isExtensionSubtag(Ljava/lang/String;)Z
    .locals 2

    .line 622
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isExtlang(Ljava/lang/String;)Z
    .locals 2

    .line 567
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLanguage(Ljava/lang/String;)Z
    .locals 2

    .line 561
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPrivateusePrefix(Ljava/lang/String;)Z
    .locals 2

    .line 627
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "x"

    .line 628
    invoke-static {v0, p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isPrivateusePrefixChar(C)Z
    .locals 1

    .line 632
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isPrivateuseSubtag(Ljava/lang/String;)Z
    .locals 3

    .line 637
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isRegion(Ljava/lang/String;)Z
    .locals 2

    .line 578
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 579
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isNumericString(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isScript(Ljava/lang/String;)Z
    .locals 2

    .line 572
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTKey(Ljava/lang/String;)Z
    .locals 4

    .line 600
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlpha(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isNumeric(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isVariant(Ljava/lang/String;)Z
    .locals 3

    .line 585
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 587
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 590
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isNumeric(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 591
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 592
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 593
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static parse(Ljava/lang/String;Lcom/ibm/icu/impl/locale/ParseStatus;)Lcom/ibm/icu/impl/locale/LanguageTag;
    .locals 6

    if-nez p1, :cond_0

    .line 122
    new-instance p1, Lcom/ibm/icu/impl/locale/ParseStatus;

    invoke-direct {p1}, Lcom/ibm/icu/impl/locale/ParseStatus;-><init>()V

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/ParseStatus;->reset()V

    .line 130
    :goto_0
    sget-object v0, Lcom/ibm/icu/impl/locale/LanguageTag;->LEGACY:Ljava/util/Map;

    new-instance v1, Lcom/ibm/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;

    invoke-direct {v1, p0}, Lcom/ibm/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x2

    :goto_1
    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/16 v3, 0x2d

    add-int/lit8 v1, v1, 0x1

    .line 133
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 134
    sget-object v0, Lcom/ibm/icu/impl/locale/LanguageTag;->LEGACY:Ljava/util/Map;

    new-instance v3, Lcom/ibm/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/ibm/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v3, "-"

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 138
    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v2, v5, :cond_2

    .line 140
    new-instance v1, Lcom/ibm/icu/impl/locale/StringTokenIterator;

    aget-object v0, v0, v4

    invoke-direct {v1, v0, v3}, Lcom/ibm/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 143
    :cond_2
    new-instance v2, Lcom/ibm/icu/impl/locale/StringTokenIterator;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, v4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v3}, Lcom/ibm/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    :goto_2
    const/4 v2, 0x1

    goto :goto_3

    .line 147
    :cond_3
    new-instance v1, Lcom/ibm/icu/impl/locale/StringTokenIterator;

    invoke-direct {v1, p0, v3}, Lcom/ibm/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_3
    new-instance v0, Lcom/ibm/icu/impl/locale/LanguageTag;

    invoke-direct {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;-><init>()V

    .line 153
    invoke-direct {v0, v1, p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->parseLanguage(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 155
    iget-object v3, v0, Lcom/ibm/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_4

    .line 156
    invoke-direct {v0, v1, p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->parseExtlangs(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z

    .line 157
    :cond_4
    invoke-direct {v0, v1, p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->parseScript(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z

    .line 158
    invoke-direct {v0, v1, p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->parseRegion(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z

    .line 159
    invoke-direct {v0, v1, p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->parseVariants(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z

    .line 160
    invoke-direct {v0, v1, p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->parseExtensions(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z

    .line 162
    :cond_5
    invoke-direct {v0, v1, p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->parsePrivateuse(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z

    if-eqz v2, :cond_6

    .line 169
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    iput p0, p1, Lcom/ibm/icu/impl/locale/ParseStatus;->_parseLength:I

    goto :goto_4

    .line 170
    :cond_6
    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/ParseStatus;->isError()Z

    move-result p0

    if-nez p0, :cond_8

    .line 171
    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v1

    iput v1, p1, Lcom/ibm/icu/impl/locale/ParseStatus;->_errorIndex:I

    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    const-string p0, "Empty subtag"

    .line 174
    iput-object p0, p1, Lcom/ibm/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    goto :goto_4

    .line 176
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid subtag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/ibm/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    :cond_8
    :goto_4
    return-object v0
.end method

.method private parseExtensions(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z
    .locals 8

    .line 299
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    invoke-virtual {p2}, Lcom/ibm/icu/impl/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 305
    :goto_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v3

    if-nez v3, :cond_7

    .line 306
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v3

    .line 307
    invoke-static {v3}, Lcom/ibm/icu/impl/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 308
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v4

    .line 309
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 310
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 313
    :goto_1
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v6

    if-nez v6, :cond_1

    .line 314
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v6

    .line 315
    invoke-static {v6}, Lcom/ibm/icu/impl/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "-"

    .line 316
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v6

    iput v6, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 321
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_1

    .line 324
    :cond_1
    iget v6, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_parseLength:I

    if-gt v6, v4, :cond_2

    .line 325
    iput v4, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_errorIndex:I

    .line 326
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Incomplete extension \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    goto :goto_4

    .line 330
    :cond_2
    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 331
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    .line 335
    :cond_3
    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 336
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v4, v6, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    or-int/2addr v3, v4

    goto :goto_2

    :cond_5
    if-nez v3, :cond_6

    .line 339
    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_4
    return v2

    :cond_8
    :goto_5
    return v1
.end method

.method private parseExtlangs(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z
    .locals 4

    .line 206
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/ibm/icu/impl/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    .line 213
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->isExtlang(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 218
    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_2

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    .line 221
    :cond_2
    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v0

    iput v0, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 223
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_0

    :cond_3
    :goto_0
    return v1
.end method

.method private parseLanguage(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z
    .locals 3

    .line 188
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/ibm/icu/impl/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 197
    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v0

    iput v0, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 199
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    :cond_1
    :goto_0
    return v1
.end method

.method public static parseLocale(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/impl/locale/LanguageTag;
    .locals 11

    .line 387
    new-instance v0, Lcom/ibm/icu/impl/locale/LanguageTag;

    invoke-direct {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;-><init>()V

    .line 389
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v2

    .line 391
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v3

    .line 392
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object p0

    .line 398
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v1}, Lcom/ibm/icu/impl/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "iw"

    .line 401
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, "he"

    goto :goto_0

    :cond_0
    const-string v4, "ji"

    .line 403
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "yi"

    goto :goto_0

    :cond_1
    const-string v4, "in"

    .line 405
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "id"

    .line 408
    :cond_2
    :goto_0
    iput-object v1, v0, Lcom/ibm/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    .line 411
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x1

    if-lez v1, :cond_4

    invoke-static {v2}, Lcom/ibm/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 412
    invoke-static {v2}, Lcom/ibm/icu/impl/locale/LanguageTag;->canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 416
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-static {v3}, Lcom/ibm/icu/impl/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 417
    invoke-static {v3}, Lcom/ibm/icu/impl/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    const/4 v1, 0x1

    .line 429
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "_"

    const/4 v5, 0x0

    const-string v6, "-"

    if-lez v2, :cond_d

    .line 431
    new-instance v2, Lcom/ibm/icu/impl/locale/StringTokenIterator;

    invoke-direct {v2, p0, v3}, Lcom/ibm/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v5

    .line 432
    :goto_2
    invoke-virtual {v2}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v7

    if-nez v7, :cond_8

    .line 433
    invoke-virtual {v2}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v7

    .line 434
    invoke-static {v7}, Lcom/ibm/icu/impl/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_3

    :cond_6
    if-nez p0, :cond_7

    .line 438
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 443
    :cond_7
    invoke-static {v7}, Lcom/ibm/icu/impl/locale/LanguageTag;->canonicalizeVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    invoke-virtual {v2}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_2

    :cond_8
    :goto_3
    if-eqz p0, :cond_9

    .line 448
    iput-object p0, v0, Lcom/ibm/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    const/4 v1, 0x1

    .line 451
    :cond_9
    invoke-virtual {v2}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result p0

    if-nez p0, :cond_d

    .line 453
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    :goto_4
    invoke-virtual {v2}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v7

    if-nez v7, :cond_c

    .line 455
    invoke-virtual {v2}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v7

    .line 456
    invoke-static {v7}, Lcom/ibm/icu/impl/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_5

    .line 460
    :cond_a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_b

    .line 461
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :cond_b
    invoke-static {v7}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 466
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v2}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_4

    .line 469
    :cond_c
    :goto_5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 470
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_d
    move-object p0, v5

    .line 478
    :goto_6
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v2

    .line 479
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v7, v5

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Character;

    .line 480
    invoke-virtual {p1, v8}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Lcom/ibm/icu/impl/locale/Extension;

    move-result-object v9

    .line 481
    invoke-virtual {v8}, Ljava/lang/Character;->charValue()C

    move-result v10

    invoke-static {v10}, Lcom/ibm/icu/impl/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 482
    invoke-virtual {v9}, Lcom/ibm/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_e
    if-nez v5, :cond_f

    .line 485
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 487
    :cond_f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/ibm/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    if-eqz v5, :cond_11

    .line 492
    iput-object v5, v0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    goto :goto_8

    :cond_11
    move v4, v1

    :goto_8
    if-eqz p0, :cond_13

    if-nez v7, :cond_12

    .line 499
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lvariant-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    .line 501
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lvariant"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_13
    :goto_9
    if-eqz v7, :cond_14

    .line 506
    iput-object v7, v0, Lcom/ibm/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    .line 509
    :cond_14
    iget-object p0, v0, Lcom/ibm/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_16

    if-nez v4, :cond_15

    if-nez v7, :cond_16

    .line 513
    :cond_15
    sget-object p0, Lcom/ibm/icu/impl/locale/LanguageTag;->UNDETERMINED:Ljava/lang/String;

    iput-object p0, v0, Lcom/ibm/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    :cond_16
    return-object v0
.end method

.method private parsePrivateuse(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z
    .locals 5

    .line 350
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/ibm/icu/impl/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 356
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-static {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->isPrivateusePrefix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 358
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v2

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 362
    :goto_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 363
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-static {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "-"

    .line 367
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v0

    iput v0, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 370
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0

    .line 373
    :cond_2
    :goto_1
    iget p1, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_parseLength:I

    if-gt p1, v2, :cond_3

    .line 375
    iput v2, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_errorIndex:I

    const-string p1, "Incomplete privateuse"

    .line 376
    iput-object p1, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    goto :goto_2

    .line 378
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    const/4 v1, 0x1

    :cond_4
    :goto_2
    return v1
.end method

.method private parseRegion(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z
    .locals 3

    .line 253
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/ibm/icu/impl/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 262
    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v0

    iput v0, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 264
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    :cond_1
    :goto_0
    return v1
.end method

.method private parseScript(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z
    .locals 3

    .line 235
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/ibm/icu/impl/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 244
    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v0

    iput v0, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 246
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    :cond_1
    :goto_0
    return v1
.end method

.method private parseVariants(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z
    .locals 4

    .line 271
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/ibm/icu/impl/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 277
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_4

    .line 278
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 283
    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    .line 287
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 288
    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 289
    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_3
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v0

    iput v0, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 292
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method


# virtual methods
.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtlangs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateuse()Ljava/lang/String;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    return-object v0
.end method

.method public getVariants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 704
    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "-"

    if-lez v1, :cond_4

    .line 705
    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 708
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 711
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 712
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 716
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 720
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 723
    :cond_3
    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 724
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 727
    :cond_4
    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 728
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 729
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    :cond_5
    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
