.class Lcom/ibm/icu/text/RelativeDateTimeFormatter$Loader;
.super Ljava/lang/Object;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# instance fields
.field private final ulocale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .line 1501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1502
    iput-object p1, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Loader;->ulocale:Lcom/ibm/icu/util/ULocale;

    return-void
.end method

.method private getDateTimePattern(Lcom/ibm/icu/impl/ICUResourceBundle;)Ljava/lang/String;
    .locals 4

    const-string v0, "calendar/default"

    .line 1506
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gregorian"

    if-eqz v0, :cond_0

    const-string v2, ""

    .line 1507
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 1510
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calendar/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/DateTimePatterns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1511
    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1512
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "calendar/gregorian/DateTimePatterns"

    .line 1514
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_5

    .line 1516
    invoke-virtual {v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getSize()I

    move-result p1

    const/16 v0, 0x9

    if-ge p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x8

    .line 1520
    invoke-virtual {v2, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getType()I

    move-result v0

    if-ne v0, p1, :cond_4

    .line 1522
    invoke-virtual {v2, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1524
    :cond_4
    invoke-virtual {v2, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    const-string p1, "{1} {0}"

    return-object p1
.end method


# virtual methods
.method public load()Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;
    .locals 7

    .line 1531
    new-instance v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;

    invoke-direct {v0}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;-><init>()V

    .line 1533
    iget-object v1, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Loader;->ulocale:Lcom/ibm/icu/util/ULocale;

    const-string v2, "com/ibm/icu/impl/data/icudt69b"

    .line 1534
    invoke-static {v2, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v2, "fields"

    .line 1535
    invoke-virtual {v1, v2, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 1538
    invoke-static {}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->values()[Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 1539
    invoke-static {}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->access$300()[Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v6

    invoke-virtual {v5}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v5

    aget-object v5, v6, v5

    if-eqz v5, :cond_1

    .line 1542
    invoke-static {}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->access$300()[Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v6

    invoke-virtual {v5}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v5

    aget-object v5, v6, v5

    if-eqz v5, :cond_1

    .line 1545
    invoke-static {}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->access$300()[Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v6

    invoke-virtual {v5}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v5

    aget-object v5, v6, v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 1546
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Style fallback too deep"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1552
    :cond_2
    new-instance v2, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    iget-object v3, v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    iget-object v0, v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleRelUnitPatterns:Ljava/util/EnumMap;

    .line 1554
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Loader;->getDateTimePattern(Lcom/ibm/icu/impl/ICUResourceBundle;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v0, v1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap;Ljava/lang/String;)V

    return-object v2
.end method
