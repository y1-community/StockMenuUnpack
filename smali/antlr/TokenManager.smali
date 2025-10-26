.class interface abstract Lantlr/TokenManager;
.super Ljava/lang/Object;
.source "TokenManager.java"


# virtual methods
.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract define(Lantlr/TokenSymbol;)V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTokenStringAt(I)Ljava/lang/String;
.end method

.method public abstract getTokenSymbol(Ljava/lang/String;)Lantlr/TokenSymbol;
.end method

.method public abstract getTokenSymbolAt(I)Lantlr/TokenSymbol;
.end method

.method public abstract getTokenSymbolElements()Ljava/util/Enumeration;
.end method

.method public abstract getTokenSymbolKeys()Ljava/util/Enumeration;
.end method

.method public abstract getVocabulary()Lantlr/collections/impl/Vector;
.end method

.method public abstract isReadOnly()Z
.end method

.method public abstract mapToTokenSymbol(Ljava/lang/String;Lantlr/TokenSymbol;)V
.end method

.method public abstract maxTokenType()I
.end method

.method public abstract nextTokenType()I
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setReadOnly(Z)V
.end method

.method public abstract tokenDefined(Ljava/lang/String;)Z
.end method
