.class public Lcom/ibm/icu/text/CompactDecimalFormat;
.super Lcom/ibm/icu/text/DecimalFormat;
.source "CompactDecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4173a3c399851eb2L


# direct methods
.method constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/ibm/icu/text/DecimalFormat;-><init>()V

    .line 119
    invoke-static {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/CompactDecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 120
    new-instance p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-direct {p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/CompactDecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 121
    iget-object p1, p0, Lcom/ibm/icu/text/CompactDecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {p1, p2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setCompactStyle(Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 122
    iget-object p1, p0, Lcom/ibm/icu/text/CompactDecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setGroupingSize(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 123
    iget-object p1, p0, Lcom/ibm/icu/text/CompactDecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumGroupingDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 124
    new-instance p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-direct {p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/CompactDecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 125
    invoke-virtual {p0}, Lcom/ibm/icu/text/CompactDecimalFormat;->refreshFormatter()V

    return-void
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;)Lcom/ibm/icu/text/CompactDecimalFormat;
    .locals 1

    .line 93
    new-instance v0, Lcom/ibm/icu/text/CompactDecimalFormat;

    invoke-direct {v0, p0, p1}, Lcom/ibm/icu/text/CompactDecimalFormat;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;)Lcom/ibm/icu/text/CompactDecimalFormat;
    .locals 1

    .line 108
    new-instance v0, Lcom/ibm/icu/text/CompactDecimalFormat;

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/ibm/icu/text/CompactDecimalFormat;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;)V

    return-object v0
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 0

    .line 135
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/CurrencyAmount;
    .locals 0

    .line 145
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
