.class final Lcom/ibm/icu/text/RBNFChinesePostProcessor;
.super Ljava/lang/Object;
.source "RBNFChinesePostProcessor.java"

# interfaces
.implements Lcom/ibm/icu/text/RBNFPostProcessor;


# static fields
.field private static final rulesetNames:[Ljava/lang/String;


# instance fields
.field private format:I

.field private longForm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "%traditional"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "%simplified"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "%accounting"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "%time"

    aput-object v2, v0, v1

    .line 20
    sput-object v0, Lcom/ibm/icu/text/RBNFChinesePostProcessor;->rulesetNames:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public process(Ljava/lang/StringBuilder;Lcom/ibm/icu/text/NFRuleSet;)V
    .locals 12

    .line 40
    invoke-virtual {p2}, Lcom/ibm/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 41
    :goto_0
    sget-object v2, Lcom/ibm/icu/text/RBNFChinesePostProcessor;->rulesetNames:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ge v1, v3, :cond_3

    .line 42
    aget-object v2, v2, v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    iput v1, p0, Lcom/ibm/icu/text/RBNFChinesePostProcessor;->format:I

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p2, 0x1

    .line 44
    :goto_2
    iput-boolean p2, p0, Lcom/ibm/icu/text/RBNFChinesePostProcessor;->longForm:Z

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_3
    :goto_3
    iget-boolean p2, p0, Lcom/ibm/icu/text/RBNFChinesePostProcessor;->longForm:Z

    const/4 v1, -0x1

    if-eqz p2, :cond_5

    const-string p2, "*"

    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    :goto_4
    if-eq v0, v1, :cond_4

    add-int/lit8 v2, v0, 0x1

    .line 52
    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p1, p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_4

    :cond_4
    return-void

    :cond_5
    new-array p2, v4, [[Ljava/lang/String;

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/String;

    const-string v6, "\u842c"

    aput-object v6, v3, v0

    const-string v7, "\u5104"

    aput-object v7, v3, v5

    const/4 v8, 0x2

    const-string v9, "\u5146"

    aput-object v9, v3, v8

    const-string v10, "\u3007"

    aput-object v10, v3, v4

    aput-object v3, p2, v0

    new-array v3, v2, [Ljava/lang/String;

    const-string v11, "\u4e07"

    aput-object v11, v3, v0

    const-string v11, "\u4ebf"

    aput-object v11, v3, v5

    aput-object v9, v3, v8

    aput-object v10, v3, v4

    aput-object v3, p2, v5

    new-array v2, v2, [Ljava/lang/String;

    aput-object v6, v2, v0

    aput-object v7, v2, v5

    aput-object v9, v2, v8

    const-string v3, "\u96f6"

    aput-object v3, v2, v4

    aput-object v2, p2, v8

    .line 83
    iget v2, p0, Lcom/ibm/icu/text/RBNFChinesePostProcessor;->format:I

    aget-object v2, p2, v2

    const/4 v3, 0x0

    .line 84
    :goto_5
    array-length v6, v2

    sub-int/2addr v6, v5

    const/16 v7, 0x7c

    if-ge v3, v6, :cond_7

    .line 85
    aget-object v6, v2, v3

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v1, :cond_6

    .line 87
    aget-object v9, v2, v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v6, v9

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    const-string v2, "\u9ede"

    .line 92
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_8

    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 98
    :cond_8
    iget v3, p0, Lcom/ibm/icu/text/RBNFChinesePostProcessor;->format:I

    aget-object p2, p2, v3

    aget-object p2, p2, v4

    const/4 v3, 0x0

    const/4 v6, -0x1

    :goto_6
    const/16 v9, 0x2a

    if-ltz v2, :cond_b

    const-string v10, "|"

    .line 100
    invoke-virtual {p1, v10, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v10

    .line 101
    invoke-virtual {p1, p2, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v10, :cond_a

    if-lez v2, :cond_9

    add-int/lit8 v11, v2, -0x1

    .line 104
    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    if-eq v11, v9, :cond_9

    const/4 v9, 0x2

    goto :goto_7

    :cond_9
    const/4 v9, 0x1

    goto :goto_7

    :cond_a
    const/4 v9, 0x0

    :goto_7
    add-int/lit8 v10, v10, -0x1

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v9

    packed-switch v3, :pswitch_data_0

    .line 150
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_0
    add-int/lit8 v3, v2, -0x1

    .line 141
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {p1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_8

    :pswitch_1
    add-int/lit8 v2, v6, -0x1

    .line 132
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v6, v3

    invoke-virtual {p1, v2, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_9

    :pswitch_2
    add-int/lit8 v3, v2, -0x1

    .line 127
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {p1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_8
    const/4 v3, 0x0

    goto :goto_a

    :pswitch_3
    move v6, v2

    move v3, v9

    goto :goto_b

    :goto_9
    :pswitch_4
    move v3, v9

    :goto_a
    const/4 v6, -0x1

    :goto_b
    move v2, v10

    goto :goto_6

    .line 154
    :cond_b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    :cond_c
    :goto_c
    add-int/2addr p2, v1

    if-ltz p2, :cond_e

    .line 155
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v9, :cond_d

    if-ne v0, v7, :cond_c

    :cond_d
    add-int/lit8 v0, p2, 0x1

    .line 157
    invoke-virtual {p1, p2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
