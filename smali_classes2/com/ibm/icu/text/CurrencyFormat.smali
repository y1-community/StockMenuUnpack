.class Lcom/ibm/icu/text/CurrencyFormat;
.super Lcom/ibm/icu/text/MeasureFormat;
.source "CurrencyFormat.java"


# static fields
.field static final serialVersionUID:J = -0xcedfd71ed74263aL


# direct methods
.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    .line 38
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->DEFAULT_CURRENCY:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/MeasureFormat;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/ibm/icu/text/CurrencyFormat;

    sget-object v1, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/CurrencyFormat;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CurrencyFormat;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/ibm/icu/text/CurrencyFormat;->toCurrencyProxy()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    .line 48
    instance-of v0, p1, Lcom/ibm/icu/util/CurrencyAmount;

    if-eqz v0, :cond_0

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/ibm/icu/text/MeasureFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    .line 49
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/CurrencyAmount;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/ibm/icu/text/CurrencyFormat;->getNumberFormatInternal()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/NumberFormat;->parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/CurrencyAmount;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/Measure;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/CurrencyFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/CurrencyAmount;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/CurrencyFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/CurrencyAmount;

    move-result-object p1

    return-object p1
.end method
