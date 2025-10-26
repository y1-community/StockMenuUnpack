.class final Lcom/ibm/icu/text/DateIntervalInfo$DateIntervalSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "DateIntervalInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DateIntervalInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DateIntervalSink"
.end annotation


# static fields
.field private static final ACCEPTED_PATTERN_LETTERS:Ljava/lang/String; = "GyMdahHmsS"

.field private static final DATE_INTERVAL_PATH_PREFIX:Ljava/lang/String;

.field private static final DATE_INTERVAL_PATH_SUFFIX:Ljava/lang/String;


# instance fields
.field dateIntervalInfo:Lcom/ibm/icu/text/DateIntervalInfo;

.field nextCalendarType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/LOCALE/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-static {}, Lcom/ibm/icu/text/DateIntervalInfo;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/DateIntervalInfo$DateIntervalSink;->DATE_INTERVAL_PATH_PREFIX:Ljava/lang/String;

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-static {}, Lcom/ibm/icu/text/DateIntervalInfo;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/DateIntervalInfo$DateIntervalSink;->DATE_INTERVAL_PATH_SUFFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/text/DateIntervalInfo;)V
    .locals 0

    .line 439
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    .line 440
    iput-object p1, p0, Lcom/ibm/icu/text/DateIntervalInfo$DateIntervalSink;->dateIntervalInfo:Lcom/ibm/icu/text/DateIntervalInfo;

    return-void
.end method

.method private getCalendarTypeFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 516
    sget-object v0, Lcom/ibm/icu/text/DateIntervalInfo$DateIntervalSink;->DATE_INTERVAL_PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ibm/icu/text/DateIntervalInfo$DateIntervalSink;->DATE_INTERVAL_PATH_SUFFIX:Ljava/lang/String;

    .line 517
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 519
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v2, v1

    .line 518
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 521
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed \'intervalFormat\' alias path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setIntervalPatternIfAbsent(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalInfo$DateIntervalSink;->dateIntervalInfo:Lcom/ibm/icu/text/DateIntervalInfo;

    .line 562
    invoke-static {v0}, Lcom/ibm/icu/text/DateIntervalInfo;->access$200(Lcom/ibm/icu/text/DateIntervalInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 563
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalInfo$DateIntervalSink;->dateIntervalInfo:Lcom/ibm/icu/text/DateIntervalInfo;

    .line 566
    invoke-virtual {p3}, Lcom/ibm/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object p3

    .line 565
    invoke-static {v0, p1, p2, p3}, Lcom/ibm/icu/text/DateIntervalInfo;->access$300(Lcom/ibm/icu/text/DateIntervalInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    :cond_1
    return-void
.end method

.method private validateAndProcessPatternLetter(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    .line 531
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 534
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const-string v3, "GyMdahHmsS"

    .line 535
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/16 v4, 0x42

    if-gez v3, :cond_1

    if-eq v2, v4, :cond_1

    return-object v1

    .line 540
    :cond_1
    sget-object v1, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v2, v0, :cond_2

    .line 541
    sget-object p1, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v0, 0xa

    aget-object p1, p1, v0

    :cond_2
    if-ne v2, v4, :cond_3

    .line 547
    sget-object p1, Lcom/ibm/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v0, 0x9

    aget-object p1, p1, v0

    :cond_3
    return-object p1
.end method


# virtual methods
.method public getAndResetNextCalendarType()Ljava/lang/String;
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalInfo$DateIntervalSink;->nextCalendarType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 500
    iput-object v1, p0, Lcom/ibm/icu/text/DateIntervalInfo$DateIntervalSink;->nextCalendarType:Ljava/lang/String;

    return-object v0
.end method

.method public processSkeletonTable(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 4

    .line 475
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v1

    const/4 v2, 0x0

    .line 477
    :goto_0
    invoke-interface {v1, v2, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 478
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v3

    if-nez v3, :cond_0

    .line 480
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateIntervalInfo$DateIntervalSink;->validateAndProcessPatternLetter(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 485
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 488
    invoke-direct {p0, v0, v3, p2}, Lcom/ibm/icu/text/DateIntervalInfo$DateIntervalSink;->setIntervalPatternIfAbsent(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Value;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 4

    .line 446
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 447
    :goto_0
    invoke-interface {p3, v1, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 448
    invoke-static {}, Lcom/ibm/icu/text/DateIntervalInfo;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 453
    :cond_0
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 455
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getAliasString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateIntervalInfo$DateIntervalSink;->getCalendarTypeFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/DateIntervalInfo$DateIntervalSink;->nextCalendarType:Ljava/lang/String;

    goto :goto_3

    .line 458
    :cond_1
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 460
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object p3

    .line 461
    :goto_1
    invoke-interface {p3, v0, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 462
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 464
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/DateIntervalInfo$DateIntervalSink;->processSkeletonTable(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method
