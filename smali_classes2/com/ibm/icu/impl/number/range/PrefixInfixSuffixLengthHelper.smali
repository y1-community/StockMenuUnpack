.class public Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;
.super Ljava/lang/Object;
.source "PrefixInfixSuffixLengthHelper.java"


# instance fields
.field public length1:I

.field public length2:I

.field public lengthInfix:I

.field public lengthPrefix:I

.field public lengthSuffix:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    .line 10
    iput v0, p0, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    .line 11
    iput v0, p0, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthInfix:I

    .line 12
    iput v0, p0, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length2:I

    .line 13
    iput v0, p0, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    return-void
.end method


# virtual methods
.method public index0()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    return v0
.end method

.method public index1()I
    .locals 2

    .line 20
    iget v0, p0, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    iget v1, p0, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    add-int/2addr v0, v1

    return v0
.end method

.method public index2()I
    .locals 2

    .line 24
    iget v0, p0, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    iget v1, p0, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthInfix:I

    add-int/2addr v0, v1

    return v0
.end method

.method public index3()I
    .locals 2

    .line 28
    iget v0, p0, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    iget v1, p0, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthInfix:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length2:I

    add-int/2addr v0, v1

    return v0
.end method

.method public index4()I
    .locals 2

    .line 32
    iget v0, p0, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    iget v1, p0, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length1:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthInfix:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->length2:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    add-int/2addr v0, v1

    return v0
.end method
