.class public Lcom/ibm/icu/text/PluralRules$FixedDecimal;
.super Ljava/lang/Number;
.source "PluralRules.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/ibm/icu/text/PluralRules$IFixedDecimal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedDecimal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lcom/ibm/icu/text/PluralRules$FixedDecimal;",
        ">;",
        "Lcom/ibm/icu/text/PluralRules$IFixedDecimal;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final MAX:J = 0xde0b6b3a7640000L

.field private static final MAX_INTEGER_PART:J = 0x3b9aca00L

.field private static final serialVersionUID:J = -0x42016b294abcff1dL


# instance fields
.field private final baseFactor:I

.field final decimalDigits:J

.field final decimalDigitsWithoutTrailingZeros:J

.field final exponent:I

.field final hasIntegerValue:Z

.field final integerValue:J

.field final isNegative:Z

.field final source:D

.field final visibleDecimalDigitCount:I

.field final visibleDecimalDigitCountWithoutTrailingZeros:I


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 784
    invoke-static {p1, p2}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimals(D)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    return-void
.end method

.method public constructor <init>(DI)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 762
    invoke-static {p1, p2, p3}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->getFractionalDigits(DI)I

    move-result v0

    int-to-long v5, v0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    return-void
.end method

.method public constructor <init>(DIJ)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    .line 744
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(DIJI)V

    return-void
.end method

.method public constructor <init>(DIJI)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move v6, p6

    move v7, p6

    .line 735
    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(DIJII)V

    return-void
.end method

