.class public abstract Lcom/ibm/icu/impl/UResource$Value;
.super Ljava/lang/Object;
.source "UResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/UResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Value"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAliasString()Ljava/lang/String;
.end method

.method public abstract getArray()Lcom/ibm/icu/impl/UResource$Array;
.end method

.method public abstract getBinary()Ljava/nio/ByteBuffer;
.end method

.method public abstract getInt()I
.end method

.method public abstract getIntVector()[I
.end method

.method public abstract getString()Ljava/lang/String;
.end method

.method public abstract getStringArray()[Ljava/lang/String;
.end method

.method public abstract getStringArrayOrStringAsArray()[Ljava/lang/String;
.end method

.method public abstract getStringOrFirstOfArray()Ljava/lang/String;
.end method

.method public abstract getTable()Lcom/ibm/icu/impl/UResource$Table;
.end method

.method public abstract getType()I
.end method

.method public abstract getUInt()I
.end method

.method public abstract isNoInheritanceMarker()Z
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 426
    invoke-virtual {p0}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x7

    if-eq v0, v2, :cond_3

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    const-string v0, "???"

    return-object v0

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/UResource$Value;->getIntVector()[I

    move-result-object v0

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 434
    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    array-length v3, v0

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 436
    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 437
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    const-string v3, ", "

    .line 438
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x7d

    .line 441
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "(array)"

    return-object v0

    .line 430
    :cond_3
    invoke-virtual {p0}, Lcom/ibm/icu/impl/UResource$Value;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v0, "(table)"

    return-object v0

    :cond_5
    const-string v0, "(binary blob)"

    return-object v0

    .line 428
    :cond_6
    invoke-virtual {p0}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
