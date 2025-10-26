.class public Lcom/ibm/icu/text/ChineseDateFormatSymbols;
.super Lcom/ibm/icu/text/DateFormatSymbols;
.source "ChineseDateFormatSymbols.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final serialVersionUID:J = 0x5ec14695eb6891faL


# instance fields
.field isLeapMonth:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/ChineseDateFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/Calendar;Ljava/util/Locale;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    const-class v0, Lcom/ibm/icu/util/ChineseCalendar;

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    const-class v0, Lcom/ibm/icu/util/ChineseCalendar;

    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method private initializeIsLeapMonth()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lcom/ibm/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    .line 132
    iget-object v3, p0, Lcom/ibm/icu/text/ChineseDateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ibm/icu/text/ChineseDateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object v1, v3, v1

    const-string v3, "{0}"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const/4 v1, 0x1

    aput-object v2, v0, v1

    return-void
.end method


# virtual methods
.method public getLeapMonth(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/ibm/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method initializeData(Lcom/ibm/icu/text/DateFormatSymbols;)V
    .locals 1

    .line 116
    invoke-super {p0, p1}, Lcom/ibm/icu/text/DateFormatSymbols;->initializeData(Lcom/ibm/icu/text/DateFormatSymbols;)V

    .line 117
    instance-of v0, p1, Lcom/ibm/icu/text/ChineseDateFormatSymbols;

    if-eqz v0, :cond_0

    .line 119
    check-cast p1, Lcom/ibm/icu/text/ChineseDateFormatSymbols;

    iget-object p1, p1, Lcom/ibm/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    iput-object p1, p0, Lcom/ibm/icu/text/ChineseDateFormatSymbols;->isLeapMonth:[Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/text/ChineseDateFormatSymbols;->initializeIsLeapMonth()V

    :goto_0
    return-void
.end method

.method protected initializeData(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/ibm/icu/text/DateFormatSymbols;->initializeData(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/ibm/icu/text/ChineseDateFormatSymbols;->initializeIsLeapMonth()V

    return-void
.end method
