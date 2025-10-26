.class public interface abstract Lantlr/LLkGrammarAnalyzer;
.super Ljava/lang/Object;
.source "LLkGrammarAnalyzer.java"

# interfaces
.implements Lantlr/GrammarAnalyzer;


# virtual methods
.method public abstract FOLLOW(ILantlr/RuleEndElement;)Lantlr/Lookahead;
.end method

.method public abstract deterministic(Lantlr/AlternativeBlock;)Z
.end method

.method public abstract deterministic(Lantlr/OneOrMoreBlock;)Z
.end method

.method public abstract deterministic(Lantlr/ZeroOrMoreBlock;)Z
.end method

.method public abstract look(ILantlr/ActionElement;)Lantlr/Lookahead;
.end method

.method public abstract look(ILantlr/AlternativeBlock;)Lantlr/Lookahead;
.end method

.method public abstract look(ILantlr/BlockEndElement;)Lantlr/Lookahead;
.end method

.method public abstract look(ILantlr/CharLiteralElement;)Lantlr/Lookahead;
.end method

.method public abstract look(ILantlr/CharRangeElement;)Lantlr/Lookahead;
.end method

.method public abstract look(ILantlr/GrammarAtom;)Lantlr/Lookahead;
.end method

.method public abstract look(ILantlr/OneOrMoreBlock;)Lantlr/Lookahead;
.end method

.method public abstract look(ILantlr/RuleBlock;)Lantlr/Lookahead;
.end method

.method public abstract look(ILantlr/RuleEndElement;)Lantlr/Lookahead;
.end method

.method public abstract look(ILantlr/RuleRefElement;)Lantlr/Lookahead;
.end method

.method public abstract look(ILantlr/StringLiteralElement;)Lantlr/Lookahead;
.end method

.method public abstract look(ILantlr/SynPredBlock;)Lantlr/Lookahead;
.end method

.method public abstract look(ILantlr/TokenRangeElement;)Lantlr/Lookahead;
.end method

.method public abstract look(ILantlr/TreeElement;)Lantlr/Lookahead;
.end method

.method public abstract look(ILantlr/WildcardElement;)Lantlr/Lookahead;
.end method

.method public abstract look(ILantlr/ZeroOrMoreBlock;)Lantlr/Lookahead;
.end method

.method public abstract look(ILjava/lang/String;)Lantlr/Lookahead;
.end method

.method public abstract setGrammar(Lantlr/Grammar;)V
.end method

.method public abstract subruleCanBeInverted(Lantlr/AlternativeBlock;Z)Z
.end method
