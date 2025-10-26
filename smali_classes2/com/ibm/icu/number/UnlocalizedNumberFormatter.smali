.class public Lcom/ibm/icu/number/UnlocalizedNumberFormatter;
.super Lcom/ibm/icu/number/NumberFormatterSettings;
.source "UnlocalizedNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/number/NumberFormatterSettings<",
        "Lcom/ibm/icu/number/UnlocalizedNumberFormatter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .line 22
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-direct {p0, v1, v2, v0}, Lcom/ibm/icu/number/NumberFormatterSettings;-><init>(Lcom/ibm/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/number/NumberFormatterSettings<",
            "*>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/number/NumberFormatterSettings;-><init>(Lcom/ibm/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberFormatterSettings;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/number/UnlocalizedNumberFormatter;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    move-result-object p1

    return-object p1
.end method

.method create(ILjava/lang/Object;)Lcom/ibm/icu/number/UnlocalizedNumberFormatter;
    .locals 1

    .line 64
    new-instance v0, Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    invoke-direct {v0, p0, p1, p2}, Lcom/ibm/icu/number/UnlocalizedNumberFormatter;-><init>(Lcom/ibm/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V

    return-object v0
.end method

.method public locale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/number/LocalizedNumberFormatter;
    .locals 2

    .line 59
    new-instance v0, Lcom/ibm/icu/number/LocalizedNumberFormatter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;-><init>(Lcom/ibm/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V

    return-object v0
.end method

.method public locale(Ljava/util/Locale;)Lcom/ibm/icu/number/LocalizedNumberFormatter;
    .locals 2

    .line 46
    new-instance v0, Lcom/ibm/icu/number/LocalizedNumberFormatter;

    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;-><init>(Lcom/ibm/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V

    return-object v0
.end method
