.class final Lcom/ibm/icu/util/TimeZone$ConstantZone;
.super Lcom/ibm/icu/util/TimeZone;
.source "TimeZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/TimeZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConstantZone"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private volatile transient isFrozen:Z

.field private rawOffset:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1398
    invoke-direct {p0, p2}, Lcom/ibm/icu/util/TimeZone;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1430
    iput-boolean p2, p0, Lcom/ibm/icu/util/TimeZone$ConstantZone;->isFrozen:Z

    .line 1399
    iput p1, p0, Lcom/ibm/icu/util/TimeZone$ConstantZone;->rawOffset:I

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lcom/ibm/icu/util/TimeZone$1;)V
    .locals 0

    .line 1392
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/TimeZone$ConstantZone;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cloneAsThawed()Lcom/ibm/icu/util/TimeZone;
    .locals 2

    .line 1445
    invoke-super {p0}, Lcom/ibm/icu/util/TimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/TimeZone$ConstantZone;

    const/4 v1, 0x0

    .line 1446
    iput-boolean v1, v0, Lcom/ibm/icu/util/TimeZone$ConstantZone;->isFrozen:Z

    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    .line 1392
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone$ConstantZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public freeze()Lcom/ibm/icu/util/TimeZone;
    .locals 1

    const/4 v0, 0x1

    .line 1439
    iput-boolean v0, p0, Lcom/ibm/icu/util/TimeZone$ConstantZone;->isFrozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 1392
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone$ConstantZone;->freeze()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public getOffset(IIIIII)I
    .locals 0

    .line 1404
    iget p1, p0, Lcom/ibm/icu/util/TimeZone$ConstantZone;->rawOffset:I

    return p1
.end method

.method public getRawOffset()I
    .locals 1

    .line 1417
    iget v0, p0, Lcom/ibm/icu/util/TimeZone$ConstantZone;->rawOffset:I

    return v0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isFrozen()Z
    .locals 1

    .line 1434
    iget-boolean v0, p0, Lcom/ibm/icu/util/TimeZone$ConstantZone;->isFrozen:Z

    return v0
.end method

.method public setRawOffset(I)V
    .locals 1

    .line 1409
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone$ConstantZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1412
    iput p1, p0, Lcom/ibm/icu/util/TimeZone$ConstantZone;->rawOffset:I

    return-void

    .line 1410
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify a frozen TimeZone instance."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public useDaylightTime()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
