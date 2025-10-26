.class public Lcom/innioasis/y1/utils/SmoothScrollLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SmoothScrollLayoutManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "recyclerView",
            "state",
            "position"
        }
    .end annotation

    .line 24
    new-instance p2, Lcom/innioasis/y1/utils/SmoothScrollLayoutManager$1;

    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/innioasis/y1/utils/SmoothScrollLayoutManager$1;-><init>(Lcom/innioasis/y1/utils/SmoothScrollLayoutManager;Landroid/content/Context;)V

    .line 32
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/innioasis/y1/utils/SmoothScrollLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
