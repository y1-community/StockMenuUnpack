.class final Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RelDateTimeDataSink"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;
    }
.end annotation


# instance fields
.field pastFutureIndex:I

.field qualitativeUnitMap:Ljava/util/EnumMap;
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

.field sb:Ljava/lang/StringBuilder;

.field style:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

.field styleRelUnitPatterns:Ljava/util/EnumMap;
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

.field unit:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1494
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    .line 1273
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    .line 1275
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleRelUnitPatterns:Ljava/util/EnumMap;

    .line 1278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method private handleAlias(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 2

    .line 1447
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleFromKey(Lcom/ibm/icu/impl/UResource$Key;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object p3

    .line 1448
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->length()I

    move-result v0

    invoke-static {p3}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleSuffixLength(Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 1449
    invoke-virtual {p1, v1, v0}, Lcom/ibm/icu/impl/UResource$Key;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->access$200(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1453
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleFromAlias(Lcom/ibm/icu/impl/UResource$Value;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object p1

    if-eq p3, p1, :cond_2

    .line 1459
    invoke-static {}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->access$300()[Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object p2

    invoke-virtual {p3}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v0

    aget-object p2, p2, v0

    if-nez p2, :cond_0

    .line 1460
    invoke-static {}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->access$300()[Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object p2

    invoke-virtual {p3}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result p3

    aput-object p1, p2, p3

    goto :goto_0

    .line 1461
    :cond_0
    invoke-static {}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->access$300()[Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object p2

    invoke-virtual {p3}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v0

    aget-object p2, p2, v0

    if-ne p2, p1, :cond_1

    :goto_0
    return-void

    .line 1462
    :cond_1
    new-instance p2, Lcom/ibm/icu/util/ICUException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inconsistent style fallback for style "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1455
    :cond_2
    new-instance p1, Lcom/ibm/icu/util/ICUException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid style fallback from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to itself"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method private handlePlainDirection(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 3

    .line 1409
    iget-object p1, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->unit:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    iget-object p1, p1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->absUnit:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    if-nez p1, :cond_0

    return-void

    .line 1413
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    iget-object v1, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->style:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    .line 1414
    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    if-nez v0, :cond_1

    .line 1416
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 1417
    iget-object v1, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    iget-object v2, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->style:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v1, v2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EnumMap;

    if-nez v1, :cond_2

    .line 1421
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 1422
    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    :cond_2
    sget-object p1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    .line 1425
    sget-object p1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private styleFromAlias(Lcom/ibm/icu/impl/UResource$Value;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;
    .locals 1

    .line 1296
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Value;->getAliasString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "-short"

    .line 1297
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1298
    sget-object p1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    return-object p1

    :cond_0
    const-string v0, "-narrow"

    .line 1299
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1300
    sget-object p1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    return-object p1

    .line 1302
    :cond_1
    sget-object p1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->LONG:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    return-object p1
.end method

.method private styleFromKey(Lcom/ibm/icu/impl/UResource$Key;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;
    .locals 1

    const-string v0, "-short"

    .line 1286
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/UResource$Key;->endsWith(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    sget-object p1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    return-object p1

    :cond_0
    const-string v0, "-narrow"

    .line 1288
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/UResource$Key;->endsWith(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1289
    sget-object p1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    return-object p1

    .line 1291
    :cond_1
    sget-object p1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->LONG:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    return-object p1
.end method

.method private static styleSuffixLength(Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;)I
    .locals 1

    .line 1307
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$1;->$SwitchMap$com$ibm$icu$text$RelativeDateTimeFormatter$Style:[I

    invoke-virtual {p0}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    :cond_1
    const/4 p0, 0x6

    return p0
.end method


# virtual methods
.method public consumeTableRelative(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 7

    .line 1315
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    .line 1316
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1317
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v2

    if-nez v2, :cond_6

    .line 1318
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v2

    .line 1320
    iget-object v3, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    iget-object v4, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->style:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/EnumMap;

    .line 1322
    iget-object v4, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->unit:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    iget-object v4, v4, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->relUnit:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v5, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    if-ne v4, v5, :cond_1

    const-string v4, "0"

    .line 1323
    invoke-virtual {p1, v4}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1325
    sget-object v4, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/EnumMap;

    if-nez v4, :cond_0

    .line 1327
    new-instance v4, Ljava/util/EnumMap;

    const-class v5, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-direct {v4, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 1328
    sget-object v5, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v3, v5, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    :cond_0
    sget-object v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-virtual {v4, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    .line 1331
    sget-object v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-virtual {v4, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1336
    :cond_1
    invoke-static {p1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter;->access$100(Lcom/ibm/icu/impl/UResource$Key;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 1340
    :cond_2
    iget-object v4, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->unit:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    iget-object v4, v4, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->absUnit:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    .line 1346
    new-instance v3, Ljava/util/EnumMap;

    const-class v5, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-direct {v3, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 1347
    iget-object v5, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    iget-object v6, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->style:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v5, v6, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    :cond_4
    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/EnumMap;

    if-nez v5, :cond_5

    .line 1351
    new-instance v5, Ljava/util/EnumMap;

    const-class v6, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-direct {v5, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 1352
    invoke-virtual {v3, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    :cond_5
    invoke-virtual {v5, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    .line 1356
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public consumeTableRelativeTime(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 4

    .line 1364
    iget-object v0, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->unit:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    iget-object v0, v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->relUnit:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    if-nez v0, :cond_0

    return-void

    .line 1367
    :cond_0
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1368
    :goto_0
    invoke-interface {v0, v2, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "past"

    .line 1369
    invoke-virtual {p1, v3}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1370
    iput v1, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->pastFutureIndex:I

    goto :goto_1

    :cond_1
    const-string v3, "future"

    .line 1371
    invoke-virtual {p1, v3}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 1372
    iput v3, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->pastFutureIndex:I

    .line 1377
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->consumeTimeDetail(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public consumeTimeDetail(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 9

    .line 1382
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v0

    .line 1384
    iget-object v1, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleRelUnitPatterns:Ljava/util/EnumMap;

    iget-object v2, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->style:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EnumMap;

    if-nez v1, :cond_0

    .line 1386
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 1387
    iget-object v2, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleRelUnitPatterns:Ljava/util/EnumMap;

    iget-object v3, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->style:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v2, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->unit:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    iget-object v2, v2, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->relUnit:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 1391
    sget v2, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    const/4 v5, 0x2

    new-array v6, v5, [I

    aput v2, v6, v3

    aput v5, v6, v4

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    .line 1392
    iget-object v5, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->unit:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    iget-object v5, v5, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->relUnit:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    invoke-virtual {v1, v5, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v1, 0x0

    .line 1396
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1397
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v5

    if-nez v5, :cond_2

    .line 1398
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ibm/icu/impl/StandardPlural;->indexFromString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 1399
    iget v6, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->pastFutureIndex:I

    aget-object v7, v2, v6

    aget-object v7, v7, v5

    if-nez v7, :cond_2

    .line 1400
    aget-object v6, v2, v6

    .line 1402
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->sb:Ljava/lang/StringBuilder;

    .line 1401
    invoke-static {v7, v8, v4, v3}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public consumeTimeUnit(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 4

    .line 1431
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    .line 1432
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "dn"

    .line 1433
    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 1434
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->handlePlainDirection(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    .line 1436
    :cond_0
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const-string v2, "relative"

    .line 1437
    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1438
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->consumeTableRelative(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    goto :goto_1

    :cond_1
    const-string v2, "relativeTime"

    .line 1439
    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1440
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->consumeTableRelativeTime(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 6

    .line 1472
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 1476
    :cond_0
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1478
    :goto_0
    invoke-interface {v0, v3, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1479
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 1480
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->handleAlias(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V

    goto :goto_1

    .line 1483
    :cond_1
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleFromKey(Lcom/ibm/icu/impl/UResource$Key;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v4

    iput-object v4, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->style:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    .line 1484
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->length()I

    move-result v4

    iget-object v5, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->style:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;

    invoke-static {v5}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleSuffixLength(Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 1485
    invoke-virtual {p1, v2, v4}, Lcom/ibm/icu/impl/UResource$Key;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->access$200(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    move-result-object v4

    iput-object v4, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->unit:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    if-eqz v4, :cond_2

    .line 1488
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->consumeTimeUnit(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
