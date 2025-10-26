.class Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;
.super Ljava/lang/Object;
.source "ICUCurrencyDisplayInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FormattingData"
.end annotation


# instance fields
.field displayName:Ljava/lang/String;

.field formatInfo:Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;

.field final isoCode:Ljava/lang/String;

.field symbol:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->displayName:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->symbol:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->formatInfo:Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;

    .line 116
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->isoCode:Ljava/lang/String;

    return-void
.end method
