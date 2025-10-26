.class Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$InfoCollector;
.super Ljava/lang/Object;
.source "ICUCurrencyMetaInfo.java"

# interfaces
.implements Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$Collector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUCurrencyMetaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InfoCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$Collector<",
        "Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$InfoCollector;->result:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$1;)V
    .locals 0

    .line 197
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$InfoCollector;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Ljava/lang/String;Ljava/lang/String;JJIZ)V
    .locals 12

    move-object v0, p0

    .line 204
    iget-object v1, v0, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$InfoCollector;->result:Ljava/util/List;

    new-instance v11, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyInfo;

    move-object v2, v11

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public collects()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyInfo;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$InfoCollector;->result:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
