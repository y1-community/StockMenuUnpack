.class Lcom/ibm/icu/text/Quantifier;
.super Ljava/lang/Object;
.source "Quantifier.java"

# interfaces
.implements Lcom/ibm/icu/text/UnicodeMatcher;


# static fields
.field public static final MAX:I = 0x7fffffff


# instance fields
.field private matcher:Lcom/ibm/icu/text/UnicodeMatcher;

.field private maxCount:I

.field private minCount:I


# direct methods
.method public constructor <init>(Lcom/ibm/icu/text/UnicodeMatcher;II)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-gt p2, p3, :cond_0

    .line 30
    iput-object p1, p0, Lcom/ibm/icu/text/Quantifier;->matcher:Lcom/ibm/icu/text/UnicodeMatcher;

    .line 31
    iput p2, p0, Lcom/ibm/icu/text/Quantifier;->minCount:I

    .line 32
    iput p3, p0, Lcom/ibm/icu/text/Quantifier;->maxCount:I

    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public addMatchSetTo(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 1

    .line 111
    iget v0, p0, Lcom/ibm/icu/text/Quantifier;->maxCount:I

    if-lez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/ibm/icu/text/Quantifier;->matcher:Lcom/ibm/icu/text/UnicodeMatcher;

    invoke-interface {v0, p1}, Lcom/ibm/icu/text/UnicodeMatcher;->addMatchSetTo(Lcom/ibm/icu/text/UnicodeSet;)V

    :cond_0
    return-void
.end method

.method public matches(Lcom/ibm/icu/text/Replaceable;[IIZ)I
    .locals 7

    const/4 v0, 0x0

    .line 42
    aget v1, p2, v0

    const/4 v2, 0x0

    .line 44
    :cond_0
    iget v3, p0, Lcom/ibm/icu/text/Quantifier;->maxCount:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v2, v3, :cond_2

    .line 45
    aget v3, p2, v0

    .line 46
    iget-object v6, p0, Lcom/ibm/icu/text/Quantifier;->matcher:Lcom/ibm/icu/text/UnicodeMatcher;

    invoke-interface {v6, p1, p2, p3, p4}, Lcom/ibm/icu/text/UnicodeMatcher;->matches(Lcom/ibm/icu/text/Replaceable;[IIZ)I

    move-result v6

    if-ne v6, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 49
    aget v6, p2, v0

    if-ne v3, v6, :cond_0

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    if-ne v6, v5, :cond_2

    return v5

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 60
    aget p1, p2, v0

    if-ne p1, p3, :cond_3

    return v5

    .line 63
    :cond_3
    iget p1, p0, Lcom/ibm/icu/text/Quantifier;->minCount:I

    if-lt v2, p1, :cond_4

    return v4

    .line 66
    :cond_4
    aput v1, p2, v0

    return v0
.end method

.method public matchesIndexValue(I)Z
    .locals 1

    .line 100
    iget v0, p0, Lcom/ibm/icu/text/Quantifier;->minCount:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/text/Quantifier;->matcher:Lcom/ibm/icu/text/UnicodeMatcher;

    invoke-interface {v0, p1}, Lcom/ibm/icu/text/UnicodeMatcher;->matchesIndexValue(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public toPattern(Z)Ljava/lang/String;
    .locals 5

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/ibm/icu/text/Quantifier;->matcher:Lcom/ibm/icu/text/UnicodeMatcher;

    invoke-interface {v1, p1}, Lcom/ibm/icu/text/UnicodeMatcher;->toPattern(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget p1, p0, Lcom/ibm/icu/text/Quantifier;->minCount:I

    const v1, 0x7fffffff

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 77
    iget p1, p0, Lcom/ibm/icu/text/Quantifier;->maxCount:I

    if-ne p1, v2, :cond_0

    const/16 p1, 0x3f

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-ne p1, v1, :cond_2

    const/16 p1, 0x2a

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-ne p1, v2, :cond_2

    .line 83
    iget p1, p0, Lcom/ibm/icu/text/Quantifier;->maxCount:I

    if-ne p1, v1, :cond_2

    const/16 p1, 0x2b

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 p1, 0x7b

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    iget p1, p0, Lcom/ibm/icu/text/Quantifier;->minCount:I

    int-to-long v3, p1

    invoke-static {v3, v4, v2}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2c

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    iget p1, p0, Lcom/ibm/icu/text/Quantifier;->maxCount:I

    if-eq p1, v1, :cond_3

    int-to-long v3, p1

    .line 90
    invoke-static {v3, v4, v2}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 p1, 0x7d

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
