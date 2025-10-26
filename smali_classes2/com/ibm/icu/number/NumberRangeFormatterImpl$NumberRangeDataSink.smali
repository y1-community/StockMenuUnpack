.class final Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "NumberRangeFormatterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/NumberRangeFormatterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NumberRangeDataSink"
.end annotation


# instance fields
.field approximatelyPattern:Ljava/lang/String;

.field rangePattern:Ljava/lang/String;

.field sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method private hasApproxData()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->approximatelyPattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasRangeData()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->rangePattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public fillInDefaults()V
    .locals 3

    .line 95
    invoke-direct {p0}, Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->hasRangeData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->sb:Ljava/lang/StringBuilder;

    const-string v1, "{0}\u2013{1}"

    const/4 v2, 0x2

    invoke-static {v1, v0, v2, v2}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->rangePattern:Ljava/lang/String;

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->hasApproxData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->sb:Ljava/lang/StringBuilder;

    const-string v1, "~{0}"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v2}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->approximatelyPattern:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public isComplete()Z
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->hasRangeData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->hasApproxData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 4

    .line 69
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    .line 70
    :goto_0
    invoke-interface {p3, v0, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "range"

    .line 71
    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->hasRangeData()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v1

    .line 73
    iget-object v2, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->sb:Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v3}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->rangePattern:Ljava/lang/String;

    :cond_0
    const-string v1, "approximately"

    .line 75
    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->hasApproxData()Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->sb:Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v3}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/number/NumberRangeFormatterImpl$NumberRangeDataSink;->approximatelyPattern:Ljava/lang/String;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
