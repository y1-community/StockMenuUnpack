.class Lantlr/preprocessor/Option;
.super Ljava/lang/Object;
.source "Option.java"


# instance fields
.field protected enclosingGrammar:Lantlr/preprocessor/Grammar;

.field protected name:Ljava/lang/String;

.field protected rhs:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lantlr/preprocessor/Grammar;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lantlr/preprocessor/Option;->name:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lantlr/preprocessor/Option;->rhs:Ljava/lang/String;

    .line 20
    invoke-virtual {p0, p3}, Lantlr/preprocessor/Option;->setEnclosingGrammar(Lantlr/preprocessor/Grammar;)V

    return-void
.end method


# virtual methods
.method public getEnclosingGrammar()Lantlr/preprocessor/Grammar;
    .locals 1

    .line 24
    iget-object v0, p0, Lantlr/preprocessor/Option;->enclosingGrammar:Lantlr/preprocessor/Grammar;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lantlr/preprocessor/Option;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRHS()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lantlr/preprocessor/Option;->rhs:Ljava/lang/String;

    return-object v0
.end method

.method public setEnclosingGrammar(Lantlr/preprocessor/Grammar;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lantlr/preprocessor/Option;->enclosingGrammar:Lantlr/preprocessor/Grammar;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lantlr/preprocessor/Option;->name:Ljava/lang/String;

    return-void
.end method

.method public setRHS(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lantlr/preprocessor/Option;->rhs:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/preprocessor/Option;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/preprocessor/Option;->rhs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
