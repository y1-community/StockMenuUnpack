.class public Lcom/ibm/icu/impl/number/parse/RequireDecimalSeparatorValidator;
.super Lcom/ibm/icu/impl/number/parse/ValidationMatcher;
.source "RequireDecimalSeparatorValidator.java"


# static fields
.field private static final A:Lcom/ibm/icu/impl/number/parse/RequireDecimalSeparatorValidator;

.field private static final B:Lcom/ibm/icu/impl/number/parse/RequireDecimalSeparatorValidator;


# instance fields
.field private final patternHasDecimalSeparator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lcom/ibm/icu/impl/number/parse/RequireDecimalSeparatorValidator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/number/parse/RequireDecimalSeparatorValidator;-><init>(Z)V

    sput-object v0, Lcom/ibm/icu/impl/number/parse/RequireDecimalSeparatorValidator;->A:Lcom/ibm/icu/impl/number/parse/RequireDecimalSeparatorValidator;

    .line 12
    new-instance v0, Lcom/ibm/icu/impl/number/parse/RequireDecimalSeparatorValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/number/parse/RequireDecimalSeparatorValidator;-><init>(Z)V

    sput-object v0, Lcom/ibm/icu/impl/number/parse/RequireDecimalSeparatorValidator;->B:Lcom/ibm/icu/impl/number/parse/RequireDecimalSeparatorValidator;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/parse/ValidationMatcher;-><init>()V

    .line 21
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/parse/RequireDecimalSeparatorValidator;->patternHasDecimalSeparator:Z

    return-void
.end method

.method public static getInstance(Z)Lcom/ibm/icu/impl/number/parse/RequireDecimalSeparatorValidator;
    .locals 0

    if-eqz p0, :cond_0

    .line 17
    sget-object p0, Lcom/ibm/icu/impl/number/parse/RequireDecimalSeparatorValidator;->A:Lcom/ibm/icu/impl/number/parse/RequireDecimalSeparatorValidator;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/ibm/icu/impl/number/parse/RequireDecimalSeparatorValidator;->B:Lcom/ibm/icu/impl/number/parse/RequireDecimalSeparatorValidator;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public postProcess(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V
    .locals 2

    .line 26
    iget v0, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/parse/RequireDecimalSeparatorValidator;->patternHasDecimalSeparator:Z

    if-eq v0, v1, :cond_1

    .line 28
    iget v0, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "<RequireDecimalSeparator>"

    return-object v0
.end method
