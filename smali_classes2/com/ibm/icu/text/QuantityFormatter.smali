.class Lcom/ibm/icu/text/QuantityFormatter;
.super Ljava/lang/Object;
.source "QuantityFormatter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final templates:[Lcom/ibm/icu/text/SimpleFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget v0, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    new-array v0, v0, [Lcom/ibm/icu/text/SimpleFormatter;

    iput-object v0, p0, Lcom/ibm/icu/text/QuantityFormatter;->templates:[Lcom/ibm/icu/text/SimpleFormatter;

    return-void
.end method

.method public static format(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 109
    invoke-static {p0, p2, v1, v0}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    aget p0, v1, v2

    if-ltz p0, :cond_1

    .line 112
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p0

    aget p1, v1, v2

    add-int/2addr p0, p1

    invoke-virtual {p3, p0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 113
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p0

    aget p1, v1, v2

    add-int/2addr p0, p1

    invoke-virtual {p3, p0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p3, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 116
    invoke-virtual {p3, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_2
    :goto_0
    return-object p2
.end method

.method public static selectPlural(DLcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/text/PluralRules;)Lcom/ibm/icu/impl/StandardPlural;
    .locals 1

    .line 95
    instance-of v0, p2, Lcom/ibm/icu/text/DecimalFormat;

    if-eqz v0, :cond_0

    .line 96
    check-cast p2, Lcom/ibm/icu/text/DecimalFormat;

    invoke-virtual {p2, p0, p1}, Lcom/ibm/icu/text/DecimalFormat;->getFixedDecimal(D)Lcom/ibm/icu/text/PluralRules$IFixedDecimal;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/ibm/icu/text/PluralRules;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p3, p0, p1}, Lcom/ibm/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object p0

    .line 100
    :goto_0
    invoke-static {p0}, Lcom/ibm/icu/impl/StandardPlural;->orOtherFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addIfAbsent(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3

    .line 41
    invoke-static {p1}, Lcom/ibm/icu/impl/StandardPlural;->indexFromString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 42
    iget-object v0, p0, Lcom/ibm/icu/text/QuantityFormatter;->templates:[Lcom/ibm/icu/text/SimpleFormatter;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 45
    invoke-static {p2, v1, v2}, Lcom/ibm/icu/text/SimpleFormatter;->compileMinMaxArguments(Ljava/lang/CharSequence;II)Lcom/ibm/icu/text/SimpleFormatter;

    move-result-object p2

    aput-object p2, v0, p1

    return-void
.end method

.method public format(DLcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/text/PluralRules;)Ljava/lang/String;
    .locals 1

    .line 64
    invoke-virtual {p3, p1, p2}, Lcom/ibm/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {p1, p2, p3, p4}, Lcom/ibm/icu/text/QuantityFormatter;->selectPlural(DLcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/text/PluralRules;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object p1

    .line 66
    iget-object p2, p0, Lcom/ibm/icu/text/QuantityFormatter;->templates:[Lcom/ibm/icu/text/SimpleFormatter;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result p1

    aget-object p1, p2, p1

    if-nez p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/ibm/icu/text/QuantityFormatter;->templates:[Lcom/ibm/icu/text/SimpleFormatter;

    sget p2, Lcom/ibm/icu/impl/StandardPlural;->OTHER_INDEX:I

    aget-object p1, p1, p2

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/CharSequence;

    const/4 p3, 0x0

    aput-object v0, p2, p3

    .line 71
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/SimpleFormatter;->format([Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getByVariant(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/SimpleFormatter;
    .locals 2

    .line 81
    invoke-static {p1}, Lcom/ibm/icu/impl/StandardPlural;->indexOrOtherIndexFromString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 82
    iget-object v0, p0, Lcom/ibm/icu/text/QuantityFormatter;->templates:[Lcom/ibm/icu/text/SimpleFormatter;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 83
    sget v1, Lcom/ibm/icu/impl/StandardPlural;->OTHER_INDEX:I

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/ibm/icu/text/QuantityFormatter;->templates:[Lcom/ibm/icu/text/SimpleFormatter;

    sget v0, Lcom/ibm/icu/impl/StandardPlural;->OTHER_INDEX:I

    aget-object v0, p1, v0

    :cond_0
    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/ibm/icu/text/QuantityFormatter;->templates:[Lcom/ibm/icu/text/SimpleFormatter;

    sget v1, Lcom/ibm/icu/impl/StandardPlural;->OTHER_INDEX:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
