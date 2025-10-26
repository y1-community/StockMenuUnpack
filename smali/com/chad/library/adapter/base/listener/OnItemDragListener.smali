.class public interface abstract Lcom/chad/library/adapter/base/listener/OnItemDragListener;
.super Ljava/lang/Object;
.source "OnItemDragListener.java"


# virtual methods
.method public abstract onItemDragEnd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
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

.method public abstract onItemDragMoving(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "from",
            "target",
            "to"
        }
    .end annotation
.end method

.method public abstract onItemDragStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
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
