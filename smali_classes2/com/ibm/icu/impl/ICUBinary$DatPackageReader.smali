.class final Lcom/ibm/icu/impl/ICUBinary$DatPackageReader;
.super Ljava/lang/Object;
.source "ICUBinary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICUBinary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatPackageReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DATA_FORMAT:I = 0x436d6e44

.field private static final IS_ACCEPTABLE:Lcom/ibm/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-class v0, Lcom/ibm/icu/impl/ICUBinary;

    .line 48
    new-instance v0, Lcom/ibm/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;-><init>(Lcom/ibm/icu/impl/ICUBinary$1;)V

    sput-object v0, Lcom/ibm/icu/impl/ICUBinary$DatPackageReader;->IS_ACCEPTABLE:Lcom/ibm/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addBaseName(Ljava/nio/ByteBuffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 169
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUBinary$DatPackageReader;->getNameOffset(Ljava/nio/ByteBuffer;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x9

    .line 172
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2f

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 174
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 175
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p1, 0x1

    .line 179
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-eq p1, v1, :cond_2

    return v2

    :cond_2
    move p1, p2

    .line 184
    :cond_3
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_1
    add-int/lit8 p2, p1, 0x1

    .line 186
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    int-to-char p1, p1

    if-ne p1, v1, :cond_4

    return v0

    .line 191
    :cond_4
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, p2

    goto :goto_1

    .line 193
    :cond_5
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p0, p1

    .line 194
    invoke-virtual {p4, p3, p0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_6

    .line 195
    invoke-virtual {p4, v2, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p5, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    return v0
.end method

.method static addBaseNamesInFolder(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 107
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUBinary$DatPackageReader;->binarySearch(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;)I

    move-result v0

    if-gez v0, :cond_0

    xor-int/lit8 v0, v0, -0x1

    .line 112
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 113
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 114
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge v0, v1, :cond_1

    move-object v2, p0

    move v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v8

    move-object v7, p3

    .line 115
    invoke-static/range {v2 .. v7}, Lcom/ibm/icu/impl/ICUBinary$DatPackageReader;->addBaseName(Ljava/nio/ByteBuffer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static binarySearch(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;)I
    .locals 4

    .line 121
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 122
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 129
    invoke-static {p0, v2}, Lcom/ibm/icu/impl/ICUBinary$DatPackageReader;->getNameOffset(Ljava/nio/ByteBuffer;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x9

    .line 132
    invoke-static {p1, p0, v3}, Lcom/ibm/icu/impl/ICUBinary;->compareKeys(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;I)I

    move-result v3

    if-gez v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    if-lez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    xor-int/lit8 p0, v1, -0x1

    return p0
.end method

.method static getData(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;)Ljava/nio/ByteBuffer;
    .locals 2

    .line 94
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUBinary$DatPackageReader;->binarySearch(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 96
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 97
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUBinary$DatPackageReader;->getDataOffset(Ljava/nio/ByteBuffer;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 p1, p1, 0x1

    .line 98
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUBinary$DatPackageReader;->getDataOffset(Ljava/nio/ByteBuffer;I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 99
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUBinary;->sliceWithOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getDataOffset(Ljava/nio/ByteBuffer;I)I
    .locals 2

    .line 154
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 155
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 158
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 p1, p1, 0x8

    add-int/2addr v1, p1

    .line 164
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static getNameOffset(Ljava/nio/ByteBuffer;I)I
    .locals 2

    .line 146
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v1, v0, 0x4

    mul-int/lit8 p1, p1, 0x8

    add-int/2addr v1, p1

    .line 150
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static startsWithPackageName(Ljava/nio/ByteBuffer;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    add-int v2, p1, v1

    .line 81
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    const-string v3, "icudt69b"

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, p1, 0x7

    .line 86
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    const/16 v2, 0x62

    if-eq v1, v2, :cond_2

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_3

    :cond_2
    add-int/lit8 p1, p1, 0x8

    .line 87
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    const/16 p1, 0x2f

    if-eq p0, p1, :cond_4

    :cond_3
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method static validate(Ljava/nio/ByteBuffer;)Z
    .locals 4

    const v0, 0x436d6e44

    const/4 v1, 0x0

    .line 56
    :try_start_0
    sget-object v2, Lcom/ibm/icu/impl/ICUBinary$DatPackageReader;->IS_ACCEPTABLE:Lcom/ibm/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;

    invoke-static {p0, v0, v2}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    if-gtz v0, :cond_0

    return v1

    .line 67
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, v0, 0x18

    add-int/2addr v2, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-le v2, v3, :cond_1

    return v1

    .line 70
    :cond_1
    invoke-static {p0, v1}, Lcom/ibm/icu/impl/ICUBinary$DatPackageReader;->getNameOffset(Ljava/nio/ByteBuffer;I)I

    move-result v2

    invoke-static {p0, v2}, Lcom/ibm/icu/impl/ICUBinary$DatPackageReader;->startsWithPackageName(Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 71
    invoke-static {p0, v0}, Lcom/ibm/icu/impl/ICUBinary$DatPackageReader;->getNameOffset(Ljava/nio/ByteBuffer;I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/ibm/icu/impl/ICUBinary$DatPackageReader;->startsWithPackageName(Ljava/nio/ByteBuffer;I)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :catch_0
    :cond_3
    :goto_0
    return v1
.end method
