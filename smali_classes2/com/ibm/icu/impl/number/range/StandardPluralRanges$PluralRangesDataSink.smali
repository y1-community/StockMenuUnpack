.class final Lcom/ibm/icu/impl/number/range/StandardPluralRanges$PluralRangesDataSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "StandardPluralRanges.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/range/StandardPluralRanges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PluralRangesDataSink"
.end annotation


# instance fields
.field output:Lcom/ibm/icu/impl/number/range/StandardPluralRanges;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/number/range/StandardPluralRanges;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/ibm/icu/impl/number/range/StandardPluralRanges$PluralRangesDataSink;->output:Lcom/ibm/icu/impl/number/range/StandardPluralRanges;

    return-void
.end method


# virtual methods
.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 5

    .line 84
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getArray()Lcom/ibm/icu/impl/UResource$Array;

    move-result-object p1

    .line 85
    iget-object p3, p0, Lcom/ibm/icu/impl/number/range/StandardPluralRanges$PluralRangesDataSink;->output:Lcom/ibm/icu/impl/number/range/StandardPluralRanges;

    invoke-interface {p1}, Lcom/ibm/icu/impl/UResource$Array;->getSize()I

    move-result v0

    invoke-static {p3, v0}, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->access$000(Lcom/ibm/icu/impl/number/range/StandardPluralRanges;I)V

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 86
    :goto_0
    invoke-interface {p1, v0, p2}, Lcom/ibm/icu/impl/UResource$Array;->getValue(ILcom/ibm/icu/impl/UResource$Value;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getArray()Lcom/ibm/icu/impl/UResource$Array;

    move-result-object v1

    .line 88
    invoke-interface {v1}, Lcom/ibm/icu/impl/UResource$Array;->getSize()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 92
    invoke-interface {v1, p3, p2}, Lcom/ibm/icu/impl/UResource$Array;->getValue(ILcom/ibm/icu/impl/UResource$Value;)Z

    .line 93
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ibm/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v2

    const/4 v3, 0x1

    .line 94
    invoke-interface {v1, v3, p2}, Lcom/ibm/icu/impl/UResource$Array;->getValue(ILcom/ibm/icu/impl/UResource$Value;)Z

    .line 95
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ibm/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v3

    const/4 v4, 0x2

    .line 96
    invoke-interface {v1, v4, p2}, Lcom/ibm/icu/impl/UResource$Array;->getValue(ILcom/ibm/icu/impl/UResource$Value;)Z

    .line 97
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v1

    .line 98
    iget-object v4, p0, Lcom/ibm/icu/impl/number/range/StandardPluralRanges$PluralRangesDataSink;->output:Lcom/ibm/icu/impl/number/range/StandardPluralRanges;

    invoke-static {v4, v2, v3, v1}, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->access$100(Lcom/ibm/icu/impl/number/range/StandardPluralRanges;Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    new-instance p1, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string p2, "Expected 3 elements in pluralRanges.txt array"

    invoke-direct {p1, p2}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method
