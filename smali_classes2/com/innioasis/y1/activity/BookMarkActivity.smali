.class public final Lcom/innioasis/y1/activity/BookMarkActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "BookMarkActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/activity/BookMarkActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityBookmarkBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0002\u000e\u0015\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0018H\u0016J\u0008\u0010\u001a\u001a\u00020\u0018H\u0016J\u0010\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u0002H\u0016J\u0008\u0010\u001f\u001a\u00020\u0018H\u0016J\u0008\u0010 \u001a\u00020\u0018H\u0016J\u0008\u0010!\u001a\u00020\u0018H\u0014J\u0008\u0010\"\u001a\u00020\u0018H\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0016\u00a8\u0006#"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/BookMarkActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityBookmarkBinding;",
        "()V",
        "adapter",
        "Lcom/innioasis/y1/adapter/BookmarkAdapter;",
        "getAdapter",
        "()Lcom/innioasis/y1/adapter/BookmarkAdapter;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "allBookmarks",
        "",
        "Lcom/innioasis/y1/database/Bookmark;",
        "isDeleteCallback",
        "com/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1",
        "Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1;",
        "isMultiSelect",
        "",
        "subMenuDialog",
        "Lcom/innioasis/music/util/SubMenuDialog;",
        "submenuDialogCallBack",
        "com/innioasis/y1/activity/BookMarkActivity$submenuDialogCallBack$1",
        "Lcom/innioasis/y1/activity/BookMarkActivity$submenuDialogCallBack$1;",
        "antiClockwise",
        "",
        "clockwise",
        "confirm",
        "direction",
        "d",
        "Lcom/innioasis/y1/base/BaseActivity$Direction;",
        "getViewBinding",
        "initView",
        "longConfirm",
        "onResume",
        "quit",
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
.field private final adapter$delegate:Lkotlin/Lazy;

.field private allBookmarks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Bookmark;",
            ">;"
        }
    .end annotation
.end field

.field private final isDeleteCallback:Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1;

.field private isMultiSelect:Z

.field private subMenuDialog:Lcom/innioasis/music/util/SubMenuDialog;

