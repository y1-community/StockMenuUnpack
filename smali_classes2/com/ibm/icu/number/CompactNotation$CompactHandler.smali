.class Lcom/ibm/icu/number/CompactNotation$CompactHandler;
.super Ljava/lang/Object;
.source "CompactNotation.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/MicroPropsGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/CompactNotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompactHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final data:Lcom/ibm/icu/impl/number/CompactData;

.field final parent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

.field final precomputedMods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;",
            ">;"
        }
    .end annotation
.end field

.field final rules:Lcom/ibm/icu/text/PluralRules;

.field final unsafePatternModifier:Lcom/ibm/icu/impl/number/MutablePatternModifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-class v0, Lcom/ibm/icu/number/CompactNotation;

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/number/CompactNotation;Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/impl/number/CompactData$CompactType;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/MutablePatternModifier;ZLcom/ibm/icu/impl/number/MicroPropsGenerator;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p5, p0, Lcom/ibm/icu/number/CompactNotation$CompactHandler;->rules:Lcom/ibm/icu/text/PluralRules;

    .line 92
    iput-object p8, p0, Lcom/ibm/icu/number/CompactNotation$CompactHandler;->parent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    .line 93
    new-instance p5, Lcom/ibm/icu/impl/number/CompactData;

    invoke-direct {p5}, Lcom/ibm/icu/impl/number/CompactData;-><init>()V

    iput-object p5, p0, Lcom/ibm/icu/number/CompactNotation$CompactHandler;->data:Lcom/ibm/icu/impl/number/CompactData;

    .line 94
    iget-object p8, p1, Lcom/ibm/icu/number/CompactNotation;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    if-eqz p8, :cond_0

    .line 95
    iget-object p1, p1, Lcom/ibm/icu/number/CompactNotation;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-virtual {p5, p2, p3, p1, p4}, Lcom/ibm/icu/impl/number/CompactData;->populate(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;Lcom/ibm/icu/impl/number/CompactData$CompactType;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p1, Lcom/ibm/icu/number/CompactNotation;->compactCustomData:Ljava/util/Map;

    invoke-virtual {p5, p1}, Lcom/ibm/icu/impl/number/CompactData;->populate(Ljava/util/Map;)V

    :goto_0
    const/4 p1, 0x0

    if-eqz p7, :cond_1

    .line 101
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/ibm/icu/number/CompactNotation$CompactHandler;->precomputedMods:Ljava/util/Map;

    .line 102
    invoke-direct {p0, p6}, Lcom/ibm/icu/number/CompactNotation$CompactHandler;->precomputeAllModifiers(Lcom/ibm/icu/impl/number/MutablePatternModifier;)V

    .line 103
    iput-object p1, p0, Lcom/ibm/icu/number/CompactNotation$CompactHandler;->unsafePatternModifier:Lcom/ibm/icu/impl/number/MutablePatternModifier;

    goto :goto_1

    .line 106
    :cond_1
    iput-object p1, p0, Lcom/ibm/icu/number/CompactNotation$CompactHandler;->precomputedMods:Ljava/util/Map;

    .line 107
    iput-object p6, p0, Lcom/ibm/icu/number/CompactNotation$CompactHandler;->unsafePatternModifier:Lcom/ibm/icu/impl/number/MutablePatternModifier;

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/number/CompactNotation;Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/impl/number/CompactData$CompactType;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/MutablePatternModifier;ZLcom/ibm/icu/impl/number/MicroPropsGenerator;Lcom/ibm/icu/number/CompactNotation$1;)V
    .locals 0

    .line 74
    invoke-direct/range {p0 .. p8}, Lcom/ibm/icu/number/CompactNotation$CompactHandler;-><init>(Lcom/ibm/icu/number/CompactNotation;Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/impl/number/CompactData$CompactType;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/MutablePatternModifier;ZLcom/ibm/icu/impl/number/MicroPropsGenerator;)V

    return-void
.end method

