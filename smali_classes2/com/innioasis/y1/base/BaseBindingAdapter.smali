.class public abstract Lcom/innioasis/y1/base/BaseBindingAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "BaseBindingAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VB::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "TT;",
        "Lcom/innioasis/y1/base/VBViewHolder<",
        "TVB;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00050\u0004B\u0017\u0012\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J#\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00052\u0006\u0010\u000c\u001a\u00028\u0000H\u0014\u00a2\u0006\u0002\u0010\rJ%\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00028\u00012\u0006\u0010\u0010\u001a\u00028\u00002\u0006\u0010\u0011\u001a\u00020\u0012H&\u00a2\u0006\u0002\u0010\u0013J\u000e\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0016J\u001e\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00052\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0012H\u0014J\u0016\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u0012\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/innioasis/y1/base/BaseBindingAdapter;",
        "T",
        "VB",
        "Landroidx/viewbinding/ViewBinding;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/innioasis/y1/base/VBViewHolder;",
        "data",
        "",
        "(Ljava/util/List;)V",
        "convert",
        "",
        "holder",
        "item",
        "(Lcom/innioasis/y1/base/VBViewHolder;Ljava/lang/Object;)V",
        "init",
        "binding",
        "bean",
        "pos",
        "",
        "(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;I)V",
        "makeItMarquee",
        "tv",
        "Landroid/widget/TextView;",
        "makeItNormal",
        "onCreateDefViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "removeRange",
        "start",
        "count",
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


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 13
    :cond_0
    invoke-direct {p0, p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/innioasis/y1/base/VBViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/base/BaseBindingAdapter;->convert(Lcom/innioasis/y1/base/VBViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method protected convert(Lcom/innioasis/y1/base/VBViewHolder;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/base/VBViewHolder<",
            "TVB;>;TT;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/innioasis/y1/base/VBViewHolder;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    invoke-virtual {p1}, Lcom/innioasis/y1/base/VBViewHolder;->getLayoutPosition()I

    move-result p1

    invoke-virtual {p0, v0, p2, p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->init(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;I)V

    return-void
.end method

.method public abstract init(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVB;TT;I)V"
        }
    .end annotation
.end method

.method public final makeItMarquee(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "tv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v0, 0x2537

    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 42
    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public final makeItNormal(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "tv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method public bridge synthetic onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/base/BaseBindingAdapter;->onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/innioasis/y1/base/VBViewHolder;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-object p1
.end method

.method protected onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/innioasis/y1/base/VBViewHolder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/innioasis/y1/base/VBViewHolder<",
            "TVB;>;"
        }
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type java.lang.reflect.ParameterizedType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    const/4 v0, 0x1

    aget-object p2, p2, v0

    const-string v1, "null cannot be cast to non-null type java.lang.Class<VB of com.innioasis.y1.base.BaseBindingAdapter>"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Class;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    .line 23
    const-class v3, Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/view/ViewGroup;

    aput-object v3, v2, v0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const-string v3, "inflate"

    .line 21
    invoke-virtual {p2, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object p1, v1, v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v5

    const/4 p1, 0x0

    invoke-virtual {p2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type VB of com.innioasis.y1.base.BaseBindingAdapter"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    .line 29
    new-instance p2, Lcom/innioasis/y1/base/VBViewHolder;

    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "mBinding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1, v0}, Lcom/innioasis/y1/base/VBViewHolder;-><init>(Landroidx/viewbinding/ViewBinding;Landroid/view/View;)V

    return-object p2
.end method

.method public final removeRange(II)V
    .locals 3

    if-gtz p2, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 51
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_1

    :cond_1
    add-int v0, p1, p2

    .line 52
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 54
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyItemRangeRemoved(II)V

    :cond_3
    :goto_1
    return-void
.end method
