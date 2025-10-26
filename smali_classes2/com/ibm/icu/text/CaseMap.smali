.class public abstract Lcom/ibm/icu/text/CaseMap;
.super Ljava/lang/Object;
.source "CaseMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/CaseMap$Fold;,
        Lcom/ibm/icu/text/CaseMap$Title;,
        Lcom/ibm/icu/text/CaseMap$Upper;,
        Lcom/ibm/icu/text/CaseMap$Lower;
    }
.end annotation


# instance fields
.field protected internalOptions:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ibm/icu/text/CaseMap;->internalOptions:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/ibm/icu/text/CaseMap$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/CaseMap;-><init>(I)V

    return-void
.end method

.method static synthetic access$500(Ljava/util/Locale;)I
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/ibm/icu/text/CaseMap;->getCaseLocale(Ljava/util/Locale;)I

    move-result p0

    return p0
.end method

.method public static fold()Lcom/ibm/icu/text/CaseMap$Fold;
    .locals 1

    .line 56
    invoke-static {}, Lcom/ibm/icu/text/CaseMap$Fold;->access$300()Lcom/ibm/icu/text/CaseMap$Fold;

    move-result-object v0

    return-object v0
.end method

.method private static getCaseLocale(Ljava/util/Locale;)I
    .locals 0

    if-nez p0, :cond_0

    .line 32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 34
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/impl/UCaseProps;->getCaseLocale(Ljava/util/Locale;)I

    move-result p0

    return p0
.end method

.method public static toLower()Lcom/ibm/icu/text/CaseMap$Lower;
    .locals 1

    .line 41
    invoke-static {}, Lcom/ibm/icu/text/CaseMap$Lower;->access$000()Lcom/ibm/icu/text/CaseMap$Lower;

    move-result-object v0

    return-object v0
.end method

.method public static toTitle()Lcom/ibm/icu/text/CaseMap$Title;
    .locals 1

    .line 51
    invoke-static {}, Lcom/ibm/icu/text/CaseMap$Title;->access$200()Lcom/ibm/icu/text/CaseMap$Title;

    move-result-object v0

    return-object v0
.end method

.method public static toUpper()Lcom/ibm/icu/text/CaseMap$Upper;
    .locals 1

    .line 46
    invoke-static {}, Lcom/ibm/icu/text/CaseMap$Upper;->access$100()Lcom/ibm/icu/text/CaseMap$Upper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract omitUnchangedText()Lcom/ibm/icu/text/CaseMap;
.end method
