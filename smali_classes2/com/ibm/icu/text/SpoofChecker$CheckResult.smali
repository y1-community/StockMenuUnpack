.class public Lcom/ibm/icu/text/SpoofChecker$CheckResult;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/SpoofChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckResult"
.end annotation


# instance fields
.field public checks:I

.field public numerics:Lcom/ibm/icu/text/UnicodeSet;

.field public position:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public restrictionLevel:Lcom/ibm/icu/text/SpoofChecker$RestrictionLevel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1248
    iput v0, p0, Lcom/ibm/icu/text/SpoofChecker$CheckResult;->checks:I

    .line 1249
    iput v0, p0, Lcom/ibm/icu/text/SpoofChecker$CheckResult;->position:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checks:"

    .line 1260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    iget v1, p0, Lcom/ibm/icu/text/SpoofChecker$CheckResult;->checks:I

    if-nez v1, :cond_0

    const-string v1, " none"

    .line 1262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v1, " all"

    .line 1264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const-string v1, " SINGLE_SCRIPT_CONFUSABLE"

    .line 1267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    :cond_2
    iget v1, p0, Lcom/ibm/icu/text/SpoofChecker$CheckResult;->checks:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    const-string v1, " MIXED_SCRIPT_CONFUSABLE"

    .line 1270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    :cond_3
    iget v1, p0, Lcom/ibm/icu/text/SpoofChecker$CheckResult;->checks:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    const-string v1, " WHOLE_SCRIPT_CONFUSABLE"

    .line 1273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    :cond_4
    iget v1, p0, Lcom/ibm/icu/text/SpoofChecker$CheckResult;->checks:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    const-string v1, " ANY_CASE"

    .line 1276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    :cond_5
    iget v1, p0, Lcom/ibm/icu/text/SpoofChecker$CheckResult;->checks:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    const-string v1, " RESTRICTION_LEVEL"

    .line 1279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    :cond_6
    iget v1, p0, Lcom/ibm/icu/text/SpoofChecker$CheckResult;->checks:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_7

    const-string v1, " INVISIBLE"

    .line 1282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    :cond_7
    iget v1, p0, Lcom/ibm/icu/text/SpoofChecker$CheckResult;->checks:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_8

    const-string v1, " CHAR_LIMIT"

    .line 1285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    :cond_8
    iget v1, p0, Lcom/ibm/icu/text/SpoofChecker$CheckResult;->checks:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_9

    const-string v1, " MIXED_NUMBERS"

    .line 1288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_0
    const-string v1, ", numerics: "

    .line 1291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/SpoofChecker$CheckResult;->numerics:Lcom/ibm/icu/text/UnicodeSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position: "

    .line 1292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ibm/icu/text/SpoofChecker$CheckResult;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", restrictionLevel: "

    .line 1293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/SpoofChecker$CheckResult;->restrictionLevel:Lcom/ibm/icu/text/SpoofChecker$RestrictionLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1294
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
