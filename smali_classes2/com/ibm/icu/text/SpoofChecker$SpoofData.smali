.class Lcom/ibm/icu/text/SpoofChecker$SpoofData;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/SpoofChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpoofData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/SpoofChecker$SpoofData$DefaultData;,
        Lcom/ibm/icu/text/SpoofChecker$SpoofData$IsAcceptable;
    }
.end annotation


# static fields
.field private static final DATA_FORMAT:I = 0x43667520

.field private static final IS_ACCEPTABLE:Lcom/ibm/icu/text/SpoofChecker$SpoofData$IsAcceptable;


# instance fields
.field fCFUKeys:[I

.field fCFUStrings:Ljava/lang/String;

.field fCFUValues:[S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1839
    new-instance v0, Lcom/ibm/icu/text/SpoofChecker$SpoofData$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/SpoofChecker$SpoofData$IsAcceptable;-><init>(Lcom/ibm/icu/text/SpoofChecker$1;)V

    sput-object v0, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->IS_ACCEPTABLE:Lcom/ibm/icu/text/SpoofChecker$SpoofData$IsAcceptable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/SpoofChecker$1;)V
    .locals 0

    .line 1822
    invoke-direct {p0}, Lcom/ibm/icu/text/SpoofChecker$SpoofData;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1876
    sget-object v0, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->IS_ACCEPTABLE:Lcom/ibm/icu/text/SpoofChecker$SpoofData$IsAcceptable;

    const v1, 0x43667520

    invoke-static {p1, v1, v0}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)I

    .line 1877
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 1878
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->readData(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;Lcom/ibm/icu/text/SpoofChecker$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1822
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/SpoofChecker$SpoofData;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static getDefault()Lcom/ibm/icu/text/SpoofChecker$SpoofData;
    .locals 4

    .line 1860
    invoke-static {}, Lcom/ibm/icu/text/SpoofChecker$SpoofData$DefaultData;->access$900()Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1865
    invoke-static {}, Lcom/ibm/icu/text/SpoofChecker$SpoofData$DefaultData;->access$1000()Lcom/ibm/icu/text/SpoofChecker$SpoofData;

    move-result-object v0

    return-object v0

    .line 1861
    :cond_0
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load default confusables data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1862
    invoke-static {}, Lcom/ibm/icu/text/SpoofChecker$SpoofData$DefaultData;->access$900()Ljava/io/IOException;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpoofChecker"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private readData(Ljava/nio/ByteBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1908
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const v1, 0x3845fdef

    if-ne v0, v1, :cond_0

    .line 1913
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 1915
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 1917
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 1918
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 1920
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 1921
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 1923
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 1924
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 1930
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 1931
    invoke-static {p1, v0}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/4 v0, 0x0

    .line 1932
    invoke-static {p1, v1, v0}, Lcom/ibm/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    .line 1934
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 1935
    invoke-static {p1, v2}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 1936
    invoke-static {p1, v3, v0}, Lcom/ibm/icu/impl/ICUBinary;->getShorts(Ljava/nio/ByteBuffer;II)[S

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    .line 1938
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 1939
    invoke-static {p1, v4}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 1940
    invoke-static {p1, v5, v0}, Lcom/ibm/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad Spoof Check Data."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public appendValueTo(ILjava/lang/StringBuilder;)V
    .locals 2

    .line 2008
    iget-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    aget v0, v0, p1

    invoke-static {v0}, Lcom/ibm/icu/text/SpoofChecker$ConfusableDataUtils;->keyToLength(I)I

    move-result v0

    .line 2012
    iget-object v1, p0, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    aget-short p1, v1, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    int-to-char p1, p1

    .line 2014
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2016
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    add-int/2addr v0, p1

    invoke-virtual {p2, v1, p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public codePointAt(I)I
    .locals 1

    .line 1996
    iget-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    aget p1, v0, p1

    invoke-static {p1}, Lcom/ibm/icu/text/SpoofChecker$ConfusableDataUtils;->keyToCodePoint(I)I

    move-result p1

    return p1
.end method

.method public confusableLookup(ILjava/lang/StringBuilder;)V
    .locals 4

    .line 1954
    invoke-virtual {p0}, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->length()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    add-int v2, v1, v0

    .line 1956
    div-int/lit8 v2, v2, 0x2

    .line 1957
    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->codePointAt(I)I

    move-result v3

    if-le v3, p1, :cond_1

    move v0, v2

    goto :goto_0

    .line 1959
    :cond_1
    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->codePointAt(I)I

    move-result v1

    if-ge v1, p1, :cond_2

    move v1, v2

    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    move v2, v1

    .line 1969
    :cond_2
    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->codePointAt(I)I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 1970
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    return-void

    .line 1975
    :cond_3
    invoke-virtual {p0, v2, p2}, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->appendValueTo(ILjava/lang/StringBuilder;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1883
    instance-of v0, p1, Lcom/ibm/icu/text/SpoofChecker$SpoofData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1886
    :cond_0
    check-cast p1, Lcom/ibm/icu/text/SpoofChecker$SpoofData;

    .line 1887
    iget-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    iget-object v2, p1, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1889
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    iget-object v2, p1, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 1891
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    iget-object v2, p1, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/ibm/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    .line 1892
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1899
    iget-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    .line 1900
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([S)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    .line 1901
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public length()I
    .locals 1

    .line 1985
    iget-object v0, p0, Lcom/ibm/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    array-length v0, v0

    return v0
.end method
