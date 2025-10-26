.class final Lcom/ibm/icu/util/MeasureUnit$MeasureUnitSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "MeasureUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/MeasureUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MeasureUnitSink"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 786
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/MeasureUnit$1;)V
    .locals 0

    .line 786
    invoke-direct {p0}, Lcom/ibm/icu/util/MeasureUnit$MeasureUnitSink;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 6

    .line 789
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 790
    :goto_0
    invoke-interface {p3, v1, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "compound"

    .line 792
    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "coordinate"

    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 796
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    .line 797
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v3

    const/4 v4, 0x0

    .line 798
    :goto_1
    invoke-interface {v3, v4, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 799
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v5

    .line 800
    invoke-static {v2, v5}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
