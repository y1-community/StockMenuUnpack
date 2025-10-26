.class Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;
.super Ljava/lang/Object;
.source "ICUCurrencyDisplayInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VariantSymbol"
.end annotation


# instance fields
.field final isoCode:Ljava/lang/String;

.field symbol:Ljava/lang/String;

.field final variant:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;->symbol:Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;->isoCode:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;->variant:Ljava/lang/String;

    return-void
.end method
