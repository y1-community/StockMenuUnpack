.class public Lantlr/DefineGrammarSymbols;
.super Ljava/lang/Object;
.source "DefineGrammarSymbols.java"

# interfaces
.implements Lantlr/ANTLRGrammarParseBehavior;


# static fields
.field static final DEFAULT_TOKENMANAGER_NAME:Ljava/lang/String; = "*default"


# instance fields
.field analyzer:Lantlr/LLkAnalyzer;

.field args:[Ljava/lang/String;

.field protected grammar:Lantlr/Grammar;

.field protected grammars:Ljava/util/Hashtable;

.field protected headerActions:Ljava/util/Hashtable;

.field language:Ljava/lang/String;

.field protected numLexers:I

.field protected numParsers:I

.field protected numTreeParsers:I

.field thePreambleAction:Lantlr/Token;

.field protected tokenManagers:Ljava/util/Hashtable;

.field protected tool:Lantlr/Tool;


# direct methods
.method public constructor <init>(Lantlr/Tool;[Ljava/lang/String;Lantlr/LLkAnalyzer;)V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lantlr/DefineGrammarSymbols;->grammars:Ljava/util/Hashtable;

    .line 24
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    .line 38
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lantlr/DefineGrammarSymbols;->headerActions:Ljava/util/Hashtable;

    .line 40
    new-instance v0, Lantlr/CommonToken;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lantlr/CommonToken;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lantlr/DefineGrammarSymbols;->thePreambleAction:Lantlr/Token;

    const-string v0, "Java"

    .line 42
    iput-object v0, p0, Lantlr/DefineGrammarSymbols;->language:Ljava/lang/String;

    .line 44
    iput v1, p0, Lantlr/DefineGrammarSymbols;->numLexers:I

    .line 45
    iput v1, p0, Lantlr/DefineGrammarSymbols;->numParsers:I

    .line 46
    iput v1, p0, Lantlr/DefineGrammarSymbols;->numTreeParsers:I

    .line 49
    iput-object p1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    .line 50
    iput-object p2, p0, Lantlr/DefineGrammarSymbols;->args:[Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lantlr/DefineGrammarSymbols;->analyzer:Lantlr/LLkAnalyzer;

    return-void
.end method


# virtual methods
.method public _refStringLiteral(Lantlr/Token;Lantlr/Token;IZ)V
    .locals 0

    .line 55
    iget-object p2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    instance-of p2, p2, Lantlr/LexerGrammar;

    if-nez p2, :cond_1

    .line 57
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object p2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p2, p1}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object p2

    if-eqz p2, :cond_0

    return-void

    .line 62
    :cond_0
    new-instance p2, Lantlr/StringLiteralSymbol;

    invoke-direct {p2, p1}, Lantlr/StringLiteralSymbol;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p1}, Lantlr/TokenManager;->nextTokenType()I

    move-result p1

    .line 64
    invoke-virtual {p2, p1}, Lantlr/StringLiteralSymbol;->setTokenType(I)V

    .line 65
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p1, p2}, Lantlr/TokenManager;->define(Lantlr/TokenSymbol;)V

    :cond_1
    return-void
.end method

.method public _refToken(Lantlr/Token;Lantlr/Token;Lantlr/Token;Lantlr/Token;ZIZ)V
    .locals 0

    .line 77
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    .line 78
    iget-object p2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p2, p1}, Lantlr/TokenManager;->tokenDefined(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 84
    iget-object p2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p2}, Lantlr/TokenManager;->nextTokenType()I

    move-result p2

    .line 85
    new-instance p3, Lantlr/TokenSymbol;

    invoke-direct {p3, p1}, Lantlr/TokenSymbol;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p3, p2}, Lantlr/TokenSymbol;->setTokenType(I)V

    .line 87
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p1, p3}, Lantlr/TokenManager;->define(Lantlr/TokenSymbol;)V

    :cond_0
    return-void
.end method

.method public abortGrammar()V
    .locals 2

    .line 93
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammars:Ljava/util/Hashtable;

    iget-object v1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    return-void
.end method

.method public beginAlt(Z)V
    .locals 0

    return-void
.end method

.method public beginChildList()V
    .locals 0

    return-void
.end method

.method public beginExceptionGroup()V
    .locals 0

    return-void
.end method

.method public beginExceptionSpec(Lantlr/Token;)V
    .locals 0

    return-void
.end method

.method public beginSubRule(Lantlr/Token;Lantlr/Token;Z)V
    .locals 0

    return-void
.end method

.method public beginTree(Lantlr/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/SemanticException;
        }
    .end annotation

    return-void
.end method

