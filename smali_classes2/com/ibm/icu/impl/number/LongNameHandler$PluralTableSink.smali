.class final Lcom/ibm/icu/impl/number/LongNameHandler$PluralTableSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "LongNameHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/LongNameHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PluralTableSink"
.end annotation


# instance fields
.field outArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 312
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    .line 313
    iput-object p1, p0, Lcom/ibm/icu/impl/number/LongNameHandler$PluralTableSink;->outArray:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 4

    .line 318
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    .line 319
    :goto_0
    invoke-interface {p3, v0, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 320
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "case"

    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 326
    :cond_0
    invoke-static {v1}, Lcom/ibm/icu/impl/number/LongNameHandler;->access$100(Ljava/lang/String;)I

    move-result v1

    .line 327
    iget-object v2, p0, Lcom/ibm/icu/impl/number/LongNameHandler$PluralTableSink;->outArray:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    goto :goto_1

    .line 331
    :cond_1
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v2

    .line 332
    iget-object v3, p0, Lcom/ibm/icu/impl/number/LongNameHandler$PluralTableSink;->outArray:[Ljava/lang/String;

    aput-object v2, v3, v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
