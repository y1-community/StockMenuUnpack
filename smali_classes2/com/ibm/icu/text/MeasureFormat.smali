.class public Lcom/ibm/icu/text/MeasureFormat;
.super Lcom/ibm/icu/text/UFormat;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;,
        Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;,
        Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;,
        Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CURRENCY_FORMAT:I = 0x2

.field private static final MEASURE_FORMAT:I = 0x0

.field static final NUMBER_FORMATTER_CURRENCY:I = 0x2

.field static final NUMBER_FORMATTER_INTEGER:I = 0x3

.field static final NUMBER_FORMATTER_STANDARD:I = 0x1

.field private static final TIME_UNIT_FORMAT:I = 0x1

.field private static final hmsTo012:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ibm/icu/util/MeasureUnit;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final localeIdToRangeFormat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ibm/icu/util/ULocale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final localeToNumericDurationFormatters:Lcom/ibm/icu/impl/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/SimpleCache<",
            "Lcom/ibm/icu/util/ULocale;",
            "Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = -0x63abaa69b1b00340L


# instance fields
.field private final transient formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

.field private transient formatter1:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

.field private transient formatter2:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

.field private transient formatter3:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

.field private final transient numberFormat:Lcom/ibm/icu/text/NumberFormat;

.field private final transient numberFormatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

.field private final transient numericFormatters:Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

