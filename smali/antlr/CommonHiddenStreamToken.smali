.class public Lantlr/CommonHiddenStreamToken;
.super Lantlr/CommonToken;
.source "CommonHiddenStreamToken.java"


# instance fields
.field protected hiddenAfter:Lantlr/CommonHiddenStreamToken;

.field protected hiddenBefore:Lantlr/CommonHiddenStreamToken;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lantlr/CommonToken;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lantlr/CommonToken;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lantlr/CommonToken;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getHiddenAfter()Lantlr/CommonHiddenStreamToken;
    .locals 1

    .line 27
    iget-object v0, p0, Lantlr/CommonHiddenStreamToken;->hiddenAfter:Lantlr/CommonHiddenStreamToken;

    return-object v0
.end method

.method public getHiddenBefore()Lantlr/CommonHiddenStreamToken;
    .locals 1

    .line 31
    iget-object v0, p0, Lantlr/CommonHiddenStreamToken;->hiddenBefore:Lantlr/CommonHiddenStreamToken;

    return-object v0
.end method

.method protected setHiddenAfter(Lantlr/CommonHiddenStreamToken;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lantlr/CommonHiddenStreamToken;->hiddenAfter:Lantlr/CommonHiddenStreamToken;

    return-void
.end method

.method protected setHiddenBefore(Lantlr/CommonHiddenStreamToken;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lantlr/CommonHiddenStreamToken;->hiddenBefore:Lantlr/CommonHiddenStreamToken;

    return-void
.end method
