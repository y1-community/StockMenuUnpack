.class public Lcom/ibm/icu/impl/number/LongNameHandler;
.super Ljava/lang/Object;
.source "LongNameHandler.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/MicroPropsGenerator;
.implements Lcom/ibm/icu/impl/number/ModifierStore;
.implements Lcom/ibm/icu/impl/number/LongNameMultiplexer$ParentlessMicroPropsGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;,
        Lcom/ibm/icu/impl/number/LongNameHandler$PluralTableSink;,
        Lcom/ibm/icu/impl/number/LongNameHandler$InflectedPluralSink;,
        Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;,
        Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final ARRAY_LENGTH:I

.field private static final DNAM_INDEX:I

.field private static final GENDER_INDEX:I

.field private static final PER_INDEX:I

.field private static i:I


# instance fields
.field private gender:Ljava/lang/String;

.field private final modifiers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ibm/icu/impl/StandardPlural;",
            "Lcom/ibm/icu/impl/number/SimpleModifier;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

.field private final rules:Lcom/ibm/icu/text/PluralRules;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    sget v0, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    sget v1, Lcom/ibm/icu/impl/number/LongNameHandler;->i:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/ibm/icu/impl/number/LongNameHandler;->i:I

    add-int/2addr v0, v1

    sput v0, Lcom/ibm/icu/impl/number/LongNameHandler;->DNAM_INDEX:I

    .line 40
    sget v0, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    sget v1, Lcom/ibm/icu/impl/number/LongNameHandler;->i:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/ibm/icu/impl/number/LongNameHandler;->i:I

    add-int/2addr v0, v1

    sput v0, Lcom/ibm/icu/impl/number/LongNameHandler;->PER_INDEX:I

    .line 41
    sget v0, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    sget v1, Lcom/ibm/icu/impl/number/LongNameHandler;->i:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/ibm/icu/impl/number/LongNameHandler;->i:I

    add-int/2addr v0, v1

    sput v0, Lcom/ibm/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    .line 42
    sget v0, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    sget v1, Lcom/ibm/icu/impl/number/LongNameHandler;->i:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/ibm/icu/impl/number/LongNameHandler;->i:I

    add-int/2addr v0, v1

    sput v0, Lcom/ibm/icu/impl/number/LongNameHandler;->ARRAY_LENGTH:I

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/MicroPropsGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/ibm/icu/impl/StandardPlural;",
            "Lcom/ibm/icu/impl/number/SimpleModifier;",
            ">;",
            "Lcom/ibm/icu/text/PluralRules;",
            "Lcom/ibm/icu/impl/number/MicroPropsGenerator;",
            ")V"
        }
    .end annotation

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 739
    iput-object v0, p0, Lcom/ibm/icu/impl/number/LongNameHandler;->gender:Ljava/lang/String;

    .line 745
    iput-object p1, p0, Lcom/ibm/icu/impl/number/LongNameHandler;->modifiers:Ljava/util/Map;

    .line 746
    iput-object p2, p0, Lcom/ibm/icu/impl/number/LongNameHandler;->rules:Lcom/ibm/icu/text/PluralRules;

    .line 747
    iput-object p3, p0, Lcom/ibm/icu/impl/number/LongNameHandler;->parent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)I
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/ibm/icu/impl/number/LongNameHandler;->getIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static calculateGenderForUnit(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;)Ljava/lang/String;
    .locals 7

    .line 643
    invoke-virtual {p1}, Lcom/ibm/icu/util/MeasureUnit;->getCopyOfMeasureUnitImpl()Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object p1

    .line 644
    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v0

    .line 646
    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getComplexity()Lcom/ibm/icu/util/MeasureUnit$Complexity;

    move-result-object v1

    sget-object v2, Lcom/ibm/icu/util/MeasureUnit$Complexity;->COMPOUND:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    const-string v3, "gender"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_8

    .line 649
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v5

    .line 651
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v1

    if-gez v1, :cond_3

    const-string v1, "per"

    .line 653
    invoke-static {p0, v3, v1}, Lcom/ibm/icu/impl/number/LongNameHandler;->getDeriveCompoundRule(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 654
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v5, :cond_0

    return-object v1

    .line 658
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 660
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v2

    if-ltz v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz p1, :cond_2

    .line 665
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v1

    if-gez v1, :cond_2

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    if-gez p1, :cond_3

    const-string p0, ""

    return-object p0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    if-le p1, v1, :cond_7

    const-string v2, "times"

    .line 678
    invoke-static {p0, v3, v2}, Lcom/ibm/icu/impl/number/LongNameHandler;->getDeriveCompoundRule(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 679
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v5, :cond_5

    return-object v2

    .line 683
    :cond_5
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x30

    if-ne v2, v4, :cond_6

    goto :goto_2

    :cond_6
    move v4, p1

    goto :goto_3

    :cond_7
    :goto_2
    move v4, v1

    goto :goto_3

    .line 692
    :cond_8
    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getComplexity()Lcom/ibm/icu/util/MeasureUnit$Complexity;

    move-result-object p1

    sget-object v1, Lcom/ibm/icu/util/MeasureUnit$Complexity;->MIXED:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    if-eq p1, v1, :cond_b

    .line 700
    :goto_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    .line 702
    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-eq v0, v5, :cond_9

    const-string v0, "power"

    .line 703
    invoke-static {p0, v3, v0}, Lcom/ibm/icu/impl/number/LongNameHandler;->getDeriveCompoundRule(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v5, :cond_9

    return-object v0

    .line 711
    :cond_9
    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-eq v0, v5, :cond_a

    const-string v0, "prefix"

    .line 712
    invoke-static {p0, v3, v0}, Lcom/ibm/icu/impl/number/LongNameHandler;->getDeriveCompoundRule(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 713
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v5, :cond_a

    return-object v0

    .line 720
    :cond_a
    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ibm/icu/util/MeasureUnit;->forIdentifier(Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/LongNameHandler;->getGenderForBuiltin(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 693
    :cond_b
    new-instance p0, Lcom/ibm/icu/util/ICUException;

    const-string p1, "calculateGenderForUnit does not support MIXED units"

    invoke-direct {p0, p1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method private static extractCorePattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;
    .locals 6

    .line 91
    new-instance v0, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;-><init>(Lcom/ibm/icu/impl/number/LongNameHandler$1;)V

    const/4 v1, 0x0

    .line 92
    iput-char v1, v0, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->joinerChar:C

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "{0}"

    .line 94
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_1

    .line 95
    sget-object v1, Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;->BEGINNING:Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    iput-object v1, v0, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->placeholderPosition:Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    if-le v2, v5, :cond_0

    .line 96
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, v0, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->joinerChar:C

    const/4 v1, 0x4

    .line 98
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 103
    sget-object v3, Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;->END:Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    iput-object v3, v0, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->placeholderPosition:Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    add-int/lit8 v3, v2, -0x4

    .line 104
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 105
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    .line 106
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    iput-char p0, v0, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->joinerChar:C

    goto :goto_0

    :cond_2
    sub-int/2addr v2, v5

    .line 108
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 110
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 111
    sget-object v1, Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;->NONE:Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    iput-object v1, v0, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->placeholderPosition:Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    .line 112
    iput-object p0, v0, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    goto :goto_0

    .line 114
    :cond_4
    sget-object v1, Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;->MIDDLE:Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    iput-object v1, v0, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->placeholderPosition:Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    .line 115
    iput-object p0, v0, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private static forArbitraryUnit(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/MicroPropsGenerator;)Lcom/ibm/icu/impl/number/LongNameHandler;
    .locals 6

    .line 827
    invoke-virtual {p1}, Lcom/ibm/icu/util/MeasureUnit;->getCopyOfMeasureUnitImpl()Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object p1

    .line 832
    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    .line 833
    invoke-virtual {v3}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v4

    if-lez v4, :cond_1

    if-nez v1, :cond_0

    .line 835
    invoke-virtual {v3}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->build()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    goto :goto_0

    .line 837
    :cond_0
    invoke-virtual {v3}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->build()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ibm/icu/util/MeasureUnit;->product(Lcom/ibm/icu/util/MeasureUnit;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    goto :goto_0

    .line 841
    :cond_1
    invoke-virtual {v3}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->setDimensionality(I)V

    if-nez v2, :cond_2

    .line 843
    invoke-virtual {v3}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->build()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v2

    goto :goto_0

    .line 845
    :cond_2
    invoke-virtual {v3}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->build()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/MeasureUnit;->product(Lcom/ibm/icu/util/MeasureUnit;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v2

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    move-object p1, v0

    goto :goto_1

    .line 849
    :cond_4
    invoke-virtual {v1}, Lcom/ibm/icu/util/MeasureUnit;->getCopyOfMeasureUnitImpl()Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object p1

    :goto_1
    if-nez v2, :cond_5

    goto :goto_2

    .line 850
    :cond_5
    invoke-virtual {v2}, Lcom/ibm/icu/util/MeasureUnit;->getCopyOfMeasureUnitImpl()Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object v0

    .line 857
    :goto_2
    new-instance v1, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;

    const-string v2, "case"

    const-string v3, "per"

    invoke-direct {v1, p0, v2, v3}, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;-><init>(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    sget v2, Lcom/ibm/icu/impl/number/LongNameHandler;->ARRAY_LENGTH:I

    new-array v4, v2, [Ljava/lang/String;

    .line 861
    invoke-virtual {v1, p3}, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;->value0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, p0, p2, v5, v4}, Lcom/ibm/icu/impl/number/LongNameHandler;->processPatternTimes(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;[Ljava/lang/String;)V

    .line 865
    new-array p1, v2, [Ljava/lang/String;

    .line 866
    invoke-virtual {v1, p3}, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;->value1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p0, p2, p3, p1}, Lcom/ibm/icu/impl/number/LongNameHandler;->processPatternTimes(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;[Ljava/lang/String;)V

    .line 884
    sget p3, Lcom/ibm/icu/impl/number/LongNameHandler;->PER_INDEX:I

    aget-object v0, p1, p3

    if-eqz v0, :cond_6

    .line 886
    aget-object p2, p1, p3

    goto :goto_3

    .line 888
    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 891
    invoke-static {v3, p0, p2}, Lcom/ibm/icu/impl/number/LongNameHandler;->getCompoundValue(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    .line 895
    invoke-static {p2, p3, v0, v0}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p2

    .line 899
    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->ONE:Lcom/ibm/icu/impl/StandardPlural;

    invoke-static {p1, v1}, Lcom/ibm/icu/impl/number/LongNameHandler;->getWithPlural([Ljava/lang/String;Lcom/ibm/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 902
    invoke-static {v1, p3, v2, v5}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p3

    .line 904
    invoke-static {p3}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->getTextWithNoArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 903
    invoke-static {p3}, Lcom/ibm/icu/impl/PatternProps;->trimSpaceChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "{0}"

    aput-object v1, v0, v2

    aput-object p3, v0, v5

    .line 913
    invoke-static {p2, v0}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 915
    :goto_3
    new-instance p3, Ljava/util/EnumMap;

    const-class v0, Lcom/ibm/icu/impl/StandardPlural;

    invoke-direct {p3, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 917
    new-instance v0, Lcom/ibm/icu/impl/number/LongNameHandler;

    invoke-direct {v0, p3, p4, p5}, Lcom/ibm/icu/impl/number/LongNameHandler;-><init>(Ljava/util/Map;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/MicroPropsGenerator;)V

    .line 918
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_7

    .line 919
    sget-object p2, Lcom/ibm/icu/text/NumberFormat$Field;->MEASURE_UNIT:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-direct {v0, v4, p2}, Lcom/ibm/icu/impl/number/LongNameHandler;->simpleFormatsToModifiers([Ljava/lang/String;Lcom/ibm/icu/text/NumberFormat$Field;)V

    goto :goto_4

    .line 921
    :cond_7
    sget-object p3, Lcom/ibm/icu/text/NumberFormat$Field;->MEASURE_UNIT:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-direct {v0, v4, p2, p3}, Lcom/ibm/icu/impl/number/LongNameHandler;->multiSimpleFormatsToModifiers([Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/NumberFormat$Field;)V

    .line 933
    :goto_4
    invoke-static {p0, v3, v4, p1}, Lcom/ibm/icu/impl/number/LongNameHandler;->getDerivedGender(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ibm/icu/impl/number/LongNameHandler;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public static forCurrencyLongNames(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/Currency;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/MicroPropsGenerator;)Lcom/ibm/icu/impl/number/LongNameHandler;
    .locals 1

    .line 761
    sget v0, Lcom/ibm/icu/impl/number/LongNameHandler;->ARRAY_LENGTH:I

    new-array v0, v0, [Ljava/lang/String;

    .line 762
    invoke-static {p0, p1, v0}, Lcom/ibm/icu/impl/number/LongNameHandler;->getCurrencyLongNameData(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/Currency;[Ljava/lang/String;)V

    .line 764
    new-instance p0, Ljava/util/EnumMap;

    const-class p1, Lcom/ibm/icu/impl/StandardPlural;

    invoke-direct {p0, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 766
    new-instance p1, Lcom/ibm/icu/impl/number/LongNameHandler;

    invoke-direct {p1, p0, p2, p3}, Lcom/ibm/icu/impl/number/LongNameHandler;-><init>(Ljava/util/Map;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/MicroPropsGenerator;)V

    .line 767
    sget-object p0, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-direct {p1, v0, p0}, Lcom/ibm/icu/impl/number/LongNameHandler;->simpleFormatsToModifiers([Ljava/lang/String;Lcom/ibm/icu/text/NumberFormat$Field;)V

    return-object p1
.end method

.method public static forMeasureUnit(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/MicroPropsGenerator;)Lcom/ibm/icu/impl/number/LongNameHandler;
    .locals 1

    .line 797
    invoke-virtual {p1}, Lcom/ibm/icu/util/MeasureUnit;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 798
    sget v0, Lcom/ibm/icu/impl/number/LongNameHandler;->ARRAY_LENGTH:I

    new-array v0, v0, [Ljava/lang/String;

    .line 799
    invoke-static {p0, p1, p2, p3, v0}, Lcom/ibm/icu/impl/number/LongNameHandler;->getMeasureData(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;[Ljava/lang/String;)V

    .line 800
    invoke-static {p0, p1, v0}, Lcom/ibm/icu/impl/number/LongNameHandler;->maybeCalculateGender(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;[Ljava/lang/String;)V

    .line 802
    new-instance p0, Ljava/util/EnumMap;

    const-class p1, Lcom/ibm/icu/impl/StandardPlural;

    invoke-direct {p0, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 803
    new-instance p1, Lcom/ibm/icu/impl/number/LongNameHandler;

    invoke-direct {p1, p0, p4, p5}, Lcom/ibm/icu/impl/number/LongNameHandler;-><init>(Ljava/util/Map;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/MicroPropsGenerator;)V

    .line 804
    sget-object p0, Lcom/ibm/icu/text/NumberFormat$Field;->MEASURE_UNIT:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-direct {p1, v0, p0}, Lcom/ibm/icu/impl/number/LongNameHandler;->simpleFormatsToModifiers([Ljava/lang/String;Lcom/ibm/icu/text/NumberFormat$Field;)V

    .line 805
    sget p0, Lcom/ibm/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    aget-object p2, v0, p0

    if-eqz p2, :cond_0

    .line 806
    aget-object p0, v0, p0

    iput-object p0, p1, Lcom/ibm/icu/impl/number/LongNameHandler;->gender:Ljava/lang/String;

    :cond_0
    return-object p1

    .line 812
    :cond_1
    invoke-static/range {p0 .. p5}, Lcom/ibm/icu/impl/number/LongNameHandler;->forArbitraryUnit(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/MicroPropsGenerator;)Lcom/ibm/icu/impl/number/LongNameHandler;

    move-result-object p0

    return-object p0
.end method

.method private static getCompoundValue(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;)Ljava/lang/String;
    .locals 3

    const-string v0, "com/ibm/icu/impl/data/icudt69b/unit"

    .line 439
    invoke-static {v0, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "units"

    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    sget-object v1, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->NARROW:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    if-ne p2, v1, :cond_0

    const-string v1, "Narrow"

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 445
    :cond_0
    sget-object v1, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->SHORT:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    if-ne p2, v1, :cond_1

    const-string v1, "Short"

    .line 446
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    const-string v1, "/compound/"

    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    nop

    .line 453
    sget-object v1, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->SHORT:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    const-string v2, ""

    if-ne p2, v1, :cond_2

    return-object v2

    :cond_2
    const/4 p2, 0x0

    .line 460
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string p2, "unitsShort/compound/"

    .line 461
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    return-object v2
.end method

.method private static getCurrencyLongNameData(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/Currency;[Ljava/lang/String;)V
    .locals 6

    .line 421
    sget-object v0, Lcom/ibm/icu/impl/CurrencyData;->provider:Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Lcom/ibm/icu/util/ULocale;Z)Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;->getUnitPatterns()Ljava/util/Map;

    move-result-object v0

    .line 422
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 423
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 424
    invoke-static {v2}, Lcom/ibm/icu/impl/number/LongNameHandler;->getIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 425
    invoke-virtual {p1, p0, v4, v2, v5}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "{1}"

    .line 429
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 433
    aput-object v1, p2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getDeriveCompoundRule(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com/ibm/icu/impl/data/icudt69b"

    const-string v1, "grammaticalFeatures"

    .line 559
    invoke-static {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v1, "grammaticalData"

    .line 561
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v1, "derivations"

    .line 562
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 567
    :try_start_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "root"

    .line 569
    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;

    :goto_0
    const-string v0, "compound"

    .line 572
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 573
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 575
    invoke-virtual {p0, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDerivedGender(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "gender"

    .line 593
    invoke-static {p0, v0, p1}, Lcom/ibm/icu/impl/number/LongNameHandler;->getDeriveCompoundRule(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 594
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    .line 595
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x30

    if-eq p1, v0, :cond_2

    const/16 p2, 0x31

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 602
    :cond_1
    sget p0, Lcom/ibm/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    aget-object p0, p3, p0

    return-object p0

    .line 597
    :cond_2
    sget p0, Lcom/ibm/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    aget-object p0, p2, p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method private static getGenderForBuiltin(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;)Ljava/lang/String;
    .locals 3

    const-string v0, "com/ibm/icu/impl/data/icudt69b/unit"

    .line 127
    invoke-static {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "units/"

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p1}, Lcom/ibm/icu/util/MeasureUnit;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p1}, Lcom/ibm/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/ibm/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-person"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {p1}, Lcom/ibm/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/ibm/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x7

    invoke-virtual {v0, v1, v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p1, "/gender"

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private static getIndex(Ljava/lang/String;)I
    .locals 1

    const-string v0, "dnam"

    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget p0, Lcom/ibm/icu/impl/number/LongNameHandler;->DNAM_INDEX:I

    return p0

    :cond_0
    const-string v0, "per"

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    sget p0, Lcom/ibm/icu/impl/number/LongNameHandler;->PER_INDEX:I

    return p0

    :cond_1
    const-string v0, "gender"

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    sget p0, Lcom/ibm/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    return p0

    .line 54
    :cond_2
    invoke-static {p0}, Lcom/ibm/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result p0

    return p0
.end method

.method static getInflectedMeasureData(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 275
    new-instance v0, Lcom/ibm/icu/impl/number/LongNameHandler$InflectedPluralSink;

    invoke-direct {v0, p3, p4, p5}, Lcom/ibm/icu/impl/number/LongNameHandler$InflectedPluralSink;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string p3, "com/ibm/icu/impl/data/icudt69b/unit"

    .line 277
    invoke-static {p3, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 279
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "units"

    .line 280
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    sget-object p4, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->NARROW:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    if-ne p2, p4, :cond_0

    const-string p4, "Narrow"

    .line 282
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 283
    :cond_0
    sget-object p4, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->SHORT:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    if-ne p2, p4, :cond_1

    const-string p4, "Short"

    .line 284
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    const-string p4, "/"

    .line 286
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 291
    sget-object p4, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->SHORT:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p2, p4, :cond_2

    return-void

    :catch_0
    :cond_2
    const/4 p2, 0x0

    .line 300
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string p2, "unitsShort/"

    .line 301
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    return-void
.end method

.method static getMeasureData(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .line 344
    new-instance v0, Lcom/ibm/icu/impl/number/LongNameHandler$PluralTableSink;

    invoke-direct {v0, p4}, Lcom/ibm/icu/impl/number/LongNameHandler$PluralTableSink;-><init>([Ljava/lang/String;)V

    const-string v1, "com/ibm/icu/impl/data/icudt69b/unit"

    .line 346
    invoke-static {v1, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    .line 350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {p1}, Lcom/ibm/icu/util/MeasureUnit;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {p1}, Lcom/ibm/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/ibm/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-person"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    invoke-virtual {p1}, Lcom/ibm/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/ibm/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :goto_0
    sget-object v2, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    const-string v3, "units"

    if-eq p2, v2, :cond_1

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v4, "/gender"

    .line 366
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :try_start_0
    sget v4, Lcom/ibm/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p4, v4
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 374
    :cond_1
    :goto_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    sget-object v2, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->NARROW:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    if-ne p2, v2, :cond_2

    const-string v2, "Narrow"

    .line 377
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 378
    :cond_2
    sget-object v2, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->SHORT:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    if-ne p2, v2, :cond_3

    const-string v2, "Short"

    .line 379
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_3
    :goto_2
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 387
    sget-object v1, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    if-ne p2, v1, :cond_4

    if-eqz p3, :cond_4

    .line 389
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, "/case/"

    .line 392
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    .line 412
    :catch_1
    :cond_4
    :try_start_2
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p0

    .line 414
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No data for unit "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", width "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public static getUnitDisplayName(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;)Ljava/lang/String;
    .locals 2

    .line 751
    sget v0, Lcom/ibm/icu/impl/number/LongNameHandler;->ARRAY_LENGTH:I

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    .line 752
    invoke-static {p0, p1, p2, v1, v0}, Lcom/ibm/icu/impl/number/LongNameHandler;->getMeasureData(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;[Ljava/lang/String;)V

    .line 753
    sget p0, Lcom/ibm/icu/impl/number/LongNameHandler;->DNAM_INDEX:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method static getWithPlural([Ljava/lang/String;Lcom/ibm/icu/impl/StandardPlural;)Ljava/lang/String;
    .locals 0

    .line 59
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result p1

    aget-object p1, p0, p1

    if-nez p1, :cond_0

    .line 61
    sget-object p1, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result p1

    aget-object p1, p0, p1

    :cond_0
    if-eqz p1, :cond_1

    return-object p1

    .line 65
    :cond_1
    new-instance p0, Lcom/ibm/icu/util/ICUException;

    const-string p1, "Could not find data in \'other\' plural variant"

    invoke-direct {p0, p1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static maybeCalculateGender(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;[Ljava/lang/String;)V
    .locals 2

    .line 724
    sget v0, Lcom/ibm/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    aget-object v1, p2, v0

    if-nez v1, :cond_1

    .line 725
    sget-object v1, Lcom/ibm/icu/util/MeasureUnit;->METER:Lcom/ibm/icu/util/MeasureUnit;

    invoke-static {p0, v1}, Lcom/ibm/icu/impl/number/LongNameHandler;->getGenderForBuiltin(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;)Ljava/lang/String;

    move-result-object v1

    .line 726
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 731
    :cond_0
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/LongNameHandler;->calculateGenderForUnit(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    :cond_1
    return-void
.end method

.method private multiSimpleFormatsToModifiers([Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/NumberFormat$Field;)V
    .locals 10

    .line 1297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    .line 1298
    invoke-static {p2, v0, v1, v1}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v2

    .line 1299
    sget-object v3, Lcom/ibm/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/impl/StandardPlural;

    .line 1300
    invoke-static {p1, v4}, Lcom/ibm/icu/impl/number/LongNameHandler;->getWithPlural([Ljava/lang/String;Lcom/ibm/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object v5

    .line 1302
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    move-object v5, p2

    goto :goto_1

    :cond_0
    new-array v6, v1, [Ljava/lang/CharSequence;

    aput-object v5, v6, v7

    .line 1305
    invoke-static {v2, v6}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1308
    :goto_1
    invoke-static {v5, v0, v7, v1}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v5

    .line 1309
    new-instance v6, Lcom/ibm/icu/impl/number/Modifier$Parameters;

    invoke-direct {v6}, Lcom/ibm/icu/impl/number/Modifier$Parameters;-><init>()V

    .line 1310
    iput-object p0, v6, Lcom/ibm/icu/impl/number/Modifier$Parameters;->obj:Lcom/ibm/icu/impl/number/ModifierStore;

    const/4 v8, 0x0

    .line 1311
    iput-object v8, v6, Lcom/ibm/icu/impl/number/Modifier$Parameters;->signum:Lcom/ibm/icu/impl/number/Modifier$Signum;

    .line 1312
    iput-object v4, v6, Lcom/ibm/icu/impl/number/Modifier$Parameters;->plural:Lcom/ibm/icu/impl/StandardPlural;

    .line 1313
    iget-object v8, p0, Lcom/ibm/icu/impl/number/LongNameHandler;->modifiers:Ljava/util/Map;

    new-instance v9, Lcom/ibm/icu/impl/number/SimpleModifier;

    invoke-direct {v9, v5, p3, v7, v6}, Lcom/ibm/icu/impl/number/SimpleModifier;-><init>(Ljava/lang/String;Ljava/text/Format$Field;ZLcom/ibm/icu/impl/number/Modifier$Parameters;)V

    invoke-interface {v8, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static processPatternTimes(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 34

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    const-string v9, ""

    if-nez p0, :cond_0

    .line 950
    sget-object v0, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v0

    aput-object v9, v8, v0

    .line 951
    sget v0, Lcom/ibm/icu/impl/number/LongNameHandler;->PER_INDEX:I

    aput-object v9, v8, v0

    return-void

    .line 954
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getComplexity()Lcom/ibm/icu/util/MeasureUnit$Complexity;

    move-result-object v1

    sget-object v2, Lcom/ibm/icu/util/MeasureUnit$Complexity;->MIXED:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    if-eq v1, v2, :cond_24

    .line 959
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 962
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->serialize()V

    .line 964
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 969
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/util/MeasureUnit;->findBySubType(Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object/from16 v2, p3

    .line 978
    invoke-static {v0, v1, v7, v2, v8}, Lcom/ibm/icu/impl/number/LongNameHandler;->getMeasureData(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;[Ljava/lang/String;)V

    .line 979
    invoke-static {v0, v1, v8}, Lcom/ibm/icu/impl/number/LongNameHandler;->maybeCalculateGender(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;[Ljava/lang/String;)V

    return-void

    :cond_3
    move-object/from16 v2, p3

    const-string v10, "times"

    .line 984
    invoke-static {v10, v0, v7}, Lcom/ibm/icu/impl/number/LongNameHandler;->getCompoundValue(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;)Ljava/lang/String;

    move-result-object v1

    .line 985
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x2

    .line 986
    invoke-static {v1, v11, v12, v12}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v13

    .line 988
    sget v1, Lcom/ibm/icu/impl/number/LongNameHandler;->ARRAY_LENGTH:I

    new-array v14, v1, [Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    .line 997
    invoke-static {}, Lcom/ibm/icu/impl/StandardPlural;->values()[Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x0

    if-ge v4, v3, :cond_5

    aget-object v5, v1, v4

    .line 998
    invoke-virtual {v5}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v16

    .line 1000
    sget-object v12, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    if-ne v5, v12, :cond_4

    .line 1001
    aput-object v9, v8, v16

    goto :goto_1

    .line 1003
    :cond_4
    aput-object v6, v8, v16

    .line 1005
    :goto_1
    aput-object v6, v14, v16

    add-int/lit8 v4, v4, 0x1

    const/4 v12, 0x2

    goto :goto_0

    .line 1010
    :cond_5
    new-instance v12, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;

    const-string v1, "plural"

    invoke-direct {v12, v0, v1, v10}, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;-><init>(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    new-instance v5, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;

    const-string v1, "case"

    invoke-direct {v5, v0, v1, v10}, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;-><init>(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    new-instance v4, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;

    const-string v3, "power"

    invoke-direct {v4, v0, v1, v3}, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;-><init>(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v19, v3

    move-object/from16 v18, v9

    const/4 v9, 0x0

    const/4 v15, 0x0

    .line 1016
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_1e

    .line 1017
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    .line 1022
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 p3, v9

    const/4 v9, 0x1

    move-object/from16 v21, v1

    add-int/lit8 v1, v20, -0x1

    if-ge v15, v1, :cond_6

    .line 1024
    invoke-virtual {v12, v6}, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;->value0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1025
    invoke-virtual {v5, v2}, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;->value0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1026
    invoke-virtual {v12, v6}, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;->value1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1027
    invoke-virtual {v5, v2}, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;->value1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 1029
    :cond_6
    invoke-virtual {v12, v6}, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;->value1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1030
    invoke-virtual {v5, v2}, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;->value1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    :goto_3
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    move-object/from16 v6, v20

    move-object/from16 v20, v1

    .line 1034
    invoke-virtual {v3}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/util/MeasureUnit;->findBySubType(Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 1044
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/number/LongNameHandler;->getGenderForBuiltin(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;)Ljava/lang/String;

    move-result-object v24

    .line 1048
    invoke-virtual {v3}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v2

    .line 1049
    sget v1, Lcom/ibm/icu/impl/number/LongNameHandler;->ARRAY_LENGTH:I

    move-object/from16 v25, v12

    new-array v12, v1, [Ljava/lang/String;

    if-eq v2, v9, :cond_8

    .line 1054
    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v26, v1

    const-string v1, "compound/power"

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1057
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v9, v21

    move-object/from16 v21, v13

    move/from16 v13, v26

    move-object/from16 v26, v11

    move v11, v2

    move-object/from16 v2, p1

    move-object/from16 v27, v14

    move-object/from16 v8, v19

    move-object v14, v3

    move-object/from16 v3, p2

    move/from16 v19, v15

    move-object v15, v4

    move-object/from16 v4, v24

    move-object/from16 v24, v5

    move-object v5, v6

    move-object/from16 v28, v9

    move-object/from16 v17, v10

    const/4 v10, 0x0

    move-object v9, v6

    move-object v6, v12

    :try_start_1
    invoke-static/range {v1 .. v6}, Lcom/ibm/icu/impl/number/LongNameHandler;->getInflectedMeasureData(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1076
    invoke-virtual {v15, v9}, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;->value0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x1

    .line 1078
    invoke-virtual {v14, v1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->setDimensionality(I)V

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move v11, v2

    :goto_4
    const/4 v1, 0x3

    if-le v11, v1, :cond_7

    .line 1065
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "powerN not supported for N > 3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1068
    :cond_7
    throw v0

    :cond_8
    move-object/from16 v24, v5

    move-object v9, v6

    move-object/from16 v17, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v14

    move-object/from16 v8, v19

    move-object/from16 v28, v21

    const/4 v10, 0x0

    move v11, v2

    move-object v14, v3

    move-object/from16 v21, v13

    move/from16 v19, v15

    move v13, v1

    move-object v15, v4

    .line 1082
    :goto_5
    invoke-virtual {v14}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getPrefix()Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object v1

    .line 1084
    sget-object v2, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->ONE:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    if-eq v1, v2, :cond_9

    .line 1087
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1089
    invoke-virtual {v1}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->getBase()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x70

    .line 1090
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1091
    invoke-virtual {v1}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->getPower()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1093
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v7}, Lcom/ibm/icu/impl/number/LongNameHandler;->getCompoundValue(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;)Ljava/lang/String;

    move-result-object v2

    .line 1109
    sget-object v3, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->ONE:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    invoke-virtual {v14, v3}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->setPrefix(Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;)V

    goto :goto_6

    :cond_9
    move-object/from16 v2, v18

    .line 1114
    :goto_6
    new-array v3, v13, [Ljava/lang/String;

    .line 1120
    invoke-virtual {v14}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->build()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v4

    invoke-static {v0, v4, v7, v6, v3}, Lcom/ibm/icu/impl/number/LongNameHandler;->getMeasureData(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1123
    sget v4, Lcom/ibm/icu/impl/number/LongNameHandler;->GENDER_INDEX:I

    aget-object v5, v3, v4

    if-eqz v5, :cond_10

    .line 1126
    sget-object v5, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->ONE:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    if-eq v1, v5, :cond_a

    const-string v5, "prefix"

    .line 1128
    invoke-static {v0, v5, v3, v10}, Lcom/ibm/icu/impl/number/LongNameHandler;->getDerivedGender(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    :cond_a
    const/4 v5, 0x1

    if-eq v11, v5, :cond_b

    .line 1133
    invoke-static {v0, v8, v3, v10}, Lcom/ibm/icu/impl/number/LongNameHandler;->getDerivedGender(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    :cond_b
    const-string v6, "gender"

    move-object/from16 v9, v17

    .line 1136
    invoke-static {v0, v6, v9}, Lcom/ibm/icu/impl/number/LongNameHandler;->getDeriveCompoundRule(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1137
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v13, v5, :cond_f

    const/4 v13, 0x0

    .line 1138
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v13, 0x30

    if-eq v6, v13, :cond_e

    const/16 v13, 0x31

    if-eq v6, v13, :cond_c

    move-object v13, v8

    goto :goto_7

    .line 1146
    :cond_c
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v5

    move/from16 v5, v19

    if-ne v5, v6, :cond_d

    .line 1148
    aget-object v6, v3, v4

    move-object v13, v8

    move-object/from16 v8, p4

    aput-object v6, v8, v4

    goto :goto_9

    :cond_d
    move-object v13, v8

    goto :goto_8

    :cond_e
    move-object v13, v8

    move/from16 v5, v19

    move-object/from16 v8, p4

    if-nez v5, :cond_11

    .line 1142
    aget-object v6, v3, v4

    aput-object v6, v8, v4

    goto :goto_9

    :cond_f
    move-object v13, v8

    move/from16 v5, v19

    move-object/from16 v8, p4

    .line 1152
    aget-object v14, v8, v4

    if-nez v14, :cond_11

    .line 1153
    aput-object v6, v8, v4

    goto :goto_9

    :cond_10
    move-object v13, v8

    move-object/from16 v9, v17

    :goto_7
    move/from16 v5, v19

    :goto_8
    move-object/from16 v8, p4

    .line 1159
    :cond_11
    :goto_9
    invoke-static {}, Lcom/ibm/icu/impl/StandardPlural;->values()[Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v4

    array-length v6, v4

    move/from16 v14, p3

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v6, :cond_1c

    move/from16 v19, v6

    aget-object v6, v4, v10

    .line 1161
    invoke-virtual {v6}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v29

    .line 1164
    aget-object v30, v8, v29

    if-nez v30, :cond_13

    .line 1165
    aget-object v30, v3, v29

    if-nez v30, :cond_12

    move-object/from16 v33, v2

    move-object/from16 v31, v3

    move-object/from16 v30, v4

    move-object/from16 v32, v9

    move-object/from16 v3, v21

    move-object/from16 v4, v26

    const/4 v6, 0x1

    const/4 v9, 0x0

    move-object/from16 v26, v1

    const/4 v1, 0x2

    goto/16 :goto_c

    .line 1173
    :cond_12
    invoke-static {v8, v6}, Lcom/ibm/icu/impl/number/LongNameHandler;->getWithPlural([Ljava/lang/String;Lcom/ibm/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v8, v29

    :cond_13
    if-eqz v20, :cond_14

    .line 1178
    invoke-static/range {v20 .. v20}, Lcom/ibm/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v6

    .line 1183
    :cond_14
    invoke-static {v3, v6}, Lcom/ibm/icu/impl/number/LongNameHandler;->getWithPlural([Ljava/lang/String;Lcom/ibm/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v31, v3

    invoke-static/range {v30 .. v30}, Lcom/ibm/icu/impl/number/LongNameHandler;->extractCorePattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;

    move-result-object v3

    move-object/from16 v30, v4

    .line 1186
    iget-object v4, v3, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->placeholderPosition:Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    move-object/from16 v32, v9

    sget-object v9, Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;->MIDDLE:Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    if-eq v4, v9, :cond_1b

    .line 1191
    aget-object v4, v27, v29

    if-nez v4, :cond_15

    .line 1192
    iget-object v4, v3, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->placeholderPosition:Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    aput-object v4, v27, v29

    .line 1193
    iget-char v14, v3, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->joinerChar:C

    .line 1204
    :cond_15
    sget-object v4, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->ONE:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    if-eq v1, v4, :cond_17

    move-object/from16 v4, v26

    const/4 v9, 0x1

    move-object/from16 v26, v1

    .line 1206
    invoke-static {v2, v4, v9, v9}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v1

    .line 1215
    sget-object v9, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    if-ne v7, v9, :cond_16

    .line 1216
    iget-object v9, v3, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    invoke-static {v0, v9}, Lcom/ibm/icu/lang/UCharacter;->toLowerCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    :cond_16
    move-object/from16 v33, v2

    const/4 v9, 0x1

    new-array v2, v9, [Ljava/lang/CharSequence;

    .line 1218
    iget-object v9, v3, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v9, v2, v16

    invoke-static {v1, v2}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    goto :goto_b

    :cond_17
    move-object/from16 v33, v2

    move-object/from16 v4, v26

    move-object/from16 v26, v1

    :goto_b
    const/4 v1, 0x1

    if-eq v11, v1, :cond_19

    .line 1224
    invoke-static {v12, v6}, Lcom/ibm/icu/impl/number/LongNameHandler;->getWithPlural([Ljava/lang/String;Lcom/ibm/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object v2

    .line 1223
    invoke-static {v2, v4, v1, v1}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v2

    .line 1233
    sget-object v6, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    if-ne v7, v6, :cond_18

    .line 1234
    iget-object v6, v3, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/ibm/icu/lang/UCharacter;->toLowerCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    :cond_18
    new-array v6, v1, [Ljava/lang/CharSequence;

    .line 1236
    iget-object v1, v3, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v1, v6, v9

    .line 1237
    invoke-static {v2, v6}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    .line 1240
    :cond_19
    aget-object v1, v8, v29

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1a

    .line 1242
    iget-object v1, v3, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    aput-object v1, v8, v29

    move-object/from16 v3, v21

    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    goto :goto_c

    :cond_1a
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/CharSequence;

    .line 1245
    aget-object v6, v8, v29

    const/4 v9, 0x0

    aput-object v6, v2, v9

    iget-object v3, v3, Lcom/ibm/icu/impl/number/LongNameHandler$ExtractCorePatternResult;->coreUnit:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v3, v2, v6

    move-object/from16 v3, v21

    invoke-static {v3, v2}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v29

    :goto_c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v21, v3

    move/from16 v6, v19

    move-object/from16 v1, v26

    move-object/from16 v3, v31

    move-object/from16 v9, v32

    move-object/from16 v2, v33

    move-object/from16 v26, v4

    move-object/from16 v4, v30

    goto/16 :goto_a

    .line 1187
    :cond_1b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_1c
    move-object/from16 v32, v9

    move-object/from16 v3, v21

    move-object/from16 v4, v26

    const/4 v1, 0x2

    const/4 v9, 0x0

    add-int/lit8 v2, v5, 0x1

    move-object v11, v4

    move-object/from16 v19, v13

    move v9, v14

    move-object v4, v15

    move-object/from16 v6, v23

    move-object/from16 v5, v24

    move-object/from16 v12, v25

    move-object/from16 v14, v27

    move-object/from16 v1, v28

    move-object/from16 v10, v32

    move v15, v2

    move-object v13, v3

    move-object/from16 v2, v22

    goto/16 :goto_2

    :cond_1d
    move-object v14, v3

    .line 1041
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported sinlgeUnit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    invoke-virtual {v14}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    move/from16 p3, v9

    move-object/from16 v27, v14

    const/4 v9, 0x0

    .line 1250
    invoke-static {}, Lcom/ibm/icu/impl/StandardPlural;->values()[Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v0

    array-length v1, v0

    const/4 v15, 0x0

    :goto_d
    if-ge v15, v1, :cond_23

    aget-object v2, v0, v15

    .line 1251
    invoke-virtual {v2}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v2

    .line 1252
    aget-object v3, v27, v2

    sget-object v4, Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;->BEGINNING:Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    const-string v5, "{0}"

    if-ne v3, v4, :cond_20

    .line 1253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1254
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p3

    if-eqz p3, :cond_1f

    .line 1256
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1258
    :cond_1f
    aget-object v4, v8, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    goto :goto_e

    :cond_20
    move/from16 v14, p3

    .line 1260
    aget-object v3, v27, v2

    sget-object v4, Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;->END:Lcom/ibm/icu/impl/number/LongNameHandler$PlaceholderPosition;

    if-ne v3, v4, :cond_22

    if-eqz v14, :cond_21

    .line 1262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v8, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 1264
    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v8, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    :cond_22
    :goto_e
    add-int/lit8 v15, v15, 0x1

    move/from16 p3, v14

    goto :goto_d

    :cond_23
    return-void

    .line 956
    :cond_24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mixed units not supported by LongNameHandler"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f
.end method

.method private simpleFormatsToModifiers([Ljava/lang/String;Lcom/ibm/icu/text/NumberFormat$Field;)V
    .locals 8

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1274
    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/impl/StandardPlural;

    .line 1275
    invoke-static {p1, v2}, Lcom/ibm/icu/impl/number/LongNameHandler;->getWithPlural([Ljava/lang/String;Lcom/ibm/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1276
    invoke-static {v3, v0, v5, v4}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v3

    .line 1277
    new-instance v4, Lcom/ibm/icu/impl/number/Modifier$Parameters;

    invoke-direct {v4}, Lcom/ibm/icu/impl/number/Modifier$Parameters;-><init>()V

    .line 1278
    iput-object p0, v4, Lcom/ibm/icu/impl/number/Modifier$Parameters;->obj:Lcom/ibm/icu/impl/number/ModifierStore;

    const/4 v6, 0x0

    .line 1279
    iput-object v6, v4, Lcom/ibm/icu/impl/number/Modifier$Parameters;->signum:Lcom/ibm/icu/impl/number/Modifier$Signum;

    .line 1280
    iput-object v2, v4, Lcom/ibm/icu/impl/number/Modifier$Parameters;->plural:Lcom/ibm/icu/impl/StandardPlural;

    .line 1281
    iget-object v6, p0, Lcom/ibm/icu/impl/number/LongNameHandler;->modifiers:Ljava/util/Map;

    new-instance v7, Lcom/ibm/icu/impl/number/SimpleModifier;

    invoke-direct {v7, v3, p2, v5, v4}, Lcom/ibm/icu/impl/number/SimpleModifier;-><init>(Ljava/lang/String;Ljava/text/Format$Field;ZLcom/ibm/icu/impl/number/Modifier$Parameters;)V

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getModifier(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;)Lcom/ibm/icu/impl/number/Modifier;
    .locals 0

    .line 1344
    iget-object p1, p0, Lcom/ibm/icu/impl/number/LongNameHandler;->modifiers:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/number/Modifier;

    return-object p1
.end method

.method public processQuantity(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;
    .locals 3

    .line 1319
    iget-object v0, p0, Lcom/ibm/icu/impl/number/LongNameHandler;->parent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/number/MicroPropsGenerator;->processQuantity(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object v0

    .line 1320
    iget-object v1, v0, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    iget-object v2, p0, Lcom/ibm/icu/impl/number/LongNameHandler;->rules:Lcom/ibm/icu/text/PluralRules;

    invoke-static {v1, v2, p1}, Lcom/ibm/icu/impl/number/RoundingUtils;->getPluralSafe(Lcom/ibm/icu/number/Precision;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object p1

    .line 1321
    iget-object v1, p0, Lcom/ibm/icu/impl/number/LongNameHandler;->modifiers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/number/Modifier;

    iput-object p1, v0, Lcom/ibm/icu/impl/number/MicroProps;->modOuter:Lcom/ibm/icu/impl/number/Modifier;

    .line 1322
    iget-object p1, p0, Lcom/ibm/icu/impl/number/LongNameHandler;->gender:Ljava/lang/String;

    iput-object p1, v0, Lcom/ibm/icu/impl/number/MicroProps;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public processQuantityWithMicros(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/MicroProps;)Lcom/ibm/icu/impl/number/MicroProps;
    .locals 2

    .line 1336
    iget-object v0, p2, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/LongNameHandler;->rules:Lcom/ibm/icu/text/PluralRules;

    invoke-static {v0, v1, p1}, Lcom/ibm/icu/impl/number/RoundingUtils;->getPluralSafe(Lcom/ibm/icu/number/Precision;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object p1

    .line 1337
    iget-object v0, p0, Lcom/ibm/icu/impl/number/LongNameHandler;->modifiers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/number/Modifier;

    iput-object p1, p2, Lcom/ibm/icu/impl/number/MicroProps;->modOuter:Lcom/ibm/icu/impl/number/Modifier;

    return-object p2
.end method
