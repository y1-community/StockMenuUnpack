.class final Lcom/ibm/icu/text/DateIntervalFormat$BestMatchInfo;
.super Ljava/lang/Object;
.source "DateIntervalFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DateIntervalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BestMatchInfo"
.end annotation


# instance fields
.field final bestMatchDistanceInfo:I

.field final bestMatchSkeleton:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    iput-object p1, p0, Lcom/ibm/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchSkeleton:Ljava/lang/String;

    .line 409
    iput p2, p0, Lcom/ibm/icu/text/DateIntervalFormat$BestMatchInfo;->bestMatchDistanceInfo:I

    return-void
.end method
