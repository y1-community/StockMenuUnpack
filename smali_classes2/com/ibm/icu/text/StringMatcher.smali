.class Lcom/ibm/icu/text/StringMatcher;
.super Ljava/lang/Object;
.source "StringMatcher.java"

# interfaces
.implements Lcom/ibm/icu/text/UnicodeMatcher;
.implements Lcom/ibm/icu/text/UnicodeReplacer;


# instance fields
.field private final data:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

.field private matchLimit:I

.field private matchStart:I

.field private pattern:Ljava/lang/String;

.field private segmentNumber:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILcom/ibm/icu/text/RuleBasedTransliterator$Data;)V
    .locals 0

    .line 95
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p4, p5}, Lcom/ibm/icu/text/StringMatcher;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/RuleBasedTransliterator$Data;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/ibm/icu/text/RuleBasedTransliterator$Data;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p3, p0, Lcom/ibm/icu/text/StringMatcher;->data:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    .line 72
    iput-object p1, p0, Lcom/ibm/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    const/4 p1, -0x1

    .line 73
    iput p1, p0, Lcom/ibm/icu/text/StringMatcher;->matchLimit:I

    iput p1, p0, Lcom/ibm/icu/text/StringMatcher;->matchStart:I

    .line 74
    iput p2, p0, Lcom/ibm/icu/text/StringMatcher;->segmentNumber:I

    return-void
.end method