.field private final submenuDialogCallBack:Lcom/innioasis/y1/activity/BookMarkActivity$submenuDialogCallBack$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    .line 26
    new-instance v0, Lcom/innioasis/y1/activity/BookMarkActivity$adapter$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/BookMarkActivity$adapter$2;-><init>(Lcom/innioasis/y1/activity/BookMarkActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/BookMarkActivity;->adapter$delegate:Lkotlin/Lazy;

    .line 29
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/BookMarkActivity;->allBookmarks:Ljava/util/List;

    .line 59
    new-instance v0, Lcom/innioasis/y1/activity/BookMarkActivity$submenuDialogCallBack$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/BookMarkActivity$submenuDialogCallBack$1;-><init>(Lcom/innioasis/y1/activity/BookMarkActivity;)V

    iput-object v0, p0, Lcom/innioasis/y1/activity/BookMarkActivity;->submenuDialogCallBack:Lcom/innioasis/y1/activity/BookMarkActivity$submenuDialogCallBack$1;

    .line 103
    new-instance v0, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1;-><init>(Lcom/innioasis/y1/activity/BookMarkActivity;)V

    iput-object v0, p0, Lcom/innioasis/y1/activity/BookMarkActivity;->isDeleteCallback:Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1;

    return-void
.end method

.method public static final synthetic access$getAdapter(Lcom/innioasis/y1/activity/BookMarkActivity;)Lcom/innioasis/y1/adapter/BookmarkAdapter;
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getAdapter()Lcom/innioasis/y1/adapter/BookmarkAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isDeleteCallback$p(Lcom/innioasis/y1/activity/BookMarkActivity;)Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/innioasis/y1/activity/BookMarkActivity;->isDeleteCallback:Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1;

    return-object p0
.end method

.method public static final synthetic access$isMultiSelect$p(Lcom/innioasis/y1/activity/BookMarkActivity;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/innioasis/y1/activity/BookMarkActivity;->isMultiSelect:Z

    return p0
.end method

.method public static final synthetic access$setMultiSelect$p(Lcom/innioasis/y1/activity/BookMarkActivity;Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/innioasis/y1/activity/BookMarkActivity;->isMultiSelect:Z

    return-void
.end method

.method private final getAdapter()Lcom/innioasis/y1/adapter/BookmarkAdapter;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/innioasis/y1/activity/BookMarkActivity;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/adapter/BookmarkAdapter;

    return-object v0
.end method


# virtual methods
.method public antiClockwise()V
    .locals 3

    .line 132
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityBookmarkBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityBookmarkBinding;->lvBookmark:Landroid/widget/ListView;

    const-string v2, "vb.lvBookmark"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/util/Other;->listViewScroll(Landroid/widget/ListView;I)V

    return-void
.end method

.method public clockwise()V
    .locals 3

    .line 129
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityBookmarkBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityBookmarkBinding;->lvBookmark:Landroid/widget/ListView;

    const-string v2, "vb.lvBookmark"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/util/Other;->listViewScroll(Landroid/widget/ListView;I)V

    return-void
.end method

.method public confirm()V
    .locals 6

    .line 136
    iget-boolean v0, p0, Lcom/innioasis/y1/activity/BookMarkActivity;->isMultiSelect:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getAdapter()Lcom/innioasis/y1/adapter/BookmarkAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getAdapter()Lcom/innioasis/y1/adapter/BookmarkAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/adapter/BookmarkAdapter;->getPosition()I

    move-result v2

    invoke-direct {p0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getAdapter()Lcom/innioasis/y1/adapter/BookmarkAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/innioasis/y1/adapter/BookmarkAdapter;->getTYPE_MUILTIPLE()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/innioasis/y1/adapter/BookmarkAdapter;->addItemToSelectedIndex(II)V

    .line 138
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivityBookmarkBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivityBookmarkBinding;->lvBookmark:Landroid/widget/ListView;

    const-string v3, "vb.lvBookmark"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lcom/innioasis/music/util/Other;->listViewScroll(Landroid/widget/ListView;I)V

    .line 139
    invoke-direct {p0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getAdapter()Lcom/innioasis/y1/adapter/BookmarkAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/adapter/BookmarkAdapter;->notifyDataSetChanged()V

    goto/16 :goto_5

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getAdapter()Lcom/innioasis/y1/adapter/BookmarkAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/adapter/BookmarkAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 142
    new-instance v0, Landroid/content/Intent;

    .line 143
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/innioasis/y1/activity/AudioPlayerActivity;

    .line 142
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/innioasis/y1/service/PlayerService;->getAudiobookIndex()I

    move-result v2

    .line 147
    invoke-direct {p0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getAdapter()Lcom/innioasis/y1/adapter/BookmarkAdapter;

    move-result-object v3

    invoke-direct {p0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getAdapter()Lcom/innioasis/y1/adapter/BookmarkAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/innioasis/y1/adapter/BookmarkAdapter;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/adapter/BookmarkAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/innioasis/y1/database/Bookmark;

    .line 149
    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/innioasis/y1/service/PlayerService;->getBookMarkProgress()Lcom/innioasis/y1/database/Bookmark;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 150
    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/innioasis/y1/service/PlayerService;->getAudiobookList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 151
    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v3}, Lcom/innioasis/y1/service/PlayerService;->setBookMarkProgress(Lcom/innioasis/y1/database/Bookmark;)V

    .line 152
    :goto_0
    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v2}, Lcom/innioasis/y1/service/PlayerService;->setBookMarkIndex(I)V

    .line 153
    :goto_1
    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/innioasis/y1/service/PlayerService;->getAudiobookList()Ljava/util/List;

    move-result-object v4

    .line 154
    sget-object v5, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v5}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v5

    invoke-virtual {v3}, Lcom/innioasis/y1/database/Bookmark;->getSongId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/innioasis/y1/database/Y1Repository;->getSongBySongIdSync(Ljava/lang/String;)Lcom/innioasis/y1/database/Song;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 153
    invoke-interface {v4, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/innioasis/y1/service/PlayerService;->setWasPlayBookmark(Z)V

    goto :goto_4

    .line 158
    :cond_4
    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v3}, Lcom/innioasis/y1/service/PlayerService;->setBookMarkProgress(Lcom/innioasis/y1/database/Bookmark;)V

    .line 159
    :goto_2
    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v4, v2}, Lcom/innioasis/y1/service/PlayerService;->setBookMarkIndex(I)V

    .line 160
    :goto_3
    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/innioasis/y1/service/PlayerService;->getAudiobookList()Ljava/util/List;

    move-result-object v4

    .line 161
    sget-object v5, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v5}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v5

    invoke-virtual {v3}, Lcom/innioasis/y1/database/Bookmark;->getSongId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/innioasis/y1/database/Y1Repository;->getSongBySongIdSync(Ljava/lang/String;)Lcom/innioasis/y1/database/Song;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 160
    invoke-interface {v4, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 165
    :cond_7
    :goto_4
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/innioasis/y1/service/PlayerService;->getAudiobookList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_8

    .line 166
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/innioasis/y1/service/PlayerService;->getAudiobookList()Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/innioasis/y1/database/Y1Repository;->getSongsSync(I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    :cond_8
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/BookMarkActivity;->startActivity(Landroid/content/Intent;)V

    :cond_9
    :goto_5
    return-void
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/innioasis/y1/activity/BookMarkActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 182
    iget-boolean p1, p0, Lcom/innioasis/y1/activity/BookMarkActivity;->isMultiSelect:Z

    if-eqz p1, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getAdapter()Lcom/innioasis/y1/adapter/BookmarkAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/adapter/BookmarkAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 184
    invoke-direct {p0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getAdapter()Lcom/innioasis/y1/adapter/BookmarkAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/adapter/BookmarkAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BookMarkActivity;->finish()V

    :goto_0
    const/4 p1, 0x0

    .line 188
    iput-boolean p1, p0, Lcom/innioasis/y1/activity/BookMarkActivity;->isMultiSelect:Z

    :cond_1
    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivityBookmarkBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivityBookmarkBinding;
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityBookmarkBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityBookmarkBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 10

    const v0, 0x7f110126

    .line 31
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.music_bookmark_lists)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/BookMarkActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBookmarkBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBookmarkBinding;->lvBookmark:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getAdapter()Lcom/innioasis/y1/adapter/BookmarkAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    sget-object v0, Lcom/innioasis/music/objects/Constant;->INSTANCE:Lcom/innioasis/music/objects/Constant;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Constant;->getSubMenuList2()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    sget-object v0, Lcom/innioasis/music/objects/Constant;->INSTANCE:Lcom/innioasis/music/objects/Constant;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Constant;->getSubMenuList2()Ljava/util/List;

    move-result-object v0

    const v1, 0x7f11012a

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/BookMarkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.music_multi_select)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/innioasis/music/objects/Constant;->INSTANCE:Lcom/innioasis/music/objects/Constant;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Constant;->getSubMenuList2()Ljava/util/List;

    move-result-object v0

    const v1, 0x7f110028

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/BookMarkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.all_select)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/innioasis/music/objects/Constant;->INSTANCE:Lcom/innioasis/music/objects/Constant;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Constant;->getSubMenuList2()Ljava/util/List;

    move-result-object v0

    const v1, 0x7f11002f

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/BookMarkActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.audiobook_delete)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v0, Lcom/innioasis/music/util/SubMenuDialog;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    sget-object v1, Lcom/innioasis/music/objects/Constant;->INSTANCE:Lcom/innioasis/music/objects/Constant;

    invoke-virtual {v1}, Lcom/innioasis/music/objects/Constant;->getSubMenuList2()Ljava/util/List;

    move-result-object v5

    iget-object v1, p0, Lcom/innioasis/y1/activity/BookMarkActivity;->submenuDialogCallBack:Lcom/innioasis/y1/activity/BookMarkActivity$submenuDialogCallBack$1;

    move-object v6, v1

    check-cast v6, Lcom/innioasis/music/util/SubMenuDialog$Callback;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/innioasis/music/util/SubMenuDialog;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/innioasis/music/util/SubMenuDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    new-instance v1, Lcom/innioasis/y1/activity/BookMarkActivity$initView$1$1;

    invoke-direct {v1, p0}, Lcom/innioasis/y1/activity/BookMarkActivity$initView$1$1;-><init>(Lcom/innioasis/y1/activity/BookMarkActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/innioasis/music/util/SubMenuDialog;->setOnBack(Lkotlin/jvm/functions/Function0;)V

    .line 37
    iput-object v0, p0, Lcom/innioasis/y1/activity/BookMarkActivity;->subMenuDialog:Lcom/innioasis/music/util/SubMenuDialog;

    return-void
.end method

.method public longConfirm()V
    .locals 3

    .line 173
    invoke-direct {p0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getAdapter()Lcom/innioasis/y1/adapter/BookmarkAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/adapter/BookmarkAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/innioasis/y1/activity/BookMarkActivity;->subMenuDialog:Lcom/innioasis/music/util/SubMenuDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/music/util/SubMenuDialog;->show()V

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getAdapter()Lcom/innioasis/y1/adapter/BookmarkAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getAdapter()Lcom/innioasis/y1/adapter/BookmarkAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/adapter/BookmarkAdapter;->getPosition()I

    move-result v1

    invoke-direct {p0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getAdapter()Lcom/innioasis/y1/adapter/BookmarkAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/adapter/BookmarkAdapter;->getTYPE_SINGLE()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/adapter/BookmarkAdapter;->addItemToSelectedIndex(II)V

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/innioasis/y1/activity/BookMarkActivity;->isMultiSelect:Z

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 46
    invoke-super {p0}, Lcom/innioasis/y1/base/BaseActivity;->onResume()V

    .line 47
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository;->getBookmarksSync()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/BookMarkActivity;->allBookmarks:Ljava/util/List;

    .line 48
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/BookMarkActivity;->showOrHideNone(I)V

    .line 49
    invoke-direct {p0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getAdapter()Lcom/innioasis/y1/adapter/BookmarkAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1/activity/BookMarkActivity;->allBookmarks:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/adapter/BookmarkAdapter;->setItems(Ljava/util/List;)V

    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method
