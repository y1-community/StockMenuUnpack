.class public abstract Lantlr/CharScanner;
.super Ljava/lang/Object;
.source "CharScanner.java"

# interfaces
.implements Lantlr/TokenStream;


# static fields
.field public static final EOF_CHAR:C = '\uffff'

.field static final NO_CHAR:C


# instance fields
.field protected _returnToken:Lantlr/Token;

.field protected caseSensitive:Z

.field protected caseSensitiveLiterals:Z

.field protected commitToPath:Z

.field protected hashString:Lantlr/ANTLRHashString;

.field protected inputState:Lantlr/LexerSharedInputState;

.field protected literals:Ljava/util/Hashtable;

.field protected saveConsumedInput:Z

.field protected tabsize:I

.field protected text:Lantlr/ANTLRStringBuffer;

.field protected tokenObjectClass:Ljava/lang/Class;

.field protected traceDepth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lantlr/CharScanner;->saveConsumedInput:Z

    .line 23
    iput-boolean v0, p0, Lantlr/CharScanner;->caseSensitive:Z

    .line 24
    iput-boolean v0, p0, Lantlr/CharScanner;->caseSensitiveLiterals:Z

    const/16 v0, 0x8

    .line 30
    iput v0, p0, Lantlr/CharScanner;->tabsize:I

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lantlr/CharScanner;->commitToPath:Z

    .line 46
    iput v0, p0, Lantlr/CharScanner;->traceDepth:I

    .line 49
    new-instance v0, Lantlr/ANTLRStringBuffer;

    invoke-direct {v0}, Lantlr/ANTLRStringBuffer;-><init>()V

    iput-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    .line 50
    new-instance v0, Lantlr/ANTLRHashString;

    invoke-direct {v0, p0}, Lantlr/ANTLRHashString;-><init>(Lantlr/CharScanner;)V

    iput-object v0, p0, Lantlr/CharScanner;->hashString:Lantlr/ANTLRHashString;

    const-string v0, "antlr.CommonToken"

    .line 51
    invoke-virtual {p0, v0}, Lantlr/CharScanner;->setTokenObjectClass(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lantlr/InputBuffer;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Lantlr/CharScanner;-><init>()V

    .line 56
    new-instance v0, Lantlr/LexerSharedInputState;

    invoke-direct {v0, p1}, Lantlr/LexerSharedInputState;-><init>(Lantlr/InputBuffer;)V

    iput-object v0, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    return-void
.end method

.method public constructor <init>(Lantlr/LexerSharedInputState;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lantlr/CharScanner;-><init>()V

    .line 61
    iput-object p1, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    return-void
.end method


# virtual methods
.method public LA(I)C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/CharStreamException;
        }
    .end annotation

    .line 165
    iget-boolean v0, p0, Lantlr/CharScanner;->caseSensitive:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    iget-object v0, v0, Lantlr/LexerSharedInputState;->input:Lantlr/InputBuffer;

    invoke-virtual {v0, p1}, Lantlr/InputBuffer;->LA(I)C

    move-result p1

    return p1

    .line 169
    :cond_0
    iget-object v0, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    iget-object v0, v0, Lantlr/LexerSharedInputState;->input:Lantlr/InputBuffer;

    invoke-virtual {v0, p1}, Lantlr/InputBuffer;->LA(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lantlr/CharScanner;->toLower(C)C

    move-result p1

    return p1
.end method

.method public append(C)V
    .locals 1

    .line 65
    iget-boolean v0, p0, Lantlr/CharScanner;->saveConsumedInput:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0, p1}, Lantlr/ANTLRStringBuffer;->append(C)V

    :cond_0
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 1

    .line 71
    iget-boolean v0, p0, Lantlr/CharScanner;->saveConsumedInput:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0, p1}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public commit()V
    .locals 1

    .line 77
    iget-object v0, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    iget-object v0, v0, Lantlr/LexerSharedInputState;->input:Lantlr/InputBuffer;

    invoke-virtual {v0}, Lantlr/InputBuffer;->commit()V

    return-void
.end method

