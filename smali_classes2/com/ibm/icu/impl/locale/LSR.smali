.class public final Lcom/ibm/icu/impl/locale/LSR;
.super Ljava/lang/Object;
.source "LSR.java"


# static fields
.field public static final DEBUG_OUTPUT:Z = false

.field public static final DONT_CARE_FLAGS:I = 0x0

.field public static final EXPLICIT_LANGUAGE:I = 0x4

.field public static final EXPLICIT_LSR:I = 0x7

.field public static final EXPLICIT_REGION:I = 0x1

.field public static final EXPLICIT_SCRIPT:I = 0x2

.field public static final IMPLICIT_LSR:I = 0x0

.field public static final REGION_INDEX_LIMIT:I = 0x68d


# instance fields
.field public final flags:I

.field public final language:Ljava/lang/String;

.field public final region:Ljava/lang/String;

.field final regionIndex:I

.field public final script:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/ibm/icu/impl/locale/LSR;->language:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/ibm/icu/impl/locale/LSR;->script:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/ibm/icu/impl/locale/LSR;->region:Ljava/lang/String;

    .line 30
    invoke-static {p3}, Lcom/ibm/icu/impl/locale/LSR;->indexForRegion(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/locale/LSR;->regionIndex:I

    .line 31
    iput p4, p0, Lcom/ibm/icu/impl/locale/LSR;->flags:I

    return-void
.end method

.method public static final indexForRegion(Ljava/lang/String;)I
    .locals 6

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    .line 41
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x41

    if-ltz v0, :cond_2

    const/16 v1, 0x19

    if-ge v1, v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    add-int/lit8 p0, p0, -0x41

    if-ltz p0, :cond_2

    if-ge v1, p0, :cond_1

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, v0, 0x1a

    add-int/2addr v0, p0

    add-int/lit16 v0, v0, 0x3e9

    return v0

    :cond_2
    :goto_0
    return v3

    .line 46
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_7

    .line 47
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    if-ltz v0, :cond_7

    const/16 v4, 0x9

    if-ge v4, v0, :cond_4

    goto :goto_1

    .line 49
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    if-ltz v5, :cond_7

    if-ge v4, v5, :cond_5

    goto :goto_1

    .line 51
    :cond_5
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    add-int/lit8 p0, p0, -0x30

    if-ltz p0, :cond_7

    if-ge v4, p0, :cond_6

    goto :goto_1

    :cond_6
    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, p0

    add-int/2addr v0, v2

    return v0

    :cond_7
    :goto_1
    return v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LSR;->language:Ljava/lang/String;

    check-cast p1, Lcom/ibm/icu/impl/locale/LSR;

    iget-object v1, p1, Lcom/ibm/icu/impl/locale/LSR;->language:Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LSR;->script:Ljava/lang/String;

    iget-object v1, p1, Lcom/ibm/icu/impl/locale/LSR;->script:Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LSR;->region:Ljava/lang/String;

    iget-object v1, p1, Lcom/ibm/icu/impl/locale/LSR;->region:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/locale/LSR;->flags:I

    iget p1, p1, Lcom/ibm/icu/impl/locale/LSR;->flags:I

    if-ne v0, p1, :cond_0

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

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LSR;->language:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LSR;->script:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LSR;->region:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/ibm/icu/impl/locale/LSR;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEquivalentTo(Lcom/ibm/icu/impl/locale/LSR;)Z
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LSR;->language:Ljava/lang/String;

    iget-object v1, p1, Lcom/ibm/icu/impl/locale/LSR;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LSR;->script:Ljava/lang/String;

    iget-object v1, p1, Lcom/ibm/icu/impl/locale/LSR;->script:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LSR;->region:Ljava/lang/String;

    iget-object p1, p1, Lcom/ibm/icu/impl/locale/LSR;->region:Ljava/lang/String;

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LSR;->language:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LSR;->script:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v2, 0x2d

    if-nez v1, :cond_0

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LSR;->script:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LSR;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
