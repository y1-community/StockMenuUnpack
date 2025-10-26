.class public Lcom/ibm/icu/impl/TimeZoneNamesFactoryImpl;
.super Lcom/ibm/icu/text/TimeZoneNames$Factory;
.source "TimeZoneNamesFactoryImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneNames$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimeZoneNames(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneNames;
    .locals 1

    .line 25
    new-instance v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/TimeZoneNamesImpl;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-object v0
.end method
