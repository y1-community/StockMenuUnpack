.class final Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;
.super Ljava/lang/Object;
.source "DateIntervalFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DateIntervalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FormatOutput"
.end annotation


# instance fields
.field firstIndex:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 428
    iput v0, p0, Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;->firstIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/DateIntervalFormat$1;)V
    .locals 0

    .line 427
    invoke-direct {p0}, Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;-><init>()V

    return-void
.end method


# virtual methods
.method public register(I)V
    .locals 2

    .line 431
    iget v0, p0, Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;->firstIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 432
    iput p1, p0, Lcom/ibm/icu/text/DateIntervalFormat$FormatOutput;->firstIndex:I

    :cond_0
    return-void
.end method