.method private precomputeAllModifiers(Lcom/ibm/icu/impl/number/MutablePatternModifier;)V
    .locals 4

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 114
    iget-object v1, p0, Lcom/ibm/icu/number/CompactNotation$CompactHandler;->data:Lcom/ibm/icu/impl/number/CompactData;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/number/CompactData;->getUniquePatterns(Ljava/util/Set;)V

    .line 116
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 117
    invoke-static {v1}, Lcom/ibm/icu/impl/number/PatternStringParser;->parseToPatternInfo(Ljava/lang/String;)Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;

    move-result-object v2

    .line 118
    sget-object v3, Lcom/ibm/icu/text/NumberFormat$Field;->COMPACT:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {p1, v2, v3}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->setPatternInfo(Lcom/ibm/icu/impl/number/AffixPatternProvider;Lcom/ibm/icu/text/NumberFormat$Field;)V

    .line 119
    iget-object v2, p0, Lcom/ibm/icu/number/CompactNotation$CompactHandler;->precomputedMods:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->createImmutable()Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public processQuantity(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;
    .locals 6

    .line 125
    iget-object v0, p0, Lcom/ibm/icu/number/CompactNotation$CompactHandler;->parent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/number/MicroPropsGenerator;->processQuantity(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object v0

    .line 131
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->isZeroish()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, v0, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/number/Precision;->apply(Lcom/ibm/icu/impl/number/DecimalQuantity;)V

    const/4 v1, 0x0

    goto :goto_1

    .line 135
    :cond_0
    iget-object v1, v0, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    iget-object v3, p0, Lcom/ibm/icu/number/CompactNotation$CompactHandler;->data:Lcom/ibm/icu/impl/number/CompactData;

    invoke-virtual {v1, p1, v3}, Lcom/ibm/icu/number/Precision;->chooseMultiplierAndApply(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/MultiplierProducer;)I

    move-result v1

    .line 136
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->isZeroish()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->getMagnitude()I

    move-result v2

    :goto_0
    sub-int/2addr v2, v1

    .line 140
    :goto_1
    iget-object v3, p0, Lcom/ibm/icu/number/CompactNotation$CompactHandler;->data:Lcom/ibm/icu/impl/number/CompactData;

    iget-object v4, p0, Lcom/ibm/icu/number/CompactNotation$CompactHandler;->rules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {v3, v2, v4, p1}, Lcom/ibm/icu/impl/number/CompactData;->getPattern(ILcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/DecimalQuantity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    goto :goto_2

    .line 144
    :cond_2
    iget-object v4, p0, Lcom/ibm/icu/number/CompactNotation$CompactHandler;->precomputedMods:Ljava/util/Map;

    if-eqz v4, :cond_3

    .line 147
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;

    .line 148
    invoke-virtual {v2, v0, p1}, Lcom/ibm/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;->applyToMicros(Lcom/ibm/icu/impl/number/MicroProps;Lcom/ibm/icu/impl/number/DecimalQuantity;)V

    goto :goto_2

    .line 152
    :cond_3
    invoke-static {v2}, Lcom/ibm/icu/impl/number/PatternStringParser;->parseToPatternInfo(Ljava/lang/String;)Lcom/ibm/icu/impl/number/PatternStringParser$ParsedPatternInfo;

    move-result-object v2

    .line 153
    iget-object v4, p0, Lcom/ibm/icu/number/CompactNotation$CompactHandler;->unsafePatternModifier:Lcom/ibm/icu/impl/number/MutablePatternModifier;

    sget-object v5, Lcom/ibm/icu/text/NumberFormat$Field;->COMPACT:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v4, v2, v5}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->setPatternInfo(Lcom/ibm/icu/impl/number/AffixPatternProvider;Lcom/ibm/icu/text/NumberFormat$Field;)V

    .line 154
    iget-object v2, p0, Lcom/ibm/icu/number/CompactNotation$CompactHandler;->unsafePatternModifier:Lcom/ibm/icu/impl/number/MutablePatternModifier;

    invoke-interface {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->signum()Lcom/ibm/icu/impl/number/Modifier$Signum;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/ibm/icu/impl/number/MutablePatternModifier;->setNumberProperties(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;)V

    .line 155
    iget-object v2, p0, Lcom/ibm/icu/number/CompactNotation$CompactHandler;->unsafePatternModifier:Lcom/ibm/icu/impl/number/MutablePatternModifier;

    iput-object v2, v0, Lcom/ibm/icu/impl/number/MicroProps;->modMiddle:Lcom/ibm/icu/impl/number/Modifier;

    :goto_2
    mul-int/lit8 v1, v1, -0x1

    .line 161
    invoke-interface {p1, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity;->adjustExponent(I)V

    .line 164
    iput-object v3, v0, Lcom/ibm/icu/impl/number/MicroProps;->rounder:Lcom/ibm/icu/number/Precision;

    return-object v0
.end method
