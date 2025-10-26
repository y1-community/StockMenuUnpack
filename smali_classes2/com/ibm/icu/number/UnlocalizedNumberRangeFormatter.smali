.class public Lcom/ibm/icu/number/UnlocalizedNumberRangeFormatter;
.super Lcom/ibm/icu/number/NumberRangeFormatterSettings;
.source "UnlocalizedNumberRangeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/number/NumberRangeFormatterSettings<",
        "Lcom/ibm/icu/number/UnlocalizedNumberRangeFormatter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, v0, v1, v0}, Lcom/ibm/icu/number/NumberRangeFormatterSettings;-><init>(Lcom/ibm/icu/number/NumberRangeFormatterSettings;ILjava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/number/NumberRangeFormatterSettings;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/number/NumberRangeFormatterSettings<",
            "*>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/number/NumberRangeFormatterSettings;-><init>(Lcom/ibm/icu/number/NumberRangeFormatterSettings;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberRangeFormatterSettings;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/number/UnlocalizedNumberRangeFormatter;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/UnlocalizedNumberRangeFormatter;

    move-result-object p1

    return-object p1
.end method

.method create(ILjava/lang/Object;)Lcom/ibm/icu/number/UnlocalizedNumberRangeFormatter;
    .locals 1

    .line 64
    new-instance v0, Lcom/ibm/icu/number/UnlocalizedNumberRangeFormatter;

    invoke-direct {v0, p0, p1, p2}, Lcom/ibm/icu/number/UnlocalizedNumberRangeFormatter;-><init>(Lcom/ibm/icu/number/NumberRangeFormatterSettings;ILjava/lang/Object;)V

    return-object v0
.end method

.method public locale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/number/LocalizedNumberRangeFormatter;
    .locals 2

    .line 59
    new-instance v0, Lcom/ibm/icu/number/LocalizedNumberRangeFormatter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/ibm/icu/number/LocalizedNumberRangeFormatter;-><init>(Lcom/ibm/icu/number/NumberRangeFormatterSettings;ILjava/lang/Object;)V

    return-object v0
.end method

.method public locale(Ljava/util/Locale;)Lcom/ibm/icu/number/LocalizedNumberRangeFormatter;
    .locals 2

    .line 46
    new-instance v0, Lcom/ibm/icu/number/LocalizedNumberRangeFormatter;

    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/ibm/icu/number/LocalizedNumberRangeFormatter;-><init>(Lcom/ibm/icu/number/NumberRangeFormatterSettings;ILjava/lang/Object;)V

    return-object v0
.end method
