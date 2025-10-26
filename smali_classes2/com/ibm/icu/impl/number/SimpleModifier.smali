.class public Lcom/ibm/icu/impl/number/SimpleModifier;
.super Ljava/lang/Object;
.source "SimpleModifier.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/Modifier;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ARG_NUM_LIMIT:I = 0x100


# instance fields
.field private final compiledPattern:Ljava/lang/String;

.field private final field:Ljava/text/Format$Field;

.field private final parameters:Lcom/ibm/icu/impl/number/Modifier$Parameters;

.field private final strong:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/Format$Field;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ibm/icu/impl/number/SimpleModifier;-><init>(Ljava/lang/String;Ljava/text/Format$Field;ZLcom/ibm/icu/impl/number/Modifier$Parameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/Format$Field;ZLcom/ibm/icu/impl/number/Modifier$Parameters;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/ibm/icu/impl/number/SimpleModifier;->compiledPattern:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/ibm/icu/impl/number/SimpleModifier;->field:Ljava/text/Format$Field;

    .line 37
    iput-boolean p3, p0, Lcom/ibm/icu/impl/number/SimpleModifier;->strong:Z

    .line 38
    iput-object p4, p0, Lcom/ibm/icu/impl/number/SimpleModifier;->parameters:Lcom/ibm/icu/impl/number/Modifier$Parameters;

    return-void
.end method

.method public static formatTwoArgPattern(Ljava/lang/String;Lcom/ibm/icu/impl/FormattedStringBuilder;ILcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;Ljava/text/Format$Field;)V
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p3

    .line 98
    invoke-static {p0}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->getArgumentLimit(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v8, 0x1

    .line 105
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v3, 0x2

    const/16 v9, 0x100

    const/4 v10, 0x0

    if-ge v0, v9, :cond_0

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_0

    :cond_0
    add-int/lit16 v11, v0, -0x100

    add-int/lit8 v1, p2, 0x0

    add-int v12, v3, v11

    move-object/from16 v0, p1

    move-object v2, p0

    move v4, v12

    move-object/from16 v5, p4

    .line 112
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;IILjava/lang/Object;)I

    add-int/lit8 v0, v11, 0x0

    add-int/lit8 v3, v12, 0x1

    move v12, v11

    move v11, v0

    .line 118
    :goto_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/2addr v3, v8

    if-ge v0, v9, :cond_1

    const/4 v13, 0x0

    goto :goto_1

    :cond_1
    add-int/lit16 v13, v0, -0x100

    add-int v1, p2, v11

    add-int v14, v3, v13

    move-object/from16 v0, p1

    move-object v2, p0

    move v4, v14

    move-object/from16 v5, p4

    .line 125
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;IILjava/lang/Object;)I

    add-int/2addr v11, v13

    add-int/lit8 v3, v14, 0x1

    .line 132
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v3, v0, :cond_2

    goto :goto_2

    .line 136
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit16 v10, v0, -0x100

    add-int/2addr v3, v8

    add-int v1, p2, v11

    add-int v4, v3, v10

    move-object/from16 v0, p1

    move-object v2, p0

    move-object/from16 v5, p4

    .line 138
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;IILjava/lang/Object;)I

    .line 142
    :goto_2
    iput v12, v7, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthPrefix:I

    .line 143
    iput v13, v7, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthInfix:I

    .line 144
    iput v10, v7, Lcom/ibm/icu/impl/number/range/PrefixInfixSuffixLengthHelper;->lengthSuffix:I

    return-void

    .line 100
    :cond_3
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    invoke-direct {v0}, Lcom/ibm/icu/util/ICUException;-><init>()V

    throw v0
.end method


# virtual methods
.method public apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/ibm/icu/impl/number/SimpleModifier;->compiledPattern:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/SimpleModifier;->field:Ljava/text/Format$Field;

    invoke-static {v0, v1, p2, p3, p1}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatPrefixSuffix(Ljava/lang/String;Ljava/text/Format$Field;IILcom/ibm/icu/impl/FormattedStringBuilder;)I

    move-result p1

    return p1
.end method

.method public containsField(Ljava/text/Format$Field;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getCodePointCount()I
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/ibm/icu/impl/number/SimpleModifier;->compiledPattern:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->getLength(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public getParameters()Lcom/ibm/icu/impl/number/Modifier$Parameters;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/ibm/icu/impl/number/SimpleModifier;->parameters:Lcom/ibm/icu/impl/number/Modifier$Parameters;

    return-object v0
.end method

.method public getPrefixLength()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/ibm/icu/impl/number/SimpleModifier;->compiledPattern:Ljava/lang/String;

    invoke-static {v0}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->getPrefixLength(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isStrong()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/SimpleModifier;->strong:Z

    return v0
.end method

.method public semanticallyEquivalent(Lcom/ibm/icu/impl/number/Modifier;)Z
    .locals 4

    .line 75
    instance-of v0, p1, Lcom/ibm/icu/impl/number/SimpleModifier;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 78
    :cond_0
    check-cast p1, Lcom/ibm/icu/impl/number/SimpleModifier;

    .line 79
    iget-object v0, p0, Lcom/ibm/icu/impl/number/SimpleModifier;->parameters:Lcom/ibm/icu/impl/number/Modifier$Parameters;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v3, p1, Lcom/ibm/icu/impl/number/SimpleModifier;->parameters:Lcom/ibm/icu/impl/number/Modifier$Parameters;

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/ibm/icu/impl/number/Modifier$Parameters;->obj:Lcom/ibm/icu/impl/number/ModifierStore;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/SimpleModifier;->parameters:Lcom/ibm/icu/impl/number/Modifier$Parameters;

    iget-object v3, v3, Lcom/ibm/icu/impl/number/Modifier$Parameters;->obj:Lcom/ibm/icu/impl/number/ModifierStore;

    if-ne v0, v3, :cond_1

    return v2

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/SimpleModifier;->compiledPattern:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/SimpleModifier;->compiledPattern:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/impl/number/SimpleModifier;->field:Ljava/text/Format$Field;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/SimpleModifier;->field:Ljava/text/Format$Field;

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/SimpleModifier;->strong:Z

    iget-boolean p1, p1, Lcom/ibm/icu/impl/number/SimpleModifier;->strong:Z

    if-ne v0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
