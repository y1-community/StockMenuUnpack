.class public final Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt;
.super Ljava/lang/Object;
.source "addOnBottomReachedListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a(\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u001a$\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00020\u0008\u001a(\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u001a\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b*\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0005\u001a\n\u0010\u000e\u001a\u00020\u0005*\u00020\u0003\u00a8\u0006\u000f"
    }
    d2 = {
        "addOnBottomReachedListener",
        "Lkotlin/Function0;",
        "",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "threshold",
        "",
        "callback",
        "addOnFirstVisiblePositionChangeListener",
        "Lkotlin/Function1;",
        "addOnTopReachedListener",
        "getClosestLineText",
        "",
        "Landroid/widget/TextView;",
        "y",
        "getFirstCompletelyVisiblePosition",
        "app_frGeneralRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final addOnBottomReachedListener(Landroidx/recyclerview/widget/RecyclerView;ILkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 28
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 30
    new-instance v0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1;

    move-object v1, v0

    move-object v4, p2

    move v5, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;ILandroidx/recyclerview/widget/RecyclerView;)V

    .line 96
    move-object p1, v0

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 97
    new-instance p1, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$1;

    invoke-direct {p1, p0, v0}, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnBottomReachedListener$listener$1;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    return-object p1

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "LayoutManager must be initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic addOnBottomReachedListener$default(Landroidx/recyclerview/widget/RecyclerView;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/jvm/functions/Function0;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 19
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt;->addOnBottomReachedListener(Landroidx/recyclerview/widget/RecyclerView;ILkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    return-object p0
.end method

.method public static final addOnFirstVisiblePositionChangeListener(Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 174
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v2, -0x1

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 176
    new-instance v2, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnFirstVisiblePositionChangeListener$listener$1;

    invoke-direct {v2, v0, v1, p1}, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnFirstVisiblePositionChangeListener$listener$1;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;)V

    .line 189
    move-object p1, v2

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 192
    new-instance p1, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnFirstVisiblePositionChangeListener$1;

    invoke-direct {p1, p0, v2}, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnFirstVisiblePositionChangeListener$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnFirstVisiblePositionChangeListener$listener$1;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    return-object p1

    .line 171
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only support LinearLayoutManager"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final addOnTopReachedListener(Landroidx/recyclerview/widget/RecyclerView;ILkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    if-eqz v2, :cond_1

    .line 114
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 116
    new-instance v0, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$listener$1;

    move-object v1, v0

    move-object v4, p2

    move v5, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$listener$1;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;ILandroidx/recyclerview/widget/RecyclerView;)V

    .line 158
    move-object p1, v0

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 159
    new-instance p1, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$1;

    invoke-direct {p1, p0, v0}, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt$addOnTopReachedListener$listener$1;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    return-object p1

    .line 112
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only LinearLayoutManager supported for top detection"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic addOnTopReachedListener$default(Landroidx/recyclerview/widget/RecyclerView;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/jvm/functions/Function0;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 107
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/innioasis/y1_eBook/utils/recycler/AddOnBottomReachedListenerKt;->addOnTopReachedListener(Landroidx/recyclerview/widget/RecyclerView;ILkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    return-object p0
.end method

.method public static final getClosestLineText(Landroid/widget/TextView;I)Ljava/lang/String;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 216
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 219
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p1

    const/4 v2, 0x0

    if-ltz p1, :cond_1

    .line 222
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    return-object v1

    .line 225
    :cond_2
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 226
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p1

    .line 228
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0, v2, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public static final getFirstCompletelyVisiblePosition(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    instance-of v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    :goto_1
    return p0
.end method
