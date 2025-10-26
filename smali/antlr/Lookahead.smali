.class public Lantlr/Lookahead;
.super Ljava/lang/Object;
.source "Lookahead.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field cycle:Ljava/lang/String;

.field epsilonDepth:Lantlr/collections/impl/BitSet;

.field fset:Lantlr/collections/impl/BitSet;

.field hasEpsilon:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lantlr/Lookahead;->hasEpsilon:Z

    .line 82
    new-instance v0, Lantlr/collections/impl/BitSet;

    invoke-direct {v0}, Lantlr/collections/impl/BitSet;-><init>()V

    iput-object v0, p0, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    return-void
.end method

.method public constructor <init>(Lantlr/collections/impl/BitSet;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lantlr/Lookahead;->hasEpsilon:Z

    .line 87
    iput-object p1, p0, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lantlr/Lookahead;-><init>()V

    .line 93
    iput-object p1, p0, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    return-void
.end method

.method public static of(I)Lantlr/Lookahead;
    .locals 2

    .line 154
    new-instance v0, Lantlr/Lookahead;

    invoke-direct {v0}, Lantlr/Lookahead;-><init>()V

    .line 155
    iget-object v1, v0, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v1, p0}, Lantlr/collections/impl/BitSet;->add(I)V

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 100
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/Lookahead;

    .line 101
    iget-object v1, p0, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v1}, Lantlr/collections/impl/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/collections/impl/BitSet;

    iput-object v1, v0, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    .line 102
    iget-object v1, p0, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    iput-object v1, v0, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lantlr/Lookahead;->epsilonDepth:Lantlr/collections/impl/BitSet;

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v1}, Lantlr/collections/impl/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/collections/impl/BitSet;

    iput-object v1, v0, Lantlr/Lookahead;->epsilonDepth:Lantlr/collections/impl/BitSet;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 108
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public combineWith(Lantlr/Lookahead;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p1, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    iput-object v0, p0, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    .line 118
    :cond_0
    invoke-virtual {p1}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lantlr/Lookahead;->hasEpsilon:Z

    .line 123
    :cond_1
    iget-object v0, p0, Lantlr/Lookahead;->epsilonDepth:Lantlr/collections/impl/BitSet;

    if-eqz v0, :cond_2

    .line 124
    iget-object v1, p1, Lantlr/Lookahead;->epsilonDepth:Lantlr/collections/impl/BitSet;

    if-eqz v1, :cond_3

    .line 125
    invoke-virtual {v0, v1}, Lantlr/collections/impl/BitSet;->orInPlace(Lantlr/collections/impl/BitSet;)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p1, Lantlr/Lookahead;->epsilonDepth:Lantlr/collections/impl/BitSet;

    if-eqz v0, :cond_3

    .line 129
    invoke-virtual {v0}, Lantlr/collections/impl/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lantlr/collections/impl/BitSet;

    iput-object v0, p0, Lantlr/Lookahead;->epsilonDepth:Lantlr/collections/impl/BitSet;

    .line 131
    :cond_3
    :goto_0
    iget-object v0, p0, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    iget-object p1, p1, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, p1}, Lantlr/collections/impl/BitSet;->orInPlace(Lantlr/collections/impl/BitSet;)V

    return-void
.end method

.method public containsEpsilon()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lantlr/Lookahead;->hasEpsilon:Z

    return v0
.end method

.method public intersection(Lantlr/Lookahead;)Lantlr/Lookahead;
    .locals 3

    .line 142
    new-instance v0, Lantlr/Lookahead;

    iget-object v1, p0, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    iget-object v2, p1, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v1, v2}, Lantlr/collections/impl/BitSet;->and(Lantlr/collections/impl/BitSet;)Lantlr/collections/impl/BitSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lantlr/Lookahead;-><init>(Lantlr/collections/impl/BitSet;)V

    .line 143
    iget-boolean v1, p0, Lantlr/Lookahead;->hasEpsilon:Z

    if-eqz v1, :cond_0

    iget-boolean p1, p1, Lantlr/Lookahead;->hasEpsilon:Z

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {v0}, Lantlr/Lookahead;->setEpsilon()V

    :cond_0
    return-object v0
