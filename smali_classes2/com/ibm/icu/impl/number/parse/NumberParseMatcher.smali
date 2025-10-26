.class public interface abstract Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;
.super Ljava/lang/Object;
.source "NumberParseMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/parse/NumberParseMatcher$Flexible;
    }
.end annotation


# virtual methods
.method public abstract match(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z
.end method

.method public abstract postProcess(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V
.end method

.method public abstract smokeTest(Lcom/ibm/icu/impl/StringSegment;)Z
.end method
