.class final Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;
.super Ljava/lang/Object;
.source "UniversalTimeScale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/UniversalTimeScale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimeScaleData"
.end annotation


# instance fields
.field epochOffset:J

.field epochOffsetM1:J

.field epochOffsetP1:J

.field fromMax:J

.field fromMin:J

.field maxRound:J

.field minRound:J

.field toMax:J

.field toMin:J

.field units:J

.field unitsRound:J


# direct methods
.method constructor <init>(JJJJJJ)V
    .locals 8

    move-object v0, p0

    move-wide v1, p1

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    const-wide/16 v3, 0x2

    .line 307
    div-long v3, v1, v3

    iput-wide v3, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    const-wide/high16 v5, -0x8000000000000000L

    add-long/2addr v5, v3

    .line 309
    iput-wide v5, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->minRound:J

    const-wide v5, 0x7fffffffffffffffL

    sub-long/2addr v5, v3

    .line 310
    iput-wide v5, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->maxRound:J

    .line 312
    div-long v3, p3, v1

    iput-wide v3, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    const-wide/16 v5, 0x1

    cmp-long v7, v1, v5

    if-nez v7, :cond_0

    .line 315
    iput-wide v3, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetM1:J

    iput-wide v3, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetP1:J

    goto :goto_0

    :cond_0
    add-long v1, v3, v5

    .line 317
    iput-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetP1:J

    sub-long/2addr v3, v5

    .line 318
    iput-wide v3, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetM1:J

    :goto_0
    move-wide v1, p5

    .line 321
    iput-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->toMin:J

    move-wide v1, p7

    .line 322
    iput-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->toMax:J

    move-wide/from16 v1, p9

    .line 324
    iput-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->fromMin:J

    move-wide/from16 v1, p11

    .line 325
    iput-wide v1, v0, Lcom/ibm/icu/util/UniversalTimeScale$TimeScaleData;->fromMax:J

    return-void
.end method
