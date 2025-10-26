.class final Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;
.super Ljava/lang/Object;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PluralSelectorContext"
.end annotation


# instance fields
.field argName:Ljava/lang/String;

.field forReplaceNumber:Z

.field formatter:Ljava/text/Format;

.field number:Ljava/lang/Number;

.field numberArgIndex:I

.field numberString:Ljava/lang/String;

.field offset:D

.field startIndex:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/Number;D)V
    .locals 1

    .line 2071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2072
    iput p1, p0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->startIndex:I

    .line 2073
    iput-object p2, p0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->argName:Ljava/lang/String;

    const-wide/16 p1, 0x0

    cmpl-double v0, p4, p1

    if-nez v0, :cond_0

    .line 2078
    iput-object p3, p0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    goto :goto_0

    .line 2080
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    sub-double/2addr p1, p4

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    .line 2082
    :goto_0
    iput-wide p4, p0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->offset:D

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Number;DLcom/ibm/icu/text/MessageFormat$1;)V
    .locals 0

    .line 2070
    invoke-direct/range {p0 .. p5}, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;-><init>(ILjava/lang/String;Ljava/lang/Number;D)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 2086
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "PluralSelectorContext being formatted, rather than its number"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
