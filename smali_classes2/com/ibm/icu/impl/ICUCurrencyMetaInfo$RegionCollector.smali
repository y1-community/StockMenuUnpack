.class Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$RegionCollector;
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
    name = "RegionCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$Collector<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final result:Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$UniqueList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$UniqueList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    invoke-static {}, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$UniqueList;->access$300()Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$UniqueList;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$RegionCollector;->result:Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$UniqueList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$1;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$RegionCollector;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Ljava/lang/String;Ljava/lang/String;JJIZ)V
    .locals 0

    .line 224
    iget-object p2, p0, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$RegionCollector;->result:Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$UniqueList;

    invoke-virtual {p2, p1}, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$UniqueList;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public collects()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$RegionCollector;->result:Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$UniqueList;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUCurrencyMetaInfo$UniqueList;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
