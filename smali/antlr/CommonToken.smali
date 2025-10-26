.class public Lantlr/CommonToken;
.super Lantlr/Token;
.source "CommonToken.java"


# instance fields
.field protected col:I

.field protected line:I

.field protected text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lantlr/Token;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lantlr/CommonToken;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lantlr/Token;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lantlr/CommonToken;->text:Ljava/lang/String;

    .line 20
    iput p1, p0, Lantlr/CommonToken;->type:I

    .line 21
    invoke-virtual {p0, p2}, Lantlr/CommonToken;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lantlr/Token;-><init>()V

    .line 25
    iput-object p1, p0, Lantlr/CommonToken;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .line 50
    iget v0, p0, Lantlr/CommonToken;->col:I

    return v0
.end method

.method public getLine()I
    .locals 1

    .line 29
    iget v0, p0, Lantlr/CommonToken;->line:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lantlr/CommonToken;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setColumn(I)V
    .locals 0

    .line 54
    iput p1, p0, Lantlr/CommonToken;->col:I

    return-void
.end method

.method public setLine(I)V
    .locals 0

    .line 37
    iput p1, p0, Lantlr/CommonToken;->line:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lantlr/CommonToken;->text:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/CommonToken;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\",<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lantlr/CommonToken;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ">,line="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lantlr/CommonToken;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ",col="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lantlr/CommonToken;->col:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
