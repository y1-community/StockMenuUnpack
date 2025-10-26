.class public Lcom/ibm/icu/text/NumberFormat$Field;
.super Ljava/text/Format$Field;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/NumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final COMPACT:Lcom/ibm/icu/text/NumberFormat$Field;

.field public static final CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

.field public static final DECIMAL_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

.field public static final EXPONENT:Lcom/ibm/icu/text/NumberFormat$Field;

.field public static final EXPONENT_SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

.field public static final EXPONENT_SYMBOL:Lcom/ibm/icu/text/NumberFormat$Field;

.field public static final FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

.field public static final GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

.field public static final INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

.field public static final MEASURE_UNIT:Lcom/ibm/icu/text/NumberFormat$Field;

.field public static final PERCENT:Lcom/ibm/icu/text/NumberFormat$Field;

.field public static final PERMILLE:Lcom/ibm/icu/text/NumberFormat$Field;

.field public static final SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

.field static final serialVersionUID:J = -0x3ead070c1cf65f72L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1911
    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v1, "sign"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 1916
    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v1, "integer"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 1921
    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v1, "fraction"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 1926
    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v1, "exponent"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 1931
    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v1, "exponent sign"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 1936
    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v1, "exponent symbol"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 1941
    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v1, "decimal separator"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 1945
    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v1, "grouping separator"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 1950
    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v1, "percent"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->PERCENT:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 1955
    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v1, "per mille"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->PERMILLE:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 1960
    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v1, "currency"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 1965
    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v1, "measure unit"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->MEASURE_UNIT:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 1970
    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v1, "compact"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->COMPACT:Lcom/ibm/icu/text/NumberFormat$Field;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1978
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1988
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 1990
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 1992
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 1994
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    .line 1996
    :cond_3
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v1

    .line 1998
    :cond_4
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v1

    .line 2000
    :cond_5
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object v1

    .line 2002
    :cond_6
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object v1

    .line 2004
    :cond_7
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->PERCENT:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-object v1

    .line 2006
    :cond_8
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->PERMILLE:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object v1

    .line 2008
    :cond_9
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-object v1

    .line 2010
    :cond_a
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->MEASURE_UNIT:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object v1

    .line 2012
    :cond_b
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->COMPACT:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object v1

    .line 2015
    :cond_c
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "An invalid object."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
