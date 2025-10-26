.class Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;
.super Ljava/lang/Object;
.source "LongNameHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/LongNameHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DerivedComponents"
.end annotation


# instance fields
.field private value0:Ljava/lang/String;

.field private value1:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "compound"

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    .line 540
    iput-object v1, p0, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;->value0:Ljava/lang/String;

    iput-object v1, p0, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;->value1:Ljava/lang/String;

    :try_start_0
    const-string v1, "com/ibm/icu/impl/data/icudt69b"

    const-string v2, "grammaticalFeatures"

    .line 496
    invoke-static {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v2, "grammaticalData"

    .line 498
    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v2, "derivations"

    .line 499
    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    .line 505
    :try_start_1
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "root"

    .line 507
    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    :goto_0
    const-string v1, "component"

    .line 510
    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 511
    invoke-virtual {p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 512
    invoke-virtual {p1, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    const/4 p2, 0x0

    .line 514
    invoke-virtual {p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 515
    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 516
    iput-object v1, p0, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;->value0:Ljava/lang/String;

    goto :goto_1

    .line 518
    :cond_0
    iput-object p2, p0, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;->value0:Ljava/lang/String;

    :goto_1
    const/4 p2, 0x1

    .line 521
    invoke-virtual {p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 522
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    .line 523
    iput-object v1, p0, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;->value1:Ljava/lang/String;

    goto :goto_2

    .line 525
    :cond_1
    iput-object p1, p0, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;->value1:Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_2
    return-void
.end method


# virtual methods
.method value0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;->value0:Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method value1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/ibm/icu/impl/number/LongNameHandler$DerivedComponents;->value1:Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method
