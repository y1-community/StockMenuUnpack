.class Lcom/ibm/icu/util/CurrencyServiceShim$CFService$1CurrencyFactory;
.super Lcom/ibm/icu/impl/ICULocaleService$ICUResourceBundleFactory;
.source "CurrencyServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/util/CurrencyServiceShim$CFService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CurrencyFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/util/CurrencyServiceShim$CFService;


# direct methods
.method constructor <init>(Lcom/ibm/icu/util/CurrencyServiceShim$CFService;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/ibm/icu/util/CurrencyServiceShim$CFService$1CurrencyFactory;->this$0:Lcom/ibm/icu/util/CurrencyServiceShim$CFService;

    invoke-direct {p0}, Lcom/ibm/icu/impl/ICULocaleService$ICUResourceBundleFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleCreate(Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-static {p1}, Lcom/ibm/icu/util/Currency;->createCurrency(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/Currency;

    move-result-object p1

    return-object p1
.end method
