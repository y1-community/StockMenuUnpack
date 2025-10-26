.class Lcom/ibm/icu/text/Bidi$BracketData;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/Bidi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BracketData"
.end annotation


# instance fields
.field isNumbersSpecial:Z

.field isoRunLast:I

.field isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

.field openings:[Lcom/ibm/icu/text/Bidi$Opening;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/ibm/icu/text/Bidi$Opening;

    .line 549
    iput-object v0, p0, Lcom/ibm/icu/text/Bidi$BracketData;->openings:[Lcom/ibm/icu/text/Bidi$Opening;

    const/16 v0, 0x7f

    new-array v0, v0, [Lcom/ibm/icu/text/Bidi$IsoRun;

    .line 553
    iput-object v0, p0, Lcom/ibm/icu/text/Bidi$BracketData;->isoRuns:[Lcom/ibm/icu/text/Bidi$IsoRun;

    return-void
.end method
