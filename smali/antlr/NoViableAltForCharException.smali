.class public Lantlr/NoViableAltForCharException;
.super Lantlr/RecognitionException;
.source "NoViableAltForCharException.java"


# instance fields
.field public foundChar:C


# direct methods
.method public constructor <init>(CLantlr/CharScanner;)V
    .locals 3

    .line 14
    invoke-virtual {p2}, Lantlr/CharScanner;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lantlr/CharScanner;->getLine()I

    move-result v1

    invoke-virtual {p2}, Lantlr/CharScanner;->getColumn()I

    move-result p2

    const-string v2, "NoViableAlt"

    invoke-direct {p0, v2, v0, v1, p2}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 16
    iput-char p1, p0, Lantlr/NoViableAltForCharException;->foundChar:C

    return-void
.end method

.method public constructor <init>(CLjava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    .line 21
    invoke-direct {p0, p1, p2, p3, v0}, Lantlr/NoViableAltForCharException;-><init>(CLjava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(CLjava/lang/String;II)V
    .locals 1

    const-string v0, "NoViableAlt"

    .line 25
    invoke-direct {p0, v0, p2, p3, p4}, Lantlr/RecognitionException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 26
    iput-char p1, p0, Lantlr/NoViableAltForCharException;->foundChar:C

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 41
    iget-char v0, p0, Lantlr/NoViableAltForCharException;->foundChar:C

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7e

    if-gt v0, v1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "unexpected char: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-char v1, p0, Lantlr/NoViableAltForCharException;->foundChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "unexpected char: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-char v1, p0, Lantlr/NoViableAltForCharException;->foundChar:C

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
