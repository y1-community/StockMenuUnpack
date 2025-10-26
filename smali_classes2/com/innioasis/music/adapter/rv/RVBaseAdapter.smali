.class public abstract Lcom/innioasis/music/adapter/rv/RVBaseAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RVBaseAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/innioasis/music/adapter/rv/RVBaseViewHolder<",
        "TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u00030\u0002B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0018J\u0014\u0010\u001a\u001a\u00020\u00162\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001cJ\u0018\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u001f\u001a\u00020 J\u0010\u0010!\u001a\u00020\u00162\u0008\u0008\u0002\u0010\"\u001a\u00020 J\u0006\u0010#\u001a\u00020\u0016J\u0015\u0010$\u001a\u0004\u0018\u00018\u00002\u0006\u0010%\u001a\u00020\u000c\u00a2\u0006\u0002\u0010&J\u0008\u0010\'\u001a\u00020\u000cH\u0016J\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008J\r\u0010)\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010*J\u0006\u0010+\u001a\u00020\u000cJ\u001e\u0010,\u001a\u00020\u00162\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010%\u001a\u00020\u000cH\u0016J\u0010\u0010.\u001a\u00020 2\u0006\u0010%\u001a\u00020\u000cH\u0002J\u0010\u0010/\u001a\u00020\u00162\u0008\u0008\u0002\u0010\"\u001a\u00020 J\u0014\u00100\u001a\u00020\u00162\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008J\u0018\u00102\u001a\u00020\u00162\u0006\u0010%\u001a\u00020\u000c2\u0008\u0008\u0002\u00103\u001a\u00020 J\u001a\u00104\u001a\u00020\u00162\u0006\u00105\u001a\u0002062\u0008\u0008\u0002\u00107\u001a\u00020 H\u0016J\u001a\u00108\u001a\u00020\u00162\u0006\u00105\u001a\u0002062\u0008\u0008\u0002\u00107\u001a\u00020 H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR \u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\n\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000cX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u00069"
    }
    d2 = {
        "Lcom/innioasis/music/adapter/rv/RVBaseAdapter;",
        "T",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;",
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

    .line 13
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->activity:Landroid/app/Activity;

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->mList:Ljava/util/List;

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    return-void
.end method

.method public static synthetic addOrRemoveMultiSelectIndex$default(Lcom/innioasis/music/adapter/rv/RVBaseAdapter;IZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 114
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->addOrRemoveMultiSelectIndex(IZ)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addOrRemoveMultiSelectIndex"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic allSelect$default(Lcom/innioasis/music/adapter/rv/RVBaseAdapter;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 125
    :cond_0
    invoke-virtual {p0, p1}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->allSelect(Z)V

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

    .line 95
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static synthetic removeMultiSelectItems$default(Lcom/innioasis/music/adapter/rv/RVBaseAdapter;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 99
    :cond_0
    invoke-virtual {p0, p1}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->removeMultiSelectItems(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: removeMultiSelectItems"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic setSelectPosition$default(Lcom/innioasis/music/adapter/rv/RVBaseAdapter;IZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 78
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->setSelectPosition(IZ)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setSelectPosition"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic toNext$default(Lcom/innioasis/music/adapter/rv/RVBaseAdapter;Landroidx/recyclerview/widget/RecyclerView;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 55
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->toNext(Landroidx/recyclerview/widget/RecyclerView;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toNext"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic toPrevious$default(Lcom/innioasis/music/adapter/rv/RVBaseAdapter;Landroidx/recyclerview/widget/RecyclerView;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 67
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->toPrevious(Landroidx/recyclerview/widget/RecyclerView;Z)V

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

    .line 36
    iget-object v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->getItemCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public final addItemFirst(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->mList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 42
    invoke-virtual {p0, v1}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->notifyItemInserted(I)V

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

    .line 46
    iget-object v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->mList:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final addOrRemoveMultiSelectIndex(IZ)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 117
    iget-object p2, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 118
    iget-object p2, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_1
    iget-object p2, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 121
    iget-object p2, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final allSelect(Z)V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 128
    iget-object v2, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final clearItemList()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final getItemByPosition(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 89
    iget v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->nowPosition:I

    invoke-direct {p0, v0}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->positionIsValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->mList:Ljava/util/List;

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

    .line 97
    iget-object v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->mList:Ljava/util/List;

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

    .line 14
    iget-object v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->mList:Ljava/util/List;

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

    .line 16
    iget-object v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    return-object v0
.end method

.method protected final getNowPosition()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->nowPosition:I

    return v0
.end method

.method public final getSelectItem()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 84
    iget v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->nowPosition:I

    invoke-direct {p0, v0}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->positionIsValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->mList:Ljava/util/List;

    iget v1, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->nowPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectPosition()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->nowPosition:I

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 12
    check-cast p1, Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->onBindViewHolder(Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/music/adapter/rv/RVBaseViewHolder<",
            "TT;>;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 20
    iget v1, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->nowPosition:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    iget-object v4, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->nowPosition:I

    if-eq p2, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 18
    :goto_1
    invoke-virtual {p1, v0, v1, v2}, Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;->bind(Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public final removeMultiSelectItems(Z)V
    .locals 5

    .line 100
    iget-object v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sortDescending(Ljava/util/List;)V

    .line 102
    iget-object v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 103
    iget-object v3, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 104
    iget-object v3, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 105
    iget-object v4, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->mList:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    if-ltz v3, :cond_1

    iget-object v4, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 106
    iget-object v4, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->nowPosition:I

    if-ltz v0, :cond_3

    .line 109
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->getItemCount()I

    move-result v2

    if-lt v0, v2, :cond_4

    :cond_3
    iput v1, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->nowPosition:I

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_5

    .line 112
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->notifyDataSetChanged()V

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

    .line 30
    iget-object v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    iget-object v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->mList:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->notifyDataSetChanged()V

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

    .line 16
    iput-object p1, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->multiSelectIndexes:Ljava/util/List;

    return-void
.end method

.method protected final setNowPosition(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->nowPosition:I

    return-void
.end method

.method public final setSelectPosition(IZ)V
    .locals 1

    if-ltz p1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    .line 80
    :cond_1
    iput p1, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->nowPosition:I

    :cond_2
    return-void
.end method

.method public toNext(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 3

    const-string v0, "lv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->nowPosition:I

    add-int/lit8 v1, v0, 0x1

    .line 57
    iput v1, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->nowPosition:I

    .line 58
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->getItemCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->nowPosition:I

    :cond_0
    if-eqz p2, :cond_1

    .line 60
    invoke-virtual {p0, v0}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->notifyItemChanged(I)V

    .line 61
    iget p2, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->nowPosition:I

    invoke-virtual {p0, p2}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->notifyDataSetChanged()V

    .line 63
    :goto_0
    iget p2, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->nowPosition:I

    invoke-direct {p0, p2}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->positionIsValid(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 64
    iget p2, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->nowPosition:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_2
    return-void
.end method

.method public toPrevious(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 2

    const-string v0, "lv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget v0, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->nowPosition:I

    add-int/lit8 v1, v0, -0x1

    .line 69
    iput v1, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->nowPosition:I

    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 70
    iput v1, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->nowPosition:I

    :cond_0
    if-eqz p2, :cond_1

    .line 72
    invoke-virtual {p0, v0}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->notifyItemChanged(I)V

    .line 73
    iget p2, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->nowPosition:I

    invoke-virtual {p0, p2}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->notifyDataSetChanged()V

    .line 75
    :goto_0
    iget p2, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->nowPosition:I

    invoke-direct {p0, p2}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->positionIsValid(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 76
    iget p2, p0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->nowPosition:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_2
    return-void
.end method
