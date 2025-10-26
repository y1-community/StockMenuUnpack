.class public final Lcom/innioasis/music/adapter/SongListAdapter2;
.super Lcom/innioasis/music/adapter/MyBaseAdapter;
.source "SongListAdapter2.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/music/adapter/MyBaseAdapter<",
        "Lcom/innioasis/y1/database/Song;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J$\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/innioasis/music/adapter/SongListAdapter2;",
        "Lcom/innioasis/music/adapter/MyBaseAdapter;",
        "Lcom/innioasis/y1/database/Song;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getView",
        "Landroid/view/View;",
        "position",
        "",
        "convertView",
        "parent",
        "Landroid/view/ViewGroup;",
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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/innioasis/music/adapter/MyBaseAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 24
    invoke-static {p2}, Lcom/innioasis/y1/databinding/ItemMainBinding;->bind(Landroid/view/View;)Lcom/innioasis/y1/databinding/ItemMainBinding;

    move-result-object p2

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/SongListAdapter2;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p3, v0}, Lcom/innioasis/y1/databinding/ItemMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/innioasis/y1/databinding/ItemMainBinding;

    move-result-object p2

    :goto_0
    const-string p3, "if (convertView != null)\u2026 parent, false)\n        }"

    .line 23
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object p3, p2, Lcom/innioasis/y1/databinding/ItemMainBinding;->tvItem:Landroid/widget/TextView;

    const-string v1, "vb.tvItem"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v1, p2, Lcom/innioasis/y1/databinding/ItemMainBinding;->ivArrow:Landroid/widget/ImageView;

    const-string v2, "vb.ivArrow"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    sget-object v3, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p0}, Lcom/innioasis/music/adapter/SongListAdapter2;->getMList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/innioasis/y1/database/Song;

    invoke-virtual {v4}, Lcom/innioasis/y1/database/Song;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->processFileExtensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/innioasis/music/util/Other;->unNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/SongListAdapter2;->getNowPosition()I

    move-result v2

    const v3, 0x7f06025c

    const v4, 0x7f08014a

    const/4 v5, 0x1

    const-string v6, "vb.root"

    if-ne p1, v2, :cond_1

    .line 35
    invoke-virtual {p0, p3}, Lcom/innioasis/music/adapter/SongListAdapter2;->makeItMarquee(Landroid/widget/TextView;)V

    .line 36
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p2}, Lcom/innioasis/y1/databinding/ItemMainBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2, v4, v5}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 37
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    .line 38
    sget-object v2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const v7, 0x7f0e002d

    invoke-virtual {v2, v1, v7}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetRightArrow(Landroid/widget/ImageView;I)V

    .line 37
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/innioasis/music/util/Other;->showV(Landroid/view/View;)V

    .line 40
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/music/adapter/SongListAdapter2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, p3, v2, v5}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    goto :goto_1

    .line 43
    :cond_1
    sget-object v2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    move-object v7, v1

    check-cast v7, Landroid/view/View;

    invoke-virtual {v2, v7}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    .line 44
    sget-object v2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p2}, Lcom/innioasis/y1/databinding/ItemMainBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/View;

    const v8, 0x7f080144

    invoke-virtual {v2, v7, v8, v0}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 45
    sget-object v2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/music/adapter/SongListAdapter2;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06026b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v2, p3, v7, v0}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 48
    :goto_1
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/SongListAdapter2;->getSelectedIndexList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/innioasis/music/adapter/SongListAdapter2;->getNowPosition()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 49
    sget-object p1, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    .line 50
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p2}, Lcom/innioasis/y1/databinding/ItemMainBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0, v4, v5}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 51
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/music/adapter/SongListAdapter2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p3, v0, v5}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 53
    :cond_2
    invoke-virtual {p2}, Lcom/innioasis/y1/databinding/ItemMainBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    return-object p1
.end method
