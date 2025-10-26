.class Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Lcom/ibm/icu/impl/TextTrieMap$ResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/Currency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CurrencyNameResultHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ibm/icu/impl/TextTrieMap$ResultHandler<",
        "Lcom/ibm/icu/util/Currency$CurrencyStringInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private bestCurrencyISOCode:Ljava/lang/String;

.field private bestMatchLength:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/Currency$1;)V
    .locals 0

    .line 850
    invoke-direct {p0}, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getBestCurrencyISOCode()Ljava/lang/String;
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;->bestCurrencyISOCode:Ljava/lang/String;

    return-object v0
.end method

.method public getBestMatchLength()I
    .locals 1

    .line 876
    iget v0, p0, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;->bestMatchLength:I

    return v0
.end method

.method public handlePrefixMatch(ILjava/util/Iterator;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator<",
            "Lcom/ibm/icu/util/Currency$CurrencyStringInfo;",
            ">;)Z"
        }
    .end annotation

    .line 862
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;

    invoke-virtual {p2}, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->getISOCode()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;->bestCurrencyISOCode:Ljava/lang/String;

    .line 866
    iput p1, p0, Lcom/ibm/icu/util/Currency$CurrencyNameResultHandler;->bestMatchLength:I

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
