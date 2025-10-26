.class Lcom/ibm/icu/text/DateTimePatternGenerator$DayPeriodAllowedHoursSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DayPeriodAllowedHoursSink"
.end annotation


# instance fields
.field tempMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 437
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    .line 438
    iput-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DayPeriodAllowedHoursSink;->tempMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V
    .locals 0

    .line 434
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator$DayPeriodAllowedHoursSink;-><init>(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 8

    .line 443
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 444
    :goto_0
    invoke-interface {p3, v1, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 445
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    .line 446
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    const/4 v6, 0x0

    .line 449
    :goto_1
    invoke-interface {v3, v6, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "allowed"

    .line 450
    invoke-virtual {p1, v7}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 451
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getStringArrayOrStringAsArray()[Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_0
    const-string v7, "preferred"

    .line 452
    invoke-virtual {p1, v7}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 453
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    if-eqz v4, :cond_4

    .line 459
    array-length v6, v4

    if-lez v6, :cond_4

    .line 460
    array-length v6, v4

    add-int/2addr v6, v3

    new-array v6, v6, [Ljava/lang/String;

    if-eqz v5, :cond_3

    goto :goto_3

    .line 461
    :cond_3
    aget-object v5, v4, v0

    :goto_3
    aput-object v5, v6, v0

    .line 462
    array-length v5, v4

    invoke-static {v4, v0, v6, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_4
    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    if-eqz v5, :cond_5

    goto :goto_4

    .line 466
    :cond_5
    invoke-static {}, Lcom/ibm/icu/text/DateTimePatternGenerator;->access$800()[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v0

    :goto_4
    aput-object v5, v6, v0

    aget-object v4, v6, v0

    aput-object v4, v6, v3

    .line 469
    :goto_5
    iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DayPeriodAllowedHoursSink;->tempMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
