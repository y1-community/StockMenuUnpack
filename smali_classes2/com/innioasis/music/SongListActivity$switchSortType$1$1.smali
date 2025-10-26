.class final Lcom/innioasis/music/SongListActivity$switchSortType$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SongListActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/SongListActivity$switchSortType$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.innioasis.music.SongListActivity$switchSortType$1$1"
    f = "SongListActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $songList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $timber:Landroid/os/CountDownTimer;

.field label:I

.field final synthetic this$0:Lcom/innioasis/music/SongListActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/SongListActivity;Ljava/util/List;Landroid/os/CountDownTimer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/music/SongListActivity;",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;",
            "Landroid/os/CountDownTimer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/music/SongListActivity$switchSortType$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/music/SongListActivity$switchSortType$1$1;->this$0:Lcom/innioasis/music/SongListActivity;

    iput-object p2, p0, Lcom/innioasis/music/SongListActivity$switchSortType$1$1;->$songList:Ljava/util/List;

    iput-object p3, p0, Lcom/innioasis/music/SongListActivity$switchSortType$1$1;->$timber:Landroid/os/CountDownTimer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/innioasis/music/SongListActivity$switchSortType$1$1;

    iget-object v0, p0, Lcom/innioasis/music/SongListActivity$switchSortType$1$1;->this$0:Lcom/innioasis/music/SongListActivity;

    iget-object v1, p0, Lcom/innioasis/music/SongListActivity$switchSortType$1$1;->$songList:Ljava/util/List;

    iget-object v2, p0, Lcom/innioasis/music/SongListActivity$switchSortType$1$1;->$timber:Landroid/os/CountDownTimer;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/innioasis/music/SongListActivity$switchSortType$1$1;-><init>(Lcom/innioasis/music/SongListActivity;Ljava/util/List;Landroid/os/CountDownTimer;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/SongListActivity$switchSortType$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/SongListActivity$switchSortType$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/music/SongListActivity$switchSortType$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/music/SongListActivity$switchSortType$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 365
    iget v0, p0, Lcom/innioasis/music/SongListActivity$switchSortType$1$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 366
    iget-object p1, p0, Lcom/innioasis/music/SongListActivity$switchSortType$1$1;->this$0:Lcom/innioasis/music/SongListActivity;

    invoke-static {p1}, Lcom/innioasis/music/SongListActivity;->access$getAdapter(Lcom/innioasis/music/SongListActivity;)Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/innioasis/music/SongListActivity$switchSortType$1$1;->$songList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/innioasis/music/adapter/SongListAdapter;->setItems(Ljava/util/List;)V

    .line 367
    iget-object p1, p0, Lcom/innioasis/music/SongListActivity$switchSortType$1$1;->this$0:Lcom/innioasis/music/SongListActivity;

    invoke-static {p1}, Lcom/innioasis/music/SongListActivity;->access$getAdapter(Lcom/innioasis/music/SongListActivity;)Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/innioasis/music/adapter/SongListAdapter;->setPosition(I)V

    .line 368
    iget-object p1, p0, Lcom/innioasis/music/SongListActivity$switchSortType$1$1;->this$0:Lcom/innioasis/music/SongListActivity;

    invoke-virtual {p1}, Lcom/innioasis/music/SongListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivitySongListBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivitySongListBinding;->lv:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 369
    iget-object p1, p0, Lcom/innioasis/music/SongListActivity$switchSortType$1$1;->this$0:Lcom/innioasis/music/SongListActivity;

    invoke-static {p1}, Lcom/innioasis/music/SongListActivity;->access$getAdapter(Lcom/innioasis/music/SongListActivity;)Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/music/adapter/SongListAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 370
    iget-object p1, p0, Lcom/innioasis/music/SongListActivity$switchSortType$1$1;->this$0:Lcom/innioasis/music/SongListActivity;

    const-string v0, "hl"

    invoke-virtual {p1, v0}, Lcom/innioasis/music/SongListActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 371
    iget-object p1, p0, Lcom/innioasis/music/SongListActivity$switchSortType$1$1;->$timber:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 372
    iget-object p1, p0, Lcom/innioasis/music/SongListActivity$switchSortType$1$1;->this$0:Lcom/innioasis/music/SongListActivity;

    invoke-static {p1}, Lcom/innioasis/music/SongListActivity;->access$getAdapter(Lcom/innioasis/music/SongListActivity;)Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/music/adapter/SongListAdapter;->getCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/innioasis/music/SongListActivity$switchSortType$1$1;->this$0:Lcom/innioasis/music/SongListActivity;

    invoke-virtual {p1}, Lcom/innioasis/music/SongListActivity;->showNone()V

    goto :goto_0

    .line 373
    :cond_0
    iget-object p1, p0, Lcom/innioasis/music/SongListActivity$switchSortType$1$1;->this$0:Lcom/innioasis/music/SongListActivity;

    invoke-virtual {p1}, Lcom/innioasis/music/SongListActivity;->hideNone()V

    .line 374
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