.end method

.method public nil()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0}, Lantlr/collections/impl/BitSet;->nil()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lantlr/Lookahead;->hasEpsilon:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetEpsilon()V
    .locals 1

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lantlr/Lookahead;->hasEpsilon:Z

    return-void
.end method

.method public setEpsilon()V
    .locals 1

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lantlr/Lookahead;->hasEpsilon:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 169
    iget-object v0, p0, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    const-string v1, ","

    invoke-virtual {v0, v1}, Lantlr/collections/impl/BitSet;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    const-string v2, "+<epsilon>"

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 173
    :goto_0
    iget-object v4, p0, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 174
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "; FOLLOW("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 176
    :goto_1
    iget-object v5, p0, Lantlr/Lookahead;->epsilonDepth:Lantlr/collections/impl/BitSet;

    if-eqz v5, :cond_2

    .line 177
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "; depths="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lantlr/Lookahead;->epsilonDepth:Lantlr/collections/impl/BitSet;

    invoke-virtual {v5, v1}, Lantlr/collections/impl/BitSet;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 179
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;Lantlr/CharFormatter;)Ljava/lang/String;
    .locals 4

    .line 185
    iget-object v0, p0, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, p1, p2}, Lantlr/collections/impl/BitSet;->toString(Ljava/lang/String;Lantlr/CharFormatter;)Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-virtual {p0}, Lantlr/Lookahead;->containsEpsilon()Z

    move-result p2

    const-string v0, ""

    if-eqz p2, :cond_0

    const-string p2, "+<epsilon>"

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 189
    :goto_0
    iget-object v1, p0, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 190
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "; FOLLOW("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 192
    :goto_1
    iget-object v2, p0, Lantlr/Lookahead;->epsilonDepth:Lantlr/collections/impl/BitSet;

    if-eqz v2, :cond_2

    .line 193
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "; depths="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lantlr/Lookahead;->epsilonDepth:Lantlr/collections/impl/BitSet;

    const-string v3, ","

    invoke-virtual {v2, v3}, Lantlr/collections/impl/BitSet;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Ljava/lang/String;Lantlr/CharFormatter;Lantlr/Grammar;)Ljava/lang/String;
    .locals 1

    .line 199
    instance-of v0, p3, Lantlr/LexerGrammar;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0, p1, p2}, Lantlr/Lookahead;->toString(Ljava/lang/String;Lantlr/CharFormatter;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 203
    :cond_0
    iget-object p2, p3, Lantlr/Grammar;->tokenManager:Lantlr/TokenManager;

    invoke-interface {p2}, Lantlr/TokenManager;->getVocabulary()Lantlr/collections/impl/Vector;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lantlr/Lookahead;->toString(Ljava/lang/String;Lantlr/collections/impl/Vector;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Ljava/lang/String;Lantlr/collections/impl/Vector;)Ljava/lang/String;
    .locals 3

    .line 209
    iget-object v0, p0, Lantlr/Lookahead;->fset:Lantlr/collections/impl/BitSet;

    invoke-virtual {v0, p1, p2}, Lantlr/collections/impl/BitSet;->toString(Ljava/lang/String;Lantlr/collections/impl/Vector;)Ljava/lang/String;

    move-result-object p1

    .line 210
    iget-object p2, p0, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    const-string v0, ""

    if-eqz p2, :cond_0

    .line 211
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "; FOLLOW("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/Lookahead;->cycle:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 213
    :goto_0
    iget-object v1, p0, Lantlr/Lookahead;->epsilonDepth:Lantlr/collections/impl/BitSet;

    if-eqz v1, :cond_1

    .line 214
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "; depths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lantlr/Lookahead;->epsilonDepth:Lantlr/collections/impl/BitSet;

    const-string v2, ","

    invoke-virtual {v1, v2}, Lantlr/collections/impl/BitSet;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
