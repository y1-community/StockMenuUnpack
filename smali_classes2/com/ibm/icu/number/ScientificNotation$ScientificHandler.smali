.class Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;
.super Ljava/lang/Object;
.source "ScientificNotation.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/MicroPropsGenerator;
.implements Lcom/ibm/icu/impl/number/MultiplierProducer;
.implements Lcom/ibm/icu/impl/number/Modifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/ScientificNotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScientificHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field exponent:I

.field final notation:Lcom/ibm/icu/number/ScientificNotation;

.field final parent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

.field final precomputedMods:[Lcom/ibm/icu/number/ScientificNotation$ScientificModifier;

.field final symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    const-class v0, Lcom/ibm/icu/number/ScientificNotation;

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/number/ScientificNotation;Lcom/ibm/icu/text/DecimalFormatSymbols;ZLcom/ibm/icu/impl/number/MicroPropsGenerator;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;->notation:Lcom/ibm/icu/number/ScientificNotation;

    .line 141
    iput-object p2, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 142
    iput-object p4, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;->parent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    if-eqz p3, :cond_0

    const/16 p1, 0x19

    new-array p1, p1, [Lcom/ibm/icu/number/ScientificNotation$ScientificModifier;

    .line 146
    iput-object p1, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;->precomputedMods:[Lcom/ibm/icu/number/ScientificNotation$ScientificModifier;

    const/16 p1, -0xc

    :goto_0
    const/16 p2, 0xc

    if-gt p1, p2, :cond_1

    .line 148
    iget-object p2, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;->precomputedMods:[Lcom/ibm/icu/number/ScientificNotation$ScientificModifier;

    add-int/lit8 p3, p1, 0xc

    new-instance p4, Lcom/ibm/icu/number/ScientificNotation$ScientificModifier;

    invoke-direct {p4, p1, p0}, Lcom/ibm/icu/number/ScientificNotation$ScientificModifier;-><init>(ILcom/ibm/icu/number/ScientificNotation$ScientificHandler;)V

    aput-object p4, p2, p3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 151
    iput-object p1, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;->precomputedMods:[Lcom/ibm/icu/number/ScientificNotation$ScientificModifier;

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/number/ScientificNotation;Lcom/ibm/icu/text/DecimalFormatSymbols;ZLcom/ibm/icu/impl/number/MicroPropsGenerator;Lcom/ibm/icu/number/ScientificNotation$1;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;-><init>(Lcom/ibm/icu/number/ScientificNotation;Lcom/ibm/icu/text/DecimalFormatSymbols;ZLcom/ibm/icu/impl/number/MicroPropsGenerator;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;ILcom/ibm/icu/impl/FormattedStringBuilder;I)I
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;->doApply(ILcom/ibm/icu/impl/FormattedStringBuilder;I)I

    move-result p0

    return p0
.end method

.method private doApply(ILcom/ibm/icu/impl/FormattedStringBuilder;I)I
    .locals 5

    .line 273
    iget-object v0, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p2, p3, v0, v1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, p3

    if-gez p1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;->notation:Lcom/ibm/icu/number/ScientificNotation;

    iget-object v1, v1, Lcom/ibm/icu/number/ScientificNotation;->exponentSignDisplay:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    sget-object v2, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->NEVER:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    if-eq v1, v2, :cond_0

    .line 275
    iget-object v1, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p2, v0, v1, v2}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    goto :goto_1

    :cond_0
    if-ltz p1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;->notation:Lcom/ibm/icu/number/ScientificNotation;

    iget-object v1, v1, Lcom/ibm/icu/number/ScientificNotation;->exponentSignDisplay:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    sget-object v2, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ALWAYS:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    if-ne v1, v2, :cond_1

    .line 277
    iget-object v1, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p2, v0, v1, v2}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    .line 280
    :cond_1
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v1, 0x0

    .line 281
    :goto_2
    iget-object v2, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;->notation:Lcom/ibm/icu/number/ScientificNotation;

    iget v2, v2, Lcom/ibm/icu/number/ScientificNotation;->minExponentDigits:I

    if-lt v1, v2, :cond_3

    if-lez p1, :cond_2

    goto :goto_3

    :cond_2
    sub-int/2addr v0, p3

    return v0

    .line 282
    :cond_3
    :goto_3
    rem-int/lit8 v2, p1, 0xa

    .line 283
    iget-object v3, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v3}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, v2

    sub-int v3, v0, v1

    .line 284
    sget-object v4, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p2, v3, v2, v4}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    .line 281
    div-int/lit8 p1, p1, 0xa

    goto :goto_2
.end method


# virtual methods
.method public apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I
    .locals 0

    .line 266
    iget p2, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;->exponent:I

    invoke-direct {p0, p2, p1, p3}, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;->doApply(ILcom/ibm/icu/impl/FormattedStringBuilder;I)I

    move-result p1

    return p1
.end method

.method public containsField(Ljava/text/Format$Field;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getCodePointCount()I
    .locals 1

    const/16 v0, 0x3e7

    return v0
.end method

.method public getMultiplier(I)I
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;->notation:Lcom/ibm/icu/number/ScientificNotation;

    iget v0, v0, Lcom/ibm/icu/number/ScientificNotation;->engineeringInterval:I

    .line 210
    iget-object v1, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;->notation:Lcom/ibm/icu/number/ScientificNotation;

    iget-boolean v1, v1, Lcom/ibm/icu/number/ScientificNotation;->requireMinInt:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-gt v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 218
    :cond_1
    rem-int v1, p1, v0

    add-int/2addr v1, v0

    rem-int/2addr v1, v0

    add-int/lit8 v0, v1, 0x1

    :goto_0
    sub-int/2addr v0, p1

    sub-int/2addr v0, v2

    return v0
.end method

.method public getParameters()Lcom/ibm/icu/impl/number/Modifier$Parameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefixLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStrong()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public processQuantity(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;->parent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/number/MicroPropsGenerator;->processQuantity(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object v0

    .line 161
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 168
    :cond_0
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->isZeroish()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 169
    iget-object v1, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;->notation:Lcom/ibm/icu/number/ScientificNotation;

    iget-boolean v1, v1, Lcom/ibm/icu/number/ScientificNotation;->requireMinInt:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    instance-of v1, v1, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, v0, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    check-cast v1, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;

    iget-object v3, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;->notation:Lcom/ibm/icu/number/ScientificNotation;

    iget v3, v3, Lcom/ibm/icu/number/ScientificNotation;->engineeringInterval:I

    invoke-virtual {v1, p1, v3}, Lcom/ibm/icu/number/Precision$SignificantRounderImpl;->apply(Lcom/ibm/icu/impl/number/DecimalQuantity;I)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v1, v0, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/number/Precision;->apply(Lcom/ibm/icu/impl/number/DecimalQuantity;)V

    goto :goto_0

    .line 179
    :cond_2
    iget-object v1, v0, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    invoke-virtual {v1, p1, p0}, Lcom/ibm/icu/number/Precision;->chooseMultiplierAndApply(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/MultiplierProducer;)I

    move-result v1

    neg-int v2, v1

    .line 183
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;->precomputedMods:[Lcom/ibm/icu/number/ScientificNotation$ScientificModifier;

    if-eqz v1, :cond_3

    const/16 v3, -0xc

    if-lt v2, v3, :cond_3

    const/16 v3, 0xc

    if-gt v2, v3, :cond_3

    add-int/lit8 v3, v2, 0xc

    .line 185
    aget-object v1, v1, v3

    iput-object v1, v0, Lcom/ibm/icu/impl/number/MicroProps;->modInner:Lcom/ibm/icu/impl/number/Modifier;

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 188
    new-instance v1, Lcom/ibm/icu/number/ScientificNotation$ScientificModifier;

    invoke-direct {v1, v2, p0}, Lcom/ibm/icu/number/ScientificNotation$ScientificModifier;-><init>(ILcom/ibm/icu/number/ScientificNotation$ScientificHandler;)V

    iput-object v1, v0, Lcom/ibm/icu/impl/number/MicroProps;->modInner:Lcom/ibm/icu/impl/number/Modifier;

    goto :goto_1

    .line 191
    :cond_4
    iput v2, p0, Lcom/ibm/icu/number/ScientificNotation$ScientificHandler;->exponent:I

    .line 192
    iput-object p0, v0, Lcom/ibm/icu/impl/number/MicroProps;->modInner:Lcom/ibm/icu/impl/number/Modifier;

    .line 198
    :goto_1
    invoke-interface {p1, v2}, Lcom/ibm/icu/impl/number/DecimalQuantity;->adjustExponent(I)V

    const/4 p1, 0x0

    .line 201
    iput-object p1, v0, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    return-object v0

    .line 162
    :cond_5
    :goto_2
    sget-object p1, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->EMPTY:Lcom/ibm/icu/impl/number/ConstantAffixModifier;

    iput-object p1, v0, Lcom/ibm/icu/impl/number/MicroProps;->modInner:Lcom/ibm/icu/impl/number/Modifier;

    return-object v0
.end method

.method public semanticallyEquivalent(Lcom/ibm/icu/impl/number/Modifier;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
