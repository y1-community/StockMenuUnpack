.class public Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat;
.super Ljava/text/Format;
.source "LocalizedNumberFormatterAsFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

.field private final transient locale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/number/LocalizedNumberFormatter;Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    .line 38
    iput-object p2, p0, Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat;->locale:Lcom/ibm/icu/util/ULocale;

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;-><init>()V

    .line 117
    iget-object v1, p0, Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;->languageTag:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->toSkeleton()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;->skeleton:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 109
    :cond_1
    instance-of v1, p1, Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat;

    if-nez v1, :cond_2

    return v0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    check-cast p1, Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat;->getNumberFormatter()Lcom/ibm/icu/number/LocalizedNumberFormatter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .line 48
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 51
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    check-cast p1, Ljava/lang/Number;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/lang/Number;)V

    .line 52
    new-instance p1, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>()V

    .line 53
    iget-object v1, p0, Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v1, v0, p1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->formatImpl(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/MicroProps;

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 56
    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 57
    invoke-static {p1, p3}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->nextFieldPosition(Lcom/ibm/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 60
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 62
    :cond_0
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    return-object p2

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 1

    .line 73
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->format(Ljava/lang/Number;)Lcom/ibm/icu/number/FormattedNumber;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/number/FormattedNumber;->toCharacterIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p1

    return-object p1

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getNumberFormatter()Lcom/ibm/icu/number/LocalizedNumberFormatter;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v0}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->hashCode()I

    move-result v0

    return v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 84
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
