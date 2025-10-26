.class public Lantlr/ParseTreeToken;
.super Lantlr/ParseTree;
.source "ParseTreeToken.java"


# instance fields
.field protected token:Lantlr/Token;


# direct methods
.method public constructor <init>(Lantlr/Token;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lantlr/ParseTree;-><init>()V

    .line 15
    iput-object p1, p0, Lantlr/ParseTreeToken;->token:Lantlr/Token;

    return-void
.end method


# virtual methods
.method protected getLeftmostDerivation(Ljava/lang/StringBuffer;I)I
    .locals 1

    const/16 v0, 0x20

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 20
    invoke-virtual {p0}, Lantlr/ParseTreeToken;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return p2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lantlr/ParseTreeToken;->token:Lantlr/Token;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "<missing token>"

    return-object v0
.end method
