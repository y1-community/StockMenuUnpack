.class public final Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter;
.super Lcom/innioasis/music/adapter/MyBaseAdapter;
.source "SubmenuVideoAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/music/adapter/MyBaseAdapter<",
        "Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000fB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J$\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter;",
        "Lcom/innioasis/music/adapter/MyBaseAdapter;",
        "Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;",
        "context",
        "Landroid/content/Context;",
        "items",
        "",
        "(Landroid/content/Context;Ljava/util/List;)V",
        "getView",
        "Landroid/view/View;",
        "position",
        "",
        "convertView",
        "parent",
        "Landroid/view/ViewGroup;",
        "Item",
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
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/innioasis/music/adapter/MyBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-super {p0}, Lcom/innioasis/music/adapter/MyBaseAdapter;->getMList()Ljava/util/List;

    move-result-object p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 26
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Lcom/innioasis/y1/databinding/ItemSubmenuBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/innioasis/y1/databinding/ItemSubmenuBinding;

    move-result-object p2

    const-string p3, "inflate(LayoutInflater.f\u2026(context), parent, false)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object p3, p2, Lcom/innioasis/y1/databinding/ItemSubmenuBinding;->submenuItem:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter;->getMList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;->getString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter;->getNowPosition()I

    move-result p3

    const-string v1, "vb.submenuItem"

    if-ne p1, p3, :cond_0

    .line 30
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p3, p2, Lcom/innioasis/y1/databinding/ItemSubmenuBinding;->submenuItem:Landroid/widget/TextView;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06025d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p1, p3, v0, v2}, Lcom/innioasis/y1/theme/ThemeManager;->menuItemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 31
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p3, p2, Lcom/innioasis/y1/databinding/ItemSubmenuBinding;->submenuItem:Landroid/widget/TextView;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    const v0, 0x7f08014b

    invoke-virtual {p1, p3, v0, v2}, Lcom/innioasis/y1/theme/ThemeManager;->menuItemSetBackground(Landroid/view/View;IZ)V

    goto :goto_0

    .line 33
    :cond_0
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p3, p2, Lcom/innioasis/y1/databinding/ItemSubmenuBinding;->submenuItem:Landroid/widget/TextView;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06026b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, p3, v2, v0}, Lcom/innioasis/y1/theme/ThemeManager;->menuItemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 34
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object p3, p2, Lcom/innioasis/y1/databinding/ItemSubmenuBinding;->submenuItem:Landroid/widget/TextView;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3, v0, v0}, Lcom/innioasis/y1/theme/ThemeManager;->menuItemSetBackground(Landroid/view/View;IZ)V

    .line 36
    :goto_0
    invoke-virtual {p2}, Lcom/innioasis/y1/databinding/ItemSubmenuBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string p2, "vb.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    return-object p1
.end method
