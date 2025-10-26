.class public Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;
.super Ljava/lang/Object;
.source "RBBIDataWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/RBBIDataWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RBBIStateTable"
.end annotation


# static fields
.field public static fHeaderSize:I = 0x14


# instance fields
.field public fDictCategoriesStart:I

.field public fFlags:I

.field public fLookAheadResultsSize:I

.field public fNumStates:I

.field public fRowLen:I

.field public fTable:[C


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(Ljava/nio/ByteBuffer;I)Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_0
    sget v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fHeaderSize:I

    if-lt p1, v0, :cond_4

    .line 78
    new-instance v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

    invoke-direct {v0}, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;-><init>()V

    .line 79
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    .line 80
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fRowLen:I

    .line 81
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fDictCategoriesStart:I

    .line 82
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fLookAheadResultsSize:I

    .line 83
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    .line 84
    sget v2, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fHeaderSize:I

    sub-int/2addr p1, v2

    const/4 v2, 0x4

    and-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 87
    new-array v1, p1, [C

    iput-object v1, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    :goto_1
    if-ge v3, p1, :cond_2

    .line 89
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 90
    iget-object v2, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    aput-char v1, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    and-int/2addr p1, v4

    .line 92
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    goto :goto_2

    .line 94
    :cond_3
    div-int/lit8 v1, p1, 0x2

    and-int/2addr p1, v4

    invoke-static {p0, v1, p1}, Lcom/ibm/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object p0

    iput-object p0, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    :goto_2
    return-object v0

    .line 76
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid RBBI state table length."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 134
    :cond_0
    instance-of v0, p1, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 137
    :cond_1
    check-cast p1, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

    .line 138
    iget v0, p0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    iget v2, p1, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    if-eq v0, v2, :cond_2

    return v1

    .line 139
    :cond_2
    iget v0, p0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fRowLen:I

    iget v2, p1, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fRowLen:I

    if-eq v0, v2, :cond_3

    return v1

    .line 140
    :cond_3
    iget v0, p0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fDictCategoriesStart:I

    iget v2, p1, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fDictCategoriesStart:I

    if-eq v0, v2, :cond_4

    return v1

    .line 141
    :cond_4
    iget v0, p0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fLookAheadResultsSize:I

    iget v2, p1, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fLookAheadResultsSize:I

    if-eq v0, v2, :cond_5

    return v1

    .line 142
    :cond_5
    iget v0, p0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    iget v2, p1, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    if-eq v0, v2, :cond_6

    return v1

    .line 143
    :cond_6
    iget-object v0, p0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    iget-object p1, p1, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p1

    return p1
.end method

.method public put(Ljava/io/DataOutputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget v0, p0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 101
    iget v0, p0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fRowLen:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 102
    iget v0, p0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fDictCategoriesStart:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 103
    iget v0, p0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fLookAheadResultsSize:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 104
    iget v0, p0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 105
    iget v0, p0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 106
    iget v0, p0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fRowLen:I

    iget v1, p0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    mul-int v0, v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 108
    iget-object v3, p0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    aget-char v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 109
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fRowLen:I

    iget v1, p0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    mul-int v0, v0, v1

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 114
    iget-object v3, p0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    aget-char v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeChar(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    :cond_1
    sget v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fHeaderSize:I

    iget v1, p0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fRowLen:I

    iget v3, p0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    mul-int v1, v1, v3

    add-int/2addr v0, v1

    .line 119
    :goto_2
    rem-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 120
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return v0
.end method
