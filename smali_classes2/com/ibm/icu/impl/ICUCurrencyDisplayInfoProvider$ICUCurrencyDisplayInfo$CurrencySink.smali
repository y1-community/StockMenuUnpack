.class final Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "ICUCurrencyDisplayInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CurrencySink"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final entrypointTable:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

.field formattingData:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

.field final noRoot:Z

.field parsingData:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

.field pluralsData:[Ljava/lang/String;

.field spacingInfo:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;

.field unitPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field variantSymbol:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 350
    const-class v0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider;

    return-void
.end method

.method constructor <init>(ZLcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;)V
    .locals 1

    .line 374
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    const/4 v0, 0x0

    .line 355
    iput-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->formattingData:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    .line 356
    iput-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->pluralsData:[Ljava/lang/String;

    .line 357
    iput-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->parsingData:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    .line 358
    iput-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->unitPatterns:Ljava/util/Map;

    .line 359
    iput-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->spacingInfo:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;

    .line 360
    iput-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->variantSymbol:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;

    .line 375
    iput-boolean p1, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->noRoot:Z

    .line 376
    iput-object p2, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->entrypointTable:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    return-void
.end method

.method private consumeTopTable(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 3

    .line 413
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    .line 414
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Currencies"

    .line 415
    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeCurrenciesTable(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    goto :goto_1

    :cond_0
    const-string v2, "Currencies%variant"

    .line 417
    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 418
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeCurrenciesVariantTable(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    goto :goto_1

    :cond_1
    const-string v2, "CurrencyPlurals"

    .line 419
    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 420
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeCurrencyPluralsTable(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method consumeCurrenciesEntry(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 5

    .line 466
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object p1

    .line 467
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 470
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getArray()Lcom/ibm/icu/impl/UResource$Array;

    move-result-object v0

    .line 472
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->formattingData:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    iget-object v1, v1, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->symbol:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 473
    invoke-interface {v0, v2, p2}, Lcom/ibm/icu/impl/UResource$Array;->getValue(ILcom/ibm/icu/impl/UResource$Value;)Z

    .line 474
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->formattingData:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->symbol:Ljava/lang/String;

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->formattingData:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    iget-object v1, v1, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->displayName:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 477
    invoke-interface {v0, v3, p2}, Lcom/ibm/icu/impl/UResource$Array;->getValue(ILcom/ibm/icu/impl/UResource$Value;)Z

    .line 478
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->formattingData:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->displayName:Ljava/lang/String;

    .line 483
    :cond_1
    invoke-interface {v0}, Lcom/ibm/icu/impl/UResource$Array;->getSize()I

    move-result v1

    const/4 v4, 0x2

    if-le v1, v4, :cond_2

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->formattingData:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    iget-object v1, v1, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->formatInfo:Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;

    if-nez v1, :cond_2

    .line 484
    invoke-interface {v0, v4, p2}, Lcom/ibm/icu/impl/UResource$Array;->getValue(ILcom/ibm/icu/impl/UResource$Value;)Z

    .line 485
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getArray()Lcom/ibm/icu/impl/UResource$Array;

    move-result-object v0

    .line 486
    invoke-interface {v0, v2, p2}, Lcom/ibm/icu/impl/UResource$Array;->getValue(ILcom/ibm/icu/impl/UResource$Value;)Z

    .line 487
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-interface {v0, v3, p2}, Lcom/ibm/icu/impl/UResource$Array;->getValue(ILcom/ibm/icu/impl/UResource$Value;)Z

    .line 489
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v2

    .line 490
    invoke-interface {v0, v4, p2}, Lcom/ibm/icu/impl/UResource$Array;->getValue(ILcom/ibm/icu/impl/UResource$Value;)Z

    .line 491
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object p2

    .line 492
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->formattingData:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    new-instance v3, Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;

    invoke-direct {v3, p1, v1, v2, p2}, Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->formatInfo:Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;

    :cond_2
    return-void

    .line 468
    :cond_3
    new-instance p2, Lcom/ibm/icu/util/ICUException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected data type in Currencies table for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method consumeCurrenciesTable(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 7

    .line 448
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 449
    :goto_0
    invoke-interface {v0, v2, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 450
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v3

    .line 451
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 454
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getArray()Lcom/ibm/icu/impl/UResource$Array;

    move-result-object v4

    .line 456
    iget-object v5, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->parsingData:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    iget-object v5, v5, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;->symbolToIsoCode:Ljava/util/Map;

    invoke-interface {v5, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-interface {v4, v1, p2}, Lcom/ibm/icu/impl/UResource$Array;->getValue(ILcom/ibm/icu/impl/UResource$Value;)Z

    .line 458
    iget-object v5, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->parsingData:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    iget-object v5, v5, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;->symbolToIsoCode:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    .line 459
    invoke-interface {v4, v5, p2}, Lcom/ibm/icu/impl/UResource$Array;->getValue(ILcom/ibm/icu/impl/UResource$Value;)Z

    .line 460
    iget-object v4, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->parsingData:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    iget-object v4, v4, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;->nameToIsoCode:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 452
    :cond_0
    new-instance p1, Lcom/ibm/icu/util/ICUException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected data type in Currencies table for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method consumeCurrenciesVariantEntry(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 0

    .line 507
    iget-object p1, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->variantSymbol:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;

    iget-object p1, p1, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;->symbol:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 508
    iget-object p1, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->variantSymbol:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;->symbol:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method consumeCurrenciesVariantTable(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 5

    .line 520
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    .line 521
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    .line 523
    iget-object v3, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->parsingData:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    iget-object v3, v3, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;->symbolToIsoCode:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method consumeCurrencyPluralsEntry(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 5

    .line 556
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    .line 557
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 558
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ibm/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 563
    iget-object v3, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->pluralsData:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_0

    .line 564
    iget-object v3, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->pluralsData:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 560
    :cond_1
    new-instance p2, Lcom/ibm/icu/util/ICUException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not make StandardPlural from keyword "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    return-void
.end method

.method consumeCurrencyPluralsTable(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 8

    .line 539
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 540
    :goto_0
    invoke-interface {v0, v2, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 541
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v3

    .line 542
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v4

    const/4 v5, 0x0

    .line 543
    :goto_1
    invoke-interface {v4, v5, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 544
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ibm/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 549
    iget-object v6, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->parsingData:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    iget-object v6, v6, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;->nameToIsoCode:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 546
    :cond_0
    new-instance p2, Lcom/ibm/icu/util/ICUException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not make StandardPlural from keyword "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method consumeCurrencySpacingTable(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 9

    .line 585
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 586
    :goto_0
    invoke-interface {v0, v2, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "beforeCurrency"

    .line 588
    invoke-virtual {p1, v3}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 589
    sget-object v3, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->BEFORE:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    .line 590
    iget-object v5, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->spacingInfo:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;

    iput-boolean v4, v5, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->hasBeforeCurrency:Z

    goto :goto_1

    :cond_0
    const-string v3, "afterCurrency"

    .line 591
    invoke-virtual {p1, v3}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 592
    sget-object v3, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->AFTER:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    .line 593
    iget-object v5, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->spacingInfo:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;

    iput-boolean v4, v5, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->hasAfterCurrency:Z

    .line 598
    :goto_1
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v4

    const/4 v5, 0x0

    .line 599
    :goto_2
    invoke-interface {v4, v5, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "currencyMatch"

    .line 601
    invoke-virtual {p1, v6}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 602
    sget-object v6, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->CURRENCY_MATCH:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    goto :goto_3

    :cond_1
    const-string v6, "surroundingMatch"

    .line 603
    invoke-virtual {p1, v6}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 604
    sget-object v6, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->SURROUNDING_MATCH:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    goto :goto_3

    :cond_2
    const-string v6, "insertBetween"

    .line 605
    invoke-virtual {p1, v6}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 606
    sget-object v6, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->INSERT_BETWEEN:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    .line 611
    :goto_3
    iget-object v7, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->spacingInfo:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v3, v6, v8}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;->setSymbolIfNull(Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method consumeCurrencyUnitPatternsTable(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 5

    .line 624
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    .line 625
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 626
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    .line 627
    iget-object v3, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->unitPatterns:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 628
    iget-object v3, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->unitPatterns:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 1

    .line 385
    iget-boolean v0, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->noRoot:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    return-void

    .line 390
    :cond_0
    sget-object p3, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$1;->$SwitchMap$com$ibm$icu$impl$ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable:[I

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->entrypointTable:Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->ordinal()I

    move-result v0

    aget p3, p3, v0

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 407
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeCurrencyUnitPatternsTable(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    goto :goto_0

    .line 404
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeCurrencySpacingTable(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    goto :goto_0

    .line 401
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeCurrenciesVariantEntry(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    goto :goto_0

    .line 398
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeCurrencyPluralsEntry(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    goto :goto_0

    .line 395
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeCurrenciesEntry(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    goto :goto_0

    .line 392
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeTopTable(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
