.class public final Lcom/ibm/icu/text/RelativeDateTimeFormatter;
.super Ljava/lang/Object;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/RelativeDateTimeFormatter$Loader;,
        Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;,
        Lcom/ibm/icu/text/RelativeDateTimeFormatter$Cache;,
        Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;,
        Lcom/ibm/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;,
        Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;,
        Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;,
        Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;,
        Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;,
        Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;,
        Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;
    }
.end annotation


# static fields
.field private static final cache:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Cache;

.field private static final fallbackCache:[Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;


# instance fields
.field private final breakIterator:Lcom/ibm/icu/text/BreakIterator;

.field private final capitalizationContext:Lcom/ibm/icu/text/DisplayContext;

.field private final combinedDateAndTime:Ljava/lang/String;

.field private final dateFormatSymbols:Lcom/ibm/icu/text/DateFormatSymbols;

.field private final locale:Lcom/ibm/icu/util/ULocale;

.field private final numberFormat:Lcom/ibm/icu/text/NumberFormat;

.field private final patternMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap<",
            "Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pluralRules:Lcom/ibm/icu/text/PluralRules;

.field private final qualitativeUnitMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap<",
            "Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap<",
            "Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final style:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

.field private styleToDateFormatSymbolsWidth:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    .line 1132
    sput-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->fallbackCache:[Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    .line 1558
    new-instance v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Cache;-><init>(Lcom/ibm/icu/text/RelativeDateTimeFormatter$1;)V

    sput-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->cache:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Cache;

    return-void
.end method

.method private constructor <init>(Ljava/util/EnumMap;Ljava/util/EnumMap;Ljava/lang/String;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Lcom/ibm/icu/text/DisplayContext;Lcom/ibm/icu/text/BreakIterator;Lcom/ibm/icu/util/ULocale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap<",
            "Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap<",
            "Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/EnumMap<",
            "Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap<",
            "Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[[",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/PluralRules;",
            "Lcom/ibm/icu/text/NumberFormat;",
            "Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;",
            "Lcom/ibm/icu/text/DisplayContext;",
            "Lcom/ibm/icu/text/BreakIterator;",
            "Lcom/ibm/icu/util/ULocale;",
            ")V"
        }
    .end annotation

    .line 1070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 782
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->styleToDateFormatSymbolsWidth:[I

    .line 1071
    iput-object p1, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->qualitativeUnitMap:Ljava/util/EnumMap;

    .line 1072
    iput-object p2, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->patternMap:Ljava/util/EnumMap;

    .line 1073
    iput-object p3, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->combinedDateAndTime:Ljava/lang/String;

    .line 1074
    iput-object p4, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 1075
    iput-object p5, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    .line 1076
    iput-object p6, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->style:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    .line 1077
    invoke-virtual {p7}, Lcom/ibm/icu/text/DisplayContext;->type()Lcom/ibm/icu/text/DisplayContext$Type;

    move-result-object p1

    sget-object p2, Lcom/ibm/icu/text/DisplayContext$Type;->CAPITALIZATION:Lcom/ibm/icu/text/DisplayContext$Type;

    if-ne p1, p2, :cond_0

    .line 1080
    iput-object p7, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->capitalizationContext:Lcom/ibm/icu/text/DisplayContext;

    .line 1081
    iput-object p8, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->breakIterator:Lcom/ibm/icu/text/BreakIterator;

    .line 1082
    iput-object p9, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->locale:Lcom/ibm/icu/util/ULocale;

    .line 1083
    new-instance p1, Lcom/ibm/icu/text/DateFormatSymbols;

    invoke-direct {p1, p9}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    iput-object p1, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->dateFormatSymbols:Lcom/ibm/icu/text/DateFormatSymbols;

    return-void

    .line 1078
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p7}, Lcom/ibm/icu/text/DisplayContext;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x2
    .end array-data
.end method

.method static synthetic access$100(Lcom/ibm/icu/impl/UResource$Key;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;
    .locals 0

    .line 81
    invoke-static {p0}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->keyToDirection(Lcom/ibm/icu/impl/UResource$Key;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()[Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;
    .locals 1

    .line 81
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->fallbackCache:[Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    return-object v0
.end method

.method private adjustForContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1042
    iget-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->breakIterator:Lcom/ibm/icu/text/BreakIterator;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1043
    invoke-static {p1, v0}, Lcom/ibm/icu/lang/UCharacter;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/lang/UCharacter;->isLowerCase(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->breakIterator:Lcom/ibm/icu/text/BreakIterator;

    monitor-enter v0

    .line 1047
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->locale:Lcom/ibm/icu/util/ULocale;

    iget-object v2, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->breakIterator:Lcom/ibm/icu/text/BreakIterator;

    const/16 v3, 0x300

    invoke-static {v1, p1, v2, v3}, Lcom/ibm/icu/lang/UCharacter;->toTitleCase(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Lcom/ibm/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1052
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private checkNoAdjustForContext()V
    .locals 2

    .line 1056
    iget-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->breakIterator:Lcom/ibm/icu/text/BreakIterator;

    if-nez v0, :cond_0

    return-void

    .line 1057
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Capitalization context is not supported in formatV"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private formatAbsoluteImpl(Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;
    .locals 3

    .line 834
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 835
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "NOW can only accept direction PLAIN."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 839
    :cond_1
    :goto_0
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    move-result v0

    invoke-virtual {p2}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 840
    invoke-virtual {p2}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    move-result v0

    sget-object v1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SATURDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 842
    invoke-virtual {p2}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    move-result p1

    sget-object p2, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {p2}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    move-result p2

    sub-int/2addr p1, p2

    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 843
    iget-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->dateFormatSymbols:Lcom/ibm/icu/text/DateFormatSymbols;

    iget-object v1, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->styleToDateFormatSymbolsWidth:[I

    iget-object v2, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->style:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    .line 845
    invoke-virtual {v2}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v2

    aget v1, v1, v2

    .line 844
    invoke-virtual {v0, p2, v1}, Lcom/ibm/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object p2

    .line 846
    aget-object p1, p2, p1

    goto :goto_1

    .line 849
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->style:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    invoke-direct {p0, v0, p2, p1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->getAbsoluteUnitString(Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private formatImpl(DLcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Lcom/ibm/icu/impl/FormattedStringBuilder;
    .locals 4

    .line 685
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    if-eq p3, v0, :cond_1

    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 686
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "direction must be NEXT or LAST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 688
    :cond_1
    :goto_0
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    .line 690
    :goto_1
    new-instance v0, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>()V

    .line 692
    iget-object v2, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    instance-of v3, v2, Lcom/ibm/icu/text/DecimalFormat;

    if-eqz v3, :cond_3

    .line 693
    new-instance v2, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v2, p1, p2}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(D)V

    .line 694
    iget-object p1, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    check-cast p1, Lcom/ibm/icu/text/DecimalFormat;

    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormat;->toNumberFormatter()Lcom/ibm/icu/number/LocalizedNumberFormatter;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->formatImpl(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/MicroProps;

    .line 695
    iget-object p1, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {p1, v2}, Lcom/ibm/icu/text/PluralRules;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 697
    :cond_3
    invoke-virtual {v2, p1, p2}, Lcom/ibm/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 698
    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/impl/FormattedStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;)I

    .line 699
    iget-object v2, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {v2, p1, p2}, Lcom/ibm/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object p1

    .line 701
    :goto_2
    invoke-static {p1}, Lcom/ibm/icu/impl/StandardPlural;->orOtherFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object p1

    .line 703
    iget-object p2, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->style:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    invoke-direct {p0, p2, p4, p3, p1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->getRelativeUnitPluralPattern(Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILcom/ibm/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object p1

    .line 704
    sget-object p2, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;->LITERAL:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->length()I

    move-result p3

    invoke-static {p1, p2, v1, p3, v0}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatPrefixSuffix(Ljava/lang/String;Ljava/text/Format$Field;IILcom/ibm/icu/impl/FormattedStringBuilder;)I

    return-object v0
.end method

.method private formatNumericImpl(DLcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Lcom/ibm/icu/impl/FormattedStringBuilder;
    .locals 3

    .line 761
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 762
    sget-object v1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$1;->$SwitchMap$com$ibm$icu$text$RelativeDateTimeFormatter$RelativeDateTimeUnit:[I

    invoke-virtual {p3}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->ordinal()I

    move-result p3

    aget p3, v1, p3

    packed-switch p3, :pswitch_data_0

    .line 772
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "formatNumeric does not currently support RelativeUnit.SUNDAY..SATURDAY"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 769
    :pswitch_0
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MINUTES:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_0

    .line 768
    :pswitch_1
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;->HOURS:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_0

    .line 767
    :pswitch_2
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_0

    .line 766
    :pswitch_3
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEEKS:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_0

    .line 765
    :pswitch_4
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MONTHS:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_0

    .line 764
    :pswitch_5
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;->QUARTERS:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_0

    .line 763
    :pswitch_6
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;->YEARS:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 774
    :goto_0
    :pswitch_7
    sget-object p3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    const-wide/16 v1, 0x0

    .line 775
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-gez v1, :cond_0

    .line 776
    sget-object p3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    neg-double p1, p1

    .line 779
    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->formatImpl(DLcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Lcom/ibm/icu/impl/FormattedStringBuilder;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private formatRelativeImpl(DLcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Ljava/lang/CharSequence;
    .locals 10

    .line 916
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide v3, -0x3fff333333333333L    # -2.1

    cmpl-double v5, p1, v3

    if-lez v5, :cond_5

    const-wide v3, 0x4000cccccccccccdL    # 2.1

    cmpg-double v5, p1, v3

    if-gez v5, :cond_5

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v3, v3, p1

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    cmpg-double v9, v3, v5

    if-gez v9, :cond_0

    sub-double/2addr v3, v7

    goto :goto_0

    :cond_0
    add-double/2addr v3, v7

    :goto_0
    double-to-int v3, v3

    const/16 v4, -0xc8

    if-eq v3, v4, :cond_4

    const/16 v4, -0x64

    if-eq v3, v4, :cond_3

    if-eqz v3, :cond_6

    const/16 v4, 0x64

    if-eq v3, v4, :cond_2

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 926
    :cond_1
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->NEXT_2:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    goto :goto_2

    .line 925
    :cond_2
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    goto :goto_2

    .line 923
    :cond_3
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    goto :goto_2

    .line 922
    :cond_4
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->LAST_2:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v2, 0x1

    .line 930
    :cond_6
    :goto_2
    sget-object v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    .line 931
    sget-object v4, Lcom/ibm/icu/text/RelativeDateTimeFormatter$1;->$SwitchMap$com$ibm$icu$text$RelativeDateTimeFormatter$RelativeDateTimeUnit:[I

    invoke-virtual {p3}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_4

    .line 943
    :pswitch_0
    sget-object v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SATURDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_3

    .line 942
    :pswitch_1
    sget-object v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->FRIDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_3

    .line 941
    :pswitch_2
    sget-object v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->THURSDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_3

    .line 940
    :pswitch_3
    sget-object v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEDNESDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_3

    .line 939
    :pswitch_4
    sget-object v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->TUESDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_3

    .line 938
    :pswitch_5
    sget-object v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_3

    .line 937
    :pswitch_6
    sget-object v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_3

    .line 947
    :pswitch_7
    sget-object v4, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    if-ne v0, v4, :cond_7

    .line 949
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    goto :goto_3

    .line 945
    :pswitch_8
    sget-object v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MINUTE:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_3

    .line 944
    :pswitch_9
    sget-object v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->HOUR:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_3

    .line 936
    :pswitch_a
    sget-object v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_3

    .line 935
    :pswitch_b
    sget-object v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEEK:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_3

    .line 934
    :pswitch_c
    sget-object v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONTH:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_3

    .line 933
    :pswitch_d
    sget-object v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->QUARTER:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_3

    .line 932
    :pswitch_e
    sget-object v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->YEAR:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    :goto_3
    move v1, v2

    :cond_7
    :goto_4
    if-nez v1, :cond_8

    .line 960
    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->formatAbsoluteImpl(Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 961
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    return-object v0

    .line 966
    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->formatNumericImpl(DLcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Lcom/ibm/icu/impl/FormattedStringBuilder;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method private getAbsoluteUnitString(Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;)Ljava/lang/String;
    .locals 1

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->qualitativeUnitMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    if-eqz v0, :cond_1

    .line 979
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    if-eqz v0, :cond_1

    .line 981
    invoke-virtual {v0, p3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    .line 991
    :cond_1
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->fallbackCache:[Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {p1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method public static getInstance()Lcom/ibm/icu/text/RelativeDateTimeFormatter;
    .locals 4

    .line 550
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->LONG:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    sget-object v2, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Lcom/ibm/icu/text/DisplayContext;)Lcom/ibm/icu/text/RelativeDateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/RelativeDateTimeFormatter;
    .locals 3

    .line 561
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->LONG:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Lcom/ibm/icu/text/DisplayContext;)Lcom/ibm/icu/text/RelativeDateTimeFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberFormat;)Lcom/ibm/icu/text/RelativeDateTimeFormatter;
    .locals 2

    .line 586
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->LONG:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    invoke-static {p0, p1, v0, v1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Lcom/ibm/icu/text/DisplayContext;)Lcom/ibm/icu/text/RelativeDateTimeFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Lcom/ibm/icu/text/DisplayContext;)Lcom/ibm/icu/text/RelativeDateTimeFormatter;
    .locals 11

    .line 605
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->cache:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Cache;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Cache;->get(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    move-result-object v0

    if-nez p1, :cond_0

    .line 607
    invoke-static {p0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p1

    goto :goto_0

    .line 609
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/NumberFormat;

    :goto_0
    move-object v6, p1

    .line 611
    new-instance p1, Lcom/ibm/icu/text/RelativeDateTimeFormatter;

    iget-object v2, v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->qualitativeUnitMap:Ljava/util/EnumMap;

    iget-object v3, v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->relUnitPatternMap:Ljava/util/EnumMap;

    iget-object v0, v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->dateTimePattern:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x2

    .line 614
    invoke-static {v0, v1, v4, v4}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v4

    .line 616
    invoke-static {p0}, Lcom/ibm/icu/text/PluralRules;->forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;

    move-result-object v5

    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Lcom/ibm/icu/text/DisplayContext;

    if-ne p3, v0, :cond_1

    .line 621
    invoke-static {p0}, Lcom/ibm/icu/text/BreakIterator;->getSentenceInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v9, v0

    move-object v1, p1

    move-object v7, p2

    move-object v8, p3

    move-object v10, p0

    invoke-direct/range {v1 .. v10}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap;Ljava/lang/String;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Lcom/ibm/icu/text/DisplayContext;Lcom/ibm/icu/text/BreakIterator;Lcom/ibm/icu/util/ULocale;)V

    return-object p1
.end method

.method public static getInstance(Ljava/util/Locale;)Lcom/ibm/icu/text/RelativeDateTimeFormatter;
    .locals 0

    .line 572
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/RelativeDateTimeFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/util/Locale;Lcom/ibm/icu/text/NumberFormat;)Lcom/ibm/icu/text/RelativeDateTimeFormatter;
    .locals 0

    .line 636
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberFormat;)Lcom/ibm/icu/text/RelativeDateTimeFormatter;

    move-result-object p0

    return-object p0
.end method

.method private getRelativeUnitPattern(Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILcom/ibm/icu/impl/StandardPlural;)Ljava/lang/String;
    .locals 2

    .line 1099
    invoke-virtual {p4}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result p4

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->patternMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    if-eqz v0, :cond_1

    .line 1103
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1105
    aget-object v1, v0, p3

    aget-object v1, v1, p4

    if-eqz v1, :cond_1

    .line 1106
    aget-object p1, v0, p3

    aget-object p1, p1, p4

    return-object p1

    .line 1114
    :cond_1
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->fallbackCache:[Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {p1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method private getRelativeUnitPluralPattern(Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILcom/ibm/icu/impl/StandardPlural;)Ljava/lang/String;
    .locals 1

    .line 1088
    sget-object v0, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    if-eq p4, v0, :cond_0

    .line 1089
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->getRelativeUnitPattern(Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILcom/ibm/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_0

    return-object p4

    .line 1094
    :cond_0
    sget-object p4, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->getRelativeUnitPattern(Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILcom/ibm/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static keyToDirection(Lcom/ibm/icu/impl/UResource$Key;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;
    .locals 1

    const-string v0, "-2"

    .line 1166
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1167
    sget-object p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->LAST_2:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    return-object p0

    :cond_0
    const-string v0, "-1"

    .line 1169
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1170
    sget-object p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    return-object p0

    :cond_1
    const-string v0, "0"

    .line 1172
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1173
    sget-object p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    return-object p0

    :cond_2
    const-string v0, "1"

    .line 1175
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1176
    sget-object p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    return-object p0

    :cond_3
    const-string v0, "2"

    .line 1178
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1179
    sget-object p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->NEXT_2:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public combineDateAndTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1006
    iget-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->combinedDateAndTime:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(DLcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Ljava/lang/String;
    .locals 0

    .line 657
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->formatImpl(DLcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Lcom/ibm/icu/impl/FormattedStringBuilder;

    move-result-object p1

    .line 658
    invoke-virtual {p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(DLcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Ljava/lang/String;
    .locals 0

    .line 872
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->formatRelativeImpl(DLcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;
    .locals 0

    .line 802
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->formatAbsoluteImpl(Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 803
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public formatNumeric(DLcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Ljava/lang/String;
    .locals 0

    .line 726
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->formatNumericImpl(DLcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Lcom/ibm/icu/impl/FormattedStringBuilder;

    move-result-object p1

    .line 727
    invoke-virtual {p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatNumericToValue(DLcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;
    .locals 1

    .line 748
    invoke-direct {p0}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->checkNoAdjustForContext()V

    .line 749
    new-instance v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;

    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->formatNumericImpl(DLcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Lcom/ibm/icu/impl/FormattedStringBuilder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;-><init>(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/text/RelativeDateTimeFormatter$1;)V

    return-object v0
.end method

.method public formatToValue(DLcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;
    .locals 1

    .line 679
    invoke-direct {p0}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->checkNoAdjustForContext()V

    .line 680
    new-instance v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->formatImpl(DLcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Lcom/ibm/icu/impl/FormattedStringBuilder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;-><init>(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/text/RelativeDateTimeFormatter$1;)V

    return-object v0
.end method

.method public formatToValue(DLcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;
    .locals 0

    .line 893
    invoke-direct {p0}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->checkNoAdjustForContext()V

    .line 894
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->formatRelativeImpl(DLcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 896
    instance-of p2, p1, Lcom/ibm/icu/impl/FormattedStringBuilder;

    if-eqz p2, :cond_0

    .line 897
    check-cast p1, Lcom/ibm/icu/impl/FormattedStringBuilder;

    goto :goto_0

    .line 899
    :cond_0
    new-instance p2, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {p2}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>()V

    .line 900
    sget-object p3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;->LITERAL:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;

    invoke-virtual {p2, p1, p3}, Lcom/ibm/icu/impl/FormattedStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;)I

    move-object p1, p2

    .line 902
    :goto_0
    new-instance p2, Lcom/ibm/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;-><init>(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/text/RelativeDateTimeFormatter$1;)V

    return-object p2
.end method

.method public formatToValue(Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;
    .locals 2

    .line 822
    invoke-direct {p0}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->checkNoAdjustForContext()V

    .line 823
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->formatAbsoluteImpl(Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 827
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>()V

    .line 828
    sget-object v1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;->LITERAL:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;

    invoke-virtual {v0, p1, v1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;)I

    .line 829
    new-instance p1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;

    invoke-direct {p1, v0, p2}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$FormattedRelativeDateTime;-><init>(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/text/RelativeDateTimeFormatter$1;)V

    return-object p1
.end method

.method public getCapitalizationContext()Lcom/ibm/icu/text/DisplayContext;
    .locals 1

    .line 1029
    iget-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->capitalizationContext:Lcom/ibm/icu/text/DisplayContext;

    return-object v0
.end method

.method public getFormatStyle()Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;
    .locals 1

    .line 1038
    iget-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->style:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    return-object v0
.end method

.method public getNumberFormat()Lcom/ibm/icu/text/NumberFormat;
    .locals 2

    .line 1018
    iget-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    monitor-enter v0

    .line 1019
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/NumberFormat;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1020
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
