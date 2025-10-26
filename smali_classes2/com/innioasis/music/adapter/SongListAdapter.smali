.class public final Lcom/innioasis/music/adapter/SongListAdapter;
.super Lcom/innioasis/music/adapter/MyBaseAdapter;
.source "SongListAdapter.kt"


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
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J$\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0014\u0010\u001f\u001a\u00020 2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00020\"R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u000bR\u001a\u0010\u000f\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\t\"\u0004\u0008\u0011\u0010\u000bR\u001b\u0010\u0012\u001a\u00020\u00138FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006#"
    }
    d2 = {
        "Lcom/innioasis/music/adapter/SongListAdapter;",
        "Lcom/innioasis/music/adapter/MyBaseAdapter;",
        "Lcom/innioasis/y1/database/Song;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "canShowAlbum",
        "",
        "getCanShowAlbum",
        "()Z",
        "setCanShowAlbum",
        "(Z)V",
        "canShowSongName",
        "getCanShowSongName",
        "setCanShowSongName",
        "canShowTime",
        "getCanShowTime",
        "setCanShowTime",
        "format",
        "Ljava/text/SimpleDateFormat;",
        "getFormat",
        "()Ljava/text/SimpleDateFormat;",
        "format$delegate",
        "Lkotlin/Lazy;",
        "getView",
        "Landroid/view/View;",
        "position",
        "",
        "convertView",
        "parent",
        "Landroid/view/ViewGroup;",
        "replaceSongs",
        "",
        "list",
        "",
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
.field private canShowAlbum:Z

.field private canShowSongName:Z

.field private canShowTime:Z

.field private final format$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/innioasis/music/adapter/MyBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 24
    sget-object p1, Lcom/innioasis/music/adapter/SongListAdapter$format$2;->INSTANCE:Lcom/innioasis/music/adapter/SongListAdapter$format$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/music/adapter/SongListAdapter;->format$delegate:Lkotlin/Lazy;

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/innioasis/music/adapter/SongListAdapter;->canShowAlbum:Z

    .line 35
    iput-boolean p1, p0, Lcom/innioasis/music/adapter/SongListAdapter;->canShowSongName:Z

    return-void
.end method


# virtual methods
.method public final getCanShowAlbum()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/innioasis/music/adapter/SongListAdapter;->canShowAlbum:Z

    return v0
.end method

.method public final getCanShowSongName()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/innioasis/music/adapter/SongListAdapter;->canShowSongName:Z

    return v0
.end method

.method public final getCanShowTime()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/innioasis/music/adapter/SongListAdapter;->canShowTime:Z

    return v0
.end method

.method public final getFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/innioasis/music/adapter/SongListAdapter;->format$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 41
    invoke-static {p2}, Lcom/innioasis/y1/databinding/ItemSonglistBinding;->bind(Landroid/view/View;)Lcom/innioasis/y1/databinding/ItemSonglistBinding;

    move-result-object p2

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/SongListAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p3, v0}, Lcom/innioasis/y1/databinding/ItemSonglistBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/innioasis/y1/databinding/ItemSonglistBinding;

    move-result-object p2

    :goto_0
    const-string p3, "if (convertView != null)\u2026 parent, false)\n        }"

    .line 40
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/SongListAdapter;->getMList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/innioasis/y1/database/Song;

    .line 47
    iget-object v1, p2, Lcom/innioasis/y1/databinding/ItemSonglistBinding;->tvSongIndex:Landroid/widget/TextView;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p2, Lcom/innioasis/y1/databinding/ItemSonglistBinding;->tvSongName:Landroid/widget/TextView;

    .line 49
    iget-boolean v2, p0, Lcom/innioasis/music/adapter/SongListAdapter;->canShowSongName:Z

    if-eqz v2, :cond_1

    .line 50
    sget-object v2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p3}, Lcom/innioasis/y1/database/Song;->getSongName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/innioasis/music/util/Other;->unNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_1

    .line 53
    :cond_1
    sget-object v2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    sget-object v3, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p3}, Lcom/innioasis/y1/database/Song;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->processFileExtensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/innioasis/music/util/Other;->unNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 48
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p2, Lcom/innioasis/y1/databinding/ItemSonglistBinding;->tvArtists:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    sget-object v3, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p3}, Lcom/innioasis/y1/database/Song;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/innioasis/music/util/Other;->unNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-boolean v3, p0, Lcom/innioasis/music/adapter/SongListAdapter;->canShowTime:Z

    const-string v4, "     "

    if-eqz v3, :cond_2

    .line 59
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/SongListAdapter;->getFormat()Ljava/text/SimpleDateFormat;

    move-result-object v3

    invoke-virtual {p3}, Lcom/innioasis/y1/database/Song;->getFileDate()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_2
    iget-boolean v3, p0, Lcom/innioasis/music/adapter/SongListAdapter;->canShowAlbum:Z

    if-eqz v3, :cond_3

    .line 63
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    sget-object v3, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p3}, Lcom/innioasis/y1/database/Song;->getAlbum()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/innioasis/music/util/Other;->unNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/SongListAdapter;->getNowPosition()I

    move-result p3

    const v1, 0x7f08014a

    const v2, 0x7f06025c

    const-string v3, "vb.root"

    const-string v4, "vb.tvSongName"

    const/4 v5, 0x1

    if-ne p1, p3, :cond_4

    .line 71
    iget-object p1, p2, Lcom/innioasis/y1/databinding/ItemSonglistBinding;->tvSongName:Landroid/widget/TextView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/innioasis/music/adapter/SongListAdapter;->makeItMarquee(Landroid/widget/TextView;)V

    .line 72
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p2}, Lcom/innioasis/y1/databinding/ItemSonglistBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p3

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3, v1, v5}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 73
    sget-object p1, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    iget-object p3, p2, Lcom/innioasis/y1/databinding/ItemSonglistBinding;->rightArrow:Landroid/widget/ImageView;

    .line 74
    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const-string v6, ""

    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v6, 0x7f0e002d

    invoke-virtual {v1, p3, v6}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetRightArrow(Landroid/widget/ImageView;I)V

    const-string v1, "vb.rightArrow.apply {\n  \u2026ight_arrow)\n            }"

    .line 73
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Lcom/innioasis/music/util/Other;->showV(Landroid/view/View;)V

    .line 76
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/SongListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto/16 :goto_2

    .line 79
    :cond_4
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/SongListAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    const-string v6, "vb.rightArrow"

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Lcom/innioasis/music/adapter/SongListAdapter;->getNowPosition()I

    move-result p3

    if-eq p1, p3, :cond_5

    .line 81
    iget-object p1, p2, Lcom/innioasis/y1/databinding/ItemSonglistBinding;->tvSongName:Landroid/widget/TextView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/innioasis/music/adapter/SongListAdapter;->makeItNormal(Landroid/widget/TextView;)V

    .line 82
    sget-object p1, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    iget-object p3, p2, Lcom/innioasis/y1/databinding/ItemSonglistBinding;->rightArrow:Landroid/widget/ImageView;

    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    .line 83
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p2}, Lcom/innioasis/y1/databinding/ItemSonglistBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p3

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3, v1, v5}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 84
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/SongListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_2

    .line 89
    :cond_5
    iget-object p1, p2, Lcom/innioasis/y1/databinding/ItemSonglistBinding;->tvSongName:Landroid/widget/TextView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/innioasis/music/adapter/SongListAdapter;->makeItNormal(Landroid/widget/TextView;)V

    .line 90
    sget-object p1, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    iget-object p3, p2, Lcom/innioasis/y1/databinding/ItemSonglistBinding;->rightArrow:Landroid/widget/ImageView;

    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    .line 91
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p2}, Lcom/innioasis/y1/databinding/ItemSonglistBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p3

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    const v1, 0x7f080144

    invoke-virtual {p1, p3, v1, v0}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 92
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/SongListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f06026b

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 94
    :goto_2
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/SongListAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 96
    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v2, p2, Lcom/innioasis/y1/databinding/ItemSonglistBinding;->tvSongIndex:Landroid/widget/TextView;

    const-string v6, "vb.tvSongIndex"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, p3, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v1, v2, p1, v6}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 97
    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v2, p2, Lcom/innioasis/y1/databinding/ItemSonglistBinding;->tvSongName:Landroid/widget/TextView;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, p3, :cond_7

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v1, v2, p1, v4}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 98
    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v2, p2, Lcom/innioasis/y1/databinding/ItemSonglistBinding;->tvArtists:Landroid/widget/TextView;

    const-string v4, "vb.tvArtists"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, p3, :cond_8

    const/4 v0, 0x1

    :cond_8
    invoke-virtual {v1, v2, p1, v0}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 99
    invoke-virtual {p2}, Lcom/innioasis/y1/databinding/ItemSonglistBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final replaceSongs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/innioasis/music/adapter/SongListAdapter;->setMList(Ljava/util/List;)V

    .line 105
    invoke-virtual {p0}, Lcom/innioasis/music/adapter/SongListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final setCanShowAlbum(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/innioasis/music/adapter/SongListAdapter;->canShowAlbum:Z

    return-void
.end method

.method public final setCanShowSongName(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/innioasis/music/adapter/SongListAdapter;->canShowSongName:Z

    return-void
.end method

.method public final setCanShowTime(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/innioasis/music/adapter/SongListAdapter;->canShowTime:Z

    return-void
.end method