.method public defineRuleName(Lantlr/Token;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/SemanticException;
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p3

    .line 127
    iget v0, p1, Lantlr/Token;->type:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 129
    invoke-static {p3}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 131
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lantlr/TokenManager;->tokenDefined(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0}, Lantlr/TokenManager;->nextTokenType()I

    move-result v0

    .line 133
    new-instance v1, Lantlr/TokenSymbol;

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lantlr/TokenSymbol;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1, v0}, Lantlr/TokenSymbol;->setTokenType(I)V

    .line 135
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v0, v1}, Lantlr/TokenManager;->define(Lantlr/TokenSymbol;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {v0, p3}, Lantlr/Grammar;->isDefined(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {v0, p3}, Lantlr/Grammar;->getSymbol(Ljava/lang/String;)Lantlr/GrammarSymbol;

    move-result-object v0

    check-cast v0, Lantlr/RuleSymbol;

    .line 144
    invoke-virtual {v0}, Lantlr/RuleSymbol;->isDefined()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "redefinition of rule "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v3

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    invoke-virtual {v1, p3, v2, v3, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 149
    :cond_1
    new-instance v0, Lantlr/RuleSymbol;

    invoke-direct {v0, p3}, Lantlr/RuleSymbol;-><init>(Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {p1, v0}, Lantlr/Grammar;->define(Lantlr/RuleSymbol;)V

    .line 152
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lantlr/RuleSymbol;->setDefined()V

    .line 153
    iput-object p2, v0, Lantlr/RuleSymbol;->access:Ljava/lang/String;

    .line 154
    iput-object p4, v0, Lantlr/RuleSymbol;->comment:Ljava/lang/String;

    return-void
.end method

.method public defineToken(Lantlr/Token;Lantlr/Token;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 167
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v2, "Redefinition of token in tokens {...}: "

    if-eqz v0, :cond_7

    .line 172
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p1, v0}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object p1

    check-cast p1, Lantlr/StringLiteralSymbol;

    if-eqz p1, :cond_4

    if-eqz v1, :cond_3

    .line 179
    invoke-virtual {p1}, Lantlr/StringLiteralSymbol;->getLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_4

    .line 185
    invoke-virtual {p1, v1}, Lantlr/StringLiteralSymbol;->setLabel(Ljava/lang/String;)V

    .line 187
    iget-object v3, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {v3, v1, p1}, Lantlr/TokenManager;->mapToTokenSymbol(Ljava/lang/String;Lantlr/TokenSymbol;)V

    goto :goto_2

    .line 180
    :cond_3
    :goto_1
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Redefinition of literal in tokens {...}: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v2

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    invoke-virtual {p1, v0, v1, v2, p2}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    :cond_4
    :goto_2
    if-eqz v1, :cond_6

    .line 193
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p1, v1}, Lantlr/TokenManager;->getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 197
    instance-of v3, p1, Lantlr/StringLiteralSymbol;

    if-eqz v3, :cond_5

    .line 198
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v2

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    invoke-virtual {p1, v0, v1, v2, p2}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    .line 207
    :cond_5
    invoke-virtual {p1}, Lantlr/TokenSymbol;->getTokenType()I

    move-result p1

    .line 209
    new-instance p2, Lantlr/StringLiteralSymbol;

    invoke-direct {p2, v0}, Lantlr/StringLiteralSymbol;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2, p1}, Lantlr/StringLiteralSymbol;->setTokenType(I)V

    .line 211
    invoke-virtual {p2, v1}, Lantlr/StringLiteralSymbol;->setLabel(Ljava/lang/String;)V

    .line 213
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p1, p2}, Lantlr/TokenManager;->define(Lantlr/TokenSymbol;)V

    .line 215
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p1, v1, p2}, Lantlr/TokenManager;->mapToTokenSymbol(Ljava/lang/String;Lantlr/TokenSymbol;)V

    return-void

    .line 220
    :cond_6
    new-instance p1, Lantlr/StringLiteralSymbol;

    invoke-direct {p1, v0}, Lantlr/StringLiteralSymbol;-><init>(Ljava/lang/String;)V

    .line 221
    iget-object p2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p2}, Lantlr/TokenManager;->nextTokenType()I

    move-result p2

    .line 222
    invoke-virtual {p1, p2}, Lantlr/StringLiteralSymbol;->setTokenType(I)V

    .line 223
    invoke-virtual {p1, v1}, Lantlr/StringLiteralSymbol;->setLabel(Ljava/lang/String;)V

    .line 224
    iget-object p2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p2, p1}, Lantlr/TokenManager;->define(Lantlr/TokenSymbol;)V

    if-eqz v1, :cond_9

    .line 227
    iget-object p2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p2, v1, p1}, Lantlr/TokenManager;->mapToTokenSymbol(Ljava/lang/String;Lantlr/TokenSymbol;)V

    goto :goto_3

    .line 233
    :cond_7
    iget-object p2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p2, v1}, Lantlr/TokenManager;->tokenDefined(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 234
    iget-object p2, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {v1}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v2

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    invoke-virtual {p2, v0, v1, v2, p1}, Lantlr/Tool;->warning(Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    .line 237
    :cond_8
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p1}, Lantlr/TokenManager;->nextTokenType()I

    move-result p1

    .line 238
    new-instance p2, Lantlr/TokenSymbol;

    invoke-direct {p2, v1}, Lantlr/TokenSymbol;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2, p1}, Lantlr/TokenSymbol;->setTokenType(I)V

    .line 240
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object p1, p1, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p1, p2}, Lantlr/TokenManager;->define(Lantlr/TokenSymbol;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public endAlt()V
    .locals 0

    return-void
.end method

.method public endChildList()V
    .locals 0

    return-void
.end method

.method public endExceptionGroup()V
    .locals 0

    return-void
.end method

.method public endExceptionSpec()V
    .locals 0

    return-void
.end method

.method public endGrammar()V
    .locals 0

    return-void
.end method

.method public endOptions()V
    .locals 7

    .line 266
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    const-string v1, "*default"

    if-nez v0, :cond_1

    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->importVocab:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iput-object v1, v0, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/TokenManager;

    .line 274
    iget-object v1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {v1, v0}, Lantlr/Grammar;->setTokenManager(Lantlr/TokenManager;)V

    return-void

    .line 279
    :cond_0
    new-instance v0, Lantlr/SimpleTokenManager;

    iget-object v2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    iget-object v3, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    invoke-direct {v0, v2, v3}, Lantlr/SimpleTokenManager;-><init>(Ljava/lang/String;Lantlr/Tool;)V

    .line 280
    iget-object v2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {v2, v0}, Lantlr/Grammar;->setTokenManager(Lantlr/TokenManager;)V

    .line 282
    iget-object v2, p0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    iget-object v3, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v2, p0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->importVocab:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 290
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->importVocab:Ljava/lang/String;

    iget-object v3, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Grammar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {v2}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " cannot have importVocab same as default output vocab (grammar name); ignored."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/Tool;->warning(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    const/4 v1, 0x0

    iput-object v1, v0, Lantlr/Grammar;->importVocab:Ljava/lang/String;

    .line 297
    invoke-virtual {p0}, Lantlr/DefineGrammarSymbols;->endOptions()V

    return-void

    .line 302
    :cond_2
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    iget-object v3, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->importVocab:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    iget-object v1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->importVocab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/TokenManager;

    .line 308
    invoke-interface {v0}, Lantlr/TokenManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/TokenManager;

    .line 309
    iget-object v1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    invoke-interface {v0, v1}, Lantlr/TokenManager;->setName(Ljava/lang/String;)V

    .line 311
    invoke-interface {v0, v2}, Lantlr/TokenManager;->setReadOnly(Z)V

    .line 312
    iget-object v1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {v1, v0}, Lantlr/Grammar;->setTokenManager(Lantlr/TokenManager;)V

    .line 313
    iget-object v1, p0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    iget-object v2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 318
    :cond_3
    new-instance v0, Lantlr/ImportVocabTokenManager;

    iget-object v3, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->importVocab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v5, Lantlr/CodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v5, Lantlr/CodeGenerator;->TokenTypesFileExt:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    iget-object v6, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    invoke-direct {v0, v3, v4, v5, v6}, Lantlr/ImportVocabTokenManager;-><init>(Lantlr/Grammar;Ljava/lang/String;Ljava/lang/String;Lantlr/Tool;)V

    .line 323
    invoke-virtual {v0, v2}, Lantlr/ImportVocabTokenManager;->setReadOnly(Z)V

    .line 325
    iget-object v2, p0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    iget-object v3, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {v2, v0}, Lantlr/Grammar;->setTokenManager(Lantlr/TokenManager;)V

    .line 331
    iget-object v2, p0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 332
    iget-object v2, p0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void

    .line 339
    :cond_5
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->importVocab:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 341
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    iget-object v2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 343
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    iget-object v1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/TokenManager;

    .line 345
    iget-object v1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {v1, v0}, Lantlr/Grammar;->setTokenManager(Lantlr/TokenManager;)V

    return-void

    .line 350
    :cond_6
    new-instance v0, Lantlr/SimpleTokenManager;

    iget-object v2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    iget-object v3, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    invoke-direct {v0, v2, v3}, Lantlr/SimpleTokenManager;-><init>(Ljava/lang/String;Lantlr/Tool;)V

    .line 351
    iget-object v2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {v2, v0}, Lantlr/Grammar;->setTokenManager(Lantlr/TokenManager;)V

    .line 353
    iget-object v2, p0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    iget-object v3, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v2, p0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 356
    iget-object v2, p0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void

    .line 362
    :cond_8
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->importVocab:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 364
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v0, v0, Lantlr/Grammar;->importVocab:Ljava/lang/String;

    iget-object v3, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 365
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "exportVocab of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v4, v4, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " same as importVocab; probably not what you want"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lantlr/Tool;->error(Ljava/lang/String;)V

    .line 368
    :cond_9
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    iget-object v3, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->importVocab:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 371
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    iget-object v1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->importVocab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/TokenManager;

    .line 373
    invoke-interface {v0}, Lantlr/TokenManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/TokenManager;

    .line 374
    iget-object v1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v1, v1, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    invoke-interface {v0, v1}, Lantlr/TokenManager;->setName(Ljava/lang/String;)V

    .line 376
    invoke-interface {v0, v2}, Lantlr/TokenManager;->setReadOnly(Z)V

    .line 377
    iget-object v1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {v1, v0}, Lantlr/Grammar;->setTokenManager(Lantlr/TokenManager;)V

    .line 378
    iget-object v1, p0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    iget-object v2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v2, v2, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 382
    :cond_a
    new-instance v0, Lantlr/ImportVocabTokenManager;

    iget-object v3, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->importVocab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v5, Lantlr/CodeGenerator;->TokenTypesFileSuffix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v5, Lantlr/CodeGenerator;->TokenTypesFileExt:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v5, v5, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    iget-object v6, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    invoke-direct {v0, v3, v4, v5, v6}, Lantlr/ImportVocabTokenManager;-><init>(Lantlr/Grammar;Ljava/lang/String;Ljava/lang/String;Lantlr/Tool;)V

    .line 387
    invoke-virtual {v0, v2}, Lantlr/ImportVocabTokenManager;->setReadOnly(Z)V

    .line 389
    iget-object v2, p0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    iget-object v3, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object v3, v3, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {v2, v0}, Lantlr/Grammar;->setTokenManager(Lantlr/TokenManager;)V

    .line 394
    iget-object v2, p0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 395
    iget-object v2, p0, Lantlr/DefineGrammarSymbols;->tokenManagers:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public endRule(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public endSubRule()V
    .locals 0

    return-void
.end method

.method public endTree()V
    .locals 0

    return-void
.end method

.method public getHeaderAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 468
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->headerActions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lantlr/Token;

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 472
    :cond_0
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasError()V
    .locals 0

    return-void
.end method

.method public noASTSubRule()V
    .locals 0

    return-void
.end method

.method public oneOrMoreSubRule()V
    .locals 0

    return-void
.end method

.method public optionalSubRule()V
    .locals 0

    return-void
.end method

.method public refAction(Lantlr/Token;)V
    .locals 0

    return-void
.end method

.method public refArgAction(Lantlr/Token;)V
    .locals 0

    return-void
.end method

.method public refCharLiteral(Lantlr/Token;Lantlr/Token;ZIZ)V
    .locals 0

    return-void
.end method

.method public refCharRange(Lantlr/Token;Lantlr/Token;Lantlr/Token;IZ)V
    .locals 0

    return-void
.end method

.method public refElementOption(Lantlr/Token;Lantlr/Token;)V
    .locals 0

    return-void
.end method

.method public refExceptionHandler(Lantlr/Token;Lantlr/Token;)V
    .locals 0

    return-void
.end method

.method public refHeaderAction(Lantlr/Token;Lantlr/Token;)V
    .locals 3

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\""

    invoke-static {p1, v1, v1}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 458
    :goto_0
    iget-object v1, p0, Lantlr/DefineGrammarSymbols;->headerActions:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 459
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ": header action already defined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 462
    :cond_1
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ": header action \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\' already defined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/Tool;->error(Ljava/lang/String;)V

    .line 464
    :cond_2
    :goto_1
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->headerActions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public refInitAction(Lantlr/Token;)V
    .locals 0

    return-void
.end method

.method public refMemberAction(Lantlr/Token;)V
    .locals 0

    return-void
.end method

.method public refPreambleAction(Lantlr/Token;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lantlr/DefineGrammarSymbols;->thePreambleAction:Lantlr/Token;

    return-void
.end method

.method public refReturnAction(Lantlr/Token;)V
    .locals 0

    return-void
.end method

.method public refRule(Lantlr/Token;Lantlr/Token;Lantlr/Token;Lantlr/Token;I)V
    .locals 0

    .line 493
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    .line 495
    iget p2, p2, Lantlr/Token;->type:I

    const/16 p3, 0x18

    if-ne p2, p3, :cond_0

    .line 497
    invoke-static {p1}, Lantlr/CodeGenerator;->encodeLexerRuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 499
    :cond_0
    iget-object p2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {p2, p1}, Lantlr/Grammar;->isDefined(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 500
    iget-object p2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    new-instance p3, Lantlr/RuleSymbol;

    invoke-direct {p3, p1}, Lantlr/RuleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lantlr/Grammar;->define(Lantlr/RuleSymbol;)V

    :cond_1
    return-void
.end method

.method public refSemPred(Lantlr/Token;)V
    .locals 0

    return-void
.end method

.method public refStringLiteral(Lantlr/Token;Lantlr/Token;IZ)V
    .locals 0

    .line 511
    invoke-virtual {p0, p1, p2, p3, p4}, Lantlr/DefineGrammarSymbols;->_refStringLiteral(Lantlr/Token;Lantlr/Token;IZ)V

    return-void
.end method

.method public refToken(Lantlr/Token;Lantlr/Token;Lantlr/Token;Lantlr/Token;ZIZ)V
    .locals 0

    .line 517
    invoke-virtual/range {p0 .. p7}, Lantlr/DefineGrammarSymbols;->_refToken(Lantlr/Token;Lantlr/Token;Lantlr/Token;Lantlr/Token;ZIZ)V

    return-void
.end method

.method public refTokenRange(Lantlr/Token;Lantlr/Token;Lantlr/Token;IZ)V
    .locals 14

    move-object v8, p0

    move/from16 v9, p5

    .line 523
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x22

    if-ne v0, v13, :cond_0

    move-object v2, p1

    .line 524
    invoke-virtual {p0, p1, v12, v11, v9}, Lantlr/DefineGrammarSymbols;->refStringLiteral(Lantlr/Token;Lantlr/Token;IZ)V

    goto :goto_0

    :cond_0
    move-object v2, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move/from16 v7, p5

    .line 527
    invoke-virtual/range {v0 .. v7}, Lantlr/DefineGrammarSymbols;->_refToken(Lantlr/Token;Lantlr/Token;Lantlr/Token;Lantlr/Token;ZIZ)V

    .line 529
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v13, :cond_1

    move-object/from16 v2, p2

    .line 530
    invoke-virtual {p0, v2, v12, v11, v9}, Lantlr/DefineGrammarSymbols;->_refStringLiteral(Lantlr/Token;Lantlr/Token;IZ)V

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move/from16 v7, p5

    .line 533
    invoke-virtual/range {v0 .. v7}, Lantlr/DefineGrammarSymbols;->_refToken(Lantlr/Token;Lantlr/Token;Lantlr/Token;Lantlr/Token;ZIZ)V

    :goto_1
    return-void
.end method

.method public refTokensSpecElementOption(Lantlr/Token;Lantlr/Token;Lantlr/Token;)V
    .locals 0

    return-void
.end method

.method public refTreeSpecifier(Lantlr/Token;)V
    .locals 0

    return-void
.end method

.method public refWildcard(Lantlr/Token;Lantlr/Token;I)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 545
    iput-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    return-void
.end method

.method public setArgOfRuleRef(Lantlr/Token;)V
    .locals 0

    return-void
.end method

.method public setCharVocabulary(Lantlr/collections/impl/BitSet;)V
    .locals 1

    .line 554
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    check-cast v0, Lantlr/LexerGrammar;

    invoke-virtual {v0, p1}, Lantlr/LexerGrammar;->setCharVocabulary(Lantlr/collections/impl/BitSet;)V

    return-void
.end method

.method public setFileOption(Lantlr/Token;Lantlr/Token;Ljava/lang/String;)V
    .locals 9

    .line 563
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_3

    .line 564
    invoke-virtual {p2}, Lantlr/Token;->getType()I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 565
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x22

    invoke-static {p1, p2}, Lantlr/StringUtils;->stripFront(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lantlr/StringUtils;->stripBack(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/DefineGrammarSymbols;->language:Ljava/lang/String;

    goto/16 :goto_2

    .line 567
    :cond_0
    invoke-virtual {p2}, Lantlr/Token;->getType()I

    move-result p1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    invoke-virtual {p2}, Lantlr/Token;->getType()I

    move-result p1

    const/16 v0, 0x29

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 571
    :cond_1
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v0

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    const-string v1, "language option must be string or identifier"

    invoke-virtual {p1, v1, p3, v0, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_2

    .line 568
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lantlr/DefineGrammarSymbols;->language:Ljava/lang/String;

    goto/16 :goto_2

    .line 574
    :cond_3
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mangleLiteralPrefix"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 575
    invoke-virtual {p2}, Lantlr/Token;->getType()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 576
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\""

    invoke-static {p1, p2, p2}, Lantlr/StringUtils;->stripFrontBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lantlr/Tool;->literalsPrefix:Ljava/lang/String;

    goto/16 :goto_2

    .line 579
    :cond_4
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v0

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    const-string v1, "mangleLiteralPrefix option must be string"

    invoke-virtual {p1, v1, p3, v0, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_2

    .line 582
    :cond_5
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v2, "upperCaseMangledLiterals"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "false"

    const-string v3, "true"

    if-eqz v0, :cond_8

    .line 583
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x1

    .line 584
    sput-boolean p1, Lantlr/Tool;->upperCaseMangledLiterals:Z

    goto/16 :goto_2

    .line 586
    :cond_6
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    .line 587
    sput-boolean p1, Lantlr/Tool;->upperCaseMangledLiterals:Z

    goto/16 :goto_2

    .line 590
    :cond_7
    iget-object p2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object p2, p2, Lantlr/Grammar;->antlrTool:Lantlr/Tool;

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v0

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    const-string v1, "Value for upperCaseMangledLiterals must be true or false"

    invoke-virtual {p2, v1, p3, v0, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_2

    .line 593
    :cond_8
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v4, "namespaceStd"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, " option must be a string"

    const-string v6, "genHashLines"

    const-string v7, "namespaceAntlr"

    const-string v8, "Cpp"

    if-nez v0, :cond_d

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_1

    .line 623
    :cond_9
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v2, "namespace"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 624
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->language:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->language:Ljava/lang/String;

    const-string v3, "CSharp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 626
    iget-object p2, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " option only valid for C++ and C# (a.k.a CSharp)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    invoke-virtual {p2, v0, p3, v1, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_2

    .line 630
    :cond_a
    invoke-virtual {p2}, Lantlr/Token;->getType()I

    move-result v0

    if-eq v0, v1, :cond_b

    .line 632
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    invoke-virtual {v0, p1, p3, v1, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_2

    .line 635
    :cond_b
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 636
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lantlr/Tool;->setNameSpace(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 641
    :cond_c
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid file-level option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result p1

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    invoke-virtual {v0, v1, p3, p1, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_2

    .line 597
    :cond_d
    :goto_1
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->language:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 598
    iget-object p2, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " option only valid for C++"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p1}, Lantlr/Token;->getColumn()I

    move-result p1

    invoke-virtual {p2, v0, p3, v1, p1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_2

    .line 601
    :cond_e
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v8, "noConstructors"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 602
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 603
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v0

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result v1

    const-string v2, "noConstructors option must be true or false"

    invoke-virtual {p1, v2, p3, v0, v1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 604
    :cond_f
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p1, Lantlr/Tool;->noConstructors:Z

    goto/16 :goto_2

    .line 605
    :cond_10
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 606
    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 607
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v0

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result v1

    const-string v2, "genHashLines option must be true or false"

    invoke-virtual {p1, v2, p3, v0, v1}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    .line 608
    :cond_11
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p1, Lantlr/Tool;->genHashLines:Z

    goto :goto_2

    .line 611
    :cond_12
    invoke-virtual {p2}, Lantlr/Token;->getType()I

    move-result v0

    if-eq v0, v1, :cond_13

    .line 612
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    invoke-virtual {v0, p1, p3, v1, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_2

    .line 615
    :cond_13
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_14

    .line 616
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lantlr/Tool;->namespaceStd:Ljava/lang/String;

    goto :goto_2

    .line 617
    :cond_14
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 618
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lantlr/Tool;->namespaceAntlr:Ljava/lang/String;

    :cond_15
    :goto_2
    return-void
.end method

.method public setGrammarOption(Lantlr/Token;Lantlr/Token;)V
    .locals 4

    .line 651
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tokdef"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tokenVocabulary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 658
    :cond_0
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "literal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    instance-of v1, v0, Lantlr/LexerGrammar;

    if-eqz v1, :cond_1

    .line 660
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    invoke-virtual {v0}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    const-string v2, "the literal option is invalid >= ANTLR 2.6.0.\n  Use the \"tokens {...}\" mechanism instead."

    invoke-virtual {p1, v2, v0, v1, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_3

    .line 664
    :cond_1
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exportVocab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x18

    const/16 v2, 0x29

    if-eqz v0, :cond_4

    .line 666
    invoke-virtual {p2}, Lantlr/Token;->getType()I

    move-result p1

    if-eq p1, v2, :cond_3

    invoke-virtual {p2}, Lantlr/Token;->getType()I

    move-result p1

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 670
    :cond_2
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    const-string v2, "exportVocab must be an identifier"

    invoke-virtual {p1, v2, v0, v1, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_3

    .line 667
    :cond_3
    :goto_0
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lantlr/Grammar;->exportVocab:Ljava/lang/String;

    goto :goto_3

    .line 673
    :cond_4
    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v3, "importVocab"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 674
    invoke-virtual {p2}, Lantlr/Token;->getType()I

    move-result p1

    if-eq p1, v2, :cond_6

    invoke-virtual {p2}, Lantlr/Token;->getType()I

    move-result p1

    if-ne p1, v1, :cond_5

    goto :goto_1

    .line 678
    :cond_5
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    const-string v2, "importVocab must be an identifier"

    invoke-virtual {p1, v2, v0, v1, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_3

    .line 675
    :cond_6
    :goto_1
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lantlr/Grammar;->importVocab:Ljava/lang/String;

    goto :goto_3

    .line 683
    :cond_7
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {p1}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lantlr/Grammar;->setOption(Ljava/lang/String;Lantlr/Token;)Z

    goto :goto_3

    .line 652
    :cond_8
    :goto_2
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {v0}, Lantlr/Grammar;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lantlr/Token;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/Token;->getColumn()I

    move-result p2

    const-string v2, "tokdef/tokenVocabulary options are invalid >= ANTLR 2.6.0.\n  Use importVocab/exportVocab instead.  Please see the documentation.\n  The previous options were so heinous that Terence changed the whole\n  vocabulary mechanism; it was better to change the names rather than\n  subtly change the functionality of the known options.  Sorry!"

    invoke-virtual {p1, v2, v0, v1, p2}, Lantlr/Tool;->error(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_3
    return-void
.end method

.method public setRuleOption(Lantlr/Token;Lantlr/Token;)V
    .locals 0

    return-void
.end method

.method public setSubruleOption(Lantlr/Token;Lantlr/Token;)V
    .locals 0

    return-void
.end method

.method public setUserExceptions(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startLexer(Ljava/lang/String;Lantlr/Token;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 695
    iget v0, p0, Lantlr/DefineGrammarSymbols;->numLexers:I

    if-lez v0, :cond_0

    .line 696
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "You may only have one lexer per grammar file: class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 698
    :cond_0
    iget v0, p0, Lantlr/DefineGrammarSymbols;->numLexers:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/DefineGrammarSymbols;->numLexers:I

    .line 699
    invoke-virtual {p0}, Lantlr/DefineGrammarSymbols;->reset()V

    .line 702
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammars:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/Grammar;

    if-eqz v0, :cond_2

    .line 704
    instance-of p1, v0, Lantlr/LexerGrammar;

    if-nez p1, :cond_1

    .line 705
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "\'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\' is already defined as a non-lexer"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    goto :goto_0

    .line 708
    :cond_1
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Lexer \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\' is already defined"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    goto :goto_0

    .line 713
    :cond_2
    new-instance v0, Lantlr/LexerGrammar;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    invoke-direct {v0, p2, v1, p3}, Lantlr/LexerGrammar;-><init>(Ljava/lang/String;Lantlr/Tool;Ljava/lang/String;)V

    .line 714
    iput-object p4, v0, Lantlr/LexerGrammar;->comment:Ljava/lang/String;

    .line 715
    iget-object p2, p0, Lantlr/DefineGrammarSymbols;->args:[Ljava/lang/String;

    invoke-virtual {v0, p2}, Lantlr/LexerGrammar;->processArguments([Ljava/lang/String;)V

    .line 716
    invoke-virtual {v0, p1}, Lantlr/LexerGrammar;->setFilename(Ljava/lang/String;)V

    .line 717
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->grammars:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lantlr/LexerGrammar;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->thePreambleAction:Lantlr/Token;

    iput-object p1, v0, Lantlr/LexerGrammar;->preambleAction:Lantlr/Token;

    .line 720
    new-instance p1, Lantlr/CommonToken;

    const/4 p2, 0x0

    const-string p3, ""

    invoke-direct {p1, p2, p3}, Lantlr/CommonToken;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lantlr/DefineGrammarSymbols;->thePreambleAction:Lantlr/Token;

    .line 722
    iput-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    :goto_0
    return-void
.end method

.method public startParser(Ljava/lang/String;Lantlr/Token;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 728
    iget v0, p0, Lantlr/DefineGrammarSymbols;->numParsers:I

    if-lez v0, :cond_0

    .line 729
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "You may only have one parser per grammar file: class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 731
    :cond_0
    iget v0, p0, Lantlr/DefineGrammarSymbols;->numParsers:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/DefineGrammarSymbols;->numParsers:I

    .line 732
    invoke-virtual {p0}, Lantlr/DefineGrammarSymbols;->reset()V

    .line 735
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammars:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/Grammar;

    if-eqz v0, :cond_2

    .line 737
    instance-of p1, v0, Lantlr/ParserGrammar;

    if-nez p1, :cond_1

    .line 738
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "\'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\' is already defined as a non-parser"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    goto :goto_0

    .line 741
    :cond_1
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Parser \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\' is already defined"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    goto :goto_0

    .line 746
    :cond_2
    new-instance v0, Lantlr/ParserGrammar;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    invoke-direct {v0, p2, v1, p3}, Lantlr/ParserGrammar;-><init>(Ljava/lang/String;Lantlr/Tool;Ljava/lang/String;)V

    iput-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    .line 747
    iput-object p4, v0, Lantlr/Grammar;->comment:Ljava/lang/String;

    .line 748
    iget-object p2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object p3, p0, Lantlr/DefineGrammarSymbols;->args:[Ljava/lang/String;

    invoke-virtual {p2, p3}, Lantlr/Grammar;->processArguments([Ljava/lang/String;)V

    .line 749
    iget-object p2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {p2, p1}, Lantlr/Grammar;->setFilename(Ljava/lang/String;)V

    .line 750
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->grammars:Ljava/util/Hashtable;

    iget-object p2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {p2}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {p1, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object p2, p0, Lantlr/DefineGrammarSymbols;->thePreambleAction:Lantlr/Token;

    iput-object p2, p1, Lantlr/Grammar;->preambleAction:Lantlr/Token;

    .line 753
    new-instance p1, Lantlr/CommonToken;

    const/4 p2, 0x0

    const-string p3, ""

    invoke-direct {p1, p2, p3}, Lantlr/CommonToken;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lantlr/DefineGrammarSymbols;->thePreambleAction:Lantlr/Token;

    :goto_0
    return-void
.end method

.method public startTreeWalker(Ljava/lang/String;Lantlr/Token;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 759
    iget v0, p0, Lantlr/DefineGrammarSymbols;->numTreeParsers:I

    if-lez v0, :cond_0

    .line 760
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "You may only have one tree parser per grammar file: class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    .line 762
    :cond_0
    iget v0, p0, Lantlr/DefineGrammarSymbols;->numTreeParsers:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lantlr/DefineGrammarSymbols;->numTreeParsers:I

    .line 763
    invoke-virtual {p0}, Lantlr/DefineGrammarSymbols;->reset()V

    .line 766
    iget-object v0, p0, Lantlr/DefineGrammarSymbols;->grammars:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/Grammar;

    if-eqz v0, :cond_2

    .line 768
    instance-of p1, v0, Lantlr/TreeWalkerGrammar;

    if-nez p1, :cond_1

    .line 769
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "\'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\' is already defined as a non-tree-walker"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    goto :goto_0

    .line 772
    :cond_1
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Tree-walker \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\' is already defined"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    goto :goto_0

    .line 777
    :cond_2
    new-instance v0, Lantlr/TreeWalkerGrammar;

    invoke-virtual {p2}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lantlr/DefineGrammarSymbols;->tool:Lantlr/Tool;

    invoke-direct {v0, p2, v1, p3}, Lantlr/TreeWalkerGrammar;-><init>(Ljava/lang/String;Lantlr/Tool;Ljava/lang/String;)V

    iput-object v0, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    .line 778
    iput-object p4, v0, Lantlr/Grammar;->comment:Ljava/lang/String;

    .line 779
    iget-object p2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object p3, p0, Lantlr/DefineGrammarSymbols;->args:[Ljava/lang/String;

    invoke-virtual {p2, p3}, Lantlr/Grammar;->processArguments([Ljava/lang/String;)V

    .line 780
    iget-object p2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {p2, p1}, Lantlr/Grammar;->setFilename(Ljava/lang/String;)V

    .line 781
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->grammars:Ljava/util/Hashtable;

    iget-object p2, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {p2}, Lantlr/Grammar;->getClassName()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    invoke-virtual {p1, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    iget-object p1, p0, Lantlr/DefineGrammarSymbols;->grammar:Lantlr/Grammar;

    iget-object p2, p0, Lantlr/DefineGrammarSymbols;->thePreambleAction:Lantlr/Token;

    iput-object p2, p1, Lantlr/Grammar;->preambleAction:Lantlr/Token;

    .line 784
    new-instance p1, Lantlr/CommonToken;

    const/4 p2, 0x0

    const-string p3, ""

    invoke-direct {p1, p2, p3}, Lantlr/CommonToken;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lantlr/DefineGrammarSymbols;->thePreambleAction:Lantlr/Token;

    :goto_0
    return-void
.end method

.method public synPred()V
    .locals 0

    return-void
.end method

.method public zeroOrMoreSubRule()V
    .locals 0

    return-void
.end method
