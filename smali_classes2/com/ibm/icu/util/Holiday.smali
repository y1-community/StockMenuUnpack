.class public abstract Lcom/ibm/icu/util/Holiday;
.super Ljava/lang/Object;
.source "Holiday.java"

# interfaces
.implements Lcom/ibm/icu/util/DateRule;


# static fields
.field private static noHolidays:[Lcom/ibm/icu/util/Holiday;


# instance fields
.field private name:Ljava/lang/String;

.field private rule:Lcom/ibm/icu/util/DateRule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/ibm/icu/util/Holiday;

    .line 205
    sput-object v0, Lcom/ibm/icu/util/Holiday;->noHolidays:[Lcom/ibm/icu/util/Holiday;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/ibm/icu/util/DateRule;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/ibm/icu/util/Holiday;->name:Ljava/lang/String;

    .line 136
    iput-object p2, p0, Lcom/ibm/icu/util/Holiday;->rule:Lcom/ibm/icu/util/DateRule;

    return-void
.end method

.method public static getHolidays()[Lcom/ibm/icu/util/Holiday;
    .locals 1

    .line 33
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/util/Holiday;->getHolidays(Lcom/ibm/icu/util/ULocale;)[Lcom/ibm/icu/util/Holiday;

    move-result-object v0

    return-object v0
.end method

.method public static getHolidays(Lcom/ibm/icu/util/ULocale;)[Lcom/ibm/icu/util/Holiday;
    .locals 2

    .line 49
    sget-object v0, Lcom/ibm/icu/util/Holiday;->noHolidays:[Lcom/ibm/icu/util/Holiday;

    :try_start_0
    const-string v1, "com.ibm.icu.impl.data.HolidayBundle"

    .line 52
    invoke-static {v1, p0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    const-string v1, "holidays"

    .line 54
    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/ibm/icu/util/Holiday;

    check-cast p0, [Lcom/ibm/icu/util/Holiday;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :catch_0
    return-object v0
.end method

.method public static getHolidays(Ljava/util/Locale;)[Lcom/ibm/icu/util/Holiday;
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/util/Holiday;->getHolidays(Lcom/ibm/icu/util/ULocale;)[Lcom/ibm/icu/util/Holiday;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public firstAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/ibm/icu/util/Holiday;->rule:Lcom/ibm/icu/util/DateRule;

    invoke-interface {v0, p1}, Lcom/ibm/icu/util/DateRule;->firstAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/ibm/icu/util/Holiday;->rule:Lcom/ibm/icu/util/DateRule;

    invoke-interface {v0, p1, p2}, Lcom/ibm/icu/util/DateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 145
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/Holiday;->getDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/ibm/icu/util/Holiday;->name:Ljava/lang/String;

    :try_start_0
    const-string v1, "com.ibm.icu.impl.data.HolidayBundle"

    .line 180
    invoke-static {v1, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    .line 181
    iget-object v1, p0, Lcom/ibm/icu/util/Holiday;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 161
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/Holiday;->getDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRule()Lcom/ibm/icu/util/DateRule;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/ibm/icu/util/Holiday;->rule:Lcom/ibm/icu/util/DateRule;

    return-object v0
.end method

.method public isBetween(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/ibm/icu/util/Holiday;->rule:Lcom/ibm/icu/util/DateRule;

    invoke-interface {v0, p1, p2}, Lcom/ibm/icu/util/DateRule;->isBetween(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method public isOn(Ljava/util/Date;)Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/ibm/icu/util/Holiday;->rule:Lcom/ibm/icu/util/DateRule;

    invoke-interface {v0, p1}, Lcom/ibm/icu/util/DateRule;->isOn(Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method public setRule(Lcom/ibm/icu/util/DateRule;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/ibm/icu/util/Holiday;->rule:Lcom/ibm/icu/util/DateRule;

    return-void
.end method
