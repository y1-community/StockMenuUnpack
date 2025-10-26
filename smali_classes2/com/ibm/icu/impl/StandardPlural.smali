.class public final enum Lcom/ibm/icu/impl/StandardPlural;
.super Ljava/lang/Enum;
.source "StandardPlural.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/StandardPlural;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/StandardPlural;

.field public static final COUNT:I

.field public static final enum EQ_0:Lcom/ibm/icu/impl/StandardPlural;

.field public static final enum EQ_1:Lcom/ibm/icu/impl/StandardPlural;

.field public static final enum FEW:Lcom/ibm/icu/impl/StandardPlural;

.field public static final enum MANY:Lcom/ibm/icu/impl/StandardPlural;

.field public static final enum ONE:Lcom/ibm/icu/impl/StandardPlural;

.field public static final enum OTHER:Lcom/ibm/icu/impl/StandardPlural;

.field public static final OTHER_INDEX:I

.field public static final enum TWO:Lcom/ibm/icu/impl/StandardPlural;

.field public static final VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/impl/StandardPlural;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ZERO:Lcom/ibm/icu/impl/StandardPlural;


# instance fields
.field private final keyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 20
    new-instance v0, Lcom/ibm/icu/impl/StandardPlural;

    const-string v1, "ZERO"

    const/4 v2, 0x0

    const-string v3, "zero"

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/StandardPlural;->ZERO:Lcom/ibm/icu/impl/StandardPlural;

    .line 21
    new-instance v1, Lcom/ibm/icu/impl/StandardPlural;

    const-string v3, "ONE"

    const/4 v4, 0x1

    const-string v5, "one"

    invoke-direct {v1, v3, v4, v5}, Lcom/ibm/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/ibm/icu/impl/StandardPlural;->ONE:Lcom/ibm/icu/impl/StandardPlural;

    .line 22
    new-instance v3, Lcom/ibm/icu/impl/StandardPlural;

    const-string v5, "TWO"

    const/4 v6, 0x2

    const-string v7, "two"

    invoke-direct {v3, v5, v6, v7}, Lcom/ibm/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/ibm/icu/impl/StandardPlural;->TWO:Lcom/ibm/icu/impl/StandardPlural;

    .line 23
    new-instance v5, Lcom/ibm/icu/impl/StandardPlural;

    const-string v7, "FEW"

    const/4 v8, 0x3

    const-string v9, "few"

    invoke-direct {v5, v7, v8, v9}, Lcom/ibm/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/ibm/icu/impl/StandardPlural;->FEW:Lcom/ibm/icu/impl/StandardPlural;

    .line 24
    new-instance v7, Lcom/ibm/icu/impl/StandardPlural;

    const-string v9, "MANY"

    const/4 v10, 0x4

    const-string v11, "many"

    invoke-direct {v7, v9, v10, v11}, Lcom/ibm/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/ibm/icu/impl/StandardPlural;->MANY:Lcom/ibm/icu/impl/StandardPlural;

    .line 25
    new-instance v9, Lcom/ibm/icu/impl/StandardPlural;

    const-string v11, "OTHER"

    const/4 v12, 0x5

    const-string v13, "other"

    invoke-direct {v9, v11, v12, v13}, Lcom/ibm/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    .line 26
    new-instance v11, Lcom/ibm/icu/impl/StandardPlural;

    const-string v13, "EQ_0"

    const/4 v14, 0x6

    const-string v15, "=0"

    invoke-direct {v11, v13, v14, v15}, Lcom/ibm/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/ibm/icu/impl/StandardPlural;->EQ_0:Lcom/ibm/icu/impl/StandardPlural;

    .line 27
    new-instance v13, Lcom/ibm/icu/impl/StandardPlural;

    const-string v15, "EQ_1"

    const/4 v14, 0x7

    const-string v12, "=1"

    invoke-direct {v13, v15, v14, v12}, Lcom/ibm/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/ibm/icu/impl/StandardPlural;->EQ_1:Lcom/ibm/icu/impl/StandardPlural;

    const/16 v12, 0x8

    new-array v12, v12, [Lcom/ibm/icu/impl/StandardPlural;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    .line 19
    sput-object v12, Lcom/ibm/icu/impl/StandardPlural;->$VALUES:[Lcom/ibm/icu/impl/StandardPlural;

    .line 32
    invoke-virtual {v9}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v0

    sput v0, Lcom/ibm/icu/impl/StandardPlural;->OTHER_INDEX:I

    .line 39
    invoke-static {}, Lcom/ibm/icu/impl/StandardPlural;->values()[Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    .line 44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput-object p3, p0, Lcom/ibm/icu/impl/StandardPlural;->keyword:Ljava/lang/String;

    return-void
.end method

.method public static final fromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;
    .locals 1

    .line 121
    invoke-static {p0}, Lcom/ibm/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final indexFromString(Ljava/lang/CharSequence;)I
    .locals 1

    .line 153
    invoke-static {p0}, Lcom/ibm/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result p0

    return p0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final indexOrNegativeFromString(Ljava/lang/CharSequence;)I
    .locals 0

    .line 134
    invoke-static {p0}, Lcom/ibm/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static final indexOrOtherIndexFromString(Ljava/lang/CharSequence;)I
    .locals 0

    .line 143
    invoke-static {p0}, Lcom/ibm/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    sget-object p0, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result p0

    return p0
.end method

.method public static final orNullFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;
    .locals 3

    .line 64
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "other"

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 97
    sget-object p0, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    return-object p0

    :cond_1
    const-string v0, "many"

    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    sget-object p0, Lcom/ibm/icu/impl/StandardPlural;->MANY:Lcom/ibm/icu/impl/StandardPlural;

    return-object p0

    :cond_2
    const-string v0, "zero"

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 92
    sget-object p0, Lcom/ibm/icu/impl/StandardPlural;->ZERO:Lcom/ibm/icu/impl/StandardPlural;

    return-object p0

    :cond_3
    const-string v0, "one"

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    sget-object p0, Lcom/ibm/icu/impl/StandardPlural;->ONE:Lcom/ibm/icu/impl/StandardPlural;

    return-object p0

    :cond_4
    const-string v0, "two"

    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 83
    sget-object p0, Lcom/ibm/icu/impl/StandardPlural;->TWO:Lcom/ibm/icu/impl/StandardPlural;

    return-object p0

    :cond_5
    const-string v0, "few"

    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 85
    sget-object p0, Lcom/ibm/icu/impl/StandardPlural;->FEW:Lcom/ibm/icu/impl/StandardPlural;

    return-object p0

    :cond_6
    const-string v0, "=0"

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 74
    sget-object p0, Lcom/ibm/icu/impl/StandardPlural;->EQ_0:Lcom/ibm/icu/impl/StandardPlural;

    return-object p0

    :cond_7
    const-string v0, "=1"

    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 76
    sget-object p0, Lcom/ibm/icu/impl/StandardPlural;->EQ_1:Lcom/ibm/icu/impl/StandardPlural;

    return-object p0

    :cond_8
    const/4 v0, 0x0

    .line 66
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_9

    .line 67
    sget-object p0, Lcom/ibm/icu/impl/StandardPlural;->EQ_0:Lcom/ibm/icu/impl/StandardPlural;

    return-object p0

    .line 68
    :cond_9
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 v0, 0x31

    if-ne p0, v0, :cond_a

    .line 69
    sget-object p0, Lcom/ibm/icu/impl/StandardPlural;->EQ_1:Lcom/ibm/icu/impl/StandardPlural;

    return-object p0

    :cond_a
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final orOtherFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;
    .locals 0

    .line 111
    invoke-static {p0}, Lcom/ibm/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    sget-object p0, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/StandardPlural;
    .locals 1

    .line 19
    const-class v0, Lcom/ibm/icu/impl/StandardPlural;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/StandardPlural;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/StandardPlural;
    .locals 1

    .line 19
    sget-object v0, Lcom/ibm/icu/impl/StandardPlural;->$VALUES:[Lcom/ibm/icu/impl/StandardPlural;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/StandardPlural;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/StandardPlural;

    return-object v0
.end method


# virtual methods
.method public final getKeyword()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/ibm/icu/impl/StandardPlural;->keyword:Ljava/lang/String;

    return-object v0
.end method
