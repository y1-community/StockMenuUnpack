.class final Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "DateFormatSymbols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DateFormatSymbols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CalendarDataSink"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CALENDAR_ALIAS_PREFIX:Ljava/lang/String; = "/LOCALE/calendar/"


# instance fields
.field aliasPathPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aliasRelativePath:Ljava/lang/String;

.field arrays:Ljava/util/Map;
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

.field currentCalendarType:Ljava/lang/String;

.field maps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field nextCalendarType:Ljava/lang/String;

.field private resourcesToVisit:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1610
    const-class v0, Lcom/ibm/icu/text/DateFormatSymbols;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1630
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    .line 1613
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    .line 1614
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    .line 1615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    const/4 v0, 0x0

    .line 1618
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->currentCalendarType:Ljava/lang/String;

    .line 1619
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->nextCalendarType:Ljava/lang/String;

    return-void
.end method

.method private processAliasFromValue(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Value;)Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;
    .locals 2

    .line 1811
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 1812
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getAliasString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "/LOCALE/calendar/"

    .line 1813
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1814
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-le v0, v1, :cond_3

    const/16 v0, 0x2f

    .line 1815
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-le v0, v1, :cond_3

    .line 1817
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 1818
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->aliasRelativePath:Ljava/lang/String;

    .line 1820
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->currentCalendarType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->aliasRelativePath:Ljava/lang/String;

    .line 1821
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1823
    sget-object p1, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->SAME_CALENDAR:Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    return-object p1

    .line 1825
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->currentCalendarType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->aliasRelativePath:Ljava/lang/String;

    .line 1826
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "gregorian"

    .line 1828
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1829
    sget-object p1, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->GREGORIAN:Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    return-object p1

    .line 1830
    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->nextCalendarType:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1831
    :cond_2
    iput-object v1, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->nextCalendarType:Ljava/lang/String;

    .line 1832
    sget-object p1, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->DIFFERENT_CALENDAR:Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    return-object p1

    .line 1837
    :cond_3
    new-instance p1, Lcom/ibm/icu/util/ICUException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed \'calendar\' alias. Path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1839
    :cond_4
    sget-object p1, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->NONE:Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    return-object p1
.end method


# virtual methods
.method preEnumerate(Ljava/lang/String;)V
    .locals 0

    .line 1643
    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->currentCalendarType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1644
    iput-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->nextCalendarType:Ljava/lang/String;

    .line 1645
    iget-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected processResource(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 6

    .line 1744
    invoke-virtual {p3}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1748
    :goto_0
    invoke-interface {v0, v2, p2, p3}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "%variant"

    .line 1750
    invoke-virtual {p2, v3}, Lcom/ibm/icu/impl/UResource$Key;->endsWith(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    .line 1752
    :cond_0
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1755
    invoke-virtual {p3}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v4

    if-nez v4, :cond_2

    if-nez v2, :cond_1

    .line 1758
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1759
    iget-object v4, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    :cond_1
    invoke-virtual {p3}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1767
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cyclicNameSets"

    .line 1770
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "cyclicNameSets/years/format/abbreviated"

    .line 1771
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "cyclicNameSets/zodiacs/format/abbreviated"

    .line 1772
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "cyclicNameSets/dayParts/format/abbreviated"

    .line 1773
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 1778
    :cond_3
    iget-object v4, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    .line 1779
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 1781
    :cond_4
    invoke-direct {p0, v3, p3}, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->processAliasFromValue(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Value;)Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    move-result-object v4

    .line 1782
    sget-object v5, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->SAME_CALENDAR:Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    if-ne v4, v5, :cond_5

    .line 1783
    iget-object v4, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    iget-object v5, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->aliasRelativePath:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1784
    iget-object v4, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1790
    :cond_5
    invoke-virtual {p3}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_6

    .line 1792
    invoke-virtual {p3}, Lcom/ibm/icu/impl/UResource$Value;->getStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 1793
    iget-object v5, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1794
    :cond_6
    invoke-virtual {p3}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 1796
    invoke-virtual {p0, v3, p2, p3}, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->processResource(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 6

    const/4 p3, 0x0

    .line 1654
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1657
    :goto_0
    invoke-interface {v0, v2, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1658
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1661
    invoke-direct {p0, v3, p2}, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->processAliasFromValue(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Value;)Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    move-result-object v4

    .line 1662
    sget-object v5, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->GREGORIAN:Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    if-ne v4, v5, :cond_0

    goto/16 :goto_1

    .line 1666
    :cond_0
    sget-object v5, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->DIFFERENT_CALENDAR:Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    if-ne v4, v5, :cond_2

    if-nez p3, :cond_1

    .line 1670
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 1672
    :cond_1
    iget-object v3, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->aliasRelativePath:Ljava/lang/String;

    invoke-interface {p3, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1675
    :cond_2
    sget-object v5, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->SAME_CALENDAR:Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    if-ne v4, v5, :cond_3

    .line 1677
    iget-object v4, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1678
    iget-object v4, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    iget-object v5, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->aliasRelativePath:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1679
    iget-object v4, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1686
    :cond_3
    iget-object v4, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->resourcesToVisit:Ljava/util/Set;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->resourcesToVisit:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "AmPmMarkersAbbr"

    .line 1687
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const-string v4, "AmPmMarkers"

    .line 1690
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "%variant"

    .line 1691
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1692
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 1693
    iget-object v5, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const-string v4, "eras"

    .line 1695
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "dayNames"

    .line 1696
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "monthNames"

    .line 1697
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "quarters"

    .line 1698
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "dayPeriod"

    .line 1699
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "monthPatterns"

    .line 1700
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "cyclicNameSets"

    .line 1701
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1702
    :cond_6
    invoke-virtual {p0, v3, p1, p2}, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->processResource(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 1710
    :goto_2
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_c

    .line 1712
    iget-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1713
    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    .line 1714
    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    iget-object v4, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    add-int/lit8 v5, p1, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    const/4 v0, 0x1

    goto :goto_4

    .line 1716
    :cond_9
    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1717
    iget-object v2, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    iget-object v4, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    add-int/lit8 v5, p1, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_b

    .line 1721
    iget-object p2, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1722
    iget-object p2, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p2, 0x1

    goto :goto_2

    :cond_b
    add-int/lit8 p1, p1, 0x2

    goto :goto_2

    :cond_c
    if-eqz p2, :cond_d

    .line 1728
    iget-object p1, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_d
    if-eqz p3, :cond_e

    .line 1732
    iput-object p3, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->resourcesToVisit:Ljava/util/Set;

    :cond_e
    return-void
.end method

.method visitAllResources()V
    .locals 1

    const/4 v0, 0x0

    .line 1636
    iput-object v0, p0, Lcom/ibm/icu/text/DateFormatSymbols$CalendarDataSink;->resourcesToVisit:Ljava/util/Set;

    return-void
.end method
