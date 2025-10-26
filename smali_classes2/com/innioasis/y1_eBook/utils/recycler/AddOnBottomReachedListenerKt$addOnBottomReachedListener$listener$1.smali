.class public final Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "addOnBottomReachedListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt;->addOnBottomReachedListener(Landroidx/recyclerview/widget/RecyclerView;ILkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005H\u0016J \u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "isNearBottom",
        "",
        "threshold",
        "",
        "onScrollStateChanged",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "newState",
        "onScrolled",
        "dx",
        "dy",
        "app_frGeneralRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $lastIsAtBottom:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field final synthetic $this_addOnBottomReachedListener:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic $threshold:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;I",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1;->$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput-object p2, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1;->$lastIsAtBottom:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1;->$callback:Lkotlin/jvm/functions/Function0;

    iput p4, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1;->$threshold:I

    iput-object p5, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1;->$this_addOnBottomReachedListener:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method private final isNearBottom(I)Z
    .locals 7

    .line 75
    iget-object v0, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1;->$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 76
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    .line 77
    iget-object v0, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1;->$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemCount()I

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1;->$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    return v3

    .line 83
    :cond_0
    iget-object v4, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1;->$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    .line 84
    iget-object v5, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1;->$this_addOnBottomReachedListener:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1;->$this_addOnBottomReachedListener:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-eqz v4, :cond_1

    .line 85
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    sub-int/2addr v5, v4

    sub-int/2addr v0, v2

    if-lt v1, v0, :cond_2

    if-gt v5, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 63
    iget p1, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1;->$threshold:I

    invoke-direct {p0, p1}, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1;->isNearBottom(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1;->$callback:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 35
    iget-object p1, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1;->$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 36
    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 p3, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 38
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 41
    iget-object p2, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1;->$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemCount()I

    move-result p2

    sub-int/2addr p2, v1

    if-lt p1, p2, :cond_3

    :cond_0
    :goto_0
    const/4 p3, 0x1

    goto :goto_1

    .line 43
    :cond_1
    instance-of p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p2, :cond_5

    .line 45
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    move-result-object p1

    const-string p2, "lastVisiblePositions"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->maxOrNull([I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1;->$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v1

    if-lt v0, p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    .line 53
    iget-object p1, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1;->$lastIsAtBottom:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_4

    .line 54
    iget-object p1, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1;->$callback:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 56
    :cond_4
    iget-object p1, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1;->$lastIsAtBottom:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean p3, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void

    .line 49
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unsupported LayoutManager"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