.method public consume()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/CharStreamException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    iget v0, v0, Lantlr/LexerSharedInputState;->guessing:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p0, v0}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    .line 83
    iget-boolean v2, p0, Lantlr/CharScanner;->caseSensitive:Z

    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->append(C)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v2, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    iget-object v2, v2, Lantlr/LexerSharedInputState;->input:Lantlr/InputBuffer;

    invoke-virtual {v2, v0}, Lantlr/InputBuffer;->LA(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lantlr/CharScanner;->append(C)V

    :goto_0
    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 92
    invoke-virtual {p0}, Lantlr/CharScanner;->tab()V

    goto :goto_1

    .line 95
    :cond_1
    iget-object v1, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    iget v2, v1, Lantlr/LexerSharedInputState;->column:I

    add-int/2addr v2, v0

    iput v2, v1, Lantlr/LexerSharedInputState;->column:I

    .line 98
    :cond_2
    :goto_1
    iget-object v0, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    iget-object v0, v0, Lantlr/LexerSharedInputState;->input:Lantlr/InputBuffer;

    invoke-virtual {v0}, Lantlr/InputBuffer;->consume()V

    return-void
.end method

.method public consumeUntil(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/CharStreamException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, v0}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    const v2, 0xffff

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    if-eq v0, p1, :cond_0

    .line 104
    invoke-virtual {p0}, Lantlr/CharScanner;->consume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public consumeUntil(Lantlr/collections/impl/BitSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/CharStreamException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x1

    .line 110
    invoke-virtual {p0, v0}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    const v2, 0xffff

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    invoke-virtual {p1, v0}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lantlr/CharScanner;->consume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCaseSensitive()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lantlr/CharScanner;->caseSensitive:Z

    return v0
.end method

.method public final getCaseSensitiveLiterals()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lantlr/CharScanner;->caseSensitiveLiterals:Z

    return v0
.end method

.method public getColumn()I
    .locals 1

    .line 124
    iget-object v0, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    iget v0, v0, Lantlr/LexerSharedInputState;->column:I

    return v0
.end method

.method public getCommitToPath()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lantlr/CharScanner;->commitToPath:Z

    return v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    iget-object v0, v0, Lantlr/LexerSharedInputState;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getInputBuffer()Lantlr/InputBuffer;
    .locals 1

    .line 140
    iget-object v0, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    iget-object v0, v0, Lantlr/LexerSharedInputState;->input:Lantlr/InputBuffer;

    return-object v0
.end method

.method public getInputState()Lantlr/LexerSharedInputState;
    .locals 1

    .line 144
    iget-object v0, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    return-object v0
.end method

.method public getLine()I
    .locals 1

    .line 152
    iget-object v0, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    iget v0, v0, Lantlr/LexerSharedInputState;->line:I

    return v0
.end method

.method public getTabSize()I
    .locals 1

    .line 252
    iget v0, p0, Lantlr/CharScanner;->tabsize:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0}, Lantlr/ANTLRStringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenObject()Lantlr/Token;
    .locals 1

    .line 161
    iget-object v0, p0, Lantlr/CharScanner;->_returnToken:Lantlr/Token;

    return-object v0
.end method

.method protected makeToken(I)Lantlr/Token;
    .locals 1

    .line 175
    :try_start_0
    iget-object v0, p0, Lantlr/CharScanner;->tokenObjectClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/Token;

    .line 176
    invoke-virtual {v0, p1}, Lantlr/Token;->setType(I)V

    .line 177
    iget-object p1, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    iget p1, p1, Lantlr/LexerSharedInputState;->tokenStartColumn:I

    invoke-virtual {v0, p1}, Lantlr/Token;->setColumn(I)V

    .line 178
    iget-object p1, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    iget p1, p1, Lantlr/LexerSharedInputState;->tokenStartLine:I

    invoke-virtual {v0, p1}, Lantlr/Token;->setLine(I)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 186
    :catch_0
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Token class is not accessible"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lantlr/CharScanner;->tokenObjectClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CharScanner;->panic(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :catch_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "can\'t instantiate token: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lantlr/CharScanner;->tokenObjectClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CharScanner;->panic(Ljava/lang/String;)V

    .line 188
    :goto_0
    sget-object p1, Lantlr/Token;->badToken:Lantlr/Token;

    return-object p1
.end method

.method public mark()I
    .locals 1

    .line 192
    iget-object v0, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    iget-object v0, v0, Lantlr/LexerSharedInputState;->input:Lantlr/InputBuffer;

    invoke-virtual {v0}, Lantlr/InputBuffer;->mark()I

    move-result v0

    return v0
.end method

.method public match(C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/MismatchedCharException;,
            Lantlr/CharStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 196
    invoke-virtual {p0, v0}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    .line 199
    invoke-virtual {p0}, Lantlr/CharScanner;->consume()V

    return-void

    .line 197
    :cond_0
    new-instance v1, Lantlr/MismatchedCharException;

    invoke-virtual {p0, v0}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2, p0}, Lantlr/MismatchedCharException;-><init>(CCZLantlr/CharScanner;)V

    throw v1
.end method

.method public match(Lantlr/collections/impl/BitSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/MismatchedCharException;,
            Lantlr/CharStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 203
    invoke-virtual {p0, v0}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    invoke-virtual {p1, v1}, Lantlr/collections/impl/BitSet;->member(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {p0}, Lantlr/CharScanner;->consume()V

    return-void

    .line 204
    :cond_0
    new-instance v1, Lantlr/MismatchedCharException;

    invoke-virtual {p0, v0}, Lantlr/CharScanner;->LA(I)C

    move-result v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2, p0}, Lantlr/MismatchedCharException;-><init>(CLantlr/collections/impl/BitSet;ZLantlr/CharScanner;)V

    throw v1
.end method

.method public match(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/MismatchedCharException;,
            Lantlr/CharStreamException;
        }
    .end annotation

    .line 212
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    const/4 v3, 0x1

    .line 214
    invoke-virtual {p0, v3}, Lantlr/CharScanner;->LA(I)C

    move-result v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 217
    invoke-virtual {p0}, Lantlr/CharScanner;->consume()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    :cond_0
    new-instance v0, Lantlr/MismatchedCharException;

    invoke-virtual {p0, v3}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {v0, v3, p1, v1, p0}, Lantlr/MismatchedCharException;-><init>(CCZLantlr/CharScanner;)V

    throw v0

    :cond_1
    return-void
.end method

.method public matchNot(C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/MismatchedCharException;,
            Lantlr/CharStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 222
    invoke-virtual {p0, v0}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-eq v1, p1, :cond_0

    .line 225
    invoke-virtual {p0}, Lantlr/CharScanner;->consume()V

    return-void

    .line 223
    :cond_0
    new-instance v1, Lantlr/MismatchedCharException;

    invoke-virtual {p0, v0}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    invoke-direct {v1, v2, p1, v0, p0}, Lantlr/MismatchedCharException;-><init>(CCZLantlr/CharScanner;)V

    throw v1
.end method

.method public matchRange(CC)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/MismatchedCharException;,
            Lantlr/CharStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 229
    invoke-virtual {p0, v0}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-virtual {p0, v0}, Lantlr/CharScanner;->LA(I)C

    move-result v1

    if-gt v1, p2, :cond_0

    .line 230
    invoke-virtual {p0}, Lantlr/CharScanner;->consume()V

    return-void

    .line 229
    :cond_0
    new-instance v1, Lantlr/MismatchedCharException;

    invoke-virtual {p0, v0}, Lantlr/CharScanner;->LA(I)C

    move-result v3

    const/4 v6, 0x0

    move-object v2, v1

    move v4, p1

    move v5, p2

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lantlr/MismatchedCharException;-><init>(CCCZLantlr/CharScanner;)V

    throw v1
.end method

.method public newline()V
    .locals 3

    .line 234
    iget-object v0, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    iget v1, v0, Lantlr/LexerSharedInputState;->line:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lantlr/LexerSharedInputState;->line:I

    .line 235
    iget-object v0, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    iput v2, v0, Lantlr/LexerSharedInputState;->column:I

    return-void
.end method

.method public panic()V
    .locals 2

    .line 258
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "CharScanner: panic"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 259
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public panic(Ljava/lang/String;)V
    .locals 3

    .line 273
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "CharScanner; panic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 274
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public reportError(Lantlr/RecognitionException;)V
    .locals 1

    .line 279
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public reportError(Ljava/lang/String;)V
    .locals 3

    .line 284
    invoke-virtual {p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 285
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public reportWarning(Ljava/lang/String;)V
    .locals 3

    .line 294
    invoke-virtual {p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 295
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public resetText()V
    .locals 2

    .line 303
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lantlr/ANTLRStringBuffer;->setLength(I)V

    .line 304
    iget-object v0, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    iget v1, v0, Lantlr/LexerSharedInputState;->column:I

    iput v1, v0, Lantlr/LexerSharedInputState;->tokenStartColumn:I

    .line 305
    iget-object v0, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    iget v1, v0, Lantlr/LexerSharedInputState;->line:I

    iput v1, v0, Lantlr/LexerSharedInputState;->tokenStartLine:I

    return-void
.end method

.method public rewind(I)V
    .locals 1

    .line 309
    iget-object v0, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    iget-object v0, v0, Lantlr/LexerSharedInputState;->input:Lantlr/InputBuffer;

    invoke-virtual {v0, p1}, Lantlr/InputBuffer;->rewind(I)V

    return-void
.end method

.method public setCaseSensitive(Z)V
    .locals 0

    .line 315
    iput-boolean p1, p0, Lantlr/CharScanner;->caseSensitive:Z

    return-void
.end method

.method public setColumn(I)V
    .locals 1

    .line 128
    iget-object v0, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    iput p1, v0, Lantlr/LexerSharedInputState;->column:I

    return-void
.end method

.method public setCommitToPath(Z)V
    .locals 0

    .line 319
    iput-boolean p1, p0, Lantlr/CharScanner;->commitToPath:Z

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    iput-object p1, v0, Lantlr/LexerSharedInputState;->filename:Ljava/lang/String;

    return-void
.end method

.method public setInputState(Lantlr/LexerSharedInputState;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    return-void
.end method

.method public setLine(I)V
    .locals 1

    .line 327
    iget-object v0, p0, Lantlr/CharScanner;->inputState:Lantlr/LexerSharedInputState;

    iput p1, v0, Lantlr/LexerSharedInputState;->line:I

    return-void
.end method

.method public setTabSize(I)V
    .locals 0

    .line 248
    iput p1, p0, Lantlr/CharScanner;->tabsize:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 331
    invoke-virtual {p0}, Lantlr/CharScanner;->resetText()V

    .line 332
    iget-object v0, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v0, p1}, Lantlr/ANTLRStringBuffer;->append(Ljava/lang/String;)V

    return-void
.end method

.method public setTokenObjectClass(Ljava/lang/String;)V
    .locals 2

    .line 337
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lantlr/CharScanner;->tokenObjectClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 340
    :catch_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ClassNotFoundException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lantlr/CharScanner;->panic(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public tab()V
    .locals 2

    .line 242
    invoke-virtual {p0}, Lantlr/CharScanner;->getColumn()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 243
    iget v1, p0, Lantlr/CharScanner;->tabsize:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 244
    invoke-virtual {p0, v0}, Lantlr/CharScanner;->setColumn(I)V

    return-void
.end method

.method public testLiteralsTable(I)I
    .locals 3

    .line 347
    iget-object v0, p0, Lantlr/CharScanner;->hashString:Lantlr/ANTLRHashString;

    iget-object v1, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v1}, Lantlr/ANTLRStringBuffer;->getBuffer()[C

    move-result-object v1

    iget-object v2, p0, Lantlr/CharScanner;->text:Lantlr/ANTLRStringBuffer;

    invoke-virtual {v2}, Lantlr/ANTLRStringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lantlr/ANTLRHashString;->setBuffer([CI)V

    .line 348
    iget-object v0, p0, Lantlr/CharScanner;->literals:Ljava/util/Hashtable;

    iget-object v1, p0, Lantlr/CharScanner;->hashString:Lantlr/ANTLRHashString;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_0
    return p1
.end method

.method public testLiteralsTable(Ljava/lang/String;I)I
    .locals 1

    .line 361
    new-instance v0, Lantlr/ANTLRHashString;

    invoke-direct {v0, p1, p0}, Lantlr/ANTLRHashString;-><init>(Ljava/lang/String;Lantlr/CharScanner;)V

    .line 362
    iget-object p1, p0, Lantlr/CharScanner;->literals:Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 364
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_0
    return p2
.end method

.method public toLower(C)C
    .locals 0

    .line 371
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    return p1
.end method

.method public traceIn(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/CharStreamException;
        }
    .end annotation

    .line 380
    iget v0, p0, Lantlr/CharScanner;->traceDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lantlr/CharScanner;->traceDepth:I

    .line 381
    invoke-virtual {p0}, Lantlr/CharScanner;->traceIndent()V

    .line 382
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "> lexer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "; c=="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->LA(I)C

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public traceIndent()V
    .locals 3

    const/4 v0, 0x0

    .line 375
    :goto_0
    iget v1, p0, Lantlr/CharScanner;->traceDepth:I

    if-ge v0, v1, :cond_0

    .line 376
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public traceOut(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/CharStreamException;
        }
    .end annotation

    .line 386
    invoke-virtual {p0}, Lantlr/CharScanner;->traceIndent()V

    .line 387
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "< lexer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "; c=="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lantlr/CharScanner;->LA(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 388
    iget v0, p0, Lantlr/CharScanner;->traceDepth:I

    sub-int/2addr v0, p1

    iput v0, p0, Lantlr/CharScanner;->traceDepth:I

    return-void
.end method

.method public uponEOF()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/TokenStreamException;,
            Lantlr/CharStreamException;
        }
    .end annotation

    return-void
.end method
