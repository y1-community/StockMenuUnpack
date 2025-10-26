.class public Lantlr/LexerSharedInputState;
.super Ljava/lang/Object;
.source "LexerSharedInputState.java"


# instance fields
.field protected column:I

.field protected filename:Ljava/lang/String;

.field public guessing:I

.field protected input:Lantlr/InputBuffer;

.field protected line:I

.field protected tokenStartColumn:I

.field protected tokenStartLine:I


# direct methods
.method public constructor <init>(Lantlr/InputBuffer;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lantlr/LexerSharedInputState;->column:I

    .line 20
    iput v0, p0, Lantlr/LexerSharedInputState;->line:I

    .line 21
    iput v0, p0, Lantlr/LexerSharedInputState;->tokenStartColumn:I

    .line 22
    iput v0, p0, Lantlr/LexerSharedInputState;->tokenStartLine:I

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lantlr/LexerSharedInputState;->guessing:I

    .line 31
    iput-object p1, p0, Lantlr/LexerSharedInputState;->input:Lantlr/InputBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 35
    new-instance v0, Lantlr/ByteBuffer;

    invoke-direct {v0, p1}, Lantlr/ByteBuffer;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lantlr/LexerSharedInputState;-><init>(Lantlr/InputBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 39
    new-instance v0, Lantlr/CharBuffer;

    invoke-direct {v0, p1}, Lantlr/CharBuffer;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lantlr/LexerSharedInputState;-><init>(Lantlr/InputBuffer;)V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x1

    .line 43
    iput v0, p0, Lantlr/LexerSharedInputState;->column:I

    .line 44
    iput v0, p0, Lantlr/LexerSharedInputState;->line:I

    .line 45
    iput v0, p0, Lantlr/LexerSharedInputState;->tokenStartColumn:I

    .line 46
    iput v0, p0, Lantlr/LexerSharedInputState;->tokenStartLine:I

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lantlr/LexerSharedInputState;->guessing:I

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lantlr/LexerSharedInputState;->filename:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lantlr/LexerSharedInputState;->input:Lantlr/InputBuffer;

    invoke-virtual {v0}, Lantlr/InputBuffer;->reset()V

    return-void
.end method
