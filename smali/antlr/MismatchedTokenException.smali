.class public Lantlr/MismatchedTokenException;
.super Lantlr/RecognitionException;
.source "MismatchedTokenException.java"


# static fields
.field public static final NOT_RANGE:I = 0x4

.field public static final NOT_SET:I = 0x6

.field public static final NOT_TOKEN:I = 0x2

.field public static final RANGE:I = 0x3

.field public static final SET:I = 0x5

.field public static final TOKEN:I = 0x1


# instance fields
.field public expecting:I

.field public mismatchType:I

.field public node:Lantlr/collections/AST;

.field public set:Lantlr/collections/impl/BitSet;

.field public token:Lantlr/Token;

.field tokenNames:[Ljava/lang/String;

.field tokenText:Ljava/lang/String;

.field public upper:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "Mismatched Token: expecting any AST node"

    const-string v1, "<AST>"

    const/4 v2, -0x1

    .line 44
    invoke-direct {p0, v0, v1, v2, v2}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lantlr/Token;IIZLjava/lang/String;)V
    .locals 3

    .line 95
    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v0

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result v1

    const-string v2, "Mismatched Token"

    invoke-direct {p0, v2, p6, v0, v1}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p6, 0x0

    .line 21
    iput-object p6, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lantlr/MismatchedTokenException;->tokenNames:[Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lantlr/MismatchedTokenException;->token:Lantlr/Token;

    .line 98
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    if-eqz p5, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 99
    :goto_0
    iput p1, p0, Lantlr/MismatchedTokenException;->mismatchType:I

    .line 100
    iput p3, p0, Lantlr/MismatchedTokenException;->expecting:I

    .line 101
    iput p4, p0, Lantlr/MismatchedTokenException;->upper:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lantlr/Token;IZLjava/lang/String;)V
    .locals 3

    .line 106
    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v0

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result v1

    const-string v2, "Mismatched Token"

    invoke-direct {p0, v2, p5, v0, v1}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p5, 0x0

    .line 21
    iput-object p5, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lantlr/MismatchedTokenException;->tokenNames:[Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lantlr/MismatchedTokenException;->token:Lantlr/Token;

    .line 109
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    if-eqz p4, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 110
    :goto_0
    iput p1, p0, Lantlr/MismatchedTokenException;->mismatchType:I

    .line 111
    iput p3, p0, Lantlr/MismatchedTokenException;->expecting:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lantlr/Token;Lantlr/collections/impl/BitSet;ZLjava/lang/String;)V
    .locals 3

    .line 116
    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v0

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result v1

    const-string v2, "Mismatched Token"

    invoke-direct {p0, v2, p5, v0, v1}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p5, 0x0

    .line 21
    iput-object p5, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lantlr/MismatchedTokenException;->tokenNames:[Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lantlr/MismatchedTokenException;->token:Lantlr/Token;

    .line 119
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    if-eqz p4, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 120
    :goto_0
    iput p1, p0, Lantlr/MismatchedTokenException;->mismatchType:I

    .line 121
    iput-object p3, p0, Lantlr/MismatchedTokenException;->set:Lantlr/collections/impl/BitSet;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lantlr/collections/AST;IIZ)V
    .locals 4

    const/4 v0, -0x1

    if-nez p2, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {p2}, Lantlr/collections/AST;->getLine()I

    move-result v1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lantlr/collections/AST;->getColumn()I

    move-result v0

    :goto_1
    const-string v2, "Mismatched Token"

    const-string v3, "<AST>"

    invoke-direct {p0, v2, v3, v1, v0}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lantlr/MismatchedTokenException;->tokenNames:[Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lantlr/MismatchedTokenException;->node:Lantlr/collections/AST;

    if-nez p2, :cond_2

    const-string p1, "<empty tree>"

    .line 53
    iput-object p1, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    goto :goto_2

    .line 56
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    :goto_2
    if-eqz p5, :cond_3

    const/4 p1, 0x4

    goto :goto_3

    :cond_3
    const/4 p1, 0x3

    .line 58
    :goto_3
    iput p1, p0, Lantlr/MismatchedTokenException;->mismatchType:I

    .line 59
    iput p3, p0, Lantlr/MismatchedTokenException;->expecting:I

    .line 60
    iput p4, p0, Lantlr/MismatchedTokenException;->upper:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lantlr/collections/AST;IZ)V
    .locals 4

    const/4 v0, -0x1

    if-nez p2, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 65
    :cond_0
    invoke-interface {p2}, Lantlr/collections/AST;->getLine()I

    move-result v1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lantlr/collections/AST;->getColumn()I

    move-result v0

    :goto_1
    const-string v2, "Mismatched Token"

    const-string v3, "<AST>"

    invoke-direct {p0, v2, v3, v1, v0}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lantlr/MismatchedTokenException;->tokenNames:[Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lantlr/MismatchedTokenException;->node:Lantlr/collections/AST;

    if-nez p2, :cond_2

    const-string p1, "<empty tree>"

    .line 69
    iput-object p1, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    goto :goto_2

    .line 72
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    :goto_2
    if-eqz p4, :cond_3

    const/4 p1, 0x2

    goto :goto_3

    :cond_3
    const/4 p1, 0x1

    .line 74
    :goto_3
    iput p1, p0, Lantlr/MismatchedTokenException;->mismatchType:I

    .line 75
    iput p3, p0, Lantlr/MismatchedTokenException;->expecting:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lantlr/collections/AST;Lantlr/collections/impl/BitSet;Z)V
    .locals 4

    const/4 v0, -0x1

    if-nez p2, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-interface {p2}, Lantlr/collections/AST;->getLine()I

    move-result v1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lantlr/collections/AST;->getColumn()I

    move-result v0

    :goto_1
    const-string v2, "Mismatched Token"

    const-string v3, "<AST>"

    invoke-direct {p0, v2, v3, v1, v0}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lantlr/MismatchedTokenException;->tokenNames:[Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lantlr/MismatchedTokenException;->node:Lantlr/collections/AST;

    if-nez p2, :cond_2

    const-string p1, "<empty tree>"

    .line 84
    iput-object p1, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    goto :goto_2

    .line 87
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    :goto_2
    if-eqz p4, :cond_3

    const/4 p1, 0x6

    goto :goto_3

    :cond_3
    const/4 p1, 0x5

    .line 89
    :goto_3
    iput p1, p0, Lantlr/MismatchedTokenException;->mismatchType:I

    .line 90
    iput-object p3, p0, Lantlr/MismatchedTokenException;->set:Lantlr/collections/impl/BitSet;

    return-void
.end method

.method private tokenName(I)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "<Set of tokens>"

    return-object p1

    :cond_0
    if-ltz p1, :cond_2

    .line 165
    iget-object v0, p0, Lantlr/MismatchedTokenException;->tokenNames:[Ljava/lang/String;

    array-length v1, v0

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    aget-object p1, v0, p1

    return-object p1

    .line 166
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 6

    .line 128
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    iget v1, p0, Lantlr/MismatchedTokenException;->mismatchType:I

    const-string v2, ".."

    const-string v3, "expecting "

    const-string v4, ", found \'"

    const-string v5, "\'"

    packed-switch v1, :pswitch_data_0

    .line 154
    invoke-super {p0}, Lantlr/RecognitionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 145
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lantlr/MismatchedTokenException;->mismatchType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    const-string v2, "NOT "

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "one of ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    iget-object v1, p0, Lantlr/MismatchedTokenException;->set:Lantlr/collections/impl/BitSet;

    invoke-virtual {v1}, Lantlr/collections/impl/BitSet;->toArray()[I

    move-result-object v1

    const/4 v2, 0x0

    .line 147
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    const-string v3, " "

    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    aget v3, v1, v2

    invoke-direct {p0, v3}, Lantlr/MismatchedTokenException;->tokenName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 151
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "), found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 141
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expecting token NOT in range: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lantlr/MismatchedTokenException;->expecting:I

    invoke-direct {p0, v3}, Lantlr/MismatchedTokenException;->tokenName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lantlr/MismatchedTokenException;->upper:I

    invoke-direct {p0, v2}, Lantlr/MismatchedTokenException;->tokenName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 138
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expecting token in range: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lantlr/MismatchedTokenException;->expecting:I

    invoke-direct {p0, v3}, Lantlr/MismatchedTokenException;->tokenName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lantlr/MismatchedTokenException;->upper:I

    invoke-direct {p0, v2}, Lantlr/MismatchedTokenException;->tokenName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 135
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "expecting anything but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lantlr/MismatchedTokenException;->expecting:I

    invoke-direct {p0, v2}, Lantlr/MismatchedTokenException;->tokenName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "; got it anyway"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 132
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lantlr/MismatchedTokenException;->expecting:I

    invoke-direct {p0, v2}, Lantlr/MismatchedTokenException;->tokenName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/MismatchedTokenException;->tokenText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
