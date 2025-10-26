.class public abstract Lcom/ibm/icu/number/NumberRangeFormatter;
.super Ljava/lang/Object;
.source "NumberRangeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/number/NumberRangeFormatter$SpanField;,
        Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityResult;,
        Lcom/ibm/icu/number/NumberRangeFormatter$RangeIdentityFallback;,
        Lcom/ibm/icu/number/NumberRangeFormatter$RangeCollapse;
    }
.end annotation


# static fields
.field private static final BASE:Lcom/ibm/icu/number/UnlocalizedNumberRangeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 196
    new-instance v0, Lcom/ibm/icu/number/UnlocalizedNumberRangeFormatter;

    invoke-direct {v0}, Lcom/ibm/icu/number/UnlocalizedNumberRangeFormatter;-><init>()V

    sput-object v0, Lcom/ibm/icu/number/NumberRangeFormatter;->BASE:Lcom/ibm/icu/number/UnlocalizedNumberRangeFormatter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static with()Lcom/ibm/icu/number/UnlocalizedNumberRangeFormatter;
    .locals 1

    .line 206
    sget-object v0, Lcom/ibm/icu/number/NumberRangeFormatter;->BASE:Lcom/ibm/icu/number/UnlocalizedNumberRangeFormatter;

    return-object v0
.end method

.method public static withLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/number/LocalizedNumberRangeFormatter;
    .locals 1

    .line 232
    sget-object v0, Lcom/ibm/icu/number/NumberRangeFormatter;->BASE:Lcom/ibm/icu/number/UnlocalizedNumberRangeFormatter;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/number/UnlocalizedNumberRangeFormatter;->locale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/number/LocalizedNumberRangeFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static withLocale(Ljava/util/Locale;)Lcom/ibm/icu/number/LocalizedNumberRangeFormatter;
    .locals 1

    .line 219
    sget-object v0, Lcom/ibm/icu/number/NumberRangeFormatter;->BASE:Lcom/ibm/icu/number/UnlocalizedNumberRangeFormatter;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/number/UnlocalizedNumberRangeFormatter;->locale(Ljava/util/Locale;)Lcom/ibm/icu/number/LocalizedNumberRangeFormatter;

    move-result-object p0

    return-object p0
.end method
