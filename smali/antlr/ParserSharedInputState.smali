.class public Lantlr/ParserSharedInputState;
.super Ljava/lang/Object;
.source "ParserSharedInputState.java"


# instance fields
.field protected filename:Ljava/lang/String;

.field public guessing:I

.field protected input:Lantlr/TokenBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lantlr/ParserSharedInputState;->guessing:I

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lantlr/ParserSharedInputState;->guessing:I

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lantlr/ParserSharedInputState;->filename:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lantlr/ParserSharedInputState;->input:Lantlr/TokenBuffer;

    invoke-virtual {v0}, Lantlr/TokenBuffer;->reset()V

    return-void
.end method
