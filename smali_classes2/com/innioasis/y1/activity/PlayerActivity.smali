.class public final Lcom/innioasis/y1/activity/PlayerActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "PlayerActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/activity/PlayerActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityPlayerBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0016J\u0008\u0010\u0011\u001a\u00020\u000fH\u0016J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u000fH\u0016J\u0008\u0010\u0017\u001a\u00020\u000fH\u0016J\"\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0014J\u0008\u0010\u001e\u001a\u00020\u000fH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/PlayerActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityPlayerBinding;",
        "()V",
        "adapter",
        "Lcom/innioasis/music/adapter/MainAdapter;",
        "isMultiSelect",
        "",
        "lv_audiobooks",
        "Landroid/widget/ListView;",
        "title",
        "",
        "tv_title",
        "Landroid/widget/TextView;",
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
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
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
.field private adapter:Lcom/innioasis/music/adapter/MainAdapter;

.field private isMultiSelect:Z

.field private lv_audiobooks:Landroid/widget/ListView;

.field private title:Ljava/lang/String;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/innioasis/y1/activity/PlayerActivity;)Lcom/innioasis/music/adapter/MainAdapter;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/innioasis/y1/activity/PlayerActivity;->adapter:Lcom/innioasis/music/adapter/MainAdapter;

    return-object p0
.end method

