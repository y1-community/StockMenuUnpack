.class public abstract Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RVBaseAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/innioasis/y1/activity/video/adapter/RVBaseViewHolder<",
        "TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u00030\u0002B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0018J\u0014\u0010\u001a\u001a\u00020\u00162\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001cJ\u0018\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u001f\u001a\u00020 J\u0010\u0010!\u001a\u00020\u00162\u0008\u0008\u0002\u0010\"\u001a\u00020 J\u0006\u0010#\u001a\u00020\u0016J\u0015\u0010$\u001a\u0004\u0018\u00018\u00002\u0006\u0010%\u001a\u00020\u000c\u00a2\u0006\u0002\u0010&J\u0008\u0010\'\u001a\u00020\u000cH\u0016J\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008J\r\u0010)\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010*J\u0006\u0010+\u001a\u00020\u000cJ\u001e\u0010,\u001a\u00020\u00162\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010%\u001a\u00020\u000cH\u0016J\u0010\u0010.\u001a\u00020 2\u0006\u0010%\u001a\u00020\u000cH\u0002J\u0010\u0010/\u001a\u00020\u00162\u0008\u0008\u0002\u0010\"\u001a\u00020 J\u0014\u00100\u001a\u00020\u00162\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008J\u0018\u00102\u001a\u00020\u00162\u0006\u0010%\u001a\u00020\u000c2\u0008\u0008\u0002\u00103\u001a\u00020 J\u001a\u00104\u001a\u00020\u00162\u0006\u00105\u001a\u0002062\u0008\u0008\u0002\u00107\u001a\u00020 H\u0016J\u001a\u00108\u001a\u00020\u00162\u0006\u00105\u001a\u0002062\u0008\u0008\u0002\u00107\u001a\u00020 H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR \u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\n\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000cX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u00069"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;",
        "T",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/innioasis/y1/activity/video/adapter/RVBaseViewHolder;",
        "activity",
        "Landroid/app/Activity;",
        "(Landroid/app/Activity;)V",
        "mList",
        "",
        "getMList",
        "()Ljava/util/List;",
        "multiSelectIndexes",
        "",
        "getMultiSelectIndexes",
        "setMultiSelectIndexes",
        "(Ljava/util/List;)V",
        "nowPosition",
        "getNowPosition",
        "()I",
        "setNowPosition",
        "(I)V",
        "addItem",
        "",
        "item",
        "(Ljava/lang/Object;)V",
        "addItemFirst",
        "addItemList",
        "items",
        "",
        "addOrRemoveMultiSelectIndex",
        "index",
        "fromMultiSelect",
        "",
        "allSelect",
        "isRefreshUI",
        "clearItemList",
        "getItemByPosition",
        "position",
        "(I)Ljava/lang/Object;",
        "getItemCount",
        "getItemList",
        "getSelectItem",
        "()Ljava/lang/Object;",
        "getSelectPosition",
        "onBindViewHolder",
        "holder",
        "positionIsValid",
        "removeMultiSelectItems",
        "setItemList",
        "list",
        "setSelectPosition",
        "allowNeg",
        "toNext",
        "lv",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "refreshTwo",
        "toPrevious",
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
.field private final activity:Landroid/app/Activity;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private multiSelectIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private nowPosition:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->activity:Landroid/app/Activity;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->mList:Ljava/util/List;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    return-void
.end method

