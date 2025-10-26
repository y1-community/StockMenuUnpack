.class public final Lcom/ibm/icu/text/CaseMap$Fold;
.super Lcom/ibm/icu/text/CaseMap;
.source "CaseMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CaseMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fold"
.end annotation


# static fields
.field private static final DEFAULT:Lcom/ibm/icu/text/CaseMap$Fold;

.field private static final OMIT_UNCHANGED:Lcom/ibm/icu/text/CaseMap$Fold;

.field private static final TURKIC:Lcom/ibm/icu/text/CaseMap$Fold;

.field private static final TURKIC_OMIT_UNCHANGED:Lcom/ibm/icu/text/CaseMap$Fold;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 382
    new-instance v0, Lcom/ibm/icu/text/CaseMap$Fold;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CaseMap$Fold;-><init>(I)V

    sput-object v0, Lcom/ibm/icu/text/CaseMap$Fold;->DEFAULT:Lcom/ibm/icu/text/CaseMap$Fold;

    .line 383
    new-instance v0, Lcom/ibm/icu/text/CaseMap$Fold;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CaseMap$Fold;-><init>(I)V

    sput-object v0, Lcom/ibm/icu/text/CaseMap$Fold;->TURKIC:Lcom/ibm/icu/text/CaseMap$Fold;

    .line 384
    new-instance v0, Lcom/ibm/icu/text/CaseMap$Fold;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CaseMap$Fold;-><init>(I)V

    sput-object v0, Lcom/ibm/icu/text/CaseMap$Fold;->OMIT_UNCHANGED:Lcom/ibm/icu/text/CaseMap$Fold;

    .line 385
    new-instance v0, Lcom/ibm/icu/text/CaseMap$Fold;

    const/16 v1, 0x4001

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CaseMap$Fold;-><init>(I)V

    sput-object v0, Lcom/ibm/icu/text/CaseMap$Fold;->TURKIC_OMIT_UNCHANGED:Lcom/ibm/icu/text/CaseMap$Fold;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 387
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/CaseMap;-><init>(ILcom/ibm/icu/text/CaseMap$1;)V

    return-void
.end method

.method static synthetic access$300()Lcom/ibm/icu/text/CaseMap$Fold;
    .locals 1

    .line 381
    sget-object v0, Lcom/ibm/icu/text/CaseMap$Fold;->DEFAULT:Lcom/ibm/icu/text/CaseMap$Fold;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Lcom/ibm/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    .line 453
    iget v0, p0, Lcom/ibm/icu/text/CaseMap$Fold;->internalOptions:I

    invoke-static {v0, p1, p2, p3}, Lcom/ibm/icu/impl/CaseMapImpl;->fold(ILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 431
    iget v0, p0, Lcom/ibm/icu/text/CaseMap$Fold;->internalOptions:I

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/CaseMapImpl;->fold(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public omitUnchangedText()Lcom/ibm/icu/text/CaseMap$Fold;
    .locals 1

    .line 395
    iget v0, p0, Lcom/ibm/icu/text/CaseMap$Fold;->internalOptions:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/CaseMap$Fold;->OMIT_UNCHANGED:Lcom/ibm/icu/text/CaseMap$Fold;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ibm/icu/text/CaseMap$Fold;->TURKIC_OMIT_UNCHANGED:Lcom/ibm/icu/text/CaseMap$Fold;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic omitUnchangedText()Lcom/ibm/icu/text/CaseMap;
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/ibm/icu/text/CaseMap$Fold;->omitUnchangedText()Lcom/ibm/icu/text/CaseMap$Fold;

    move-result-object v0

    return-object v0
.end method

.method public turkic()Lcom/ibm/icu/text/CaseMap$Fold;
    .locals 1

    .line 412
    iget v0, p0, Lcom/ibm/icu/text/CaseMap$Fold;->internalOptions:I

    and-int/lit16 v0, v0, 0x4000

    if-nez v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/CaseMap$Fold;->TURKIC:Lcom/ibm/icu/text/CaseMap$Fold;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ibm/icu/text/CaseMap$Fold;->TURKIC_OMIT_UNCHANGED:Lcom/ibm/icu/text/CaseMap$Fold;

    :goto_0
    return-object v0
.end method