.method public constructor <init>(DIJII)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 686
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmpg-double v4, p1, v2

    if-gez v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 687
    :goto_0
    iput-boolean v2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    if-eqz v2, :cond_1

    neg-double v2, p1

    goto :goto_1

    :cond_1
    move-wide v2, p1

    .line 688
    :goto_1
    iput-wide v2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    .line 689
    iput p3, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    .line 690
    iput-wide p4, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    const-wide v4, 0x43abc16d674ec800L    # 1.0E18

    cmpl-double v6, p1, v4

    if-lez v6, :cond_2

    const-wide p1, 0xde0b6b3a7640000L

    goto :goto_2

    :cond_2
    double-to-long p1, p1

    .line 691
    :goto_2
    iput-wide p1, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->integerValue:J

    if-nez p6, :cond_3

    move p6, p7

    .line 698
    :cond_3
    iput p6, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->exponent:I

    long-to-double p1, p1

    cmpl-double p6, v2, p1

    if-nez p6, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 699
    :goto_3
    iput-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->hasIntegerValue:Z

    const-wide/16 p1, 0x0

    cmp-long p6, p4, p1

    if-nez p6, :cond_5

    .line 714
    iput-wide p1, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    .line 715
    iput v1, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    goto :goto_5

    :cond_5
    move p6, p3

    :goto_4
    const-wide/16 v0, 0xa

    .line 719
    rem-long v2, p4, v0

    cmp-long p7, v2, p1

    if-nez p7, :cond_6

    .line 720
    div-long/2addr p4, v0

    add-int/lit8 p6, p6, -0x1

    goto :goto_4

    .line 723
    :cond_6
    iput-wide p4, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    .line 724
    iput p6, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    :goto_5
    const-wide/high16 p1, 0x4024000000000000L    # 10.0

    int-to-double p3, p3

    .line 726
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->baseFactor:I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    long-to-double p1, p1

    const/4 v0, 0x0

    .line 793
    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/text/PluralRules$FixedDecimal;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 853
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 857
    iget-wide v0, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    iput-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    .line 858
    iget v0, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    iput v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    .line 859
    iget v0, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    iput v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    .line 861
    iget-wide v0, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    iput-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    .line 862
    iget-wide v0, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    iput-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    .line 864
    iget-wide v0, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->integerValue:J

    iput-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->integerValue:J

    .line 865
    iget-boolean v0, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->hasIntegerValue:Z

    iput-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->hasIntegerValue:Z

    .line 866
    iget-boolean v0, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    iput-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    .line 867
    iget v0, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->exponent:I

    iput v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->exponent:I

    .line 868
    iget p1, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->baseFactor:I

    iput p1, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->baseFactor:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 878
    invoke-static {p1}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->parseDecimalSampleRangeNumString(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(Lcom/ibm/icu/text/PluralRules$FixedDecimal;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ibm/icu/text/PluralRules$FixedDecimal;)I
    .locals 0

    .line 568
    iget p0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->baseFactor:I

    return p0
.end method

.method public static createWithExponent(DII)Lcom/ibm/icu/text/PluralRules$FixedDecimal;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 753
    new-instance v7, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->getFractionalDigits(DI)I

    move-result v0

    int-to-long v4, v0

    move-object v0, v7

    move-wide v1, p0

    move v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(DIJI)V

    return-object v7
.end method

.method public static decimals(D)I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 808
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide/16 v2, 0x0

    cmpg-double v0, p0, v2

    if-gez v0, :cond_1

    neg-double p0, p0

    .line 814
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    cmpl-double v0, p0, v2

    if-nez v0, :cond_2

    return v1

    :cond_2
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    cmpg-double v0, p0, v2

    if-gez v0, :cond_5

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double p0, p0, v2

    double-to-long p0, p0

    const-wide/32 v2, 0xf4240

    .line 818
    rem-long/2addr p0, v2

    const/4 v0, 0x6

    const/16 v2, 0xa

    :goto_0
    if-lez v0, :cond_4

    int-to-long v3, v2

    .line 820
    rem-long v3, p0, v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    return v0

    :cond_3
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return v1

    .line 826
    :cond_5
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v3, v1

    const-string p0, "%1.15e"

    invoke-static {v0, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x65

    .line 827
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 v0, p1, 0x1

    .line 829
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_6

    add-int/lit8 v0, v0, 0x1

    .line 832
    :cond_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 833
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v3, p1, -0x2

    sub-int/2addr v3, v0

    if-gez v3, :cond_7

    return v1

    :cond_7
    sub-int/2addr p1, v2

    :goto_1
    if-lez v3, :cond_9

    .line 839
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_9
    :goto_2
    return v3

    :cond_a
    :goto_3
    return v1
.end method

.method private static getFractionalDigits(DI)I
    .locals 4

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_1

    neg-double p0, p0

    :cond_1
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double v2, p2

    .line 772
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int p2, v0

    int-to-double v0, p2

    .line 773
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    int-to-long v0, p2

    .line 774
    rem-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static getOperand(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Operand;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 943
    invoke-static {p0}, Lcom/ibm/icu/text/PluralRules$Operand;->valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Operand;

    move-result-object p0

    return-object p0
.end method

.method private static getVisibleFractionCount(Ljava/lang/String;)I
    .locals 1

    .line 906
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 907
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 911
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v0

    return p0
.end method

.method private static parseDecimalSampleRangeNumString(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$FixedDecimal;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "e"

    .line 887
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 901
    :cond_0
    new-instance v0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {p0}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->getVisibleFractionCount(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    return-object v0

    :cond_1
    :goto_0
    const/16 v0, 0x65

    .line 888
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    const/16 v0, 0x63

    .line 890
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    :cond_2
    add-int/lit8 v1, v0, 0x1

    .line 893
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 894
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 895
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 897
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 898
    invoke-static {p0}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->getVisibleFractionCount(Ljava/lang/String;)I

    move-result p0

    .line 896
    invoke-static {v2, v3, p0, v1}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->createWithExponent(DII)Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    move-result-object p0

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1091
    new-instance p1, Ljava/io/NotSerializableException;

    invoke-direct {p1}, Ljava/io/NotSerializableException;-><init>()V

    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1086
    new-instance p1, Ljava/io/NotSerializableException;

    invoke-direct {p1}, Ljava/io/NotSerializableException;-><init>()V

    throw p1
.end method


# virtual methods
.method public compareTo(Lcom/ibm/icu/text/PluralRules$FixedDecimal;)I
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 954
    iget v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->exponent:I

    iget v1, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->exponent:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 955
    invoke-virtual {p0}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->doubleValue()D

    move-result-wide v4

    cmpg-double p1, v0, v4

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 957
    :cond_1
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->integerValue:J

    iget-wide v4, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->integerValue:J

    cmp-long v6, v0, v4

    if-eqz v6, :cond_3

    cmp-long p1, v0, v4

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 960
    :cond_3
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    iget-wide v4, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    cmpl-double v6, v0, v4

    if-eqz v6, :cond_5

    cmpg-double p1, v0, v4

    if-gez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    :goto_2
    return v2

    .line 963
    :cond_5
    iget v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    iget v1, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    if-eq v0, v1, :cond_7

    if-ge v0, v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x1

    :goto_3
    return v2

    .line 966
    :cond_7
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    iget-wide v4, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_9

    cmp-long p1, v0, v4

    if-gez p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v2, 0x1

    :goto_4
    return v2

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 567
    check-cast p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->compareTo(Lcom/ibm/icu/text/PluralRules$FixedDecimal;)I

    move-result p1

    return p1
.end method

.method public doubleValue()D
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1071
    iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    neg-double v0, v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    :goto_0
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    iget v4, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->exponent:I

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 986
    :cond_1
    instance-of v2, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    if-nez v2, :cond_2

    return v0

    .line 989
    :cond_2
    check-cast p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    .line 990
    iget-wide v2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    iget-wide v4, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    cmpl-double v6, v2, v4

    if-nez v6, :cond_3

    iget v2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    iget v3, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    iget-wide v4, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    iget v2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->exponent:I

    iget p1, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->exponent:I

    if-ne v2, p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public floatValue()F
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1061
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    iget v2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->exponent:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getBaseFactor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 670
    iget v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->baseFactor:I

    return v0
.end method

.method public getDecimalDigits()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 624
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    return-wide v0
.end method

.method public getDecimalDigitsWithoutTrailingZeros()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 633
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    return-wide v0
.end method

.method public getIntegerValue()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 642
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->integerValue:J

    return-wide v0
.end method

.method public getPluralOperand(Lcom/ibm/icu/text/PluralRules$Operand;)D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 924
    sget-object v0, Lcom/ibm/icu/text/PluralRules$2;->$SwitchMap$com$ibm$icu$text$PluralRules$Operand:[I

    invoke-virtual {p1}, Lcom/ibm/icu/text/PluralRules$Operand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 933
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    return-wide v0

    .line 932
    :pswitch_0
    iget p1, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->exponent:I

    int-to-double v0, p1

    return-wide v0

    .line 931
    :pswitch_1
    iget p1, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->exponent:I

    int-to-double v0, p1

    return-wide v0

    .line 930
    :pswitch_2
    iget p1, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    int-to-double v0, p1

    return-wide v0

    .line 929
    :pswitch_3
    iget p1, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    int-to-double v0, p1

    return-wide v0

    .line 928
    :pswitch_4
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    long-to-double v0, v0

    return-wide v0

    .line 927
    :pswitch_5
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    long-to-double v0, v0

    return-wide v0

    .line 926
    :pswitch_6
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->integerValue:J

    long-to-double v0, v0

    return-wide v0

    .line 925
    :pswitch_7
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getShiftedValue()J
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1080
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->integerValue:J

    iget v2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->baseFactor:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getSource()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 597
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    return-wide v0
.end method

.method public getVisibleDecimalDigitCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 606
    iget v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    return v0
.end method

.method public getVisibleDecimalDigitCountWithoutTrailingZeros()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 615
    iget v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    return v0
.end method

.method public hasIntegerValue()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1026
    iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->hasIntegerValue:Z

    return v0
.end method

.method public hashCode()I
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1002
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    iget v2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    iget-wide v3, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    const-wide v5, 0x4042800000000000L    # 37.0

    mul-double v3, v3, v5

    double-to-int v3, v3

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x25

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public intValue()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1037
    invoke-virtual {p0}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public isHasIntegerValue()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 652
    iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->hasIntegerValue:Z

    return v0
.end method

.method public isInfinite()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1115
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1103
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public isNegative()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 661
    iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    return v0
.end method

.method public longValue()J
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1047
    iget v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->exponent:I

    if-nez v0, :cond_0

    .line 1048
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->integerValue:J

    return-wide v0

    :cond_0
    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    int-to-double v3, v0

    .line 1050
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->integerValue:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1012
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    iget v1, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->exponent:I

    if-eqz v1, :cond_0

    .line 1014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "e"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->exponent:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
