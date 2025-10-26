.class public Lcom/ibm/icu/text/RuleBasedNumberFormat;
.super Lcom/ibm/icu/text/NumberFormat;
.source "RuleBasedNumberFormat.java"


# static fields
.field private static final DEBUG:Z

.field public static final DURATION:I = 0x3

.field private static final MAX_VALUE:Lcom/ibm/icu/math/BigDecimal;

.field private static final MIN_VALUE:Lcom/ibm/icu/math/BigDecimal;

.field public static final NUMBERING_SYSTEM:I = 0x4

.field public static final ORDINAL:I = 0x2

.field public static final SPELLOUT:I = 0x1

.field private static final locnames:[Ljava/lang/String;

.field private static final rulenames:[Ljava/lang/String;

.field static final serialVersionUID:J = -0x6a5ce54888ed36fcL


# instance fields
.field private transient capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

.field private capitalizationForListOrMenu:Z

.field private capitalizationForStandAlone:Z

.field private capitalizationInfoIsSet:Z

.field private transient decimalFormat:Lcom/ibm/icu/text/DecimalFormat;

.field private transient decimalFormatSymbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

.field private transient defaultInfinityRule:Lcom/ibm/icu/text/NFRule;

.field private transient defaultNaNRule:Lcom/ibm/icu/text/NFRule;

.field private transient defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

.field private lenientParse:Z

.field private transient lenientParseRules:Ljava/lang/String;

.field private locale:Lcom/ibm/icu/util/ULocale;

.field private transient lookedForScanner:Z

.field private transient postProcessRules:Ljava/lang/String;

.field private transient postProcessor:Lcom/ibm/icu/text/RBNFPostProcessor;

.field private publicRuleSetNames:[Ljava/lang/String;

.field private roundingMode:I

.field private ruleSetDisplayNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

.field private transient ruleSetsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/NFRuleSet;",
            ">;"
        }
    .end annotation
.end field

.field private transient scannerProvider:Lcom/ibm/icu/text/RbnfLenientScannerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "rbnf"

    .line 686
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->DEBUG:Z

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "SpelloutRules"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "OrdinalRules"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "DurationRules"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "NumberingSystemRules"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 867
    sput-object v1, Lcom/ibm/icu/text/RuleBasedNumberFormat;->rulenames:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SpelloutLocalizations"

    aput-object v1, v0, v3

    const-string v1, "OrdinalLocalizations"

    aput-object v1, v0, v4

    const-string v1, "DurationLocalizations"

    aput-object v1, v0, v5

    const-string v1, "NumberingSystemLocalizations"

    aput-object v1, v0, v6

    .line 870
    sput-object v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locnames:[Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    .line 1254
    invoke-static {v0, v1}, Lcom/ibm/icu/math/BigDecimal;->valueOf(J)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->MAX_VALUE:Lcom/ibm/icu/math/BigDecimal;

    const-wide/high16 v0, -0x8000000000000000L

    .line 1255
    invoke-static {v0, v1}, Lcom/ibm/icu/math/BigDecimal;->valueOf(J)Lcom/ibm/icu/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->MIN_VALUE:Lcom/ibm/icu/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 887
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;I)V
    .locals 6

    .line 828
    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x0

    .line 580
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    .line 585
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    .line 591
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    const/4 v1, 0x7

    .line 604
    iput v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->roundingMode:I

    .line 611
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->scannerProvider:Lcom/ibm/icu/text/RbnfLenientScannerProvider;

    .line 621
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 628
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormat:Lcom/ibm/icu/text/DecimalFormat;

    .line 634
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Lcom/ibm/icu/text/NFRule;

    .line 640
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Lcom/ibm/icu/text/NFRule;

    const/4 v1, 0x0

    .line 646
    iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    .line 680
    iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    .line 681
    iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    .line 682
    iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    .line 683
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    .line 829
    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;

    const-string v2, "com/ibm/icu/impl/data/icudt69b/rbnf"

    .line 832
    invoke-static {v2, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 837
    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    .line 838
    invoke-virtual {p0, v2, v2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    .line 840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 841
    move-object v3, v0

    check-cast v3, [[Ljava/lang/String;

    .line 844
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RBNFRules/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ibm/icu/text/RuleBasedNumberFormat;->rulenames:[Ljava/lang/String;

    add-int/lit8 v5, p2, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v3

    .line 845
    invoke-virtual {v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v3

    .line 846
    :goto_0
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 847
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundleIterator;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 855
    :cond_0
    sget-object v3, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locnames:[Ljava/lang/String;

    add-int/lit8 p2, p2, -0x1

    aget-object p2, v3, p2

    invoke-virtual {p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 857
    invoke-virtual {p1}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result p2

    new-array v0, p2, [[Ljava/lang/String;

    :goto_1
    if-ge v1, p2, :cond_1

    .line 859
    invoke-virtual {p1, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 864
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 701
    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x0

    .line 580
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    .line 585
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    .line 591
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    .line 598
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;

    const/4 v1, 0x7

    .line 604
    iput v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->roundingMode:I

    .line 611
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->scannerProvider:Lcom/ibm/icu/text/RbnfLenientScannerProvider;

    .line 621
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 628
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormat:Lcom/ibm/icu/text/DecimalFormat;

    .line 634
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Lcom/ibm/icu/text/NFRule;

    .line 640
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Lcom/ibm/icu/text/NFRule;

    const/4 v1, 0x0

    .line 646
    iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    .line 680
    iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    .line 681
    iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    .line 682
    iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    .line 683
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    .line 702
    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;

    .line 703
    move-object v1, v0

    check-cast v1, [[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
    .locals 2

    .line 763
    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x0

    .line 580
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    .line 585
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    .line 591
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    const/4 v1, 0x7

    .line 604
    iput v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->roundingMode:I

    .line 611
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->scannerProvider:Lcom/ibm/icu/text/RbnfLenientScannerProvider;

    .line 621
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 628
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormat:Lcom/ibm/icu/text/DecimalFormat;

    .line 634
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Lcom/ibm/icu/text/NFRule;

    .line 640
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Lcom/ibm/icu/text/NFRule;

    const/4 v1, 0x0

    .line 646
    iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    .line 680
    iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    .line 681
    iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    .line 682
    iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    .line 683
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    .line 764
    iput-object p2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;

    .line 765
    move-object p2, v0

    check-cast p2, [[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 747
    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 2

    .line 728
    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x0

    .line 580
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    .line 585
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    .line 591
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    .line 598
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;

    const/4 v1, 0x7

    .line 604
    iput v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->roundingMode:I

    .line 611
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->scannerProvider:Lcom/ibm/icu/text/RbnfLenientScannerProvider;

    .line 621
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 628
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormat:Lcom/ibm/icu/text/DecimalFormat;

    .line 634
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Lcom/ibm/icu/text/NFRule;

    .line 640
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Lcom/ibm/icu/text/NFRule;

    const/4 v1, 0x0

    .line 646
    iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    .line 680
    iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    .line 681
    iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    .line 682
    iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    .line 683
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    .line 729
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;

    .line 730
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[[Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
    .locals 2

    .line 793
    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x0

    .line 580
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    .line 585
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    .line 591
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    const/4 v1, 0x7

    .line 604
    iput v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->roundingMode:I

    .line 611
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->scannerProvider:Lcom/ibm/icu/text/RbnfLenientScannerProvider;

    .line 621
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 628
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormat:Lcom/ibm/icu/text/DecimalFormat;

    .line 634
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Lcom/ibm/icu/text/NFRule;

    .line 640
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Lcom/ibm/icu/text/NFRule;

    const/4 v1, 0x0

    .line 646
    iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    .line 680
    iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    .line 681
    iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    .line 682
    iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    .line 683
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    .line 794
    iput-object p3, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;

    .line 795
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->init(Ljava/lang/String;[[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;I)V
    .locals 0

    .line 811
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V

    return-void
.end method

.method private adjustForContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2026
    sget-object v0, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getContext(Lcom/ibm/icu/text/DisplayContext$Type;)Lcom/ibm/icu/text/DisplayContext;

    move-result-object v0

    .line 2027
    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    if-eq v0, v1, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 2028
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/lang/UCharacter;->isLowerCase(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2030
    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Lcom/ibm/icu/text/DisplayContext;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Lcom/ibm/icu/text/DisplayContext;

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Lcom/ibm/icu/text/DisplayContext;

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    if-eqz v0, :cond_3

    .line 2033
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    if-nez v0, :cond_2

    .line 2035
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/BreakIterator;->getSentenceInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    .line 2037
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    const/16 v2, 0x300

    invoke-static {v0, p1, v1, v2}, Lcom/ibm/icu/lang/UCharacter;->toTitleCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private extractSpecial(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1663
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 1668
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_3

    :cond_0
    const-string v2, ";%"

    .line 1672
    invoke-virtual {p1, v2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 1675
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 1677
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    :goto_0
    if-ge p2, v2, :cond_2

    .line 1679
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1684
    :cond_2
    invoke-virtual {p1, p2, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v2, v2, 0x1

    .line 1687
    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    return-object p2
.end method

.method private format(DLcom/ibm/icu/text/NFRuleSet;)Ljava/lang/String;
    .locals 7

    .line 1951
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1952
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getRoundingMode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1954
    new-instance v0, Lcom/ibm/icu/math/BigDecimal;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getMaximumFractionDigits()I

    move-result p1

    iget p2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->roundingMode:I

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/math/BigDecimal;->setScale(II)Lcom/ibm/icu/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    :cond_0
    move-wide v1, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v3, v6

    .line 1956
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/NFRuleSet;->format(DLjava/lang/StringBuilder;II)V

    .line 1957
    invoke-direct {p0, v6, p3}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcess(Ljava/lang/StringBuilder;Lcom/ibm/icu/text/NFRuleSet;)V

    .line 1958
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private format(JLcom/ibm/icu/text/NFRuleSet;)Ljava/lang/String;
    .locals 7

    .line 1980
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1983
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Lcom/ibm/icu/text/DecimalFormat;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-wide v1, p1

    move-object v3, v6

    .line 1986
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/NFRuleSet;->format(JLjava/lang/StringBuilder;II)V

    .line 1988
    :goto_0
    invoke-direct {p0, v6, p3}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcess(Ljava/lang/StringBuilder;Lcom/ibm/icu/text/NFRuleSet;)V

    .line 1989
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getNameListForLocale(Lcom/ibm/icu/util/ULocale;)[Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_2

    .line 1057
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 1058
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object p1, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v1, v3

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1059
    aget-object p1, v1, v2

    .line 1060
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1061
    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    if-eqz v3, :cond_0

    return-object v3

    .line 1065
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->getFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private init(Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 10

    .line 1702
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->initLocalizations([[Ljava/lang/String;)V

    .line 1709
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->stripWhitespace(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "%%lenient-parse:"

    .line 1716
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->extractSpecial(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParseRules:Ljava/lang/String;

    const-string p2, "%%post-process:"

    .line 1717
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->extractSpecial(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    const-string v3, ";%"

    .line 1724
    invoke-virtual {p1, v3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1730
    :cond_0
    new-array v1, v2, [Lcom/ibm/icu/text/NFRuleSet;

    iput-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    .line 1731
    new-instance v1, Ljava/util/HashMap;

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v0

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    const/4 v1, 0x0

    .line 1732
    iput-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    .line 1745
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1750
    :goto_1
    iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    array-length v7, v6

    const-string v8, "%%"

    if-ge v2, v7, :cond_5

    .line 1751
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-gez v6, :cond_1

    .line 1753
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v0

    :cond_1
    add-int/2addr v6, v0

    .line 1755
    invoke-virtual {p1, v4, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 1756
    new-instance v4, Lcom/ibm/icu/text/NFRuleSet;

    invoke-direct {v4, p0, v1, v2}, Lcom/ibm/icu/text/NFRuleSet;-><init>(Lcom/ibm/icu/text/RuleBasedNumberFormat;[Ljava/lang/String;I)V

    .line 1757
    iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    aput-object v4, v7, v2

    .line 1758
    invoke-virtual {v4}, Lcom/ibm/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1759
    iget-object v9, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    invoke-interface {v9, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    add-int/lit8 v5, v5, 0x1

    .line 1762
    iget-object v8, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    if-nez v8, :cond_2

    const-string v8, "%spellout-numbering"

    .line 1763
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    const-string v8, "%digits-ordinal"

    .line 1764
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "%duration"

    .line 1765
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1767
    :cond_3
    iput-object v4, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    move v4, v6

    goto :goto_1

    .line 1787
    :cond_5
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    if-nez p1, :cond_7

    .line 1788
    array-length p1, v6

    sub-int/2addr p1, v0

    :goto_2
    if-ltz p1, :cond_7

    .line 1789
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/ibm/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1790
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    aget-object p1, v2, p1

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    goto :goto_3

    :cond_6
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 1795
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    if-nez p1, :cond_8

    .line 1796
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    array-length v2, p1

    sub-int/2addr v2, v0

    aget-object p1, p1, v2

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    :cond_8
    const/4 p1, 0x0

    .line 1801
    :goto_4
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    array-length v3, v2

    if-ge p1, v3, :cond_9

    .line 1802
    aget-object v2, v2, p1

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/NFRuleSet;->parseRules(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 1809
    :cond_9
    new-array p1, v5, [Ljava/lang/String;

    .line 1811
    array-length v1, v2

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    :goto_5
    if-ltz v1, :cond_b

    .line 1812
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/ibm/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    add-int/lit8 v2, v0, 0x1

    .line 1813
    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/ibm/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v0

    move v0, v2

    :cond_a
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 1817
    :cond_b
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 1820
    :goto_6
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 1821
    aget-object v1, v1, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v5, :cond_d

    .line 1823
    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1827
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "did not find public rule set: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1830
    :cond_e
    aget-object p1, v1, p2

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Lcom/ibm/icu/text/NFRuleSet;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    goto :goto_8

    .line 1832
    :cond_f
    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    :goto_8
    return-void
.end method

.method private initCapitalizationContextInfo(Lcom/ibm/icu/util/ULocale;)V
    .locals 3

    const-string v0, "com/ibm/icu/impl/data/icudt69b"

    .line 1867
    invoke-static {v0, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    :try_start_0
    const-string v0, "contextTransforms/number-spellout"

    .line 1869
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p1

    .line 1870
    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getIntVector()[I

    move-result-object p1

    .line 1871
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 1872
    aget v1, p1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    .line 1873
    aget p1, p1, v2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private initLocalizations([[Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 1842
    aget-object v1, p1, v0

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    .line 1844
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 1845
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 1846
    aget-object v4, p1, v3

    .line 1847
    aget-object v5, v4, v0

    .line 1848
    array-length v6, v4

    sub-int/2addr v6, v2

    new-array v7, v6, [Ljava/lang/String;

    .line 1849
    iget-object v8, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    array-length v8, v8

    if-ne v6, v8, :cond_0

    .line 1853
    invoke-static {v4, v2, v7, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1854
    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1850
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "public name length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " != localized names["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1857
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1858
    iput-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    :cond_2
    return-void
.end method

.method private postProcess(Ljava/lang/StringBuilder;Lcom/ibm/icu/text/NFRuleSet;)V
    .locals 3

    .line 1996
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1997
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcessor:Lcom/ibm/icu/text/RBNFPostProcessor;

    if-nez v1, :cond_2

    const-string v1, ";"

    .line 1998
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2002
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2004
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2005
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/RBNFPostProcessor;

    iput-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcessor:Lcom/ibm/icu/text/RBNFPostProcessor;

    .line 2006
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    invoke-interface {v1, p0, v2}, Lcom/ibm/icu/text/RBNFPostProcessor;->init(Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2010
    sget-boolean p2, Lcom/ibm/icu/text/RuleBasedNumberFormat;->DEBUG:Z

    if-eqz p2, :cond_1

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not locate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", error "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2011
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2010
    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 2012
    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcessor:Lcom/ibm/icu/text/RBNFPostProcessor;

    .line 2013
    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcessRules:Ljava/lang/String;

    return-void

    .line 2018
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->postProcessor:Lcom/ibm/icu/text/RBNFPostProcessor;

    invoke-interface {v0, p1, p2}, Lcom/ibm/icu/text/RBNFPostProcessor;->process(Ljava/lang/StringBuilder;Lcom/ibm/icu/text/NFRuleSet;)V

    :cond_3
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 993
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 997
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/ULocale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 999
    :catch_0
    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    .line 1002
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->roundingMode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1010
    :catch_1
    new-instance p1, Lcom/ibm/icu/text/RuleBasedNumberFormat;

    invoke-direct {p1, v0, v1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    .line 1011
    iget-object v0, p1, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    .line 1012
    iget-object v0, p1, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    .line 1013
    iget-object v0, p1, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    .line 1014
    iget-object v0, p1, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    .line 1015
    iget-object v0, p1, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 1016
    iget-object v0, p1, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormat:Lcom/ibm/icu/text/DecimalFormat;

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormat:Lcom/ibm/icu/text/DecimalFormat;

    .line 1017
    iget-object v0, p1, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;

    .line 1018
    iget-object v0, p1, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Lcom/ibm/icu/text/NFRule;

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Lcom/ibm/icu/text/NFRule;

    .line 1019
    iget-object p1, p1, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Lcom/ibm/icu/text/NFRule;

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Lcom/ibm/icu/text/NFRule;

    return-void
.end method

.method private stripWhitespace(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5

    .line 1890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1891
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    :goto_1
    if-ge v2, v1, :cond_0

    .line 1898
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/16 v3, 0x3b

    if-ge v2, v1, :cond_1

    .line 1904
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1911
    :cond_1
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1915
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    if-ge v3, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 1919
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 980
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 981
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 982
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->roundingMode:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 901
    invoke-super {p0}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method createPluralFormat(Lcom/ibm/icu/text/PluralRules$PluralType;Ljava/lang/String;)Lcom/ibm/icu/text/PluralFormat;
    .locals 3

    .line 1621
    new-instance v0, Lcom/ibm/icu/text/PluralFormat;

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Lcom/ibm/icu/text/DecimalFormat;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/ibm/icu/text/PluralFormat;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;Ljava/lang/String;Lcom/ibm/icu/text/NumberFormat;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 917
    instance-of v0, p1, Lcom/ibm/icu/text/RuleBasedNumberFormat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 922
    :cond_0
    check-cast p1, Lcom/ibm/icu/text/RuleBasedNumberFormat;

    .line 925
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;

    iget-object v2, p1, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    iget-boolean v2, p1, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    if-eq v0, v2, :cond_1

    goto :goto_1

    .line 930
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    array-length v0, v0

    iget-object v2, p1, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    array-length v2, v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    .line 933
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 934
    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/NFRuleSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    return v1
.end method

.method findRuleSet(Ljava/lang/String;)Lcom/ibm/icu/text/NFRuleSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2051
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSetsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/NFRuleSet;

    if-eqz v0, :cond_0

    return-object v0

    .line 2053
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No rule set named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public format(DLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "%%"

    .line 1148
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1151
    invoke-virtual {p0, p3}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Lcom/ibm/icu/text/NFRuleSet;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->format(DLcom/ibm/icu/text/NFRuleSet;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1149
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t use internal rule set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public format(JLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "%%"

    .line 1167
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1170
    invoke-virtual {p0, p3}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Lcom/ibm/icu/text/NFRuleSet;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->format(JLcom/ibm/icu/text/NFRuleSet;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1168
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t use internal rule set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    .line 1190
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result p4

    if-nez p4, :cond_0

    .line 1191
    iget-object p4, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    invoke-direct {p0, p1, p2, p4}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->format(DLcom/ibm/icu/text/NFRuleSet;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1194
    :cond_0
    iget-object p4, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    invoke-direct {p0, p1, p2, p4}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->format(DLcom/ibm/icu/text/NFRuleSet;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    .line 1219
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result p4

    if-nez p4, :cond_0

    .line 1220
    iget-object p4, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    invoke-direct {p0, p1, p2, p4}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->format(JLcom/ibm/icu/text/NFRuleSet;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1223
    :cond_0
    iget-object p4, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    invoke-direct {p0, p1, p2, p4}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->format(JLcom/ibm/icu/text/NFRuleSet;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-object p3
.end method

.method public format(Lcom/ibm/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .line 1267
    sget-object v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->MIN_VALUE:Lcom/ibm/icu/math/BigDecimal;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/math/BigDecimal;->compareTo(Lcom/ibm/icu/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_2

    sget-object v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->MAX_VALUE:Lcom/ibm/icu/math/BigDecimal;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/math/BigDecimal;->compareTo(Lcom/ibm/icu/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 1272
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/math/BigDecimal;->scale()I

    move-result v0

    if-nez v0, :cond_1

    .line 1273
    invoke-virtual {p1}, Lcom/ibm/icu/math/BigDecimal;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    .line 1275
    :cond_1
    invoke-virtual {p1}, Lcom/ibm/icu/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    .line 1270
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Lcom/ibm/icu/text/DecimalFormat;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/text/DecimalFormat;->format(Lcom/ibm/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    .line 1251
    new-instance v0, Lcom/ibm/icu/math/BigDecimal;

    invoke-direct {v0, p1}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/math/BigDecimal;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->format(Lcom/ibm/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    .line 1238
    new-instance v0, Lcom/ibm/icu/math/BigDecimal;

    invoke-direct {v0, p1}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->format(Lcom/ibm/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method getDecimalFormat()Lcom/ibm/icu/text/DecimalFormat;
    .locals 3

    .line 1612
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormat:Lcom/ibm/icu/text/DecimalFormat;

    if-nez v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getPattern(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v0

    .line 1615
    new-instance v1, Lcom/ibm/icu/text/DecimalFormat;

    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getDecimalFormatSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/ibm/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;)V

    iput-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormat:Lcom/ibm/icu/text/DecimalFormat;

    .line 1617
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormat:Lcom/ibm/icu/text/DecimalFormat;

    return-object v0
.end method

.method getDecimalFormatSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;
    .locals 2

    .line 1605
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    if-nez v0, :cond_0

    .line 1606
    new-instance v0, Lcom/ibm/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 1608
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    return-object v0
.end method

.method getDefaultInfinityRule()Lcom/ibm/icu/text/NFRule;
    .locals 3

    .line 1629
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Lcom/ibm/icu/text/NFRule;

    if-nez v0, :cond_0

    .line 1630
    new-instance v0, Lcom/ibm/icu/text/NFRule;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getDecimalFormatSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/text/NFRule;-><init>(Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Lcom/ibm/icu/text/NFRule;

    .line 1632
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Lcom/ibm/icu/text/NFRule;

    return-object v0
.end method

.method getDefaultNaNRule()Lcom/ibm/icu/text/NFRule;
    .locals 3

    .line 1640
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Lcom/ibm/icu/text/NFRule;

    if-nez v0, :cond_0

    .line 1641
    new-instance v0, Lcom/ibm/icu/text/NFRule;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NaN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getDecimalFormatSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/text/NFRule;-><init>(Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Lcom/ibm/icu/text/NFRule;

    .line 1643
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Lcom/ibm/icu/text/NFRule;

    return-object v0
.end method

.method getDefaultRuleSet()Lcom/ibm/icu/text/NFRuleSet;
    .locals 1

    .line 1575
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    return-object v0
.end method

.method public getDefaultRuleSetName()Ljava/lang/String;
    .locals 1

    .line 1468
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ibm/icu/text/NFRuleSet;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1469
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method getLenientScanner()Lcom/ibm/icu/text/RbnfLenientScanner;
    .locals 3

    .line 1585
    iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    if-eqz v0, :cond_0

    .line 1586
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getLenientScannerProvider()Lcom/ibm/icu/text/RbnfLenientScannerProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1588
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;

    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParseRules:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ibm/icu/text/RbnfLenientScannerProvider;->get(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Lcom/ibm/icu/text/RbnfLenientScanner;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLenientScannerProvider()Lcom/ibm/icu/text/RbnfLenientScannerProvider;
    .locals 1

    .line 1407
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->scannerProvider:Lcom/ibm/icu/text/RbnfLenientScannerProvider;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lookedForScanner:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1409
    :try_start_0
    iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lookedForScanner:Z

    const-string v0, "com.ibm.icu.impl.text.RbnfScannerProviderImpl"

    .line 1410
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1411
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/RbnfLenientScannerProvider;

    .line 1412
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->setLenientScannerProvider(Lcom/ibm/icu/text/RbnfLenientScannerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1419
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->scannerProvider:Lcom/ibm/icu/text/RbnfLenientScannerProvider;

    return-object v0
.end method

.method public getRoundingMode()I
    .locals 1

    .line 1540
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->roundingMode:I

    return v0
.end method

.method public getRuleSetDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1136
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getRuleSetDisplayName(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRuleSetDisplayName(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 3

    .line 1115
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 1116
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 1117
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1118
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getNameListForLocale(Lcom/ibm/icu/util/ULocale;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1120
    aget-object p1, p1, v1

    return-object p1

    .line 1122
    :cond_0
    aget-object p1, v0, v1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1125
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unrecognized rule set name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public getRuleSetDisplayNameLocales()[Lcom/ibm/icu/util/ULocale;
    .locals 5

    .line 1043
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSetDisplayNames:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1044
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1045
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1046
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1047
    array-length v1, v0

    new-array v1, v1, [Lcom/ibm/icu/util/ULocale;

    const/4 v2, 0x0

    .line 1048
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1049
    new-instance v3, Lcom/ibm/icu/util/ULocale;

    aget-object v4, v0, v2

    invoke-direct {v3, v4}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRuleSetDisplayNames()[Ljava/lang/String;
    .locals 1

    .line 1102
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getRuleSetDisplayNames(Lcom/ibm/icu/util/ULocale;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRuleSetDisplayNames(Lcom/ibm/icu/util/ULocale;)[Ljava/lang/String;
    .locals 3

    .line 1083
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getNameListForLocale(Lcom/ibm/icu/util/ULocale;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1085
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    .line 1087
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getRuleSetNames()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 1088
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1089
    aget-object v1, p1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getRuleSetNames()[Ljava/lang/String;
    .locals 1

    .line 1033
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 949
    invoke-super {p0}, Lcom/ibm/icu/text/NumberFormat;->hashCode()I

    move-result v0

    return v0
.end method

.method public lenientParseEnabled()Z
    .locals 1

    .line 1379
    iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 11

    .line 1301
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1302
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v7, 0x0

    invoke-direct {v0, v7}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1307
    sget-object v1, Lcom/ibm/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    .line 1308
    new-instance v8, Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-direct {v8, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1314
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    move-object v9, v1

    move v10, v2

    :goto_0
    if-ltz v10, :cond_4

    .line 1316
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    aget-object v1, v1, v10

    invoke-virtual {v1}, Lcom/ibm/icu/text/NFRuleSet;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    aget-object v1, v1, v10

    invoke-virtual {v1}, Lcom/ibm/icu/text/NFRuleSet;->isParseable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1322
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    aget-object v1, v1, v10

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;DI)Ljava/lang/Number;

    move-result-object v1

    .line 1323
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 1325
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object v9, v1

    .line 1334
    :cond_1
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_2

    goto :goto_2

    .line 1340
    :cond_2
    invoke-virtual {v0, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_3
    :goto_1
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 1345
    :cond_4
    :goto_2
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v9
.end method

.method public setContext(Lcom/ibm/icu/text/DisplayContext;)V
    .locals 1

    .line 1516
    invoke-super {p0, p1}, Lcom/ibm/icu/text/NumberFormat;->setContext(Lcom/ibm/icu/text/DisplayContext;)V

    .line 1517
    iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Lcom/ibm/icu/text/DisplayContext;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Lcom/ibm/icu/text/DisplayContext;

    if-ne p1, v0, :cond_1

    .line 1519
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->initCapitalizationContextInfo(Lcom/ibm/icu/util/ULocale;)V

    const/4 v0, 0x1

    .line 1520
    iput-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationInfoIsSet:Z

    .line 1522
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    if-nez v0, :cond_4

    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Lcom/ibm/icu/text/DisplayContext;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Lcom/ibm/icu/text/DisplayContext;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationForListOrMenu:Z

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Lcom/ibm/icu/text/DisplayContext;

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationForStandAlone:Z

    if-eqz p1, :cond_4

    .line 1525
    :cond_3
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->locale:Lcom/ibm/icu/util/ULocale;

    invoke-static {p1}, Lcom/ibm/icu/text/BreakIterator;->getSentenceInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->capitalizationBrkIter:Lcom/ibm/icu/text/BreakIterator;

    :cond_4
    return-void
.end method

.method public setDecimalFormatSymbols(Lcom/ibm/icu/text/DecimalFormatSymbols;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 1484
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 1485
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormat:Lcom/ibm/icu/text/DecimalFormat;

    if-eqz v0, :cond_0

    .line 1486
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/DecimalFormat;->setDecimalFormatSymbols(Lcom/ibm/icu/text/DecimalFormatSymbols;)V

    .line 1488
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Lcom/ibm/icu/text/NFRule;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1489
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultInfinityRule:Lcom/ibm/icu/text/NFRule;

    .line 1490
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getDefaultInfinityRule()Lcom/ibm/icu/text/NFRule;

    .line 1492
    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Lcom/ibm/icu/text/NFRule;

    if-eqz p1, :cond_2

    .line 1493
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultNaNRule:Lcom/ibm/icu/text/NFRule;

    .line 1494
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getDefaultNaNRule()Lcom/ibm/icu/text/NFRule;

    .line 1498
    :cond_2
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 1499
    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->decimalFormatSymbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/NFRuleSet;->setDecimalFormatSymbols(Lcom/ibm/icu/text/DecimalFormatSymbols;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setDefaultRuleSet(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_5

    .line 1431
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->publicRuleSetNames:[Ljava/lang/String;

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 1432
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Lcom/ibm/icu/text/NFRuleSet;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1434
    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    .line 1435
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    array-length p1, p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_3

    .line 1437
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/ibm/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%spellout-numbering"

    .line 1438
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "%digits-ordinal"

    .line 1439
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "%duration"

    .line 1440
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1442
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    return-void

    .line 1447
    :cond_3
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    array-length p1, p1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_6

    .line 1449
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/ibm/icu/text/NFRuleSet;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1450
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    goto :goto_0

    :cond_5
    const-string v0, "%%"

    .line 1455
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1458
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Lcom/ibm/icu/text/NFRuleSet;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->defaultRuleSet:Lcom/ibm/icu/text/NFRuleSet;

    :cond_6
    :goto_0
    return-void

    .line 1456
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot use private rule set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public setLenientParseMode(Z)V
    .locals 0

    .line 1368
    iput-boolean p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParse:Z

    return-void
.end method

.method public setLenientScannerProvider(Lcom/ibm/icu/text/RbnfLenientScannerProvider;)V
    .locals 0

    .line 1392
    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->scannerProvider:Lcom/ibm/icu/text/RbnfLenientScannerProvider;

    return-void
.end method

.method public setRoundingMode(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 1560
    iput p1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->roundingMode:I

    return-void

    .line 1557
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rounding mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 966
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedNumberFormat;->ruleSets:[Lcom/ibm/icu/text/NFRuleSet;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 967
    invoke-virtual {v4}, Lcom/ibm/icu/text/NFRuleSet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 969
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
