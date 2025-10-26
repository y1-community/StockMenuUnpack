.class public final Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;
.super Ljava/lang/Object;
.source "DateIntervalInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DateIntervalInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PatternInfo"
.end annotation


# static fields
.field static final currentSerialVersion:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final fFirstDateInPtnIsLaterDate:Z

.field private final fIntervalPatternFirstPart:Ljava/lang/String;

.field private final fIntervalPatternSecondPart:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternFirstPart:Ljava/lang/String;

    .line 209
    iput-object p2, p0, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternSecondPart:Ljava/lang/String;

    .line 210
    iput-boolean p3, p0, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->fFirstDateInPtnIsLaterDate:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 248
    instance-of v0, p1, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 249
    check-cast p1, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;

    .line 250
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternFirstPart:Ljava/lang/String;

    iget-object v2, p1, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternFirstPart:Ljava/lang/String;

    invoke-static {v0, v2}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternSecondPart:Ljava/lang/String;

    iget-object v2, p1, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternSecondPart:Ljava/lang/String;

    .line 251
    invoke-static {v0, v2}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->fFirstDateInPtnIsLaterDate:Z

    iget-boolean p1, p1, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->fFirstDateInPtnIsLaterDate:Z

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public firstDateInPtnIsLaterDate()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->fFirstDateInPtnIsLaterDate:Z

    return v0
.end method

.method public getFirstPart()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternFirstPart:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondPart()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternSecondPart:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternFirstPart:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 265
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternSecondPart:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 266
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 268
    :cond_1
    iget-boolean v1, p0, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->fFirstDateInPtnIsLaterDate:Z

    if-eqz v1, :cond_2

    xor-int/lit8 v0, v0, -0x1

    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{first=\u00ab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternFirstPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u00bb, second=\u00ab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternSecondPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u00bb, reversed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ibm/icu/text/DateIntervalInfo$PatternInfo;->fFirstDateInPtnIsLaterDate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
