.class final Lcom/ibm/icu/impl/CurrencyData$1;
.super Ljava/lang/Object;
.source "CurrencyData.java"

# interfaces
.implements Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/CurrencyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance(Lcom/ibm/icu/util/ULocale;Z)Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;
    .locals 0

    .line 114
    invoke-static {p2}, Lcom/ibm/icu/impl/CurrencyData$DefaultInfo;->getWithFallback(Z)Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object p1

    return-object p1
.end method

.method public hasData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
