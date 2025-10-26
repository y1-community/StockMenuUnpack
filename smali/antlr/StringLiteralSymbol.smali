.class Lantlr/StringLiteralSymbol;
.super Lantlr/TokenSymbol;
.source "StringLiteralSymbol.java"


# instance fields
.field protected label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lantlr/TokenSymbol;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lantlr/StringLiteralSymbol;->label:Ljava/lang/String;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lantlr/StringLiteralSymbol;->label:Ljava/lang/String;

    return-void
.end method
