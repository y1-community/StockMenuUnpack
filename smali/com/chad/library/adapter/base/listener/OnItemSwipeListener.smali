.class public interface abstract Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;
.super Ljava/lang/Object;
.source "OnItemSwipeListener.java"


# virtual methods
.method public abstract clearView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolder",
            "pos"
        }
    .end annotation
.end method

.method public abstract onItemSwipeMoving(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "viewHolder",
            "dX",
            "dY",
            "isCurrentlyActive"
        }
    .end annotation
.end method

.method public abstract onItemSwipeStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolder",
            "pos"
        }
    .end annotation
.end method

.method public abstract onItemSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolder",
            "pos"
        }
    .end annotation
.end method
