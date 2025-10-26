.class Lantlr/ImportVocabTokenManager;
.super Lantlr/SimpleTokenManager;
.source "ImportVocabTokenManager.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private filename:Ljava/lang/String;

.field protected grammar:Lantlr/Grammar;


# direct methods
.method constructor <init>(Lantlr/Grammar;Ljava/lang/String;Ljava/lang/String;Lantlr/Tool;)V
    .locals 2

    .line 25
    invoke-direct {p0, p3, p4}, Lantlr/SimpleTokenManager;-><init>(Ljava/lang/String;Lantlr/Tool;)V

    .line 27
    iput-object p1, p0, Lantlr/ImportVocabTokenManager;->grammar:Lantlr/Grammar;

    .line 28
    iput-object p2, p0, Lantlr/ImportVocabTokenManager;->filename:Ljava/lang/String;

    .line 33
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lantlr/ImportVocabTokenManager;->filename:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    const-string p3, "Cannot find importVocab file \'"

    const-string p4, "\'"

    if-nez p2, :cond_0

    .line 36
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lantlr/ImportVocabTokenManager;->antlrTool:Lantlr/Tool;

    invoke-virtual {p2}, Lantlr/Tool;->getOutputDirectory()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lantlr/ImportVocabTokenManager;->filename:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 39
    iget-object p2, p0, Lantlr/ImportVocabTokenManager;->antlrTool:Lantlr/Tool;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/ImportVocabTokenManager;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x1

    .line 43
    invoke-virtual {p0, p2}, Lantlr/ImportVocabTokenManager;->setReadOnly(Z)V

    .line 47
    :try_start_0
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 48
    new-instance p1, Lantlr/ANTLRTokdefLexer;

    invoke-direct {p1, p2}, Lantlr/ANTLRTokdefLexer;-><init>(Ljava/io/Reader;)V

    .line 49
    new-instance p2, Lantlr/ANTLRTokdefParser;

    invoke-direct {p2, p1}, Lantlr/ANTLRTokdefParser;-><init>(Lantlr/TokenStream;)V

    .line 50
    iget-object p1, p0, Lantlr/ImportVocabTokenManager;->antlrTool:Lantlr/Tool;

    invoke-virtual {p2, p1}, Lantlr/ANTLRTokdefParser;->setTool(Lantlr/Tool;)V

    .line 51
    iget-object p1, p0, Lantlr/ImportVocabTokenManager;->filename:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lantlr/ANTLRTokdefParser;->setFilename(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2, p0}, Lantlr/ANTLRTokdefParser;->file(Lantlr/ImportVocabTokenManager;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lantlr/RecognitionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lantlr/TokenStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    iget-object p1, p0, Lantlr/ImportVocabTokenManager;->antlrTool:Lantlr/Tool;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "Error reading importVocab file \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lantlr/ImportVocabTokenManager;->filename:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 58
    iget-object p2, p0, Lantlr/ImportVocabTokenManager;->antlrTool:Lantlr/Tool;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Error parsing importVocab file \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p4, p0, Lantlr/ImportVocabTokenManager;->filename:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p4, "\': "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lantlr/RecognitionException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :catch_2
    iget-object p1, p0, Lantlr/ImportVocabTokenManager;->antlrTool:Lantlr/Tool;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lantlr/ImportVocabTokenManager;->filename:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lantlr/Tool;->panic(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 67
    invoke-super {p0}, Lantlr/SimpleTokenManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/ImportVocabTokenManager;

    .line 68
    iget-object v1, p0, Lantlr/ImportVocabTokenManager;->filename:Ljava/lang/String;

    iput-object v1, v0, Lantlr/ImportVocabTokenManager;->filename:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lantlr/ImportVocabTokenManager;->grammar:Lantlr/Grammar;

    iput-object v1, v0, Lantlr/ImportVocabTokenManager;->grammar:Lantlr/Grammar;

    return-object v0
.end method

.method public define(Lantlr/TokenSymbol;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lantlr/SimpleTokenManager;->define(Lantlr/TokenSymbol;)V

    return-void
.end method

.method public define(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "\""

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lantlr/StringLiteralSymbol;

    invoke-direct {v0, p1}, Lantlr/StringLiteralSymbol;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_0
    new-instance v0, Lantlr/TokenSymbol;

    invoke-direct {v0, p1}, Lantlr/TokenSymbol;-><init>(Ljava/lang/String;)V

    .line 87
    :goto_0
    invoke-virtual {v0, p2}, Lantlr/TokenSymbol;->setTokenType(I)V

    .line 88
    invoke-super {p0, v0}, Lantlr/SimpleTokenManager;->define(Lantlr/TokenSymbol;)V

    add-int/lit8 p2, p2, 0x1

    .line 89
    iget p1, p0, Lantlr/ImportVocabTokenManager;->maxToken:I

    if-le p2, p1, :cond_1

    goto :goto_1

    :cond_1
    iget p2, p0, Lantlr/ImportVocabTokenManager;->maxToken:I

    :goto_1
    iput p2, p0, Lantlr/ImportVocabTokenManager;->maxToken:I

    return-void
.end method

.method public isReadOnly()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lantlr/ImportVocabTokenManager;->readOnly:Z

    return v0
.end method

.method public nextTokenType()I
    .locals 1

    .line 99
    invoke-super {p0}, Lantlr/SimpleTokenManager;->nextTokenType()I

    move-result v0

    return v0
.end method
