.class public interface abstract Lcom/ibm/icu/text/FormattedValue;
.super Ljava/lang/Object;
.source "FormattedValue.java"

# interfaces
.implements Ljava/lang/CharSequence;


# virtual methods
.method public abstract appendTo(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;)TA;"
        }
    .end annotation
.end method

.method public abstract nextPosition(Lcom/ibm/icu/text/ConstrainedFieldPosition;)Z
.end method

.method public abstract toCharacterIterator()Ljava/text/AttributedCharacterIterator;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
