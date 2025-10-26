.class Lcom/ibm/icu/text/Bidi$LevState;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/Bidi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LevState"
.end annotation


# instance fields
.field impAct:[S

.field impTab:[[B

.field lastStrongRTL:I

.field runLevel:B

.field runStart:I

.field startL2EN:I

.field startON:I

.field state:S


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/Bidi$1;)V
    .locals 0

    .line 3094
    invoke-direct {p0}, Lcom/ibm/icu/text/Bidi$LevState;-><init>()V

    return-void
.end method
