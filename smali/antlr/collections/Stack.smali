.class public interface abstract Lantlr/collections/Stack;
.super Ljava/lang/Object;
.source "Stack.java"


# virtual methods
.method public abstract height()I
.end method

.method public abstract pop()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation
.end method

.method public abstract push(Ljava/lang/Object;)V
.end method

.method public abstract top()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation
.end method
