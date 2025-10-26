.class public Lcom/ibm/icu/number/IntegerWidth;
.super Ljava/lang/Object;
.source "IntegerWidth.java"


# static fields
.field static final DEFAULT:Lcom/ibm/icu/number/IntegerWidth;


# instance fields
.field final maxInt:I

.field final minInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lcom/ibm/icu/number/IntegerWidth;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/number/IntegerWidth;-><init>(II)V

    sput-object v0, Lcom/ibm/icu/number/IntegerWidth;->DEFAULT:Lcom/ibm/icu/number/IntegerWidth;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/ibm/icu/number/IntegerWidth;->minInt:I

    .line 25
    iput p2, p0, Lcom/ibm/icu/number/IntegerWidth;->maxInt:I

    return-void
.end method

.method public static zeroFillTo(I)Lcom/ibm/icu/number/IntegerWidth;
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 44
    sget-object p0, Lcom/ibm/icu/number/IntegerWidth;->DEFAULT:Lcom/ibm/icu/number/IntegerWidth;

    return-object p0

    :cond_0
    if-ltz p0, :cond_1

    const/16 v0, 0x3e7

    if-gt p0, v0, :cond_1

    .line 46
    new-instance v0, Lcom/ibm/icu/number/IntegerWidth;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/number/IntegerWidth;-><init>(II)V

    return-object v0

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Integer digits must be between 0 and 999 (inclusive)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public truncateAt(I)Lcom/ibm/icu/number/IntegerWidth;
    .locals 3

    .line 68
    iget v0, p0, Lcom/ibm/icu/number/IntegerWidth;->maxInt:I

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0x3e7

    if-gt p1, v0, :cond_1

    .line 70
    iget v0, p0, Lcom/ibm/icu/number/IntegerWidth;->minInt:I

    if-lt p1, v0, :cond_1

    .line 71
    new-instance v0, Lcom/ibm/icu/number/IntegerWidth;

    iget v1, p0, Lcom/ibm/icu/number/IntegerWidth;->minInt:I

    invoke-direct {v0, v1, p1}, Lcom/ibm/icu/number/IntegerWidth;-><init>(II)V

    return-object v0

    .line 72
    :cond_1
    iget v0, p0, Lcom/ibm/icu/number/IntegerWidth;->minInt:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_2

    if-ne p1, v2, :cond_2

    .line 73
    sget-object p1, Lcom/ibm/icu/number/IntegerWidth;->DEFAULT:Lcom/ibm/icu/number/IntegerWidth;

    return-object p1

    :cond_2
    if-ne p1, v2, :cond_3

    .line 75
    new-instance p1, Lcom/ibm/icu/number/IntegerWidth;

    iget v0, p0, Lcom/ibm/icu/number/IntegerWidth;->minInt:I

    invoke-direct {p1, v0, v2}, Lcom/ibm/icu/number/IntegerWidth;-><init>(II)V

    return-object p1

    .line 77
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Integer digits must be between -1 and 999 (inclusive)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
