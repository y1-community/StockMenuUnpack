.class public Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;
.super Ljava/lang/Object;
.source "PatternStringParser.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/AffixPatternProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/PatternStringParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsedPatternInfo"
.end annotation


# instance fields
.field public negative:Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

.field public pattern:Ljava/lang/String;

.field public positive:Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->pattern:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/ibm/icu/impl/number/PatternStringParser$1;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private getEndpoints(I)J
    .locals 4

    and-int/lit16 v0, p1, 0x100

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit16 v3, p1, 0x200

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 134
    iget-object p1, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingEndpoints:J

    return-wide v0

    :cond_3
    if-eqz v1, :cond_4

    .line 136
    iget-object p1, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingEndpoints:J

    return-wide v0

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    .line 138
    iget-object p1, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->prefixEndpoints:J

    return-wide v0

    :cond_5
    if-eqz v0, :cond_6

    .line 140
    iget-object p1, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->prefixEndpoints:J

    return-wide v0

    :cond_6
    if-eqz v3, :cond_7

    .line 142
    iget-object p1, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->suffixEndpoints:J

    return-wide v0

    .line 144
    :cond_7
    iget-object p1, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide v0, p1, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->suffixEndpoints:J

    return-wide v0
.end method

.method public static getLengthFromEndpoints(J)I
    .locals 2

    const-wide/16 v0, -0x1

    and-long/2addr v0, p0

    long-to-int v1, v0

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p1, p0

    sub-int/2addr p1, v1

    return p1
.end method


# virtual methods
.method public charAt(II)C
    .locals 4

    .line 98
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getEndpoints(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    and-long/2addr v2, v0

    long-to-int p1, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    if-ltz p2, :cond_0

    sub-int/2addr v1, p1

    if-ge p2, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->pattern:Ljava/lang/String;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1

    .line 102
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public containsSymbolType(I)Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->pattern:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4

    .line 120
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getEndpoints(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    and-long/2addr v2, v0

    long-to-int p1, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    if-ne p1, v1, :cond_0

    const-string p1, ""

    return-object p1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->pattern:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasBody()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget v0, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->integerTotal:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCurrencySign()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-boolean v0, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasCurrencySign:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasCurrencySign:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasNegativeSubpattern()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public length(I)I
    .locals 2

    .line 109
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getEndpoints(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getLengthFromEndpoints(J)I

    move-result p1

    return p1
.end method

.method public negativeHasMinusSign()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-boolean v0, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasMinusSign:Z

    return v0
.end method

.method public positiveHasPlusSign()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-boolean v0, v0, Lcom/ibm/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasPlusSign:Z

    return v0
.end method
