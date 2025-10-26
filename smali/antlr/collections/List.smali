.class public interface abstract Lantlr/collections/List;
.super Ljava/lang/Object;
.source "List.java"


# virtual methods
.method public abstract add(Ljava/lang/Object;)V
.end method

.method public abstract append(Ljava/lang/Object;)V
.end method

.method public abstract elementAt(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation
.end method

.method public abstract elements()Ljava/util/Enumeration;
.end method

.method public abstract includes(Ljava/lang/Object;)Z
.end method

.method public abstract length()I
.end method
