.class final Lcom/ibm/icu/impl/ICUResourceBundle$AvailableLocalesSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AvailableLocalesSink"
.end annotation


# instance fields
.field output:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/ibm/icu/util/ULocale$AvailableType;",
            "[",
            "Lcom/ibm/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/EnumMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lcom/ibm/icu/util/ULocale$AvailableType;",
            "[",
            "Lcom/ibm/icu/util/ULocale;",
            ">;)V"
        }
    .end annotation

    .line 613
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    .line 614
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailableLocalesSink;->output:Ljava/util/EnumMap;

    return-void
.end method


# virtual methods
.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 8

    .line 619
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 620
    :goto_0
    invoke-interface {p3, v1, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "InstalledLocales"

    .line 622
    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 623
    sget-object v2, Lcom/ibm/icu/util/ULocale$AvailableType;->DEFAULT:Lcom/ibm/icu/util/ULocale$AvailableType;

    goto :goto_1

    :cond_0
    const-string v2, "AliasLocales"

    .line 624
    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 625
    sget-object v2, Lcom/ibm/icu/util/ULocale$AvailableType;->ONLY_LEGACY_ALIASES:Lcom/ibm/icu/util/ULocale$AvailableType;

    .line 630
    :goto_1
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v3

    .line 631
    invoke-interface {v3}, Lcom/ibm/icu/impl/UResource$Table;->getSize()I

    move-result v4

    new-array v4, v4, [Lcom/ibm/icu/util/ULocale;

    const/4 v5, 0x0

    .line 632
    :goto_2
    invoke-interface {v3, v5, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 633
    new-instance v6, Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 635
    :cond_1
    iget-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailableLocalesSink;->output:Ljava/util/EnumMap;

    invoke-virtual {v3, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
