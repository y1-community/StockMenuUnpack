.class public Lcom/ibm/icu/impl/number/ConstantAffixModifier;
.super Ljava/lang/Object;
.source "ConstantAffixModifier.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/Modifier;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final EMPTY:Lcom/ibm/icu/impl/number/ConstantAffixModifier;


# instance fields
.field private final field:Ljava/text/Format$Field;

.field private final prefix:Ljava/lang/String;

.field private final strong:Z

.field private final suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/ibm/icu/impl/number/ConstantAffixModifier;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/ConstantAffixModifier;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->EMPTY:Lcom/ibm/icu/impl/number/ConstantAffixModifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 50
    iput-object v0, p0, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->prefix:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->suffix:Ljava/lang/String;

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->field:Ljava/text/Format$Field;

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->strong:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/text/Format$Field;Z)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->prefix:Ljava/lang/String;

    if-nez p2, :cond_1

    move-object p2, v0

    .line 43
    :cond_1
    iput-object p2, p0, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->suffix:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->field:Ljava/text/Format$Field;

    .line 45
    iput-boolean p4, p0, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->strong:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/ibm/icu/impl/FormattedStringBuilder;II)I
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->suffix:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->field:Ljava/text/Format$Field;

    invoke-virtual {p1, p3, v0, v1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result p3

    .line 60
    iget-object v0, p0, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->prefix:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->field:Ljava/text/Format$Field;

    invoke-virtual {p1, p2, v0, v1}, Lcom/ibm/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p3, p1

    return p3
.end method

.method public containsField(Ljava/text/Format$Field;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getCodePointCount()I
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->suffix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getParameters()Lcom/ibm/icu/impl/number/Modifier$Parameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefixLength()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public isStrong()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->strong:Z

    return v0
.end method

.method public semanticallyEquivalent(Lcom/ibm/icu/impl/number/Modifier;)Z
    .locals 3

    .line 93
    instance-of v0, p1, Lcom/ibm/icu/impl/number/ConstantAffixModifier;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 96
    :cond_0
    check-cast p1, Lcom/ibm/icu/impl/number/ConstantAffixModifier;

    .line 97
    iget-object v0, p0, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->prefix:Ljava/lang/String;

    iget-object v2, p1, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->suffix:Ljava/lang/String;

    iget-object v2, p1, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->field:Ljava/text/Format$Field;

    iget-object v2, p1, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->field:Ljava/text/Format$Field;

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->strong:Z

    iget-boolean p1, p1, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->strong:Z

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->prefix:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ibm/icu/impl/number/ConstantAffixModifier;->suffix:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "<ConstantAffixModifier prefix:\'%s\' suffix:\'%s\'>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