.field private final transient rules:Lcom/ibm/icu/text/PluralRules;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 134
    new-instance v0, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/MeasureFormat;->localeToNumericDurationFormatters:Lcom/ibm/icu/impl/SimpleCache;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    .line 139
    sget-object v1, Lcom/ibm/icu/util/MeasureUnit;->HOUR:Lcom/ibm/icu/util/TimeUnit;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lcom/ibm/icu/util/MeasureUnit;->MINUTE:Lcom/ibm/icu/util/TimeUnit;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v1, Lcom/ibm/icu/util/MeasureUnit;->SECOND:Lcom/ibm/icu/util/TimeUnit;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 610
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/MeasureFormat;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;)V

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/text/PluralRules;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 656
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/MeasureFormat;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;)V

    .line 657
    sget-object p1, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    if-eq p2, p1, :cond_0

    return-void

    .line 658
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The format width \'numeric\' is not allowed by this constructor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;)V
    .locals 1

    .line 618
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 712
    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter1:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    .line 713
    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter2:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    .line 714
    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter3:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    .line 620
    invoke-virtual {p0, p1, p1}, Lcom/ibm/icu/text/MeasureFormat;->setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V

    .line 621
    iput-object p2, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    if-nez p4, :cond_0

    .line 624
    invoke-static {p1}, Lcom/ibm/icu/text/PluralRules;->forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;

    move-result-object p4

    .line 626
    :cond_0
    iput-object p4, p0, Lcom/ibm/icu/text/MeasureFormat;->rules:Lcom/ibm/icu/text/PluralRules;

    if-nez p3, :cond_1

    .line 629
    invoke-static {p1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p3

    goto :goto_0

    .line 631
    :cond_1
    invoke-virtual {p3}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ibm/icu/text/NumberFormat;

    .line 633
    :goto_0
    iput-object p3, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    if-nez p5, :cond_2

    .line 635
    sget-object p4, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    if-ne p2, p4, :cond_2

    .line 636
    sget-object p4, Lcom/ibm/icu/text/MeasureFormat;->localeToNumericDurationFormatters:Lcom/ibm/icu/impl/SimpleCache;

    invoke-virtual {p4, p1}, Lcom/ibm/icu/impl/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    if-nez p5, :cond_2

    .line 638
    invoke-static {p1}, Lcom/ibm/icu/text/MeasureFormat;->loadNumericFormatters(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    move-result-object p5

    .line 639
    invoke-virtual {p4, p1, p5}, Lcom/ibm/icu/impl/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 642
    :cond_2
    iput-object p5, p0, Lcom/ibm/icu/text/MeasureFormat;->numericFormatters:Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    .line 644
    instance-of p1, p3, Lcom/ibm/icu/text/DecimalFormat;

    if-eqz p1, :cond_3

    .line 647
    check-cast p3, Lcom/ibm/icu/text/DecimalFormat;

    invoke-virtual {p3}, Lcom/ibm/icu/text/DecimalFormat;->toNumberFormatter()Lcom/ibm/icu/number/LocalizedNumberFormatter;

    move-result-object p1

    iget-object p2, p2, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    .line 648
    invoke-virtual {p1, p2}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->unitWidth(Lcom/ibm/icu/number/NumberFormatter$UnitWidth;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/number/LocalizedNumberFormatter;

    iput-object p1, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    return-void

    .line 645
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static synthetic access$000(I)Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
    .locals 0

    .line 118
    invoke-static {p0}, Lcom/ibm/icu/text/MeasureFormat;->fromFormatWidthOrdinal(I)Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object p0

    return-object p0
.end method

.method private formatMeasure(Lcom/ibm/icu/util/Measure;)Lcom/ibm/icu/impl/FormattedStringBuilder;
    .locals 4

    .line 778
    invoke-virtual {p1}, Lcom/ibm/icu/util/Measure;->getUnit()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    .line 779
    new-instance v1, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {p1}, Lcom/ibm/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/lang/Number;)V

    .line 780
    new-instance p1, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>()V

    .line 781
    instance-of v2, v0, Lcom/ibm/icu/util/Currency;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    .line 782
    invoke-direct {p0, v2, v0, v3}, Lcom/ibm/icu/text/MeasureFormat;->getUnitFormatterFromCache(ILcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/util/MeasureUnit;)Lcom/ibm/icu/number/LocalizedNumberFormatter;

    move-result-object v0

    .line 783
    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->formatImpl(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/MicroProps;

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 785
    invoke-direct {p0, v2, v0, v3}, Lcom/ibm/icu/text/MeasureFormat;->getUnitFormatterFromCache(ILcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/util/MeasureUnit;)Lcom/ibm/icu/number/LocalizedNumberFormatter;

    move-result-object v0

    .line 786
    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->formatImpl(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/MicroProps;

    :goto_0
    return-object p1
.end method

.method private formatMeasureInteger(Lcom/ibm/icu/util/Measure;)Lcom/ibm/icu/impl/FormattedStringBuilder;
    .locals 4

    .line 792
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {p1}, Lcom/ibm/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/lang/Number;)V

    .line 793
    new-instance v1, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {v1}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>()V

    .line 794
    invoke-virtual {p1}, Lcom/ibm/icu/util/Measure;->getUnit()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object p1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, v3}, Lcom/ibm/icu/text/MeasureFormat;->getUnitFormatterFromCache(ILcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/util/MeasureUnit;)Lcom/ibm/icu/number/LocalizedNumberFormatter;

    move-result-object p1

    .line 795
    invoke-virtual {p1, v0, v1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->formatImpl(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/MicroProps;

    return-object v1
.end method

.method private varargs formatMeasuresInternal(Ljava/lang/Appendable;Ljava/text/FieldPosition;[Lcom/ibm/icu/util/Measure;)V
    .locals 5

    .line 437
    array-length v0, p3

    if-nez v0, :cond_0

    return-void

    .line 440
    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 441
    aget-object p3, p3, v1

    invoke-direct {p0, p3}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasure(Lcom/ibm/icu/util/Measure;)Lcom/ibm/icu/impl/FormattedStringBuilder;

    move-result-object p3

    .line 442
    invoke-static {p3, p2}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->nextFieldPosition(Lcom/ibm/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;)Z

    .line 443
    invoke-static {p3, p1}, Lcom/ibm/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    return-void

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    sget-object v3, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    if-ne v0, v3, :cond_2

    .line 450
    invoke-static {p3}, Lcom/ibm/icu/text/MeasureFormat;->toHMS([Lcom/ibm/icu/util/Measure;)[Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 452
    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/MeasureFormat;->formatNumeric([Ljava/lang/Number;Ljava/lang/Appendable;)V

    return-void

    .line 457
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/text/ListFormatter$Type;->UNITS:Lcom/ibm/icu/text/ListFormatter$Type;

    iget-object v4, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    iget-object v4, v4, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->listWidth:Lcom/ibm/icu/text/ListFormatter$Width;

    invoke-static {v0, v3, v4}, Lcom/ibm/icu/text/ListFormatter;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/ListFormatter$Type;Lcom/ibm/icu/text/ListFormatter$Width;)Lcom/ibm/icu/text/ListFormatter;

    move-result-object v0

    .line 460
    sget-object v3, Lcom/ibm/icu/impl/DontCareFieldPosition;->INSTANCE:Lcom/ibm/icu/impl/DontCareFieldPosition;

    if-eq p2, v3, :cond_3

    .line 461
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasuresSlowTrack(Lcom/ibm/icu/text/ListFormatter;Ljava/lang/Appendable;Ljava/text/FieldPosition;[Lcom/ibm/icu/util/Measure;)V

    return-void

    .line 465
    :cond_3
    array-length p2, p3

    new-array p2, p2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 466
    :goto_0
    array-length v4, p3

    if-ge v3, v4, :cond_5

    .line 467
    array-length v4, p3

    sub-int/2addr v4, v2

    if-ne v3, v4, :cond_4

    .line 468
    aget-object v4, p3, v3

    invoke-direct {p0, v4}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasure(Lcom/ibm/icu/util/Measure;)Lcom/ibm/icu/impl/FormattedStringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v3

    goto :goto_1

    .line 470
    :cond_4
    aget-object v4, p3, v3

    invoke-direct {p0, v4}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasureInteger(Lcom/ibm/icu/util/Measure;)Lcom/ibm/icu/impl/FormattedStringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 473
    :cond_5
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lcom/ibm/icu/text/ListFormatter;->formatImpl(Ljava/util/Collection;Z)Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object p2

    .line 474
    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->appendTo(Ljava/lang/Appendable;)V

    return-void
.end method

.method private varargs formatMeasuresSlowTrack(Lcom/ibm/icu/text/ListFormatter;Ljava/lang/Appendable;Ljava/text/FieldPosition;[Lcom/ibm/icu/util/Measure;)V
    .locals 7

    .line 804
    array-length v0, p4

    new-array v0, v0, [Ljava/lang/String;

    .line 807
    new-instance v1, Ljava/text/FieldPosition;

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    .line 808
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 811
    :goto_0
    array-length v5, p4

    const/4 v6, 0x1

    if-ge v3, v5, :cond_2

    .line 813
    array-length v5, p4

    sub-int/2addr v5, v6

    if-ne v3, v5, :cond_0

    .line 814
    aget-object v5, p4, v3

    invoke-direct {p0, v5}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasure(Lcom/ibm/icu/util/Measure;)Lcom/ibm/icu/impl/FormattedStringBuilder;

    move-result-object v5

    goto :goto_1

    .line 816
    :cond_0
    aget-object v5, p4, v3

    invoke-direct {p0, v5}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasureInteger(Lcom/ibm/icu/util/Measure;)Lcom/ibm/icu/impl/FormattedStringBuilder;

    move-result-object v5

    :goto_1
    if-ne v4, v2, :cond_1

    .line 819
    invoke-static {v5, v1}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->nextFieldPosition(Lcom/ibm/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;)Z

    .line 820
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v6

    if-eqz v6, :cond_1

    move v4, v3

    .line 824
    :cond_1
    invoke-virtual {v5}, Lcom/ibm/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 826
    :cond_2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-virtual {p1, p4, v6}, Lcom/ibm/icu/text/ListFormatter;->formatImpl(Ljava/util/Collection;Z)Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object p1

    .line 829
    invoke-virtual {p1, v4}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->getOffset(I)I

    move-result p4

    if-eq p4, v2, :cond_3

    .line 831
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v0

    add-int/2addr v0, p4

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 832
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v0

    add-int/2addr v0, p4

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 834
    :cond_3
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->appendTo(Ljava/lang/Appendable;)V

    return-void
.end method

.method private formatNumeric([Ljava/lang/Number;Ljava/lang/Appendable;)V
    .locals 16

    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 880
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 877
    aget-object v3, p1, v0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    aget-object v3, p1, v4

    if-eqz v3, :cond_1

    .line 878
    iget-object v3, v1, Lcom/ibm/icu/text/MeasureFormat;->numericFormatters:Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    invoke-virtual {v3}, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->getHourMinuteSecond()Ljava/lang/String;

    move-result-object v3

    .line 879
    aget-object v6, p1, v5

    if-nez v6, :cond_0

    .line 880
    aput-object v2, p1, v5

    .line 881
    :cond_0
    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, p1, v5

    .line 882
    aget-object v6, p1, v0

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, p1, v0

    goto :goto_0

    .line 883
    :cond_1
    aget-object v3, p1, v0

    if-eqz v3, :cond_2

    aget-object v3, p1, v5

    if-eqz v3, :cond_2

    .line 884
    iget-object v3, v1, Lcom/ibm/icu/text/MeasureFormat;->numericFormatters:Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    invoke-virtual {v3}, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->getHourMinute()Ljava/lang/String;

    move-result-object v3

    .line 885
    aget-object v6, p1, v0

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, p1, v0

    goto :goto_0

    .line 886
    :cond_2
    aget-object v3, p1, v5

    if-eqz v3, :cond_c

    aget-object v3, p1, v4

    if-eqz v3, :cond_c

    .line 887
    iget-object v3, v1, Lcom/ibm/icu/text/MeasureFormat;->numericFormatters:Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    invoke-virtual {v3}, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->getMinuteSecond()Ljava/lang/String;

    move-result-object v3

    .line 888
    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, p1, v5

    .line 895
    :goto_0
    iget-object v6, v1, Lcom/ibm/icu/text/MeasureFormat;->numberFormatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    invoke-static {v4}, Lcom/ibm/icu/number/IntegerWidth;->zeroFillTo(I)Lcom/ibm/icu/number/IntegerWidth;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->integerWidth(Lcom/ibm/icu/number/IntegerWidth;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object v6

    check-cast v6, Lcom/ibm/icu/number/LocalizedNumberFormatter;

    .line 896
    new-instance v7, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {v7}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 899
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_b

    .line 900
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x73

    const/16 v12, 0x6d

    const/16 v13, 0x48

    if-eq v10, v13, :cond_5

    if-eq v10, v12, :cond_4

    if-eq v10, v11, :cond_3

    move-object v14, v2

    goto :goto_2

    .line 908
    :cond_3
    aget-object v14, p1, v4

    goto :goto_2

    .line 907
    :cond_4
    aget-object v14, p1, v5

    goto :goto_2

    .line 906
    :cond_5
    aget-object v14, p1, v0

    :goto_2
    const/16 v15, 0x27

    const/4 v0, 0x0

    if-eq v10, v15, :cond_9

    if-eq v10, v13, :cond_6

    if-eq v10, v12, :cond_6

    if-eq v10, v11, :cond_6

    .line 939
    invoke-virtual {v7, v10, v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->appendChar16(CLjava/lang/Object;)I

    goto :goto_4

    :cond_6
    if-eqz v9, :cond_7

    .line 919
    invoke-virtual {v7, v10, v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->appendChar16(CLjava/lang/Object;)I

    goto :goto_4

    :cond_7
    add-int/lit8 v11, v8, 0x1

    .line 921
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_8

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v10, :cond_8

    .line 922
    invoke-virtual {v6, v14}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->format(Ljava/lang/Number;)Lcom/ibm/icu/number/FormattedNumber;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;)I

    goto :goto_3

    .line 925
    :cond_8
    iget-object v10, v1, Lcom/ibm/icu/text/MeasureFormat;->numberFormatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v10, v14}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->format(Ljava/lang/Number;)Lcom/ibm/icu/number/FormattedNumber;

    move-result-object v10

    invoke-virtual {v7, v10, v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;)I

    goto :goto_4

    :cond_9
    add-int/lit8 v11, v8, 0x1

    .line 931
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_a

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v10, :cond_a

    .line 932
    invoke-virtual {v7, v10, v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->appendChar16(CLjava/lang/Object;)I

    :goto_3
    move v8, v11

    goto :goto_4

    :cond_a
    xor-int/lit8 v9, v9, 0x1

    :goto_4
    add-int/2addr v8, v5

    const/4 v0, 0x0

    goto :goto_1

    :cond_b
    move-object/from16 v0, p2

    .line 944
    :try_start_0
    invoke-interface {v0, v7}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 946
    new-instance v0, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v0, v2}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 890
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private static fromFormatWidthOrdinal(I)Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
    .locals 2

    .line 1042
    invoke-static {}, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->values()[Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    if-ltz p0, :cond_1

    .line 1043
    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 1046
    :cond_0
    aget-object p0, v0, p0

    return-object p0

    .line 1044
    :cond_1
    :goto_0
    sget-object p0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->SHORT:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    return-object p0
.end method

.method public static getCurrencyFormat()Lcom/ibm/icu/text/MeasureFormat;
    .locals 1

    .line 593
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/text/MeasureFormat;->getCurrencyFormat(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MeasureFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrencyFormat(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MeasureFormat;
    .locals 1

    .line 570
    new-instance v0, Lcom/ibm/icu/text/CurrencyFormat;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/CurrencyFormat;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-object v0
.end method

.method public static getCurrencyFormat(Ljava/util/Locale;)Lcom/ibm/icu/text/MeasureFormat;
    .locals 0

    .line 582
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/text/MeasureFormat;->getCurrencyFormat(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MeasureFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;)Lcom/ibm/icu/text/MeasureFormat;
    .locals 1

    .line 233
    invoke-static {p0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/MeasureFormat;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;)Lcom/ibm/icu/text/MeasureFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;)Lcom/ibm/icu/text/MeasureFormat;
    .locals 7

    .line 266
    new-instance v6, Lcom/ibm/icu/text/MeasureFormat;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/MeasureFormat;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;)V

    return-object v6
.end method

.method public static getInstance(Ljava/util/Locale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;)Lcom/ibm/icu/text/MeasureFormat;
    .locals 0

    .line 247
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ibm/icu/text/MeasureFormat;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;)Lcom/ibm/icu/text/MeasureFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/util/Locale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;)Lcom/ibm/icu/text/MeasureFormat;
    .locals 0

    .line 285
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/MeasureFormat;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;)Lcom/ibm/icu/text/MeasureFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getRangeFormat(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1065
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    sget-object p0, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    invoke-static {p0, p1}, Lcom/ibm/icu/text/MeasureFormat;->getRangeFormat(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1068
    :cond_0
    sget-object p1, Lcom/ibm/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "com/ibm/icu/impl/data/icudt69b"

    .line 1071
    invoke-static {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 1072
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    .line 1073
    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1075
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1077
    invoke-interface {p1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    .line 1083
    :cond_1
    invoke-static {p0}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object p1

    .line 1087
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberElements/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    invoke-virtual {p1}, Lcom/ibm/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/miscPatterns/range"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "NumberElements/latn/patterns/range"

    .line 1090
    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1092
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    .line 1093
    invoke-static {p1, v0, v2, v2}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v0

    .line 1094
    sget-object p1, Lcom/ibm/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 1096
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method private declared-synchronized getUnitFormatterFromCache(ILcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/util/MeasureUnit;)Lcom/ibm/icu/number/LocalizedNumberFormatter;
    .locals 3

    monitor-enter p0

    .line 720
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter1:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    if-eqz v0, :cond_2

    .line 721
    iget v0, v0, Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;->type:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter1:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iget-object v0, v0, Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;->unit:Lcom/ibm/icu/util/MeasureUnit;

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter1:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iget-object v0, v0, Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;->perUnit:Lcom/ibm/icu/util/MeasureUnit;

    if-ne v0, p3, :cond_0

    .line 722
    iget-object p1, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter1:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iget-object p1, p1, Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 724
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter2:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    if-eqz v0, :cond_2

    .line 725
    iget v0, v0, Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;->type:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter2:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iget-object v0, v0, Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;->unit:Lcom/ibm/icu/util/MeasureUnit;

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter2:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iget-object v0, v0, Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;->perUnit:Lcom/ibm/icu/util/MeasureUnit;

    if-ne v0, p3, :cond_1

    .line 728
    iget-object p1, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter2:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iget-object p1, p1, Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 730
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter3:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    if-eqz v0, :cond_2

    .line 731
    iget v0, v0, Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;->type:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter3:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iget-object v0, v0, Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;->unit:Lcom/ibm/icu/util/MeasureUnit;

    if-ne v0, p2, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter3:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iget-object v0, v0, Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;->perUnit:Lcom/ibm/icu/util/MeasureUnit;

    if-ne v0, p3, :cond_2

    .line 734
    iget-object p1, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter3:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iget-object p1, p1, Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 743
    :try_start_3
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getNumberFormatter()Lcom/ibm/icu/number/LocalizedNumberFormatter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->unit(Lcom/ibm/icu/util/MeasureUnit;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v0, p3}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->perUnit(Lcom/ibm/icu/util/MeasureUnit;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/number/LocalizedNumberFormatter;

    iget-object v1, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    iget-object v1, v1, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    .line 744
    invoke-virtual {v0, v1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->unitWidth(Lcom/ibm/icu/number/NumberFormatter$UnitWidth;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/number/LocalizedNumberFormatter;

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 746
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/number/NumberFormatter;->withLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/number/LocalizedNumberFormatter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->unit(Lcom/ibm/icu/util/MeasureUnit;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v0, p3}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->perUnit(Lcom/ibm/icu/util/MeasureUnit;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/number/LocalizedNumberFormatter;

    iget-object v1, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    iget-object v1, v1, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->currencyWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    .line 747
    invoke-virtual {v0, v1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->unitWidth(Lcom/ibm/icu/number/NumberFormatter$UnitWidth;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/number/LocalizedNumberFormatter;

    goto :goto_0

    .line 750
    :cond_4
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getNumberFormatter()Lcom/ibm/icu/number/LocalizedNumberFormatter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->unit(Lcom/ibm/icu/util/MeasureUnit;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v0, p3}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->perUnit(Lcom/ibm/icu/util/MeasureUnit;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/number/LocalizedNumberFormatter;

    iget-object v1, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    iget-object v1, v1, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->unitWidth(Lcom/ibm/icu/number/NumberFormatter$UnitWidth;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/number/LocalizedNumberFormatter;

    .line 751
    invoke-static {}, Lcom/ibm/icu/number/Precision;->integer()Lcom/ibm/icu/number/FractionPrecision;

    move-result-object v1

    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 752
    invoke-static {v2}, Lcom/ibm/icu/impl/number/RoundingUtils;->mathContextUnlimited(Ljava/math/RoundingMode;)Ljava/math/MathContext;

    move-result-object v2

    .line 751
    invoke-virtual {v1, v2}, Lcom/ibm/icu/number/FractionPrecision;->withMode(Ljava/math/MathContext;)Lcom/ibm/icu/number/Precision;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->precision(Lcom/ibm/icu/number/Precision;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/number/LocalizedNumberFormatter;

    .line 754
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter2:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iput-object v1, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter3:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    .line 755
    iget-object v1, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter1:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iput-object v1, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter2:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    .line 756
    new-instance v1, Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    invoke-direct {v1}, Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter1:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    .line 757
    iput p1, v1, Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;->type:I

    .line 758
    iget-object p1, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter1:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iput-object p2, p1, Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;->unit:Lcom/ibm/icu/util/MeasureUnit;

    .line 759
    iget-object p1, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter1:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iput-object p3, p1, Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;->perUnit:Lcom/ibm/icu/util/MeasureUnit;

    .line 760
    iget-object p1, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter1:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iput-object v0, p1, Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 761
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static loadNumericDurationFormat(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "durationUnits/%s"

    .line 839
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p0

    .line 841
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "h"

    const-string v0, "H"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static loadNumericFormatters(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;
    .locals 4

    const-string v0, "com/ibm/icu/impl/data/icudt69b/unit"

    .line 692
    invoke-static {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 693
    new-instance v0, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    const-string v1, "hm"

    invoke-static {p0, v1}, Lcom/ibm/icu/text/MeasureFormat;->loadNumericDurationFormat(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ms"

    .line 694
    invoke-static {p0, v2}, Lcom/ibm/icu/text/MeasureFormat;->loadNumericDurationFormat(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hms"

    .line 695
    invoke-static {p0, v3}, Lcom/ibm/icu/text/MeasureFormat;->loadNumericDurationFormat(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static toHMS([Lcom/ibm/icu/util/Measure;)[Ljava/lang/Number;
    .locals 11

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Number;

    .line 852
    array-length v1, p0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    .line 853
    invoke-virtual {v4}, Lcom/ibm/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    cmpg-double v10, v5, v7

    if-gez v10, :cond_0

    return-object v9

    .line 856
    :cond_0
    sget-object v5, Lcom/ibm/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/ibm/icu/util/Measure;->getUnit()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_1

    return-object v9

    .line 860
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v5, v2, :cond_2

    return-object v9

    .line 866
    :cond_2
    invoke-virtual {v4}, Lcom/ibm/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v2

    aput-object v2, v0, v5

    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 959
    new-instance v0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;

    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getNumberFormatInternal()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;I)V

    return-object v0
.end method


# virtual methods
.method declared-synchronized clearCache()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 765
    :try_start_0
    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter1:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    .line 766
    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter2:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    .line 767
    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatter3:Lcom/ibm/icu/text/MeasureFormat$NumberFormatterCacheEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 503
    :cond_0
    instance-of v1, p1, Lcom/ibm/icu/text/MeasureFormat;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 506
    :cond_1
    check-cast p1, Lcom/ibm/icu/text/MeasureFormat;

    .line 508
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getWidth()Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/text/MeasureFormat;->getWidth()Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 509
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 510
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getNumberFormatInternal()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/text/MeasureFormat;->getNumberFormatInternal()Lcom/ibm/icu/text/NumberFormat;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ibm/icu/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6

    .line 309
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 310
    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 311
    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 312
    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_2

    .line 313
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    .line 314
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Lcom/ibm/icu/util/Measure;

    .line 316
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 317
    instance-of v5, v4, Lcom/ibm/icu/util/Measure;

    if-eqz v5, :cond_0

    add-int/lit8 v5, v1, 0x1

    .line 320
    check-cast v4, Lcom/ibm/icu/util/Measure;

    aput-object v4, v3, v1

    move v1, v5

    goto :goto_0

    .line 318
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 322
    :cond_1
    invoke-direct {p0, p2, p3, v3}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasuresInternal(Ljava/lang/Appendable;Ljava/text/FieldPosition;[Lcom/ibm/icu/util/Measure;)V

    goto :goto_1

    .line 323
    :cond_2
    instance-of v1, p1, [Lcom/ibm/icu/util/Measure;

    if-eqz v1, :cond_3

    .line 324
    check-cast p1, [Lcom/ibm/icu/util/Measure;

    check-cast p1, [Lcom/ibm/icu/util/Measure;

    invoke-direct {p0, p2, p3, p1}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasuresInternal(Ljava/lang/Appendable;Ljava/text/FieldPosition;[Lcom/ibm/icu/util/Measure;)V

    goto :goto_1

    .line 325
    :cond_3
    instance-of v1, p1, Lcom/ibm/icu/util/Measure;

    if-eqz v1, :cond_5

    .line 326
    check-cast p1, Lcom/ibm/icu/util/Measure;

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasure(Lcom/ibm/icu/util/Measure;)Lcom/ibm/icu/impl/FormattedStringBuilder;

    move-result-object p1

    .line 328
    invoke-static {p1, p3}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->nextFieldPosition(Lcom/ibm/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;)Z

    .line 329
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    :goto_1
    if-lez v0, :cond_4

    .line 333
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p1

    if-eqz p1, :cond_4

    .line 334
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p3, p1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 335
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p3, p1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_4
    return-object p2

    .line 331
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public formatMeasurePerUnit(Lcom/ibm/icu/util/Measure;Lcom/ibm/icu/util/MeasureUnit;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;
    .locals 3

    .line 392
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {p1}, Lcom/ibm/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/lang/Number;)V

    .line 393
    new-instance v1, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {v1}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>()V

    .line 395
    invoke-virtual {p1}, Lcom/ibm/icu/util/Measure;->getUnit()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object p1

    const/4 v2, 0x1

    .line 394
    invoke-direct {p0, v2, p1, p2}, Lcom/ibm/icu/text/MeasureFormat;->getUnitFormatterFromCache(ILcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/util/MeasureUnit;)Lcom/ibm/icu/number/LocalizedNumberFormatter;

    move-result-object p1

    .line 396
    invoke-virtual {p1, v0, v1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->formatImpl(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/MicroProps;

    .line 397
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-static {v0, v1, p4, p1}, Lcom/ibm/icu/text/DecimalFormat;->fieldPositionHelper(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;I)V

    .line 398
    invoke-static {v1, p3}, Lcom/ibm/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    return-object p3
.end method

.method public final varargs formatMeasures([Lcom/ibm/icu/util/Measure;)Ljava/lang/String;
    .locals 2

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ibm/icu/impl/DontCareFieldPosition;->INSTANCE:Lcom/ibm/icu/impl/DontCareFieldPosition;

    invoke-virtual {p0, v0, v1, p1}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Lcom/ibm/icu/util/Measure;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Lcom/ibm/icu/util/Measure;)Ljava/lang/StringBuilder;
    .locals 1

    .line 423
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 424
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/MeasureFormat;->formatMeasuresInternal(Ljava/lang/Appendable;Ljava/text/FieldPosition;[Lcom/ibm/icu/util/Measure;)V

    if-lez v0, :cond_0

    .line 425
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p3

    if-lez p3, :cond_0

    .line 426
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p3

    add-int/2addr p3, v0

    invoke-virtual {p2, p3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 427
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p3

    add-int/2addr p3, v0

    invoke-virtual {p2, p3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_0
    return-object p1
.end method

.method public final getLocale()Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 542
    sget-object v0, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public getNumberFormat()Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/NumberFormat;

    return-object v0
.end method

.method getNumberFormatInternal()Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    return-object v0
.end method

.method getNumberFormatter()Lcom/ibm/icu/number/LocalizedNumberFormatter;
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->numberFormatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    return-object v0
.end method

.method public getUnitDisplayName(Lcom/ibm/icu/util/MeasureUnit;)Ljava/lang/String;
    .locals 2

    .line 489
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    iget-object v1, v1, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    invoke-static {v0, p1, v1}, Lcom/ibm/icu/impl/number/LongNameHandler;->getUnitDisplayName(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWidth()Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    sget-object v1, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->DEFAULT_CURRENCY:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    if-ne v0, v1, :cond_0

    .line 531
    sget-object v0, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->WIDE:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    return-object v0

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 521
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getNumberFormatInternal()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getWidth()Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/Measure;
    .locals 0

    .line 350
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/MeasureFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/Measure;

    move-result-object p1

    return-object p1
.end method

.method toCurrencyProxy()Ljava/lang/Object;
    .locals 5

    .line 955
    new-instance v0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;

    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getNumberFormatInternal()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;I)V

    return-object v0
.end method

.method toTimeUnitProxy()Ljava/lang/Object;
    .locals 5

    .line 951
    new-instance v0, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;

    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getNumberFormatInternal()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/text/MeasureFormat$MeasureProxy;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;I)V

    return-object v0
.end method

.method withLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/MeasureFormat;
    .locals 1

    .line 598
    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getWidth()Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ibm/icu/text/MeasureFormat;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;)Lcom/ibm/icu/text/MeasureFormat;

    move-result-object p1

    return-object p1
.end method

.method withNumberFormat(Lcom/ibm/icu/text/NumberFormat;)Lcom/ibm/icu/text/MeasureFormat;
    .locals 7

    .line 602
    new-instance v6, Lcom/ibm/icu/text/MeasureFormat;

    invoke-virtual {p0}, Lcom/ibm/icu/text/MeasureFormat;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/text/MeasureFormat;->formatWidth:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    iget-object v4, p0, Lcom/ibm/icu/text/MeasureFormat;->rules:Lcom/ibm/icu/text/PluralRules;

    iget-object v5, p0, Lcom/ibm/icu/text/MeasureFormat;->numericFormatters:Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/MeasureFormat;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;)V

    return-object v6
.end method
