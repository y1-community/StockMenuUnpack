.class public Lcom/ibm/icu/util/CaseInsensitiveString;
.super Ljava/lang/Object;
.source "CaseInsensitiveString.java"


# instance fields
.field private folded:Ljava/lang/String;

.field private hash:I

.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->hash:I

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->string:Ljava/lang/String;

    return-void
.end method

.method private static foldCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 29
    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UCharacter;->foldCase(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFolded()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->string:Ljava/lang/String;

    invoke-static {v0}, Lcom/ibm/icu/util/CaseInsensitiveString;->foldCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 68
    :cond_1
    instance-of v1, p1, Lcom/ibm/icu/util/CaseInsensitiveString;

    if-eqz v1, :cond_2

    .line 69
    invoke-direct {p0}, Lcom/ibm/icu/util/CaseInsensitiveString;->getFolded()V

    .line 70
    check-cast p1, Lcom/ibm/icu/util/CaseInsensitiveString;

    .line 71
    invoke-direct {p1}, Lcom/ibm/icu/util/CaseInsensitiveString;->getFolded()V

    .line 72
    iget-object v0, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    iget-object p1, p1, Lcom/ibm/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/ibm/icu/util/CaseInsensitiveString;->getFolded()V

    .line 86
    iget v0, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->hash:I

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->hash:I

    .line 90
    :cond_0
    iget v0, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->hash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/ibm/icu/util/CaseInsensitiveString;->string:Ljava/lang/String;

    return-object v0
.end method
