.class Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DecimalFormatSymbols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheData"
.end annotation


# instance fields
.field final digits:[Ljava/lang/String;

.field final numberElements:[Ljava/lang/String;

.field final validLocale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/util/ULocale;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 2016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2017
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;->validLocale:Lcom/ibm/icu/util/ULocale;

    .line 2018
    iput-object p2, p0, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;->digits:[Ljava/lang/String;

    .line 2019
    iput-object p3, p0, Lcom/ibm/icu/text/DecimalFormatSymbols$CacheData;->numberElements:[Ljava/lang/String;

    return-void
.end method
