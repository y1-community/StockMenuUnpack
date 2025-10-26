.class public final Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyInfo;
.super Ljava/lang/Object;
.source "CurrencyMetaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CurrencyMetaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrencyInfo"
.end annotation


# instance fields
.field public final code:Ljava/lang/String;

.field public final from:J

.field public final priority:I

.field public final region:Ljava/lang/String;

.field private final tender:Z

.field public final to:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    .line 459
    invoke-direct/range {v0 .. v8}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJIZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    iput-object p1, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyInfo;->region:Ljava/lang/String;

    .line 471
    iput-object p2, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyInfo;->code:Ljava/lang/String;

    .line 472
    iput-wide p3, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyInfo;->from:J

    .line 473
    iput-wide p5, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyInfo;->to:J

    .line 474
    iput p7, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyInfo;->priority:I

    .line 475
    iput-boolean p8, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyInfo;->tender:Z

    return-void
.end method


# virtual methods
.method public isTender()Z
    .locals 1

    .line 494
    iget-boolean v0, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyInfo;->tender:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 485
    invoke-static {p0}, Lcom/ibm/icu/text/CurrencyMetaInfo;->access$000(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
