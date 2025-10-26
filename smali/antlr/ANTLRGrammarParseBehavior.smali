.class public interface abstract Lantlr/ANTLRGrammarParseBehavior;
.super Ljava/lang/Object;
.source "ANTLRGrammarParseBehavior.java"


# virtual methods
.method public abstract abortGrammar()V
.end method

.method public abstract beginAlt(Z)V
.end method

.method public abstract beginChildList()V
.end method

.method public abstract beginExceptionGroup()V
.end method

.method public abstract beginExceptionSpec(Lantlr/Token;)V
.end method

.method public abstract beginSubRule(Lantlr/Token;Lantlr/Token;Z)V
.end method

.method public abstract beginTree(Lantlr/Token;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/SemanticException;
        }
    .end annotation
.end method

.method public abstract defineRuleName(Lantlr/Token;Ljava/lang/String;ZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/SemanticException;
        }
    .end annotation
.end method

.method public abstract defineToken(Lantlr/Token;Lantlr/Token;)V
.end method

.method public abstract endAlt()V
.end method

.method public abstract endChildList()V
.end method

.method public abstract endExceptionGroup()V
.end method

.method public abstract endExceptionSpec()V
.end method

.method public abstract endGrammar()V
.end method

.method public abstract endOptions()V
.end method

.method public abstract endRule(Ljava/lang/String;)V
.end method

.method public abstract endSubRule()V
.end method

.method public abstract endTree()V
.end method

.method public abstract hasError()V
.end method

.method public abstract noASTSubRule()V
.end method

.method public abstract oneOrMoreSubRule()V
.end method

.method public abstract optionalSubRule()V
.end method

.method public abstract refAction(Lantlr/Token;)V
.end method

.method public abstract refArgAction(Lantlr/Token;)V
.end method

.method public abstract refCharLiteral(Lantlr/Token;Lantlr/Token;ZIZ)V
.end method

.method public abstract refCharRange(Lantlr/Token;Lantlr/Token;Lantlr/Token;IZ)V
.end method

.method public abstract refElementOption(Lantlr/Token;Lantlr/Token;)V
.end method

.method public abstract refExceptionHandler(Lantlr/Token;Lantlr/Token;)V
.end method

.method public abstract refHeaderAction(Lantlr/Token;Lantlr/Token;)V
.end method

.method public abstract refInitAction(Lantlr/Token;)V
.end method

.method public abstract refMemberAction(Lantlr/Token;)V
.end method

.method public abstract refPreambleAction(Lantlr/Token;)V
.end method

.method public abstract refReturnAction(Lantlr/Token;)V
.end method

.method public abstract refRule(Lantlr/Token;Lantlr/Token;Lantlr/Token;Lantlr/Token;I)V
.end method

.method public abstract refSemPred(Lantlr/Token;)V
.end method

.method public abstract refStringLiteral(Lantlr/Token;Lantlr/Token;IZ)V
.end method

.method public abstract refToken(Lantlr/Token;Lantlr/Token;Lantlr/Token;Lantlr/Token;ZIZ)V
.end method

.method public abstract refTokenRange(Lantlr/Token;Lantlr/Token;Lantlr/Token;IZ)V
.end method

.method public abstract refTokensSpecElementOption(Lantlr/Token;Lantlr/Token;Lantlr/Token;)V
.end method

.method public abstract refTreeSpecifier(Lantlr/Token;)V
.end method

.method public abstract refWildcard(Lantlr/Token;Lantlr/Token;I)V
.end method

.method public abstract setArgOfRuleRef(Lantlr/Token;)V
.end method

.method public abstract setCharVocabulary(Lantlr/collections/impl/BitSet;)V
.end method

.method public abstract setFileOption(Lantlr/Token;Lantlr/Token;Ljava/lang/String;)V
.end method

.method public abstract setGrammarOption(Lantlr/Token;Lantlr/Token;)V
.end method

.method public abstract setRuleOption(Lantlr/Token;Lantlr/Token;)V
.end method

.method public abstract setSubruleOption(Lantlr/Token;Lantlr/Token;)V
.end method

.method public abstract setUserExceptions(Ljava/lang/String;)V
.end method

.method public abstract startLexer(Ljava/lang/String;Lantlr/Token;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startParser(Ljava/lang/String;Lantlr/Token;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startTreeWalker(Ljava/lang/String;Lantlr/Token;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract synPred()V
.end method

.method public abstract zeroOrMoreSubRule()V
.end method
