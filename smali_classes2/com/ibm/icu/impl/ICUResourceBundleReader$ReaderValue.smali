.class Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;
.super Lcom/ibm/icu/impl/UResource$Value;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReaderValue"
.end annotation


# instance fields
.field reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

.field res:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 802
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Value;-><init>()V

    return-void
.end method

.method private getStringArray(Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;)[Ljava/lang/String;
    .locals 4

    .line 926
    iget v0, p1, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;->size:I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 927
    :goto_0
    iget v2, p1, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;->size:I

    if-ge v1, v2, :cond_1

    .line 928
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {p1, v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;->getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result v2

    .line 929
    iget-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v3, v2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 933
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 931
    :cond_0
    new-instance p1, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v0, ""

    invoke-direct {p1, v0}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getAliasString()Ljava/lang/String;
    .locals 2

    .line 822
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getAlias(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 824
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getArray()Lcom/ibm/icu/impl/UResource$Array;
    .locals 2

    .line 865
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getArray(I)Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 867
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBinary()Ljava/nio/ByteBuffer;
    .locals 2

    .line 856
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getBinary(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 858
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInt()I
    .locals 2

    .line 831
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 834
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_INT(I)I

    move-result v0

    return v0

    .line 832
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIntVector()[I
    .locals 2

    .line 847
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getIntVector(I)[I

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 849
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .line 813
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 815
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStringArray()[Ljava/lang/String;
    .locals 2

    .line 888
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getArray(I)Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 892
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->getStringArray(Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 890
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStringArrayOrStringAsArray()[Ljava/lang/String;
    .locals 3

    .line 897
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getArray(I)Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 899
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->getStringArray(Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1

    .line 905
    :cond_1
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStringOrFirstOfArray()Ljava/lang/String;
    .locals 3

    .line 910
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getArray(I)Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 915
    iget v1, v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;->size:I

    if-lez v1, :cond_1

    .line 916
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;->getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    .line 917
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 922
    :cond_1
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTable()Lcom/ibm/icu/impl/UResource$Table;
    .locals 2

    .line 874
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getTable(I)Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 876
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()I
    .locals 2

    .line 808
    invoke-static {}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$400()[I

    move-result-object v0

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getUInt()I
    .locals 2

    .line 839
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 842
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_UINT(I)I

    move-result v0

    return v0

    .line 840
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isNoInheritanceMarker()Z
    .locals 2

    .line 883
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$500(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)Z

    move-result v0

    return v0
.end method
