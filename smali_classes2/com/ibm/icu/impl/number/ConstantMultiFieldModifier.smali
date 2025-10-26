.class public Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;
.super Ljava/lang/Object;
.source "ConstantMultiFieldModifier.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/Modifier;


# instance fields
.field private final overwrite:Z

.field private final parameters:Lcom/ibm/icu/impl/number/Modifier$Parameters;

.field protected final prefixChars:[C

.field protected final prefixFields:[Ljava/lang/Object;

.field private final strong:Z

.field protected final suffixChars:[C

.field protected final suffixFields:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/FormattedStringBuilder;ZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 34
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;-><init>(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/FormattedStringBuilder;ZZLcom/ibm/icu/impl/number/Modifier$Parameters;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/FormattedStringBuilder;Lcom/ibm/icu/impl/FormattedStringBuilder;ZZLcom/ibm/icu/impl/number/Modifier$Parameters;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->prefixChars:[C

    .line 44
    invoke-virtual {p2}, Lcom/ibm/icu/impl/FormattedStringBuilder;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->suffixChars:[C

    .line 45
    invoke-virtual {p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->toFieldArray()[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->prefixFields:[Ljava/lang/Object;

    .line 46
    invoke-virtual {p2}, Lcom/ibm/icu/impl/FormattedStringBuilder;->toFieldArray()[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->suffixFields:[Ljava/lang/Object;

    .line 47
    iput-boolean p3, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->overwrite:Z

    .line 48
    iput-boolean p4, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->strong:Z

    .line 49
    iput-object p5, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->parameters:Lcom/ibm/icu/impl/number/Modifier$Parameters;

    return-void
.end method


# virtual methods
.method public apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I
    .locals 9

    .line 54
    iget-object v0, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->prefixChars:[C

    iget-object v1, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->prefixFields:[Ljava/lang/Object;

    invoke-virtual {p1, p2, v0, v1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(I[C[Ljava/lang/Object;)I

    move-result v0

    .line 55
    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->overwrite:Z

    if-eqz v1, :cond_0

    add-int v3, p2, v0

    add-int v4, p3, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v5, ""

    move-object v2, p1

    .line 56
    invoke-virtual/range {v2 .. v8}, Lcom/ibm/icu/impl/FormattedStringBuilder;->splice(IILjava/lang/CharSequence;IILjava/lang/Object;)I

    move-result p2

    add-int/2addr v0, p2

    :cond_0
    add-int/2addr p3, v0

    .line 58
    iget-object p2, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->suffixChars:[C

    iget-object v1, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->suffixFields:[Ljava/lang/Object;

    invoke-virtual {p1, p3, p2, v1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(I[C[Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public containsField(Ljava/text/Format$Field;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->prefixFields:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 81
    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 85
    :goto_1
    iget-object v2, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->suffixFields:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 86
    aget-object v2, v2, v1

    if-ne v2, p1, :cond_2

    return v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public getCodePointCount()I
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->prefixChars:[C

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->suffixChars:[C

    array-length v3, v1

    .line 70
    invoke-static {v1, v2, v3}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getParameters()Lcom/ibm/icu/impl/number/Modifier$Parameters;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->parameters:Lcom/ibm/icu/impl/number/Modifier$Parameters;

    return-object v0
.end method

.method public getPrefixLength()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->prefixChars:[C

    array-length v0, v0

    return v0
.end method

.method public isStrong()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->strong:Z

    return v0
.end method

.method public semanticallyEquivalent(Lcom/ibm/icu/impl/number/Modifier;)Z
    .locals 4

    .line 100
    instance-of v0, p1, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 103
    :cond_0
    check-cast p1, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;

    .line 104
    iget-object v0, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->parameters:Lcom/ibm/icu/impl/number/Modifier$Parameters;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v3, p1, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->parameters:Lcom/ibm/icu/impl/number/Modifier$Parameters;

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/ibm/icu/impl/number/Modifier$Parameters;->obj:Lcom/ibm/icu/impl/number/ModifierStore;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->parameters:Lcom/ibm/icu/impl/number/Modifier$Parameters;

    iget-object v3, v3, Lcom/ibm/icu/impl/number/Modifier$Parameters;->obj:Lcom/ibm/icu/impl/number/ModifierStore;

    if-ne v0, v3, :cond_1

    return v2

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->prefixChars:[C

    iget-object v3, p1, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->prefixChars:[C

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->prefixFields:[Ljava/lang/Object;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->prefixFields:[Ljava/lang/Object;

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->suffixChars:[C

    iget-object v3, p1, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->suffixChars:[C

    .line 108
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->suffixFields:[Ljava/lang/Object;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->suffixFields:[Ljava/lang/Object;

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->overwrite:Z

    iget-boolean v3, p1, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->overwrite:Z

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->strong:Z

    iget-boolean p1, p1, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->strong:Z

    if-ne v0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 114
    new-instance v0, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0, v0, v1, v1}, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I

    .line 116
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/ConstantMultiFieldModifier;->getPrefixLength()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/FormattedStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v1

    .line 119
    invoke-virtual {v0}, Lcom/ibm/icu/impl/FormattedStringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v0, "<ConstantMultiFieldModifier prefix:\'%s\' suffix:\'%s\'>"

    .line 117
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
