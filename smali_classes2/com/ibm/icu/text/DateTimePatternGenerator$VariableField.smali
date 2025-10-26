.class public Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VariableField"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final canonicalIndex:I

.field private final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1529
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1541
    invoke-static {p1, p2}, Lcom/ibm/icu/text/DateTimePatternGenerator;->access$1400(Ljava/lang/String;Z)I

    move-result p2

    iput p2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    if-ltz p2, :cond_0

    .line 1546
    iput-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->string:Ljava/lang/String;

    return-void

    .line 1543
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal datetime field:\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static synthetic access$2100(Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;)I
    .locals 0

    .line 1517
    invoke-direct {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->getCanonicalIndex()I

    move-result p0

    return p0
.end method

.method public static getCanonicalCode(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1569
    :try_start_0
    invoke-static {}, Lcom/ibm/icu/text/DateTimePatternGenerator;->access$1600()[Ljava/lang/String;

    move-result-object v0

    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1571
    :catch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCanonicalIndex()I
    .locals 1

    .line 1589
    iget v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    return v0
.end method


# virtual methods
.method public getType()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1559
    invoke-static {}, Lcom/ibm/icu/text/DateTimePatternGenerator;->access$1500()[[I

    move-result-object v0

    iget v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public isNumeric()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1582
    invoke-static {}, Lcom/ibm/icu/text/DateTimePatternGenerator;->access$1500()[[I

    move-result-object v0

    iget v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x2

    aget v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1600
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->string:Ljava/lang/String;

    return-object v0
.end method
