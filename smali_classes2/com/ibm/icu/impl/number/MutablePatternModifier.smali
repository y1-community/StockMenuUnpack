.class public Lcom/ibm/icu/impl/number/MutablePatternModifier;
.super Ljava/lang/Object;
.source "MutablePatternModifier.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/Modifier;
.implements Lcom/ibm/icu/impl/number/AffixUtils$SymbolProvider;
.implements Lcom/ibm/icu/impl/number/MicroPropsGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field currency:Lcom/ibm/icu/util/Currency;

.field currentAffix:Ljava/lang/StringBuilder;

.field field:Lcom/ibm/icu/text/NumberFormat$Field;

.field final isStrong:Z

.field parent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

.field patternInfo:Lcom/ibm/icu/impl/number/AffixPatternProvider;

.field perMilleReplacesPercent:Z

.field plural:Lcom/ibm/icu/impl/StandardPlural;

.field rules:Lcom/ibm/icu/text/PluralRules;

.field signDisplay:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

.field signum:Lcom/ibm/icu/impl/number/Modifier$Signum;

.field symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

.field unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->isStrong:Z

    return-void
.end method

.method private createConstantModifier(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;
    .locals 7

    .line 204
    invoke-virtual {p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->clear()Lcom/ibm/icu/impl/FormattedStringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->insertPrefix(Lcom/ibm/icu/impl/FormattedStringBuilder;I)I

    .line 205
    invoke-virtual {p2}, Lcom/ibm/icu/impl/FormattedStringBuilder;->clear()Lcom/ibm/icu/impl/FormattedStringBuilder;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->insertSuffix(Lcom/ibm/icu/impl/FormattedStringBuilder;I)I

    .line 206
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->patternInfo:Lcom/ibm/icu/impl/number/AffixPatternProvider;

    invoke-interface {v0}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->hasCurrencySign()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->patternInfo:Lcom/ibm/icu/impl/number/AffixPatternProvider;

    invoke-interface {v1}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->hasBody()Z

    move-result v1

    xor-int/lit8 v4, v1, 0x1

    iget-boolean v5, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->isStrong:Z

    iget-object v6, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;-><init>(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/FormattedStringBuilder;ZZLcom/ibm/icu/text/DecimalFormatSymbols;)V

    return-object v0

    .line 209
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->patternInfo:Lcom/ibm/icu/impl/number/AffixPatternProvider;

    invoke-interface {v1}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->hasBody()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-boolean v2, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->isStrong:Z

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;-><init>(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/FormattedStringBuilder;ZZ)V

    return-object v0
.end method

.method private insertPrefix(Lcom/ibm/icu/impl/FormattedStringBuilder;I)I
    .locals 2

    const/4 v0, 0x1

    .line 353
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->prepareAffix(Z)V

    .line 354
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->currentAffix:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->field:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-static {v0, p1, p2, p0, v1}, Lcom/ibm/icu/impl/number/AffixUtils;->unescape(Ljava/lang/CharSequence;Lcom/ibm/icu/impl/FormattedStringBuilder;ILcom/ibm/icu/impl/number/AffixUtils$SymbolProvider;Lcom/ibm/icu/text/NumberFormat$Field;)I

    move-result p1

    return p1
.end method

.method private insertSuffix(Lcom/ibm/icu/impl/FormattedStringBuilder;I)I
    .locals 2

    const/4 v0, 0x0

    .line 359
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->prepareAffix(Z)V

    .line 360
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->currentAffix:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->field:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-static {v0, p1, p2, p0, v1}, Lcom/ibm/icu/impl/number/AffixUtils;->unescape(Ljava/lang/CharSequence;Lcom/ibm/icu/impl/FormattedStringBuilder;ILcom/ibm/icu/impl/number/AffixUtils$SymbolProvider;Lcom/ibm/icu/text/NumberFormat$Field;)I

    move-result p1

    return p1
.end method

.method private prepareAffix(Z)V
    .locals 7

    .line 372
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->currentAffix:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->currentAffix:Ljava/lang/StringBuilder;

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->patternInfo:Lcom/ibm/icu/impl/number/AffixPatternProvider;

    iget-object v0, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->signDisplay:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    iget-object v2, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->signum:Lcom/ibm/icu/impl/number/Modifier$Signum;

    .line 377
    invoke-static {v0, v2}, Lcom/ibm/icu/impl/number/PatternStringUtils;->resolveSignDisplay(Lcom/ibm/icu/number/NumberFormatter$SignDisplay;Lcom/ibm/icu/impl/number/Modifier$Signum;)Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    move-result-object v3

    iget-object v4, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->plural:Lcom/ibm/icu/impl/StandardPlural;

    iget-boolean v5, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->perMilleReplacesPercent:Z

    iget-object v6, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->currentAffix:Ljava/lang/StringBuilder;

    move v2, p1

    .line 375
    invoke-static/range {v1 .. v6}, Lcom/ibm/icu/impl/number/PatternStringUtils;->patternInfoToStringBuilder(Lcom/ibm/icu/impl/number/AffixPatternProvider;ZLcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;Lcom/ibm/icu/impl/StandardPlural;ZLjava/lang/StringBuilder;)V

    return-void
.end method


# virtual methods
.method public addToChain(Lcom/ibm/icu/impl/number/MicroPropsGenerator;)Lcom/ibm/icu/impl/number/MicroPropsGenerator;
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->parent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    return-object p0
.end method

.method public apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I
    .locals 16

    move-object/from16 v0, p0

    .line 292
    invoke-direct/range {p0 .. p2}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->insertPrefix(Lcom/ibm/icu/impl/FormattedStringBuilder;I)I

    move-result v7

    add-int v1, p3, v7

    move-object/from16 v2, p1

    .line 293
    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->insertSuffix(Lcom/ibm/icu/impl/FormattedStringBuilder;I)I

    move-result v15

    .line 296
    iget-object v3, v0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->patternInfo:Lcom/ibm/icu/impl/number/AffixPatternProvider;

    invoke-interface {v3}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->hasBody()Z

    move-result v3

    if-nez v3, :cond_0

    add-int v9, p2, v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v11, ""

    move-object/from16 v8, p1

    move v10, v1

    .line 297
    invoke-virtual/range {v8 .. v14}, Lcom/ibm/icu/impl/FormattedStringBuilder;->splice(IILjava/lang/CharSequence;IILjava/lang/Object;)I

    move-result v3

    move v8, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_0
    add-int v4, v1, v8

    .line 299
    iget-object v6, v0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v3, v7

    move v5, v15

    invoke-static/range {v1 .. v6}, Lcom/ibm/icu/impl/number/CurrencySpacingEnabledModifier;->applyCurrencySpacing(Lcom/ibm/icu/impl/FormattedStringBuilder;IIIILcom/ibm/icu/text/DecimalFormatSymbols;)I

    add-int/2addr v7, v8

    add-int/2addr v7, v15

    return v7
.end method

.method public containsField(Ljava/text/Format$Field;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public createImmutable()Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;
    .locals 7

    .line 158
    new-instance v0, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>()V

    .line 159
    new-instance v1, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {v1}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>()V

    .line 160
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->needsPlurals()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    new-instance v2, Lcom/ibm/icu/impl/number/AdoptingModifierStore;

    invoke-direct {v2}, Lcom/ibm/icu/impl/number/AdoptingModifierStore;-><init>()V

    .line 163
    sget-object v3, Lcom/ibm/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/impl/StandardPlural;

    .line 164
    sget-object v5, Lcom/ibm/icu/impl/number/Modifier$Signum;->POS:Lcom/ibm/icu/impl/number/Modifier$Signum;

    invoke-virtual {p0, v5, v4}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->setNumberProperties(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;)V

    .line 165
    sget-object v5, Lcom/ibm/icu/impl/number/Modifier$Signum;->POS:Lcom/ibm/icu/impl/number/Modifier$Signum;

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->createConstantModifier(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;

    move-result-object v6

    invoke-virtual {v2, v5, v4, v6}, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->setModifier(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/number/Modifier;)V

    .line 166
    sget-object v5, Lcom/ibm/icu/impl/number/Modifier$Signum;->POS_ZERO:Lcom/ibm/icu/impl/number/Modifier$Signum;

    invoke-virtual {p0, v5, v4}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->setNumberProperties(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;)V

    .line 167
    sget-object v5, Lcom/ibm/icu/impl/number/Modifier$Signum;->POS_ZERO:Lcom/ibm/icu/impl/number/Modifier$Signum;

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->createConstantModifier(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;

    move-result-object v6

    invoke-virtual {v2, v5, v4, v6}, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->setModifier(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/number/Modifier;)V

    .line 168
    sget-object v5, Lcom/ibm/icu/impl/number/Modifier$Signum;->NEG_ZERO:Lcom/ibm/icu/impl/number/Modifier$Signum;

    invoke-virtual {p0, v5, v4}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->setNumberProperties(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;)V

    .line 169
    sget-object v5, Lcom/ibm/icu/impl/number/Modifier$Signum;->NEG_ZERO:Lcom/ibm/icu/impl/number/Modifier$Signum;

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->createConstantModifier(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;

    move-result-object v6

    invoke-virtual {v2, v5, v4, v6}, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->setModifier(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/number/Modifier;)V

    .line 170
    sget-object v5, Lcom/ibm/icu/impl/number/Modifier$Signum;->NEG:Lcom/ibm/icu/impl/number/Modifier$Signum;

    invoke-virtual {p0, v5, v4}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->setNumberProperties(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;)V

    .line 171
    sget-object v5, Lcom/ibm/icu/impl/number/Modifier$Signum;->NEG:Lcom/ibm/icu/impl/number/Modifier$Signum;

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->createConstantModifier(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;

    move-result-object v6

    invoke-virtual {v2, v5, v4, v6}, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->setModifier(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/number/Modifier;)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {v2}, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->freeze()V

    .line 174
    new-instance v0, Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->rules:Lcom/ibm/icu/text/PluralRules;

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;-><init>(Lcom/ibm/icu/impl/number/AdoptingModifierStore;Lcom/ibm/icu/text/PluralRules;)V

    return-object v0

    .line 177
    :cond_1
    sget-object v2, Lcom/ibm/icu/impl/number/Modifier$Signum;->POS:Lcom/ibm/icu/impl/number/Modifier$Signum;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->setNumberProperties(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;)V

    .line 178
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->createConstantModifier(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;

    move-result-object v2

    .line 179
    sget-object v4, Lcom/ibm/icu/impl/number/Modifier$Signum;->POS_ZERO:Lcom/ibm/icu/impl/number/Modifier$Signum;

    invoke-virtual {p0, v4, v3}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->setNumberProperties(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;)V

    .line 180
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->createConstantModifier(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;

    move-result-object v4

    .line 181
    sget-object v5, Lcom/ibm/icu/impl/number/Modifier$Signum;->NEG_ZERO:Lcom/ibm/icu/impl/number/Modifier$Signum;

    invoke-virtual {p0, v5, v3}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->setNumberProperties(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;)V

    .line 182
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->createConstantModifier(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;

    move-result-object v5

    .line 183
    sget-object v6, Lcom/ibm/icu/impl/number/Modifier$Signum;->NEG:Lcom/ibm/icu/impl/number/Modifier$Signum;

    invoke-virtual {p0, v6, v3}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->setNumberProperties(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;)V

    .line 184
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->createConstantModifier(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;

    move-result-object v0

    .line 185
    new-instance v1, Lcom/ibm/icu/impl/number/AdoptingModifierStore;

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/ibm/icu/impl/number/AdoptingModifierStore;-><init>(Lcom/ibm/icu/impl/number/Modifier;Lcom/ibm/icu/impl/number/Modifier;Lcom/ibm/icu/impl/number/Modifier;Lcom/ibm/icu/impl/number/Modifier;)V

    .line 186
    new-instance v0, Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;-><init>(Lcom/ibm/icu/impl/number/AdoptingModifierStore;Lcom/ibm/icu/text/PluralRules;)V

    return-object v0
.end method

.method public getCodePointCount()I
    .locals 3

    const/4 v0, 0x1

    .line 319
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->prepareAffix(Z)V

    .line 320
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->currentAffix:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/ibm/icu/impl/number/AffixUtils;->unescapedCount(Ljava/lang/CharSequence;ZLcom/ibm/icu/impl/number/AffixUtils$SymbolProvider;)I

    move-result v0

    .line 321
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->prepareAffix(Z)V

    .line 322
    iget-object v2, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->currentAffix:Ljava/lang/StringBuilder;

    invoke-static {v2, v1, p0}, Lcom/ibm/icu/impl/number/AffixUtils;->unescapedCount(Ljava/lang/CharSequence;ZLcom/ibm/icu/impl/number/AffixUtils$SymbolProvider;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getParameters()Lcom/ibm/icu/impl/number/Modifier$Parameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefixLength()I
    .locals 2

    const/4 v0, 0x1

    .line 311
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->prepareAffix(Z)V

    .line 312
    iget-object v1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->currentAffix:Ljava/lang/StringBuilder;

    invoke-static {v1, v0, p0}, Lcom/ibm/icu/impl/number/AffixUtils;->unescapedCount(Ljava/lang/CharSequence;ZLcom/ibm/icu/impl/number/AffixUtils$SymbolProvider;)I

    move-result v0

    return v0
.end method

.method public getSymbol(I)Ljava/lang/CharSequence;
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    packed-switch p1, :pswitch_data_0

    .line 437
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 390
    :pswitch_0
    iget-object p1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 392
    :pswitch_1
    iget-object p1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 394
    :pswitch_2
    iget-object p1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 396
    :pswitch_3
    iget-object p1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPerMillString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 399
    :pswitch_4
    iget-object p1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    sget-object v3, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->ISO_CODE:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    if-ne p1, v3, :cond_0

    .line 400
    iget-object p1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->currency:Lcom/ibm/icu/util/Currency;

    invoke-virtual {p1}, Lcom/ibm/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 401
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    sget-object v3, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->HIDDEN:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    if-ne p1, v3, :cond_1

    const-string p1, ""

    return-object p1

    .line 405
    :cond_1
    sget-object p1, Lcom/ibm/icu/impl/number/MutablePatternModifier$1;->$SwitchMap$com$ibm$icu$number$NumberFormatter$UnitWidth:[I

    iget-object v3, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    invoke-virtual {v3}, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->ordinal()I

    move-result v3

    aget p1, p1, v3

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-eq p1, v3, :cond_4

    if-eq p1, v0, :cond_5

    if-eq p1, v2, :cond_3

    if-ne p1, v4, :cond_2

    const/4 v2, 0x5

    goto :goto_0

    .line 419
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 421
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->currency:Lcom/ibm/icu/util/Currency;

    iget-object v0, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v1}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 424
    :pswitch_5
    iget-object p1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->currency:Lcom/ibm/icu/util/Currency;

    invoke-virtual {p1}, Lcom/ibm/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 430
    :pswitch_6
    iget-object p1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->currency:Lcom/ibm/icu/util/Currency;

    iget-object v2, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 431
    invoke-virtual {v2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->plural:Lcom/ibm/icu/impl/StandardPlural;

    invoke-virtual {v3}, Lcom/ibm/icu/impl/StandardPlural;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_7
    const-string p1, "\ufffd"

    return-object p1

    .line 435
    :pswitch_8
    iget-object p1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->currency:Lcom/ibm/icu/util/Currency;

    iget-object v0, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v1}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_8
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

.method public isStrong()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->isStrong:Z

    return v0
.end method

.method public needsPlurals()Z
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->patternInfo:Lcom/ibm/icu/impl/number/AffixPatternProvider;

    const/4 v1, -0x7

    invoke-interface {v0, v1}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->containsSymbolType(I)Z

    move-result v0

    return v0
.end method

.method public processQuantity(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->parent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/number/MicroPropsGenerator;->processQuantity(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object v0

    .line 274
    iget-object v1, v0, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, v0, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/number/Precision;->apply(Lcom/ibm/icu/impl/number/DecimalQuantity;)V

    .line 277
    :cond_0
    iget-object v1, v0, Lcom/ibm/icu/impl/number/MicroProps;->modMiddle:Lcom/ibm/icu/impl/number/Modifier;

    if-eqz v1, :cond_1

    return-object v0

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->needsPlurals()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    iget-object v1, v0, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    iget-object v2, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->rules:Lcom/ibm/icu/text/PluralRules;

    invoke-static {v1, v2, p1}, Lcom/ibm/icu/impl/number/RoundingUtils;->getPluralSafe(Lcom/ibm/icu/number/Precision;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v1

    .line 282
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->signum()Lcom/ibm/icu/impl/number/Modifier$Signum;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->setNumberProperties(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;)V

    goto :goto_0

    .line 284
    :cond_2
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->signum()Lcom/ibm/icu/impl/number/Modifier$Signum;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->setNumberProperties(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;)V

    .line 286
    :goto_0
    iput-object p0, v0, Lcom/ibm/icu/impl/number/MicroProps;->modMiddle:Lcom/ibm/icu/impl/number/Modifier;

    return-object v0
.end method

.method public semanticallyEquivalent(Lcom/ibm/icu/impl/number/Modifier;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setNumberProperties(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->signum:Lcom/ibm/icu/impl/number/Modifier$Signum;

    .line 135
    iput-object p2, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->plural:Lcom/ibm/icu/impl/StandardPlural;

    return-void
.end method

.method public setPatternAttributes(Lcom/ibm/icu/number/NumberFormatter$SignDisplay;Z)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->signDisplay:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    .line 95
    iput-boolean p2, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->perMilleReplacesPercent:Z

    return-void
.end method

.method public setPatternInfo(Lcom/ibm/icu/impl/number/AffixPatternProvider;Lcom/ibm/icu/text/NumberFormat$Field;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->patternInfo:Lcom/ibm/icu/impl/number/AffixPatternProvider;

    .line 82
    iput-object p2, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->field:Lcom/ibm/icu/text/NumberFormat$Field;

    return-void
.end method

.method public setSymbols(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/util/Currency;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Lcom/ibm/icu/text/PluralRules;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 118
    iput-object p2, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->currency:Lcom/ibm/icu/util/Currency;

    .line 119
    iput-object p3, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    .line 120
    iput-object p4, p0, Lcom/ibm/icu/impl/number/MutablePatternModifier;->rules:Lcom/ibm/icu/text/PluralRules;

    return-void
.end method
