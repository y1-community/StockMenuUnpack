.class public final Lcom/ibm/icu/text/CaseMap$Lower;
.super Lcom/ibm/icu/text/CaseMap;
.source "CaseMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CaseMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lower"
.end annotation


# static fields
.field private static final DEFAULT:Lcom/ibm/icu/text/CaseMap$Lower;

.field private static final OMIT_UNCHANGED:Lcom/ibm/icu/text/CaseMap$Lower;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Lcom/ibm/icu/text/CaseMap$Lower;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CaseMap$Lower;-><init>(I)V

    sput-object v0, Lcom/ibm/icu/text/CaseMap$Lower;->DEFAULT:Lcom/ibm/icu/text/CaseMap$Lower;

    .line 75
    new-instance v0, Lcom/ibm/icu/text/CaseMap$Lower;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CaseMap$Lower;-><init>(I)V

    sput-object v0, Lcom/ibm/icu/text/CaseMap$Lower;->OMIT_UNCHANGED:Lcom/ibm/icu/text/CaseMap$Lower;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/CaseMap;-><init>(ILcom/ibm/icu/text/CaseMap$1;)V

    return-void
.end method

.method static synthetic access$000()Lcom/ibm/icu/text/CaseMap$Lower;
    .locals 1

    .line 73
    sget-object v0, Lcom/ibm/icu/text/CaseMap$Lower;->DEFAULT:Lcom/ibm/icu/text/CaseMap$Lower;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/util/Locale;Ljava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Locale;",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Lcom/ibm/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    .line 123
    invoke-static {p1}, Lcom/ibm/icu/text/CaseMap;->access$500(Ljava/util/Locale;)I

    move-result p1

    iget v0, p0, Lcom/ibm/icu/text/CaseMap$Lower;->internalOptions:I

    invoke-static {p1, v0, p2, p3, p4}, Lcom/ibm/icu/impl/CaseMapImpl;->toLower(IILjava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/Locale;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 101
    invoke-static {p1}, Lcom/ibm/icu/text/CaseMap;->access$500(Ljava/util/Locale;)I

    move-result p1

    iget v0, p0, Lcom/ibm/icu/text/CaseMap$Lower;->internalOptions:I

    invoke-static {p1, v0, p2}, Lcom/ibm/icu/impl/CaseMapImpl;->toLower(IILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public omitUnchangedText()Lcom/ibm/icu/text/CaseMap$Lower;
    .locals 1

    .line 84
    sget-object v0, Lcom/ibm/icu/text/CaseMap$Lower;->OMIT_UNCHANGED:Lcom/ibm/icu/text/CaseMap$Lower;

    return-object v0
.end method

.method public bridge synthetic omitUnchangedText()Lcom/ibm/icu/text/CaseMap;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/ibm/icu/text/CaseMap$Lower;->omitUnchangedText()Lcom/ibm/icu/text/CaseMap$Lower;

    move-result-object v0

    return-object v0
.end method
