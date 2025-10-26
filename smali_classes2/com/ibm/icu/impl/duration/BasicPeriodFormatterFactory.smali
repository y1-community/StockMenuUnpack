.class public Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;
.super Ljava/lang/Object;
.source "BasicPeriodFormatterFactory.java"

# interfaces
.implements Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;
    }
.end annotation


# instance fields
.field private customizations:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

.field private customizationsInUse:Z

.field private data:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

.field private final ds:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;

.field private localeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->ds:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;

    .line 67
    new-instance p1, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    invoke-direct {p1}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    .line 68
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->localeName:Ljava/lang/String;

    return-void
.end method

.method public static getDefault()Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;
    .locals 1

    .line 78
    invoke-static {}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;->getInstance()Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterService;->newPeriodFormatterFactory()Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;

    return-object v0
.end method

.method private updateCustomizations()Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;
    .locals 1

    .line 204
    iget-boolean v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->customizationsInUse:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->copy()Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->customizationsInUse:Z

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    return-object v0
.end method


# virtual methods
.method public getCountVariant()I
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-byte v0, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B

    return v0
.end method

.method getData()Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->data:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->ds:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->localeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;->get(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->data:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->data:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    return-object v0
.end method

.method getData(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->ds:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/duration/impl/PeriodFormatterDataService;->get(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayLimit()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-boolean v0, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z

    return v0
.end method

.method public getDisplayPastFuture()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-boolean v0, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z

    return v0
.end method

.method public getFormatter()Lcom/ibm/icu/impl/duration/PeriodFormatter;
    .locals 4

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->customizationsInUse:Z

    .line 199
    new-instance v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;

    iget-object v1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->localeName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->getData()Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatter;-><init>(Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;Ljava/lang/String;Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;)V

    return-object v0
.end method

.method public getSeparatorVariant()I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-byte v0, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    return v0
.end method

.method public getUnitVariant()I
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->customizations:Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-byte v0, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B

    return v0
.end method

.method public setCountVariant(I)Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;
    .locals 1

    .line 183
    invoke-direct {p0}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->updateCustomizations()Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-result-object v0

    int-to-byte p1, p1

    iput-byte p1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B

    return-object p0
.end method

.method public setDisplayLimit(Z)Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->updateCustomizations()Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-result-object v0

    iput-boolean p1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z

    return-object p0
.end method

.method public setDisplayPastFuture(Z)Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;
    .locals 1

    .line 120
    invoke-direct {p0}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->updateCustomizations()Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-result-object v0

    iput-boolean p1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z

    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;
    .locals 1

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->data:Lcom/ibm/icu/impl/duration/impl/PeriodFormatterData;

    .line 87
    iput-object p1, p0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->localeName:Ljava/lang/String;

    return-object p0
.end method

.method public setSeparatorVariant(I)Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;
    .locals 1

    .line 141
    invoke-direct {p0}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->updateCustomizations()Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-result-object v0

    int-to-byte p1, p1

    iput-byte p1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    return-object p0
.end method

.method public setUnitVariant(I)Lcom/ibm/icu/impl/duration/PeriodFormatterFactory;
    .locals 1

    .line 162
    invoke-direct {p0}, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory;->updateCustomizations()Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    move-result-object v0

    int-to-byte p1, p1

    iput-byte p1, v0, Lcom/ibm/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B

    return-object p0
.end method
