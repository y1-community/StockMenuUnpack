.class public Lantlr/RecognitionException;
.super Lantlr/ANTLRException;
.source "RecognitionException.java"


# instance fields
.field public column:I

.field public fileName:Ljava/lang/String;

.field public line:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "parsing error"

    .line 16
    invoke-direct {p0, v0}, Lantlr/ANTLRException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lantlr/RecognitionException;->fileName:Ljava/lang/String;

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lantlr/RecognitionException;->line:I

    .line 19
    iput v0, p0, Lantlr/RecognitionException;->column:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lantlr/ANTLRException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lantlr/RecognitionException;->fileName:Ljava/lang/String;

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lantlr/RecognitionException;->line:I

    .line 30
    iput p1, p0, Lantlr/RecognitionException;->column:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    .line 35
    invoke-direct {p0, p1, p2, p3, v0}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lantlr/ANTLRException;-><init>(Ljava/lang/String;)V

    .line 44
    iput-object p2, p0, Lantlr/RecognitionException;->fileName:Ljava/lang/String;

    .line 45
    iput p3, p0, Lantlr/RecognitionException;->line:I

    .line 46
    iput p4, p0, Lantlr/RecognitionException;->column:I

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .line 58
    iget v0, p0, Lantlr/RecognitionException;->column:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lantlr/RecognitionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lantlr/RecognitionException;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLine()I
    .locals 1

    .line 54
    iget v0, p0, Lantlr/RecognitionException;->line:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 67
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lantlr/FileLineFormatter;->getFormatter()Lantlr/FileLineFormatter;

    move-result-object v1

    iget-object v2, p0, Lantlr/RecognitionException;->fileName:Ljava/lang/String;

    iget v3, p0, Lantlr/RecognitionException;->line:I

    iget v4, p0, Lantlr/RecognitionException;->column:I

    invoke-virtual {v1, v2, v3, v4}, Lantlr/FileLineFormatter;->getFormatString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/RecognitionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
