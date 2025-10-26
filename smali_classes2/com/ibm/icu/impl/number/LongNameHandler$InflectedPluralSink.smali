.class final Lcom/ibm/icu/impl/number/LongNameHandler$InflectedPluralSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "LongNameHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/LongNameHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InflectedPluralSink"
.end annotation


# instance fields
.field caseVariant:Ljava/lang/String;

.field gender:Ljava/lang/String;

.field outArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/ibm/icu/impl/number/LongNameHandler$InflectedPluralSink;->gender:Ljava/lang/String;

    .line 178
    iput-object p2, p0, Lcom/ibm/icu/impl/number/LongNameHandler$InflectedPluralSink;->caseVariant:Ljava/lang/String;

    .line 179
    iput-object p3, p0, Lcom/ibm/icu/impl/number/LongNameHandler$InflectedPluralSink;->outArray:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 180
    :goto_0
    sget p2, Lcom/ibm/icu/impl/number/LongNameHandler;->ARRAY_LENGTH:I

    if-ge p1, p2, :cond_0

    const/4 p2, 0x0

    .line 181
    aput-object p2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadForCase(Lcom/ibm/icu/impl/UResource$Table;Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Value;)Z
    .locals 0

    .line 253
    invoke-interface {p1, p2, p3}, Lcom/ibm/icu/impl/UResource$Table;->findValue(Ljava/lang/CharSequence;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private loadForGender(Lcom/ibm/icu/impl/UResource$Table;Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Value;)Z
    .locals 3

    .line 230
    invoke-interface {p1, p2, p3}, Lcom/ibm/icu/impl/UResource$Table;->findValue(Ljava/lang/CharSequence;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 233
    :cond_0
    invoke-virtual {p3}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object p1

    .line 234
    iget-object v0, p0, Lcom/ibm/icu/impl/number/LongNameHandler$InflectedPluralSink;->caseVariant:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/ibm/icu/impl/number/LongNameHandler$InflectedPluralSink;->caseVariant:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p3}, Lcom/ibm/icu/impl/number/LongNameHandler$InflectedPluralSink;->loadForCase(Lcom/ibm/icu/impl/UResource$Table;Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/LongNameHandler$InflectedPluralSink;->caseVariant:Ljava/lang/String;

    const-string v2, "nominative"

    if-eq v0, v2, :cond_2

    .line 239
    invoke-direct {p0, p1, v2, p3}, Lcom/ibm/icu/impl/number/LongNameHandler$InflectedPluralSink;->loadForCase(Lcom/ibm/icu/impl/UResource$Table;Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "_"

    .line 244
    invoke-direct {p0, p1, v0, p3}, Lcom/ibm/icu/impl/number/LongNameHandler$InflectedPluralSink;->loadForCase(Lcom/ibm/icu/impl/UResource$Table;Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return p2
.end method

.method private loadForPluralForm(Lcom/ibm/icu/impl/UResource$Table;Lcom/ibm/icu/impl/UResource$Value;)Z
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/ibm/icu/impl/number/LongNameHandler$InflectedPluralSink;->gender:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/ibm/icu/impl/number/LongNameHandler$InflectedPluralSink;->gender:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/ibm/icu/impl/number/LongNameHandler$InflectedPluralSink;->loadForGender(Lcom/ibm/icu/impl/UResource$Table;Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/LongNameHandler$InflectedPluralSink;->gender:Ljava/lang/String;

    const-string v2, "neuter"

    if-eq v0, v2, :cond_1

    .line 213
    invoke-direct {p0, p1, v2, p2}, Lcom/ibm/icu/impl/number/LongNameHandler$InflectedPluralSink;->loadForGender(Lcom/ibm/icu/impl/UResource$Table;Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "_"

    .line 218
    invoke-direct {p0, p1, v0, p2}, Lcom/ibm/icu/impl/number/LongNameHandler$InflectedPluralSink;->loadForGender(Lcom/ibm/icu/impl/UResource$Table;Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 4

    .line 188
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    .line 189
    :goto_0
    invoke-interface {p3, v0, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-static {v1}, Lcom/ibm/icu/impl/number/LongNameHandler;->access$100(Ljava/lang/String;)I

    move-result v1

    .line 192
    iget-object v2, p0, Lcom/ibm/icu/impl/number/LongNameHandler$InflectedPluralSink;->outArray:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    goto :goto_1

    .line 196
    :cond_0
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v2

    .line 197
    invoke-direct {p0, v2, p2}, Lcom/ibm/icu/impl/number/LongNameHandler$InflectedPluralSink;->loadForPluralForm(Lcom/ibm/icu/impl/UResource$Table;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/ibm/icu/impl/number/LongNameHandler$InflectedPluralSink;->outArray:[Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
