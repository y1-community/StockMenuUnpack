.class public Lcom/ibm/icu/number/ScientificNotation;
.super Lcom/ibm/icu/number/Notation;
.source "ScientificNotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/number/ScientificNotation$ScientificModifier;,
        Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;
    }
.end annotation


# instance fields
.field engineeringInterval:I

.field exponentSignDisplay:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

.field minExponentDigits:I

.field requireMinInt:Z


# direct methods
.method constructor <init>(IZILcom/ibm/icu/number/NumberFormatter$SignDisplay;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/ibm/icu/number/Notation;-><init>()V

    .line 42
    iput p1, p0, Lcom/ibm/icu/number/ScientificNotation;->engineeringInterval:I

    .line 43
    iput-boolean p2, p0, Lcom/ibm/icu/number/ScientificNotation;->requireMinInt:Z

    .line 44
    iput p3, p0, Lcom/ibm/icu/number/ScientificNotation;->minExponentDigits:I

    .line 45
    iput-object p4, p0, Lcom/ibm/icu/number/ScientificNotation;->exponentSignDisplay:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    return-void
.end method


# virtual methods
.method createCopy()Lcom/ibm/icu/number/ScientificNotation;
    .locals 5

    .line 97
    new-instance v0, Lcom/ibm/icu/number/ScientificNotation;

    iget v1, p0, Lcom/ibm/icu/number/ScientificNotation;->engineeringInterval:I

    iget-boolean v2, p0, Lcom/ibm/icu/number/ScientificNotation;->requireMinInt:Z

    iget v3, p0, Lcom/ibm/icu/number/ScientificNotation;->minExponentDigits:I

    iget-object v4, p0, Lcom/ibm/icu/number/ScientificNotation;->exponentSignDisplay:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/number/ScientificNotation;-><init>(IZILcom/ibm/icu/number/NumberFormatter$SignDisplay;)V

    return-object v0
.end method

.method public withExponentSignDisplay(Lcom/ibm/icu/number/NumberFormatter$SignDisplay;)Lcom/ibm/icu/number/ScientificNotation;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/ibm/icu/number/ScientificNotation;->createCopy()Lcom/ibm/icu/number/ScientificNotation;

    move-result-object v0

    .line 91
    iput-object p1, v0, Lcom/ibm/icu/number/ScientificNotation;->exponentSignDisplay:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    return-object v0
.end method

.method withLocaleData(Lcom/ibm/icu/text/DecimalFormatSymbols;ZLcom/ibm/icu/impl/number/MicroPropsGenerator;)Lcom/ibm/icu/impl/number/MicroPropsGenerator;
    .locals 7

    .line 109
    new-instance v6, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;-><init>(Lcom/ibm/icu/number/ScientificNotation;Lcom/ibm/icu/text/DecimalFormatSymbols;ZLcom/ibm/icu/impl/number/MicroPropsGenerator;Lcom/ibm/icu/number/ScientificNotation$1;)V

    return-object v6
.end method

.method public withMinExponentDigits(I)Lcom/ibm/icu/number/ScientificNotation;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x3e7

    if-gt p1, v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/ibm/icu/number/ScientificNotation;->createCopy()Lcom/ibm/icu/number/ScientificNotation;

    move-result-object v0

    .line 66
    iput p1, v0, Lcom/ibm/icu/number/ScientificNotation;->minExponentDigits:I

    return-object v0

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Integer digits must be between 1 and 999 (inclusive)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
