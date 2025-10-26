.class public final Lcom/innioasis/y1/activity/AllAudiobooksActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "AllAudiobooksActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/activity/AllAudiobooksActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016J\u0008\u0010\u000e\u001a\u00020\u000cH\u0016J\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u0008\u0010\u0013\u001a\u00020\u000cH\u0016J\u0008\u0010\u0014\u001a\u00020\u000cH\u0016J\u0008\u0010\u0015\u001a\u00020\u000cH\u0014J\u0008\u0010\u0016\u001a\u00020\u000cH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/AllAudiobooksActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;",
        "()V",
        "audioAdapter",
        "Lcom/innioasis/y1/adapter/AudiobookAdapter;",
        "filter",
        "",
        "isMultiSelect",
        "",
        "kind",
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
.field private audioAdapter:Lcom/innioasis/y1/adapter/AudiobookAdapter;

.field private filter:Ljava/lang/String;

.field private isMultiSelect:Z

.field private kind:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAudioAdapter$p(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)Lcom/innioasis/y1/adapter/AudiobookAdapter;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->audioAdapter:Lcom/innioasis/y1/adapter/AudiobookAdapter;

    return-object p0
.end method

.method public static final synthetic access$getFilter$p(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->filter:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getKind$p(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$isMultiSelect$p(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->isMultiSelect:Z

    return p0
.end method

.method public static final synthetic access$setMultiSelect$p(Lcom/innioasis/y1/activity/AllAudiobooksActivity;Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->isMultiSelect:Z

    return-void
.end method


# virtual methods
.method public antiClockwise()V
    .locals 3

    .line 78
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;->spv:Lcom/innioasis/y1/view/ShufflePlaylistItemView;

    invoke-virtual {v0}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->recordOldPosition()V

    .line 79
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;->lvAudiobooks:Landroid/widget/ListView;

    const-string v2, "vb.lvAudiobooks"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/util/Other;->listViewScroll(Landroid/widget/ListView;I)V

    .line 80
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;->spv:Lcom/innioasis/y1/view/ShufflePlaylistItemView;

    iget-boolean v1, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->isMultiSelect:Z

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->onAntiClockwise(Z)V

    return-void
.end method

.method public clockwise()V
    .locals 3

    .line 74
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;->lvAudiobooks:Landroid/widget/ListView;

    const-string v2, "vb.lvAudiobooks"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/util/Other;->listViewScroll(Landroid/widget/ListView;I)V

    .line 75
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;->spv:Lcom/innioasis/y1/view/ShufflePlaylistItemView;

    invoke-virtual {v0}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->onClockwise()V

    return-void
.end method

.method public confirm()V
    .locals 3

    .line 84
    iget-boolean v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->isMultiSelect:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->audioAdapter:Lcom/innioasis/y1/adapter/AudiobookAdapter;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->audioAdapter:Lcom/innioasis/y1/adapter/AudiobookAdapter;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/innioasis/y1/adapter/AudiobookAdapter;->getPosition()I

    move-result v1

    iget-object v2, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->audioAdapter:Lcom/innioasis/y1/adapter/AudiobookAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/innioasis/y1/adapter/AudiobookAdapter;->getTYPE_MUILTIPLE()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/adapter/AudiobookAdapter;->addItemToSelectedIndex(II)V

    .line 86
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;->lvAudiobooks:Landroid/widget/ListView;

    const-string v2, "vb.lvAudiobooks"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/util/Other;->listViewScroll(Landroid/widget/ListView;I)V

    goto/16 :goto_2

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->audioAdapter:Lcom/innioasis/y1/adapter/AudiobookAdapter;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/y1/adapter/AudiobookAdapter;->getItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->audioAdapter:Lcom/innioasis/y1/adapter/AudiobookAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/innioasis/y1/adapter/AudiobookAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 90
    :cond_2
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/service/PlayerService;->setWasPlayBookmark(Z)V

    .line 91
    :goto_0
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/service/PlayerService;->setBookMarkProgress(Lcom/innioasis/y1/database/Bookmark;)V

    .line 92
    :goto_1
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;->spv:Lcom/innioasis/y1/view/ShufflePlaylistItemView;

    invoke-virtual {v1}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->getPlaylist()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;->spv:Lcom/innioasis/y1/view/ShufflePlaylistItemView;

    invoke-virtual {v2}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->getPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/service/PlayerService;->setAudiobookPlaylist(Ljava/util/List;I)V

    .line 93
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/innioasis/y1/activity/AudioPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->startActivity(Landroid/content/Intent;)V

    .line 95
    iget-object v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->audioAdapter:Lcom/innioasis/y1/adapter/AudiobookAdapter;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/innioasis/y1/adapter/AudiobookAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    :cond_6
    iget-object v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->audioAdapter:Lcom/innioasis/y1/adapter/AudiobookAdapter;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/innioasis/y1/adapter/AudiobookAdapter;->notifyDataSetChanged()V

    :cond_7
    :goto_2
    return-void
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    sget-object v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 201
    iget-boolean p1, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->isMultiSelect:Z

    if-eqz p1, :cond_1

    .line 202
    iget-object p1, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->audioAdapter:Lcom/innioasis/y1/adapter/AudiobookAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/innioasis/y1/adapter/AudiobookAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->audioAdapter:Lcom/innioasis/y1/adapter/AudiobookAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/innioasis/y1/adapter/AudiobookAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->finish()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 207
    iput-boolean p1, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->isMultiSelect:Z

    :cond_3
    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 9

    .line 36
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "kind"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->kind:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "filter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->filter:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/innioasis/y1/adapter/AudiobookAdapter;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/innioasis/y1/adapter/AudiobookAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->audioAdapter:Lcom/innioasis/y1/adapter/AudiobookAdapter;

    .line 39
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;->spv:Lcom/innioasis/y1/view/ShufflePlaylistItemView;

    iget-object v1, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->audioAdapter:Lcom/innioasis/y1/adapter/AudiobookAdapter;

    check-cast v1, Lcom/innioasis/music/adapter/MyBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->bind(Lcom/innioasis/music/adapter/MyBaseAdapter;)V

    .line 40
    sget-object v2, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    new-instance v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$timber$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$timber$1;-><init>(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/innioasis/music/util/Other;->newTimer$default(Lcom/innioasis/music/util/Other;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/os/CountDownTimer;

    move-result-object v0

    .line 43
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 44
    sget-object v2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;

    const/4 v5, 0x0

    invoke-direct {v2, v1, p0, v0, v5}, Lcom/innioasis/y1/activity/AllAudiobooksActivity$initView$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/innioasis/y1/activity/AllAudiobooksActivity;Landroid/os/CountDownTimer;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public longConfirm()V
    .locals 11

    .line 102
    iget-object v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->audioAdapter:Lcom/innioasis/y1/adapter/AudiobookAdapter;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/y1/adapter/AudiobookAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityAllaudiobooksBinding;->spv:Lcom/innioasis/y1/view/ShufflePlaylistItemView;

    invoke-virtual {v0}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->isSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->isMultiSelect:Z

    .line 104
    iget-object v1, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->audioAdapter:Lcom/innioasis/y1/adapter/AudiobookAdapter;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/innioasis/y1/adapter/AudiobookAdapter;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->audioAdapter:Lcom/innioasis/y1/adapter/AudiobookAdapter;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/innioasis/y1/adapter/AudiobookAdapter;->getTYPE_SINGLE()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/innioasis/y1/adapter/AudiobookAdapter;->addItemToSelectedIndex(II)V

    .line 105
    :cond_1
    new-instance v1, Lcom/innioasis/music/util/SubMenuDialog;

    .line 106
    move-object v5, p0

    check-cast v5, Landroid/app/Activity;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const v3, 0x7f11012a

    .line 107
    invoke-virtual {p0, v3}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.music_multi_select)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const v3, 0x7f110028

    invoke-virtual {p0, v3}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.all_select)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const v3, 0x7f110127

    invoke-virtual {p0, v3}, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.music_delete_file)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v2, v0

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 108
    new-instance v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$1;-><init>(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)V

    move-object v7, v0

    check-cast v7, Lcom/innioasis/music/util/SubMenuDialog$Callback;

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v4, v1

    .line 105
    invoke-direct/range {v4 .. v10}, Lcom/innioasis/music/util/SubMenuDialog;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/innioasis/music/util/SubMenuDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 191
    new-instance v0, Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$2$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/AllAudiobooksActivity$longConfirm$2$1;-><init>(Lcom/innioasis/y1/activity/AllAudiobooksActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v0}, Lcom/innioasis/music/util/SubMenuDialog;->setOnBack(Lkotlin/jvm/functions/Function0;)V

    .line 195
    invoke-virtual {v1}, Lcom/innioasis/music/util/SubMenuDialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/innioasis/y1/base/BaseActivity;->onResume()V

    .line 33
    iget-object v0, p0, Lcom/innioasis/y1/activity/AllAudiobooksActivity;->audioAdapter:Lcom/innioasis/y1/adapter/AudiobookAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/adapter/AudiobookAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method
