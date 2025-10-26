.class public Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;
.super Ljava/lang/Object;
.source "TimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/TimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatchInfo"
.end annotation


# instance fields
.field private _matchLength:I

.field private _mzID:Ljava/lang/String;

.field private _nameType:Lcom/ibm/icu/text/TimeZoneNames$NameType;

.field private _tzID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/text/TimeZoneNames$NameType;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 378
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Either tzID or mzID must be available"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-lez p4, :cond_2

    .line 383
    iput-object p1, p0, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->_nameType:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 384
    iput-object p2, p0, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->_tzID:Ljava/lang/String;

    .line 385
    iput-object p3, p0, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->_mzID:Ljava/lang/String;

    .line 386
    iput p4, p0, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->_matchLength:I

    return-void

    .line 381
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "matchLength must be positive value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 375
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "nameType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public matchLength()I
    .locals 1

    .line 433
    iget v0, p0, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->_matchLength:I

    return v0
.end method

.method public mzID()Ljava/lang/String;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->_mzID:Ljava/lang/String;

    return-object v0
.end method

.method public nameType()Lcom/ibm/icu/text/TimeZoneNames$NameType;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->_nameType:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    return-object v0
.end method

.method public tzID()Ljava/lang/String;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;->_tzID:Ljava/lang/String;

    return-object v0
.end method
