.class Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SkeletonFields"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEFAULT_CHAR:B

.field private static final DEFAULT_LENGTH:B


# instance fields
.field private chars:[B

.field private lengths:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2527
    const-class v0, Lcom/ibm/icu/text/DateTimePatternGenerator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 2528
    iput-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->chars:[B

    new-array v0, v0, [B

    .line 2529
    iput-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->lengths:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V
    .locals 0

    .line 2527
    invoke-direct {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;-><init>()V

    return-void
.end method

.method private appendFieldTo(ILjava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 2

    .line 2615
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->chars:[B

    aget-byte v0, v0, p1

    int-to-char v0, v0

    .line 2616
    iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->lengths:[B

    aget-byte v1, v1, p1

    if-eqz p3, :cond_0

    .line 2619
    invoke-static {p1, v0}, Lcom/ibm/icu/text/DateTimePatternGenerator;->access$1900(IC)C

    move-result v0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_1

    .line 2623
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private appendTo(Ljava/lang/StringBuilder;ZZ)Ljava/lang/StringBuilder;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    if-eqz p3, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2605
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->appendFieldTo(ILjava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public appendFieldTo(ILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 2611
    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->appendFieldTo(ILjava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 2597
    invoke-direct {p0, p1, v0, v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->appendTo(Ljava/lang/StringBuilder;ZZ)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 2

    .line 2534
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->chars:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 2535
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->lengths:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method clearField(I)V
    .locals 2

    .line 2544
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->chars:[B

    const/4 v1, 0x0

    aput-byte v1, v0, p1

    .line 2545
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->lengths:[B

    aput-byte v1, v0, p1

    return-void
.end method

.method public compareTo(Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    .line 2630
    iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->chars:[B

    aget-byte v2, v2, v1

    iget-object v3, p1, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->chars:[B

    aget-byte v3, v3, v1

    sub-int/2addr v2, v3

    if-eqz v2, :cond_0

    return v2

    .line 2634
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->lengths:[B

    aget-byte v2, v2, v1

    iget-object v3, p1, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->lengths:[B

    aget-byte v3, v3, v1

    sub-int/2addr v2, v3

    if-eqz v2, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method copyFieldFrom(Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;I)V
    .locals 2

    .line 2539
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->chars:[B

    iget-object v1, p1, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->chars:[B

    aget-byte v1, v1, p2

    aput-byte v1, v0, p2

    .line 2540
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->lengths:[B

    iget-object p1, p1, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->lengths:[B

    aget-byte p1, p1, p2

    aput-byte p1, v0, p2

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 2644
    instance-of v0, p1, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    .line 2645
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->compareTo(Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method getFieldChar(I)C
    .locals 1

    .line 2549
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->chars:[B

    aget-byte p1, v0, p1

    int-to-char p1, p1

    return p1
.end method

.method getFieldLength(I)I
    .locals 1

    .line 2553
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->lengths:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 2650
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->chars:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->lengths:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isFieldEmpty(I)Z
    .locals 1

    .line 2574
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->lengths:[B

    aget-byte p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method populate(ICI)V
    .locals 1

    .line 2569
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->chars:[B

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    .line 2570
    iget-object p2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->lengths:[B

    int-to-byte p3, p3

    aput-byte p3, p2, p1

    return-void
.end method

.method populate(ILjava/lang/String;)V
    .locals 5

    .line 2558
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-char v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2562
    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->populate(ICI)V

    return-void
.end method

.method public toCanonicalString()Ljava/lang/String;
    .locals 3

    .line 2588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->appendTo(Ljava/lang/StringBuilder;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toCanonicalString(Z)Ljava/lang/String;
    .locals 2

    .line 2592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->appendTo(Ljava/lang/StringBuilder;ZZ)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->appendTo(Ljava/lang/StringBuilder;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 2

    .line 2583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->appendTo(Ljava/lang/StringBuilder;ZZ)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
