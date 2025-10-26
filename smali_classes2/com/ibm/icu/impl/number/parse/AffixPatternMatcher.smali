.class public Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;
.super Lcom/ibm/icu/impl/number/parse/SeriesMatcher;
.source "AffixPatternMatcher.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/AffixUtils$TokenConsumer;


# instance fields
.field private final affixPattern:Ljava/lang/String;

.field private factory:Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;

.field private ignorables:Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

.field private lastTypeOrCp:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/parse/SeriesMatcher;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->affixPattern:Ljava/lang/String;

    return-void
.end method

.method public static fromAffixPattern(Ljava/lang/String;Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;I)Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;
    .locals 2

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 38
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p1, v0, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->factory:Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;

    and-int/lit16 p2, p2, 0x200

    if-eqz p2, :cond_1

    move-object p1, v1

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;->ignorables()Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->ignorables:Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    const/4 p1, 0x0

    .line 42
    iput p1, v0, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->lastTypeOrCp:I

    .line 43
    invoke-static {p0, v0}, Lcom/ibm/icu/impl/number/AffixUtils;->iterateWithConsumer(Ljava/lang/CharSequence;Lcom/ibm/icu/impl/number/AffixUtils$TokenConsumer;)V

    .line 46
    iput-object v1, v0, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->factory:Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;

    .line 47
    iput-object v1, v0, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->ignorables:Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    .line 48
    iput p1, v0, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->lastTypeOrCp:I

    .line 50
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->freeze()V

    return-object v0
.end method


# virtual methods
.method public consumeToken(I)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->ignorables:Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->lastTypeOrCp:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->ignorables:Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    .line 66
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;->getSet()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    iget v1, p0, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->lastTypeOrCp:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->ignorables:Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    :cond_1
    if-gez p1, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 94
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->factory:Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;->minusSign()Lcom/ibm/icu/impl/number/parse/MinusSignMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->factory:Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;->plusSign()Lcom/ibm/icu/impl/number/parse/PlusSignMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    goto :goto_0

    .line 80
    :pswitch_2
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->factory:Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;->percent()Lcom/ibm/icu/impl/number/parse/PercentMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    goto :goto_0

    .line 83
    :pswitch_3
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->factory:Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;->permille()Lcom/ibm/icu/impl/number/parse/PermilleMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    goto :goto_0

    .line 91
    :pswitch_4
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->factory:Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;->currency()Lcom/ibm/icu/impl/number/parse/CombinedCurrencyMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->ignorables:Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;->getSet()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 103
    :cond_3
    invoke-static {p1}, Lcom/ibm/icu/impl/number/parse/CodePointMatcher;->getInstance(I)Lcom/ibm/icu/impl/number/parse/CodePointMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->addMatcher(Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;)V

    .line 105
    :goto_0
    iput p1, p0, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->lastTypeOrCp:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 116
    :cond_0
    instance-of v0, p1, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->affixPattern:Ljava/lang/String;

    check-cast p1, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    iget-object p1, p1, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->affixPattern:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->affixPattern:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->affixPattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->affixPattern:Ljava/lang/String;

    return-object v0
.end method
