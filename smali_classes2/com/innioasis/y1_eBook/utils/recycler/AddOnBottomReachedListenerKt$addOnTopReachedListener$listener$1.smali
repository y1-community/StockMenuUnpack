.class public final Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$listener$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "addOnBottomReachedListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt;->addOnTopReachedListener(Landroidx/recyclerview/widget/RecyclerView;ILkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;
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
        "com/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$listener$1",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "isNearTop",
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

.field final synthetic $lastIsAtTop:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field final synthetic $this_addOnTopReachedListener:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic $threshold:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/LinearLayoutManager;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;I",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$listener$1;->$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p2, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$listener$1;->$lastIsAtTop:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$listener$1;->$callback:Lkotlin/jvm/functions/Function0;

    iput p4, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$listener$1;->$threshold:I

    iput-object p5, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$listener$1;->$this_addOnTopReachedListener:Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method private final isNearTop(I)Z
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$listener$1;->$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$listener$1;->$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 152
    iget-object v2, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$listener$1;->$this_addOnTopReachedListener:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sub-int/2addr v2, v0

    if-gt v2, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 136
    iget p1, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$listener$1;->$threshold:I

    invoke-direct {p0, p1}, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$listener$1;->isNearTop(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$listener$1;->$callback:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 121
    iget-object p1, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$listener$1;->$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 126
    iget-object p2, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$listener$1;->$lastIsAtTop:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p2, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p2, :cond_2

    .line 127
    iget-object p2, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$listener$1;->$callback:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 129
    :cond_2
    iget-object p2, p0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$listener$1;->$lastIsAtTop:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean p1, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method
