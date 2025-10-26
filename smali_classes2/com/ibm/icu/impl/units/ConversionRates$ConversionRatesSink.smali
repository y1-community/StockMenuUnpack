.class public Lcom/ibm/icu/impl/units/ConversionRates$ConversionRatesSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "ConversionRates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/units/ConversionRates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversionRatesSink"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mapToConversionRate:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/units/ConversionRates$ConversionRateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 138
    const-class v0, Lcom/ibm/icu/impl/units/ConversionRates;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/units/ConversionRates$ConversionRatesSink;->mapToConversionRate:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getMapToConversionRate()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/units/ConversionRates$ConversionRateInfo;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/ibm/icu/impl/units/ConversionRates$ConversionRatesSink;->mapToConversionRate:Ljava/util/HashMap;

    return-object v0
.end method

.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 12

    .line 148
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 149
    :goto_0
    invoke-interface {p3, v1, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 152
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "0"

    move-object v6, v5

    const/4 v7, 0x0

    move-object v5, v4

    .line 158
    :goto_1
    invoke-interface {v3, v7, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 162
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v8

    .line 163
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "target"

    .line 164
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v4, v9

    goto :goto_2

    :cond_0
    const-string v10, "factor"

    .line 166
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v5, v9

    goto :goto_2

    :cond_1
    const-string v10, "offset"

    .line 168
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v6, v9

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 179
    :cond_3
    iget-object v3, p0, Lcom/ibm/icu/impl/units/ConversionRates$ConversionRatesSink;->mapToConversionRate:Ljava/util/HashMap;

    new-instance v7, Lcom/ibm/icu/impl/units/ConversionRates$ConversionRateInfo;

    invoke-direct {v7, v2, v4, v5, v6}, Lcom/ibm/icu/impl/units/ConversionRates$ConversionRateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
