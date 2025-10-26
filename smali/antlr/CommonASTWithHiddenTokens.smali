.class public Lantlr/CommonASTWithHiddenTokens;
.super Lantlr/CommonAST;
.source "CommonASTWithHiddenTokens.java"


# instance fields
.field protected hiddenAfter:Lantlr/CommonHiddenStreamToken;

.field protected hiddenBefore:Lantlr/CommonHiddenStreamToken;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lantlr/CommonAST;-><init>()V

    return-void
.end method

.method public constructor <init>(Lantlr/Token;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lantlr/CommonAST;-><init>(Lantlr/Token;)V

    return-void
.end method


# virtual methods
.method public getHiddenAfter()Lantlr/CommonHiddenStreamToken;
    .locals 1

    .line 25
    iget-object v0, p0, Lantlr/CommonASTWithHiddenTokens;->hiddenAfter:Lantlr/CommonHiddenStreamToken;

    return-object v0
.end method

.method public getHiddenBefore()Lantlr/CommonHiddenStreamToken;
    .locals 1

    .line 29
    iget-object v0, p0, Lantlr/CommonASTWithHiddenTokens;->hiddenBefore:Lantlr/CommonHiddenStreamToken;

    return-object v0
.end method

.method public initialize(Lantlr/Token;)V
    .locals 1

    .line 33
    check-cast p1, Lantlr/CommonHiddenStreamToken;

    .line 34
    invoke-super {p0, p1}, Lantlr/CommonAST;->initialize(Lantlr/Token;)V

    .line 35
    invoke-virtual {p1}, Lantlr/CommonHiddenStreamToken;->getHiddenBefore()Lantlr/CommonHiddenStreamToken;

    move-result-object v0

    iput-object v0, p0, Lantlr/CommonASTWithHiddenTokens;->hiddenBefore:Lantlr/CommonHiddenStreamToken;

    .line 36
    invoke-virtual {p1}, Lantlr/CommonHiddenStreamToken;->getHiddenAfter()Lantlr/CommonHiddenStreamToken;

    move-result-object p1

    iput-object p1, p0, Lantlr/CommonASTWithHiddenTokens;->hiddenAfter:Lantlr/CommonHiddenStreamToken;

    return-void
.end method