# virtual methods
.method public addMatchSetTo(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 3

    const/4 v0, 0x0

    .line 226
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/ibm/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    .line 228
    iget-object v2, p0, Lcom/ibm/icu/text/StringMatcher;->data:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Lcom/ibm/icu/text/UnicodeMatcher;

    move-result-object v2

    if-nez v2, :cond_0

    .line 230
    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_1

    .line 232
    :cond_0
    invoke-interface {v2, p1}, Lcom/ibm/icu/text/UnicodeMatcher;->addMatchSetTo(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 226
    :goto_1
    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addReplacementSetTo(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 0

    return-void
.end method

.method public matches(Lcom/ibm/icu/text/Replaceable;[IIZ)I
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 111
    aget v3, p2, v2

    aput v3, v1, v2

    aget v3, v1, v2

    const/4 v4, 0x2

    if-ge p3, v3, :cond_4

    .line 114
    iget-object v3, p0, Lcom/ibm/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_0
    if-ltz v3, :cond_3

    .line 115
    iget-object v5, p0, Lcom/ibm/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 116
    iget-object v6, p0, Lcom/ibm/icu/text/StringMatcher;->data:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v6, v5}, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Lcom/ibm/icu/text/UnicodeMatcher;

    move-result-object v6

    if-nez v6, :cond_1

    aget v6, v1, v2

    if-le v6, p3, :cond_0

    aget v6, v1, v2

    .line 119
    invoke-interface {p1, v6}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_0

    aget v5, v1, v2

    sub-int/2addr v5, v0

    aput v5, v1, v2

    goto :goto_1

    :cond_0
    return v2

    .line 126
    :cond_1
    invoke-interface {v6, p1, v1, p3, p4}, Lcom/ibm/icu/text/UnicodeMatcher;->matches(Lcom/ibm/icu/text/Replaceable;[IIZ)I

    move-result v5

    if-eq v5, v4, :cond_2

    return v5

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 135
    :cond_3
    iget p1, p0, Lcom/ibm/icu/text/StringMatcher;->matchStart:I

    if-gez p1, :cond_a

    aget p1, v1, v2

    add-int/2addr p1, v0

    .line 136
    iput p1, p0, Lcom/ibm/icu/text/StringMatcher;->matchStart:I

    .line 137
    aget p1, p2, v2

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ibm/icu/text/StringMatcher;->matchLimit:I

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    .line 140
    :goto_2
    iget-object v5, p0, Lcom/ibm/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_9

    if-eqz p4, :cond_5

    aget v5, v1, v2

    if-ne v5, p3, :cond_5

    return v0

    .line 146
    :cond_5
    iget-object v5, p0, Lcom/ibm/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 147
    iget-object v6, p0, Lcom/ibm/icu/text/StringMatcher;->data:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v6, v5}, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Lcom/ibm/icu/text/UnicodeMatcher;

    move-result-object v6

    if-nez v6, :cond_7

    aget v6, v1, v2

    if-ge v6, p3, :cond_6

    aget v6, v1, v2

    .line 153
    invoke-interface {p1, v6}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_6

    aget v5, v1, v2

    add-int/2addr v5, v0

    aput v5, v1, v2

    goto :goto_3

    :cond_6
    return v2

    .line 160
    :cond_7
    invoke-interface {v6, p1, v1, p3, p4}, Lcom/ibm/icu/text/UnicodeMatcher;->matches(Lcom/ibm/icu/text/Replaceable;[IIZ)I

    move-result v5

    if-eq v5, v4, :cond_8

    return v5

    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 167
    :cond_9
    aget p1, p2, v2

    iput p1, p0, Lcom/ibm/icu/text/StringMatcher;->matchStart:I

    aget p1, v1, v2

    .line 168
    iput p1, p0, Lcom/ibm/icu/text/StringMatcher;->matchLimit:I

    :cond_a
    :goto_4
    aget p1, v1, v2

    .line 171
    aput p1, p2, v2

    return v4
.end method

.method public matchesIndexValue(I)Z
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/ibm/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 213
    iget-object v3, p0, Lcom/ibm/icu/text/StringMatcher;->data:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v3, v0}, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Lcom/ibm/icu/text/UnicodeMatcher;

    move-result-object v3

    if-nez v3, :cond_2

    and-int/lit16 v0, v0, 0xff

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 214
    :cond_2
    invoke-interface {v3, p1}, Lcom/ibm/icu/text/UnicodeMatcher;->matchesIndexValue(I)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public replace(Lcom/ibm/icu/text/Replaceable;II[I)I
    .locals 1

    .line 252
    iget p4, p0, Lcom/ibm/icu/text/StringMatcher;->matchStart:I

    if-ltz p4, :cond_0

    .line 253
    iget v0, p0, Lcom/ibm/icu/text/StringMatcher;->matchLimit:I

    if-eq p4, v0, :cond_0

    .line 254
    invoke-interface {p1, p4, v0, p3}, Lcom/ibm/icu/text/Replaceable;->copy(III)V

    .line 255
    iget p4, p0, Lcom/ibm/icu/text/StringMatcher;->matchLimit:I

    iget v0, p0, Lcom/ibm/icu/text/StringMatcher;->matchStart:I

    sub-int/2addr p4, v0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const-string v0, ""

    .line 259
    invoke-interface {p1, p2, p3, v0}, Lcom/ibm/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    return p4
.end method

.method public resetMatch()V
    .locals 1

    const/4 v0, -0x1

    .line 280
    iput v0, p0, Lcom/ibm/icu/text/StringMatcher;->matchLimit:I

    iput v0, p0, Lcom/ibm/icu/text/StringMatcher;->matchStart:I

    return-void
.end method

.method public toPattern(Z)Ljava/lang/String;
    .locals 7

    .line 180
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 181
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 182
    iget v2, p0, Lcom/ibm/icu/text/StringMatcher;->segmentNumber:I

    if-lez v2, :cond_0

    const/16 v2, 0x28

    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 185
    :goto_0
    iget-object v4, p0, Lcom/ibm/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    .line 186
    iget-object v4, p0, Lcom/ibm/icu/text/StringMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 187
    iget-object v6, p0, Lcom/ibm/icu/text/StringMatcher;->data:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v6, v4}, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->lookupMatcher(I)Lcom/ibm/icu/text/UnicodeMatcher;

    move-result-object v6

    if-nez v6, :cond_1

    .line 189
    invoke-static {v0, v4, v2, p1, v1}, Lcom/ibm/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    goto :goto_1

    .line 191
    :cond_1
    invoke-interface {v6, p1}, Lcom/ibm/icu/text/UnicodeMatcher;->toPattern(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v5, p1, v1}, Lcom/ibm/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    :cond_2
    iget v2, p0, Lcom/ibm/icu/text/StringMatcher;->segmentNumber:I

    if-lez v2, :cond_3

    const/16 v2, 0x29

    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    const/4 v2, -0x1

    .line 199
    invoke-static {v0, v2, v5, p1, v1}, Lcom/ibm/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toReplacerPattern(Z)Ljava/lang/String;
    .locals 3

    .line 270
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "$"

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 271
    iget v0, p0, Lcom/ibm/icu/text/StringMatcher;->segmentNumber:I

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/ibm/icu/impl/Utility;->appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;

    .line 272
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
