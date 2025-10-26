.class public Lcom/ibm/icu/impl/number/CompactData;
.super Ljava/lang/Object;
.source "CompactData.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/MultiplierProducer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/CompactData$CompactDataSink;,
        Lcom/ibm/icu/impl/number/CompactData$CompactType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final COMPACT_MAX_DIGITS:I = 0xf

.field private static final USE_FALLBACK:Ljava/lang/String; = "<USE FALLBACK>"


# instance fields
.field private isEmpty:Z

.field private largestMagnitude:B

.field private final multipliers:[B

.field private final patterns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget v0, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    const/16 v1, 0x10

    mul-int/lit8 v0, v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/CompactData;->patterns:[Ljava/lang/String;

    new-array v0, v1, [B

    .line 41
    iput-object v0, p0, Lcom/ibm/icu/impl/number/CompactData;->multipliers:[B

    const/4 v0, 0x0

    .line 42
    iput-byte v0, p0, Lcom/ibm/icu/impl/number/CompactData;->largestMagnitude:B

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/CompactData;->isEmpty:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/impl/number/CompactData;)[B
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ibm/icu/impl/number/CompactData;->multipliers:[B

    return-object p0
.end method

.method static synthetic access$100(Lcom/ibm/icu/impl/number/CompactData;)[Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/ibm/icu/impl/number/CompactData;->patterns:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(ILcom/ibm/icu/impl/StandardPlural;)I
    .locals 0

    .line 22
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/CompactData;->getIndex(ILcom/ibm/icu/impl/StandardPlural;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Ljava/lang/String;)I
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/ibm/icu/impl/number/CompactData;->countZeros(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/ibm/icu/impl/number/CompactData;)B
    .locals 0

    .line 22
    iget-byte p0, p0, Lcom/ibm/icu/impl/number/CompactData;->largestMagnitude:B

    return p0
.end method

.method static synthetic access$402(Lcom/ibm/icu/impl/number/CompactData;B)B
    .locals 0

    .line 22
    iput-byte p1, p0, Lcom/ibm/icu/impl/number/CompactData;->largestMagnitude:B

    return p1
.end method

.method static synthetic access$502(Lcom/ibm/icu/impl/number/CompactData;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/CompactData;->isEmpty:Z

    return p1
.end method

.method private static final countZeros(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 243
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 244
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    if-lez v1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v1
.end method

.method private static final getIndex(ILcom/ibm/icu/impl/StandardPlural;)I
    .locals 1

    .line 236
    sget v0, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    mul-int p0, p0, v0

    invoke-virtual {p1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static getResourceBundleKey(Ljava/lang/String;Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;Lcom/ibm/icu/impl/number/CompactData$CompactType;Ljava/lang/StringBuilder;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, "NumberElements/"

    .line 89
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    sget-object p0, Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    if-ne p1, p0, :cond_0

    const-string p0, "/patternsShort"

    goto :goto_0

    :cond_0
    const-string p0, "/patternsLong"

    :goto_0
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    sget-object p0, Lcom/ibm/icu/impl/number/CompactData$CompactType;->DECIMAL:Lcom/ibm/icu/impl/number/CompactData$CompactType;

    if-ne p2, p0, :cond_1

    const-string p0, "/decimalFormat"

    goto :goto_1

    :cond_1
    const-string p0, "/currencyFormat"

    :goto_1
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public getMultiplier(I)I
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 124
    :cond_0
    iget-byte v0, p0, Lcom/ibm/icu/impl/number/CompactData;->largestMagnitude:B

    if-le p1, v0, :cond_1

    move p1, v0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/CompactData;->multipliers:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public getPattern(ILcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/DecimalQuantity;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    .line 134
    :cond_0
    iget-byte v1, p0, Lcom/ibm/icu/impl/number/CompactData;->largestMagnitude:B

    if-le p1, v1, :cond_1

    move p1, v1

    .line 138
    :cond_1
    invoke-interface {p3}, Lcom/ibm/icu/impl/number/DecimalQuantity;->isHasIntegerValue()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 139
    invoke-interface {p3, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->toLong(Z)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 141
    iget-object v1, p0, Lcom/ibm/icu/impl/number/CompactData;->patterns:[Ljava/lang/String;

    sget-object v2, Lcom/ibm/icu/impl/StandardPlural;->EQ_0:Lcom/ibm/icu/impl/StandardPlural;

    invoke-static {p1, v2}, Lcom/ibm/icu/impl/number/CompactData;->getIndex(ILcom/ibm/icu/impl/StandardPlural;)I

    move-result v2

    aget-object v1, v1, v2

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    .line 143
    iget-object v1, p0, Lcom/ibm/icu/impl/number/CompactData;->patterns:[Ljava/lang/String;

    sget-object v2, Lcom/ibm/icu/impl/StandardPlural;->EQ_1:Lcom/ibm/icu/impl/StandardPlural;

    invoke-static {p1, v2}, Lcom/ibm/icu/impl/number/CompactData;->getIndex(ILcom/ibm/icu/impl/StandardPlural;)I

    move-result v2

    aget-object v1, v1, v2

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_4

    return-object v1

    .line 149
    :cond_4
    invoke-interface {p3, p2}, Lcom/ibm/icu/impl/number/DecimalQuantity;->getStandardPlural(Lcom/ibm/icu/text/PluralRules;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object p2

    .line 150
    iget-object p3, p0, Lcom/ibm/icu/impl/number/CompactData;->patterns:[Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/ibm/icu/impl/number/CompactData;->getIndex(ILcom/ibm/icu/impl/StandardPlural;)I

    move-result v1

    aget-object p3, p3, v1

    if-nez p3, :cond_5

    .line 151
    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    if-eq p2, v1, :cond_5

    .line 153
    iget-object p2, p0, Lcom/ibm/icu/impl/number/CompactData;->patterns:[Ljava/lang/String;

    sget-object p3, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    invoke-static {p1, p3}, Lcom/ibm/icu/impl/number/CompactData;->getIndex(ILcom/ibm/icu/impl/StandardPlural;)I

    move-result p1

    aget-object p3, p2, p1

    :cond_5
    const-string p1, "<USE FALLBACK>"

    if-ne p3, p1, :cond_6

    goto :goto_1

    :cond_6
    move-object v0, p3

    :goto_1
    return-object v0
.end method

.method public getUniquePatterns(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/ibm/icu/impl/number/CompactData;->patterns:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v0, "<USE FALLBACK>"

    .line 167
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 168
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public populate(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;Lcom/ibm/icu/impl/number/CompactData$CompactType;)V
    .locals 7

    .line 52
    new-instance v0, Lcom/ibm/icu/impl/number/CompactData$CompactDataSink;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/number/CompactData$CompactDataSink;-><init>(Lcom/ibm/icu/impl/number/CompactData;)V

    const-string v1, "com/ibm/icu/impl/data/icudt69b"

    .line 54
    invoke-static {v1, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v2, "latn"

    .line 56
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 57
    sget-object v4, Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    if-ne p3, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 60
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    invoke-static {p2, p3, p4, v5}, Lcom/ibm/icu/impl/number/CompactData;->getResourceBundleKey(Ljava/lang/String;Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;Lcom/ibm/icu/impl/number/CompactData$CompactType;Ljava/lang/StringBuilder;)V

    .line 62
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallbackNoFail(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 63
    iget-boolean v6, p0, Lcom/ibm/icu/impl/number/CompactData;->isEmpty:Z

    if-eqz v6, :cond_1

    if-nez v3, :cond_1

    .line 64
    invoke-static {v2, p3, p4, v5}, Lcom/ibm/icu/impl/number/CompactData;->getResourceBundleKey(Ljava/lang/String;Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;Lcom/ibm/icu/impl/number/CompactData$CompactType;Ljava/lang/StringBuilder;)V

    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallbackNoFail(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 67
    :cond_1
    iget-boolean p3, p0, Lcom/ibm/icu/impl/number/CompactData;->isEmpty:Z

    if-eqz p3, :cond_2

    if-nez v4, :cond_2

    .line 68
    sget-object p3, Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-static {p2, p3, p4, v5}, Lcom/ibm/icu/impl/number/CompactData;->getResourceBundleKey(Ljava/lang/String;Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;Lcom/ibm/icu/impl/number/CompactData$CompactType;Ljava/lang/StringBuilder;)V

    .line 69
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallbackNoFail(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 71
    :cond_2
    iget-boolean p2, p0, Lcom/ibm/icu/impl/number/CompactData;->isEmpty:Z

    if-eqz p2, :cond_3

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    .line 72
    sget-object p2, Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-static {v2, p2, p4, v5}, Lcom/ibm/icu/impl/number/CompactData;->getResourceBundleKey(Ljava/lang/String;Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;Lcom/ibm/icu/impl/number/CompactData$CompactType;Ljava/lang/StringBuilder;)V

    .line 73
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallbackNoFail(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 77
    :cond_3
    iget-boolean p2, p0, Lcom/ibm/icu/impl/number/CompactData;->isEmpty:Z

    if-nez p2, :cond_4

    return-void

    .line 78
    :cond_4
    new-instance p2, Lcom/ibm/icu/util/ICUException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Could not load compact decimal data for locale "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public populate(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 99
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 98
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 100
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-static {v3}, Lcom/ibm/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v3

    .line 104
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    iget-object v4, p0, Lcom/ibm/icu/impl/number/CompactData;->patterns:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/ibm/icu/impl/number/CompactData;->getIndex(ILcom/ibm/icu/impl/StandardPlural;)I

    move-result v3

    aput-object v2, v4, v3

    .line 106
    invoke-static {v2}, Lcom/ibm/icu/impl/number/CompactData;->countZeros(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 109
    iget-object v3, p0, Lcom/ibm/icu/impl/number/CompactData;->multipliers:[B

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    .line 110
    iget-byte v2, p0, Lcom/ibm/icu/impl/number/CompactData;->largestMagnitude:B

    if-le v1, v2, :cond_2

    .line 111
    iput-byte v1, p0, Lcom/ibm/icu/impl/number/CompactData;->largestMagnitude:B

    :cond_2
    const/4 v2, 0x0

    .line 113
    iput-boolean v2, p0, Lcom/ibm/icu/impl/number/CompactData;->isEmpty:Z

    goto :goto_0

    :cond_3
    return-void
.end method
