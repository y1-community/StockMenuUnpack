.class public Lcom/ibm/icu/impl/number/parse/ScientificMatcher;
.super Ljava/lang/Object;
.source "ScientificMatcher.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;


# instance fields
.field private final customMinusSign:Ljava/lang/String;

.field private final customPlusSign:Ljava/lang/String;

.field private final exponentMatcher:Lcom/ibm/icu/impl/number/parse/DecimalMatcher;

.field private final exponentSeparatorString:Ljava/lang/String;

.field private final ignorablesMatcher:Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/Grouper;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;->exponentSeparatorString:Ljava/lang/String;

    const/16 v0, 0x30

    .line 31
    invoke-static {p1, p2, v0}, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/Grouper;I)Lcom/ibm/icu/impl/number/parse/DecimalMatcher;

    move-result-object p2

    iput-object p2, p0, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;->exponentMatcher:Lcom/ibm/icu/impl/number/parse/DecimalMatcher;

    const p2, 0x8000

    .line 34
    invoke-static {p2}, Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;->getInstance(I)Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    move-result-object p2

    iput-object p2, p0, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;->ignorablesMatcher:Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    .line 36
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object p2

    .line 37
    invoke-static {}, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;->minusSignSet()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ibm/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    iput-object p2, p0, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;->customMinusSign:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-static {}, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;->plusSignSet()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    iput-object v1, p0, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;->customPlusSign:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/Grouper;)Lcom/ibm/icu/impl/number/parse/ScientificMatcher;
    .locals 1

    .line 26
    new-instance v0, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;

    invoke-direct {v0, p0, p1}, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;-><init>(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/Grouper;)V

    return-object v0
.end method

.method private static minusSignSet()Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 43
    sget-object v0, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->MINUS_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v0}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method private static plusSignSet()Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 47
    sget-object v0, Lcom/ibm/icu/impl/StaticUnicodeSets$Key;->PLUS_SIGN:Lcom/ibm/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v0}, Lcom/ibm/icu/impl/StaticUnicodeSets;->get(Lcom/ibm/icu/impl/StaticUnicodeSets$Key;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public match(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z
    .locals 7

    .line 53
    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->seenNumber()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 58
    :cond_0
    iget v0, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    return v1

    .line 64
    :cond_1
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->getOffset()I

    move-result v0

    .line 65
    iget-object v2, p0, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;->exponentSeparatorString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/StringSegment;->getCommonPrefixLength(Ljava/lang/CharSequence;)I

    move-result v2

    .line 66
    iget-object v3, p0, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;->exponentSeparatorString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_10

    .line 70
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v3

    if-ne v3, v2, :cond_2

    return v4

    .line 73
    :cond_2
    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/StringSegment;->adjustOffset(I)V

    .line 77
    iget-object v2, p0, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;->ignorablesMatcher:Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;->match(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z

    .line 78
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 79
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/StringSegment;->setOffset(I)V

    return v4

    .line 85
    :cond_3
    invoke-static {}, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;->minusSignSet()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/StringSegment;->startsWith(Lcom/ibm/icu/text/UnicodeSet;)Z

    move-result v2

    const/4 v5, -0x1

    if-eqz v2, :cond_4

    .line 87
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->adjustOffsetByCodePoint()V

    goto :goto_1

    .line 88
    :cond_4
    invoke-static {}, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;->plusSignSet()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/StringSegment;->startsWith(Lcom/ibm/icu/text/UnicodeSet;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 89
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->adjustOffsetByCodePoint()V

    goto :goto_0

    .line 90
    :cond_5
    iget-object v2, p0, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;->customMinusSign:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/StringSegment;->startsWith(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 91
    iget-object v2, p0, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;->customMinusSign:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/StringSegment;->getCommonPrefixLength(Ljava/lang/CharSequence;)I

    move-result v2

    .line 92
    iget-object v6, p0, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;->customMinusSign:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v2, v6, :cond_6

    .line 94
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/StringSegment;->setOffset(I)V

    return v4

    .line 98
    :cond_6
    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/StringSegment;->adjustOffset(I)V

    goto :goto_1

    .line 99
    :cond_7
    iget-object v2, p0, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;->customPlusSign:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/StringSegment;->startsWith(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 100
    iget-object v2, p0, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;->customPlusSign:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/StringSegment;->getCommonPrefixLength(Ljava/lang/CharSequence;)I

    move-result v2

    .line 101
    iget-object v5, p0, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;->customPlusSign:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v2, v5, :cond_8

    .line 103
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/StringSegment;->setOffset(I)V

    return v4

    .line 106
    :cond_8
    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/StringSegment;->adjustOffset(I)V

    :cond_9
    :goto_0
    const/4 v5, 0x1

    .line 110
    :goto_1
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 111
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/StringSegment;->setOffset(I)V

    return v4

    .line 117
    :cond_a
    iget-object v2, p0, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;->ignorablesMatcher:Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    invoke-virtual {v2, p1, v3}, Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;->match(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z

    .line 118
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v2

    if-nez v2, :cond_b

    .line 119
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/StringSegment;->setOffset(I)V

    return v4

    .line 124
    :cond_b
    iget-object v2, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->quantity:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    if-nez v2, :cond_c

    const/4 v1, 0x1

    :cond_c
    if-eqz v1, :cond_d

    .line 126
    new-instance v2, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v2}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>()V

    iput-object v2, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->quantity:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 128
    :cond_d
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->getOffset()I

    move-result v2

    .line 129
    iget-object v4, p0, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;->exponentMatcher:Lcom/ibm/icu/impl/number/parse/DecimalMatcher;

    invoke-virtual {v4, p1, p2, v5}, Lcom/ibm/icu/impl/number/parse/DecimalMatcher;->match(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;I)Z

    move-result v4

    if-eqz v1, :cond_e

    .line 131
    iput-object v3, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->quantity:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 134
    :cond_e
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->getOffset()I

    move-result v1

    if-eq v1, v2, :cond_f

    .line 136
    iget p1, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    goto :goto_2

    .line 139
    :cond_f
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/StringSegment;->setOffset(I)V

    :goto_2
    return v4

    .line 143
    :cond_10
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result p1

    if-ne v2, p1, :cond_11

    return v4

    :cond_11
    return v1
.end method

.method public postProcess(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V
    .locals 0

    return-void
.end method

.method public smokeTest(Lcom/ibm/icu/impl/StringSegment;)Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;->exponentSeparatorString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/StringSegment;->startsWith(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<ScientificMatcher "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/parse/ScientificMatcher;->exponentSeparatorString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
