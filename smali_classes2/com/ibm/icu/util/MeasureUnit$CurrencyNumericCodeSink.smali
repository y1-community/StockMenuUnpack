.class final Lcom/ibm/icu/util/MeasureUnit$CurrencyNumericCodeSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "MeasureUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/MeasureUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CurrencyNumericCodeSink"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 809
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/MeasureUnit$1;)V
    .locals 0

    .line 809
    invoke-direct {p0}, Lcom/ibm/icu/util/MeasureUnit$CurrencyNumericCodeSink;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 3

    .line 812
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    .line 813
    :goto_0
    invoke-interface {p3, v0, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 814
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "currency"

    invoke-static {v2, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
