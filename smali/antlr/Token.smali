.class public Lantlr/Token;
.super Ljava/lang/Object;
.source "Token.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final EOF_TYPE:I = 0x1

.field public static final INVALID_TYPE:I = 0x0

.field public static final MIN_USER_TYPE:I = 0x4

.field public static final NULL_TREE_LOOKAHEAD:I = 0x3

.field public static final SKIP:I = -0x1

.field public static badToken:Lantlr/Token;


# instance fields
.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lantlr/Token;

    const/4 v1, 0x0

    const-string v2, "<no text>"

    invoke-direct {v0, v1, v2}, Lantlr/Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Lantlr/Token;->badToken:Lantlr/Token;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lantlr/Token;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lantlr/Token;->type:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lantlr/Token;->type:I

    .line 36
    invoke-virtual {p0, p2}, Lantlr/Token;->setText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    const-string v0, "<no text>"

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 68
    iget v0, p0, Lantlr/Token;->type:I

    return v0
.end method

.method public setColumn(I)V
    .locals 0

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setLine(I)V
    .locals 0

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 72
    iput p1, p0, Lantlr/Token;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lantlr/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\",<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lantlr/Token;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ">]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
