.class public Lcom/ibm/icu/impl/number/MixedUnitLongNameHandler;
.super Ljava/lang/Object;
.source "MixedUnitLongNameHandler.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/MicroPropsGenerator;
.implements Lcom/ibm/icu/impl/number/ModifierStore;
.implements Lcom/ibm/icu/impl/number/LongNameMultiplexer$ParentlessMicroPropsGenerator;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private fIntegerFormatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

.field private fListFormatter:Lcom/ibm/icu/text/ListFormatter;

.field private fMixedUnitData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

.field private final rules:Lcom/ibm/icu/text/PluralRules;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/MicroPropsGenerator;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/ibm/icu/impl/number/MixedUnitLongNameHandler;->rules:Lcom/ibm/icu/text/PluralRules;

    .line 42
    iput-object p2, p0, Lcom/ibm/icu/impl/number/MixedUnitLongNameHandler;->parent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    return-void
.end method

.method public static forMeasureUnit(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/MicroPropsGenerator;)Lcom/ibm/icu/impl/number/MixedUnitLongNameHandler;
    .locals 2

    .line 73
    new-instance v0, Lcom/ibm/icu/impl/number/MixedUnitLongNameHandler;

    invoke-direct {v0, p4, p5}, Lcom/ibm/icu/impl/number/MixedUnitLongNameHandler;-><init>(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/MicroPropsGenerator;)V

    .line 74
    invoke-virtual {p1}, Lcom/ibm/icu/util/MeasureUnit;->splitToSingleUnits()Ljava/util/List;

    move-result-object p1

    .line 76
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, v0, Lcom/ibm/icu/impl/number/MixedUnitLongNameHandler;->fMixedUnitData:Ljava/util/List;

    const/4 p4, 0x0

    .line 77
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p5

    if-ge p4, p5, :cond_0

    .line 79
    sget p5, Lcom/ibm/icu/impl/number/LongNameHandler;->ARRAY_LENGTH:I

    new-array p5, p5, [Ljava/lang/String;

    .line 80
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/MeasureUnit;

    invoke-static {p0, v1, p2, p3, p5}, Lcom/ibm/icu/impl/number/LongNameHandler;->getMeasureData(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;[Ljava/lang/String;)V

    .line 84
    iget-object v1, v0, Lcom/ibm/icu/impl/number/MixedUnitLongNameHandler;->fMixedUnitData:Ljava/util/List;

    invoke-interface {v1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 87
    :cond_0
    sget-object p1, Lcom/ibm/icu/text/ListFormatter$Width;->SHORT:Lcom/ibm/icu/text/ListFormatter$Width;

    .line 88
    sget-object p3, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->NARROW:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    if-ne p2, p3, :cond_1

    .line 89
    sget-object p1, Lcom/ibm/icu/text/ListFormatter$Width;->NARROW:Lcom/ibm/icu/text/ListFormatter$Width;

    goto :goto_1

    .line 90
    :cond_1
    sget-object p3, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    if-ne p2, p3, :cond_2

    .line 92
    sget-object p1, Lcom/ibm/icu/text/ListFormatter$Width;->WIDE:Lcom/ibm/icu/text/ListFormatter$Width;

    .line 95
    :cond_2
    :goto_1
    sget-object p2, Lcom/ibm/icu/text/ListFormatter$Type;->UNITS:Lcom/ibm/icu/text/ListFormatter$Type;

    invoke-static {p0, p2, p1}, Lcom/ibm/icu/text/ListFormatter;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/ListFormatter$Type;Lcom/ibm/icu/text/ListFormatter$Width;)Lcom/ibm/icu/text/ListFormatter;

    move-result-object p1

    iput-object p1, v0, Lcom/ibm/icu/impl/number/MixedUnitLongNameHandler;->fListFormatter:Lcom/ibm/icu/text/ListFormatter;

    .line 100
    invoke-static {p0}, Lcom/ibm/icu/number/NumberFormatter;->withLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/number/LocalizedNumberFormatter;

    move-result-object p0

    iput-object p0, v0, Lcom/ibm/icu/impl/number/MixedUnitLongNameHandler;->fIntegerFormatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    return-object v0
.end method

.method private getMixedUnitModifier(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/MicroProps;)Lcom/ibm/icu/impl/number/Modifier;
    .locals 9

    .line 160
    iget-object v0, p2, Lcom/ibm/icu/impl/number/MicroProps;->mixedMeasures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 186
    :goto_0
    iget-object v4, p2, Lcom/ibm/icu/impl/number/MicroProps;->mixedMeasures:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_3

    .line 188
    iget v4, p2, Lcom/ibm/icu/impl/number/MicroProps;->indexOfQuantity:I

    if-ne v3, v4, :cond_1

    if-lez v3, :cond_0

    .line 189
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->negate()V

    .line 195
    :cond_0
    iget-object v1, p2, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    iget-object v4, p0, Lcom/ibm/icu/impl/number/MixedUnitLongNameHandler;->rules:Lcom/ibm/icu/text/PluralRules;

    invoke-static {v1, v4, p1}, Lcom/ibm/icu/impl/number/RoundingUtils;->getPluralSafe(Lcom/ibm/icu/number/Precision;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v1

    .line 196
    iget-object v4, p0, Lcom/ibm/icu/impl/number/MixedUnitLongNameHandler;->fMixedUnitData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/ibm/icu/impl/number/LongNameHandler;->getWithPlural([Ljava/lang/String;Lcom/ibm/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-static {v4, v2, v5}, Lcom/ibm/icu/text/SimpleFormatter;->compileMinMaxArguments(Ljava/lang/CharSequence;II)Lcom/ibm/icu/text/SimpleFormatter;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/CharSequence;

    const-string v6, "{0}"

    aput-object v6, v5, v2

    .line 198
    invoke-virtual {v4, v5}, Lcom/ibm/icu/text/SimpleFormatter;->format([Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 204
    :cond_1
    new-instance v4, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    iget-object v6, p2, Lcom/ibm/icu/impl/number/MicroProps;->mixedMeasures:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ibm/icu/util/Measure;

    invoke-virtual {v6}, Lcom/ibm/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/lang/Number;)V

    if-lez v3, :cond_2

    .line 205
    invoke-interface {v4}, Lcom/ibm/icu/impl/number/DecimalQuantity;->isNegative()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 208
    invoke-interface {v4}, Lcom/ibm/icu/impl/number/DecimalQuantity;->negate()V

    .line 211
    :cond_2
    iget-object v6, p2, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    iget-object v7, p0, Lcom/ibm/icu/impl/number/MixedUnitLongNameHandler;->rules:Lcom/ibm/icu/text/PluralRules;

    invoke-static {v6, v7, v4}, Lcom/ibm/icu/impl/number/RoundingUtils;->getPluralSafe(Lcom/ibm/icu/number/Precision;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v6

    .line 213
    iget-object v7, p0, Lcom/ibm/icu/impl/number/MixedUnitLongNameHandler;->fMixedUnitData:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/ibm/icu/impl/number/LongNameHandler;->getWithPlural([Ljava/lang/String;Lcom/ibm/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object v6

    .line 214
    invoke-static {v6, v2, v5}, Lcom/ibm/icu/text/SimpleFormatter;->compileMinMaxArguments(Ljava/lang/CharSequence;II)Lcom/ibm/icu/text/SimpleFormatter;

    move-result-object v6

    .line 216
    new-instance v7, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {v7}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>()V

    .line 217
    iget-object v8, p0, Lcom/ibm/icu/impl/number/MixedUnitLongNameHandler;->fIntegerFormatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v8, v4, v7}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->formatImpl(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/MicroProps;

    new-array v4, v5, [Ljava/lang/CharSequence;

    .line 218
    invoke-virtual {v7}, Lcom/ibm/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v6, v4}, Lcom/ibm/icu/text/SimpleFormatter;->format([Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 224
    :cond_3
    iget-object p1, p0, Lcom/ibm/icu/impl/number/MixedUnitLongNameHandler;->fListFormatter:Lcom/ibm/icu/text/ListFormatter;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    .line 225
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    invoke-static {p1, p2, v2, v5}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p1

    .line 230
    new-instance p2, Lcom/ibm/icu/impl/number/Modifier$Parameters;

    invoke-direct {p2}, Lcom/ibm/icu/impl/number/Modifier$Parameters;-><init>()V

    .line 231
    iput-object p0, p2, Lcom/ibm/icu/impl/number/Modifier$Parameters;->obj:Lcom/ibm/icu/impl/number/ModifierStore;

    .line 232
    sget-object v0, Lcom/ibm/icu/impl/number/Modifier$Signum;->POS_ZERO:Lcom/ibm/icu/impl/number/Modifier$Signum;

    iput-object v0, p2, Lcom/ibm/icu/impl/number/Modifier$Parameters;->signum:Lcom/ibm/icu/impl/number/Modifier$Signum;

    .line 233
    iput-object v1, p2, Lcom/ibm/icu/impl/number/Modifier$Parameters;->plural:Lcom/ibm/icu/impl/StandardPlural;

    .line 235
    new-instance v0, Lcom/ibm/icu/impl/number/SimpleModifier;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/ibm/icu/impl/number/SimpleModifier;-><init>(Ljava/lang/String;Ljava/text/Format$Field;ZLcom/ibm/icu/impl/number/Modifier$Parameters;)V

    return-object v0

    .line 162
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public getModifier(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;)Lcom/ibm/icu/impl/number/Modifier;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public processQuantity(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MixedUnitLongNameHandler;->parent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/number/MicroPropsGenerator;->processQuantity(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object v0

    .line 119
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/number/MixedUnitLongNameHandler;->getMixedUnitModifier(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/MicroProps;)Lcom/ibm/icu/impl/number/Modifier;

    move-result-object p1

    iput-object p1, v0, Lcom/ibm/icu/impl/number/MicroProps;->modOuter:Lcom/ibm/icu/impl/number/Modifier;

    return-object v0
.end method

.method public processQuantityWithMicros(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/MicroProps;)Lcom/ibm/icu/impl/number/MicroProps;
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/number/MixedUnitLongNameHandler;->getMixedUnitModifier(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/MicroProps;)Lcom/ibm/icu/impl/number/Modifier;

    move-result-object p1

    iput-object p1, p2, Lcom/ibm/icu/impl/number/MicroProps;->modOuter:Lcom/ibm/icu/impl/number/Modifier;

    return-object p2
.end method
