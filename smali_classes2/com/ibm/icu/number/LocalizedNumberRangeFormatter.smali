.class public Lcom/ibm/icu/number/LocalizedNumberRangeFormatter;
.super Lcom/ibm/icu/number/NumberRangeFormatterSettings;
.source "LocalizedNumberRangeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/number/NumberRangeFormatterSettings<",
        "Lcom/ibm/icu/number/LocalizedNumberRangeFormatter;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile fImpl:Lcom/ibm/icu/number/NumberRangeFormatterImpl;


# direct methods
.method constructor <init>(Lcom/ibm/icu/number/NumberRangeFormatterSettings;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/number/NumberRangeFormatterSettings<",
            "*>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/number/NumberRangeFormatterSettings;-><init>(Lcom/ibm/icu/number/NumberRangeFormatterSettings;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method create(ILjava/lang/Object;)Lcom/ibm/icu/number/LocalizedNumberRangeFormatter;
    .locals 1

    .line 94
    new-instance v0, Lcom/ibm/icu/number/LocalizedNumberRangeFormatter;

    invoke-direct {v0, p0, p1, p2}, Lcom/ibm/icu/number/LocalizedNumberRangeFormatter;-><init>(Lcom/ibm/icu/number/NumberRangeFormatterSettings;ILjava/lang/Object;)V

    return-object v0
.end method

.method bridge synthetic create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberRangeFormatterSettings;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/number/LocalizedNumberRangeFormatter;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/LocalizedNumberRangeFormatter;

    move-result-object p1

    return-object p1
.end method

.method formatImpl(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/DecimalQuantity;Z)Lcom/ibm/icu/number/FormattedNumberRange;
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/ibm/icu/number/LocalizedNumberRangeFormatter;->fImpl:Lcom/ibm/icu/number/NumberRangeFormatterImpl;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/ibm/icu/number/NumberRangeFormatterImpl;

    invoke-virtual {p0}, Lcom/ibm/icu/number/LocalizedNumberRangeFormatter;->resolve()Lcom/ibm/icu/impl/number/range/RangeMacroProps;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/number/NumberRangeFormatterImpl;-><init>(Lcom/ibm/icu/impl/number/range/RangeMacroProps;)V

    iput-object v0, p0, Lcom/ibm/icu/number/LocalizedNumberRangeFormatter;->fImpl:Lcom/ibm/icu/number/NumberRangeFormatterImpl;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/number/LocalizedNumberRangeFormatter;->fImpl:Lcom/ibm/icu/number/NumberRangeFormatterImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/number/NumberRangeFormatterImpl;->format(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/DecimalQuantity;Z)Lcom/ibm/icu/number/FormattedNumberRange;

    move-result-object p1

    return-object p1
.end method

.method public formatRange(DD)Lcom/ibm/icu/number/FormattedNumberRange;
    .locals 3

    .line 56
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(D)V

    .line 57
    new-instance v1, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v1, p3, p4}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(D)V

    cmpl-double v2, p1, p3

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 60
    :goto_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/ibm/icu/number/LocalizedNumberRangeFormatter;->formatImpl(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/DecimalQuantity;Z)Lcom/ibm/icu/number/FormattedNumberRange;

    move-result-object p1

    return-object p1
.end method

.method public formatRange(II)Lcom/ibm/icu/number/FormattedNumberRange;
    .locals 2

    .line 38
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(I)V

    .line 39
    new-instance v1, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v1, p2}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(I)V

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/ibm/icu/number/LocalizedNumberRangeFormatter;->formatImpl(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/DecimalQuantity;Z)Lcom/ibm/icu/number/FormattedNumberRange;

    move-result-object p1

    return-object p1
.end method

.method public formatRange(Ljava/lang/Number;Ljava/lang/Number;)Lcom/ibm/icu/number/FormattedNumberRange;
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 80
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/lang/Number;)V

    .line 81
    new-instance v1, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v1, p2}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/lang/Number;)V

    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/ibm/icu/number/LocalizedNumberRangeFormatter;->formatImpl(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/DecimalQuantity;Z)Lcom/ibm/icu/number/FormattedNumberRange;

    move-result-object p1

    return-object p1

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot format null values in range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