.method public static synthetic addOrRemoveMultiSelectIndex$default(Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;IZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 109
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->addOrRemoveMultiSelectIndex(IZ)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addOrRemoveMultiSelectIndex"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic allSelect$default(Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 120
    :cond_0
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->allSelect(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: allSelect"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final positionIsValid(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static synthetic removeMultiSelectItems$default(Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 94
    :cond_0
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->removeMultiSelectItems(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: removeMultiSelectItems"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic setSelectPosition$default(Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;IZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 73
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->setSelectPosition(IZ)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setSelectPosition"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic toNext$default(Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;Landroidx/recyclerview/widget/RecyclerView;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 50
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->toNext(Landroidx/recyclerview/widget/RecyclerView;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toNext"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic toPrevious$default(Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;Landroidx/recyclerview/widget/RecyclerView;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 62
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->toPrevious(Landroidx/recyclerview/widget/RecyclerView;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toPrevious"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addItem(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->getItemCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public final addItemFirst(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->mList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 37
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public final addItemList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->mList:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final addOrRemoveMultiSelectIndex(IZ)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 112
    iget-object p2, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 113
    iget-object p2, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_1
    iget-object p2, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 116
    iget-object p2, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final allSelect(Z)V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 122
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 123
    iget-object v2, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final clearItemList()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final getItemByPosition(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->positionIsValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method protected final getMList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public final getMultiSelectIndexes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    return-object v0
.end method

.method protected final getNowPosition()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->nowPosition:I

    return v0
.end method

.method public final getSelectItem()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 79
    iget v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->nowPosition:I

    invoke-direct {p0, v0}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->positionIsValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->mList:Ljava/util/List;

    iget v1, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->nowPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectPosition()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->nowPosition:I

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 7
    check-cast p1, Lcom/innioasis/y1/activity/video/adapter/RVBaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->onBindViewHolder(Lcom/innioasis/y1/activity/video/adapter/RVBaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/innioasis/y1/activity/video/adapter/RVBaseViewHolder;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/activity/video/adapter/RVBaseViewHolder<",
            "TT;>;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 15
    iget v1, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->nowPosition:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    iget-object v4, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->nowPosition:I

    if-eq p2, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 13
    :goto_1
    invoke-virtual {p1, v0, v1, v2}, Lcom/innioasis/y1/activity/video/adapter/RVBaseViewHolder;->bind(Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public final removeMultiSelectItems(Z)V
    .locals 5

    .line 95
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sortDescending(Ljava/util/List;)V

    .line 97
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 98
    iget-object v3, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 99
    iget-object v3, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 100
    iget-object v4, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->mList:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    if-ltz v3, :cond_1

    iget-object v4, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 101
    iget-object v4, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->nowPosition:I

    if-ltz v0, :cond_3

    .line 104
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->getItemCount()I

    move-result v2

    if-lt v0, v2, :cond_4

    :cond_3
    iput v1, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->nowPosition:I

    .line 105
    :cond_4
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_5

    .line 107
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->notifyDataSetChanged()V

    :cond_5
    return-void
.end method

.method public final setItemList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->mList:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final setMultiSelectIndexes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    return-void
.end method

.method protected final setNowPosition(I)V
    .locals 0

    .line 10
    iput p1, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->nowPosition:I

    return-void
.end method

.method public final setSelectPosition(IZ)V
    .locals 1

    if-ltz p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    .line 75
    :cond_1
    iput p1, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->nowPosition:I

    :cond_2
    return-void
.end method

.method public toNext(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 3

    const-string v0, "lv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->nowPosition:I

    add-int/lit8 v1, v0, 0x1

    .line 52
    iput v1, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->nowPosition:I

    .line 53
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->getItemCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->nowPosition:I

    :cond_0
    if-eqz p2, :cond_1

    .line 55
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->notifyItemChanged(I)V

    .line 56
    iget p2, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->nowPosition:I

    invoke-virtual {p0, p2}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->notifyDataSetChanged()V

    .line 58
    :goto_0
    iget p2, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->nowPosition:I

    invoke-direct {p0, p2}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->positionIsValid(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 59
    iget p2, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->nowPosition:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_2
    return-void
.end method

.method public toPrevious(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 2

    const-string v0, "lv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget v0, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->nowPosition:I

    add-int/lit8 v1, v0, -0x1

    .line 64
    iput v1, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->nowPosition:I

    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 65
    iput v1, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->nowPosition:I

    :cond_0
    if-eqz p2, :cond_1

    .line 67
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->notifyItemChanged(I)V

    .line 68
    iget p2, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->nowPosition:I

    invoke-virtual {p0, p2}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->notifyDataSetChanged()V

    .line 70
    :goto_0
    iget p2, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->nowPosition:I

    invoke-direct {p0, p2}, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->positionIsValid(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 71
    iget p2, p0, Lcom/innioasis/y1/activity/video/adapter/RVBaseAdapter;->nowPosition:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_2
    return-void
.end method