.method public static final synthetic access$getTitle$p(Lcom/innioasis/y1/activity/PlayerActivity;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/innioasis/y1/activity/PlayerActivity;->title:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$isMultiSelect$p(Lcom/innioasis/y1/activity/PlayerActivity;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/innioasis/y1/activity/PlayerActivity;->isMultiSelect:Z

    return p0
.end method

.method public static final synthetic access$setMultiSelect$p(Lcom/innioasis/y1/activity/PlayerActivity;Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/innioasis/y1/activity/PlayerActivity;->isMultiSelect:Z

    return-void
.end method


# virtual methods
.method public antiClockwise()V
    .locals 3

    .line 73
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityPlayerBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityPlayerBinding;->lvAudiobooks:Landroid/widget/ListView;

    const-string v2, "vb.lvAudiobooks"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/util/Other;->listViewScroll(Landroid/widget/ListView;I)V

    return-void
.end method

.method public clockwise()V
    .locals 3

    .line 70
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityPlayerBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityPlayerBinding;->lvAudiobooks:Landroid/widget/ListView;

    const-string v2, "vb.lvAudiobooks"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/util/Other;->listViewScroll(Landroid/widget/ListView;I)V

    return-void
.end method

.method public confirm()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/innioasis/y1/activity/PlayerActivity;->adapter:Lcom/innioasis/music/adapter/MainAdapter;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/MainAdapter;->getItemList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 93
    iget-boolean v0, p0, Lcom/innioasis/y1/activity/PlayerActivity;->isMultiSelect:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/innioasis/y1/activity/PlayerActivity;->adapter:Lcom/innioasis/music/adapter/MainAdapter;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/innioasis/y1/activity/PlayerActivity;->adapter:Lcom/innioasis/music/adapter/MainAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/innioasis/music/adapter/MainAdapter;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/innioasis/y1/activity/PlayerActivity;->adapter:Lcom/innioasis/music/adapter/MainAdapter;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/innioasis/music/adapter/MainAdapter;->getTYPE_MUILTIPLE()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/innioasis/music/adapter/MainAdapter;->addItemToSelectedIndex(II)V

    .line 95
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivityPlayerBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivityPlayerBinding;->lvAudiobooks:Landroid/widget/ListView;

    const-string v3, "vb.lvAudiobooks"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lcom/innioasis/music/util/Other;->listViewScroll(Landroid/widget/ListView;I)V

    goto :goto_0

    .line 97
    :cond_0
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/innioasis/y1/activity/AllAudiobooksActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    iget-object v1, p0, Lcom/innioasis/y1/activity/PlayerActivity;->adapter:Lcom/innioasis/music/adapter/MainAdapter;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/innioasis/y1/activity/PlayerActivity;->adapter:Lcom/innioasis/music/adapter/MainAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/innioasis/music/adapter/MainAdapter;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/innioasis/music/adapter/MainAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    iget-object v2, p0, Lcom/innioasis/y1/activity/PlayerActivity;->title:Ljava/lang/String;

    const-string v3, "kind"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "filter"

    .line 100
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0, v0, v1}, Lcom/innioasis/y1/activity/PlayerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 102
    iget-object v0, p0, Lcom/innioasis/y1/activity/PlayerActivity;->adapter:Lcom/innioasis/music/adapter/MainAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/MainAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1/activity/PlayerActivity;->adapter:Lcom/innioasis/music/adapter/MainAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/MainAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcom/innioasis/y1/activity/PlayerActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 218
    iget-boolean p1, p0, Lcom/innioasis/y1/activity/PlayerActivity;->isMultiSelect:Z

    if-eqz p1, :cond_1

    .line 219
    iget-object p1, p0, Lcom/innioasis/y1/activity/PlayerActivity;->adapter:Lcom/innioasis/music/adapter/MainAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/innioasis/music/adapter/MainAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 220
    :cond_0
    iget-object p1, p0, Lcom/innioasis/y1/activity/PlayerActivity;->adapter:Lcom/innioasis/music/adapter/MainAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/innioasis/music/adapter/MainAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PlayerActivity;->finish()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 224
    iput-boolean p1, p0, Lcom/innioasis/y1/activity/PlayerActivity;->isMultiSelect:Z

    :cond_3
    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PlayerActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivityPlayerBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivityPlayerBinding;
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PlayerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityPlayerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityPlayerBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 9

    .line 34
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/PlayerActivity;->title:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/innioasis/music/adapter/MainAdapter;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/innioasis/music/adapter/MainAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/innioasis/y1/activity/PlayerActivity;->adapter:Lcom/innioasis/music/adapter/MainAdapter;

    const v0, 0x7f0a02c3

    .line 36
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/innioasis/y1/activity/PlayerActivity;->tv_title:Landroid/widget/TextView;

    const v0, 0x7f0a0184

    .line 37
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/innioasis/y1/activity/PlayerActivity;->lv_audiobooks:Landroid/widget/ListView;

    .line 39
    sget-object v1, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    new-instance v0, Lcom/innioasis/y1/activity/PlayerActivity$initView$timber$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/PlayerActivity$initView$timber$1;-><init>(Lcom/innioasis/y1/activity/PlayerActivity;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/innioasis/music/util/Other;->newTimer$default(Lcom/innioasis/music/util/Other;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/os/CountDownTimer;

    move-result-object v0

    .line 42
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 43
    sget-object v2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v1, v0, v5}, Lcom/innioasis/y1/activity/PlayerActivity$initView$1;-><init>(Lcom/innioasis/y1/activity/PlayerActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/os/CountDownTimer;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public longConfirm()V
    .locals 11

    .line 110
    iget-object v0, p0, Lcom/innioasis/y1/activity/PlayerActivity;->adapter:Lcom/innioasis/music/adapter/MainAdapter;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/MainAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/innioasis/y1/activity/PlayerActivity;->isMultiSelect:Z

    .line 112
    iget-object v1, p0, Lcom/innioasis/y1/activity/PlayerActivity;->adapter:Lcom/innioasis/music/adapter/MainAdapter;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/innioasis/music/adapter/MainAdapter;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/innioasis/y1/activity/PlayerActivity;->adapter:Lcom/innioasis/music/adapter/MainAdapter;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/innioasis/music/adapter/MainAdapter;->getTYPE_SINGLE()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/innioasis/music/adapter/MainAdapter;->addItemToSelectedIndex(II)V

    .line 113
    :cond_1
    new-instance v1, Lcom/innioasis/music/util/SubMenuDialog;

    .line 114
    move-object v5, p0

    check-cast v5, Landroid/app/Activity;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const v3, 0x7f11012a

    .line 115
    invoke-virtual {p0, v3}, Lcom/innioasis/y1/activity/PlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.music_multi_select)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const v3, 0x7f110028

    invoke-virtual {p0, v3}, Lcom/innioasis/y1/activity/PlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.all_select)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const v3, 0x7f110127

    invoke-virtual {p0, v3}, Lcom/innioasis/y1/activity/PlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.music_delete_file)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v2, v0

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 116
    new-instance v0, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1;-><init>(Lcom/innioasis/y1/activity/PlayerActivity;)V

    move-object v7, v0

    check-cast v7, Lcom/innioasis/music/util/SubMenuDialog$Callback;

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v4, v1

    .line 113
    invoke-direct/range {v4 .. v10}, Lcom/innioasis/music/util/SubMenuDialog;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/innioasis/music/util/SubMenuDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 207
    new-instance v0, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$2$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$2$1;-><init>(Lcom/innioasis/y1/activity/PlayerActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v0}, Lcom/innioasis/music/util/SubMenuDialog;->setOnBack(Lkotlin/jvm/functions/Function0;)V

    .line 211
    invoke-virtual {v1}, Lcom/innioasis/music/util/SubMenuDialog;->show()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/innioasis/y1/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/innioasis/y1/activity/PlayerActivity;->adapter:Lcom/innioasis/music/adapter/MainAdapter;

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/innioasis/music/adapter/MainAdapter;->getPosition()I

    move-result p2

    .line 82
    invoke-virtual {p1, p2}, Lcom/innioasis/music/adapter/MainAdapter;->removeItemAt(I)V

    .line 83
    invoke-virtual {p1, p2}, Lcom/innioasis/music/adapter/MainAdapter;->setPosition(I)V

    .line 84
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/innioasis/y1/databinding/ActivityPlayerBinding;

    iget-object p2, p2, Lcom/innioasis/y1/databinding/ActivityPlayerBinding;->lvAudiobooks:Landroid/widget/ListView;

    invoke-virtual {p1}, Lcom/innioasis/music/adapter/MainAdapter;->getPosition()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method
