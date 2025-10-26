.class public final Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;
.super Ljava/lang/Object;
.source "XLikelySubtags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/locale/XLikelySubtags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation


# instance fields
.field public final languageAliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final lsrs:[Lcom/ibm/icu/impl/locale/LSR;

.field public final regionAliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final trie:[B


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;[B[Lcom/ibm/icu/impl/locale/LSR;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B[",
            "Lcom/ibm/icu/impl/locale/LSR;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;->languageAliases:Ljava/util/Map;

    .line 39
    iput-object p2, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;->regionAliases:Ljava/util/Map;

    .line 40
    iput-object p3, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;->trie:[B

    .line 41
    iput-object p4, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;->lsrs:[Lcom/ibm/icu/impl/locale/LSR;

    return-void
.end method

.method private static getValue(Lcom/ibm/icu/impl/UResource$Table;Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Value;)Lcom/ibm/icu/impl/UResource$Value;
    .locals 1

    .line 46
    invoke-interface {p0, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->findValue(Ljava/lang/CharSequence;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p2

    .line 47
    :cond_0
    new-instance p0, Ljava/util/MissingResourceException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "likely/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "langInfo.res missing data"

    const-string v0, ""

    invoke-direct {p0, p2, v0, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static load()Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    sget-object v1, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    const-string v2, "com/ibm/icu/impl/data/icudt69b"

    const-string v3, "langInfo"

    invoke-static {v2, v3, v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    const-string v1, "likely"

    .line 58
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getValueWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/UResource$Value;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v1

    const-string v2, "languageAliases"

    .line 62
    invoke-interface {v1, v2, v0}, Lcom/ibm/icu/impl/UResource$Table;->findValue(Ljava/lang/CharSequence;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/ibm/icu/impl/UResource$Value;->getStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 64
    new-instance v4, Ljava/util/HashMap;

    array-length v5, v2

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    const/4 v5, 0x0

    .line 65
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 66
    aget-object v6, v2, v5

    add-int/lit8 v7, v5, 0x1

    aget-object v7, v2, v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    :cond_1
    const-string v2, "regionAliases"

    .line 73
    invoke-interface {v1, v2, v0}, Lcom/ibm/icu/impl/UResource$Table;->findValue(Ljava/lang/CharSequence;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    invoke-virtual {v0}, Lcom/ibm/icu/impl/UResource$Value;->getStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 75
    new-instance v5, Ljava/util/HashMap;

    array-length v6, v2

    div-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    const/4 v6, 0x0

    .line 76
    :goto_1
    array-length v7, v2

    if-ge v6, v7, :cond_3

    .line 77
    aget-object v7, v2, v6

    add-int/lit8 v8, v6, 0x1

    aget-object v8, v2, v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 80
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    :cond_3
    const-string v2, "trie"

    .line 83
    invoke-static {v1, v2, v0}, Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;->getValue(Lcom/ibm/icu/impl/UResource$Table;Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Value;)Lcom/ibm/icu/impl/UResource$Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/impl/UResource$Value;->getBinary()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    new-array v6, v6, [B

    .line 85
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const-string v2, "lsrs"

    .line 87
    invoke-static {v1, v2, v0}, Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;->getValue(Lcom/ibm/icu/impl/UResource$Table;Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Value;)Lcom/ibm/icu/impl/UResource$Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/UResource$Value;->getStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 88
    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    new-array v1, v1, [Lcom/ibm/icu/impl/locale/LSR;

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 89
    :goto_2
    array-length v8, v0

    if-ge v2, v8, :cond_4

    .line 90
    new-instance v8, Lcom/ibm/icu/impl/locale/LSR;

    aget-object v9, v0, v2

    add-int/lit8 v10, v2, 0x1

    aget-object v10, v0, v10

    add-int/lit8 v11, v2, 0x2

    aget-object v11, v0, v11

    invoke-direct {v8, v9, v10, v11, v3}, Lcom/ibm/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v8, v1, v7

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 94
    :cond_4
    new-instance v0, Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;

    invoke-direct {v0, v4, v5, v6, v1}, Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;-><init>(Ljava/util/Map;Ljava/util/Map;[B[Lcom/ibm/icu/impl/locale/LSR;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 101
    :cond_1
    check-cast p1, Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;

    .line 102
    iget-object v2, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;->languageAliases:Ljava/util/Map;

    iget-object v3, p1, Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;->languageAliases:Ljava/util/Map;

    .line 103
    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;->regionAliases:Ljava/util/Map;

    iget-object v3, p1, Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;->regionAliases:Ljava/util/Map;

    .line 104
    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;->trie:[B

    iget-object v3, p1, Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;->trie:[B

    .line 105
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;->lsrs:[Lcom/ibm/icu/impl/locale/LSR;

    iget-object p1, p1, Lcom/ibm/icu/impl/locale/XLikelySubtags$Data;->lsrs:[Lcom/ibm/icu/impl/locale/LSR;

    .line 106
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
