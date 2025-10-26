.class public Lcom/ibm/icu/text/ChineseDateFormat;
.super Lcom/ibm/icu/text/SimpleDateFormat;
.source "ChineseDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/ChineseDateFormat$Field;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final serialVersionUID:J = -0x3ffb141bc87c5a3bL


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0, p2}, Lcom/ibm/icu/text/ChineseDateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    new-instance v2, Lcom/ibm/icu/text/ChineseDateFormatSymbols;

    invoke-direct {v2, p3}, Lcom/ibm/icu/text/ChineseDateFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    new-instance v3, Lcom/ibm/icu/util/ChineseCalendar;

    .line 92
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Lcom/ibm/icu/util/ChineseCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v6, p2

    .line 91
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DateFormatSymbols;Lcom/ibm/icu/util/Calendar;Lcom/ibm/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/ChineseDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method


# virtual methods
.method protected patternCharToDateFormatField(C)Lcom/ibm/icu/text/DateFormat$Field;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    invoke-super {p0, p1}, Lcom/ibm/icu/text/SimpleDateFormat;->patternCharToDateFormatField(C)Lcom/ibm/icu/text/DateFormat$Field;

    move-result-object p1

    return-object p1
.end method

.method protected subFormat(Ljava/lang/StringBuffer;CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;CLcom/ibm/icu/util/Calendar;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    invoke-super/range {p0 .. p9}, Lcom/ibm/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILcom/ibm/icu/text/DisplayContext;Ljava/text/FieldPosition;CLcom/ibm/icu/util/Calendar;)V

    return-void
.end method

.method protected subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    invoke-super/range {p0 .. p8}, Lcom/ibm/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLcom/ibm/icu/util/Calendar;)I

    move-result p1

    return p1
.end method
