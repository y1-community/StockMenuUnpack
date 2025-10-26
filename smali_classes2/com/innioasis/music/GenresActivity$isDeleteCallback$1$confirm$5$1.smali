.class final Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GenresActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.innioasis.music.GenresActivity$isDeleteCallback$1$confirm$5$1"
    f = "GenresActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/innioasis/music/GenresActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/GenresActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/music/GenresActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5$1;->this$0:Lcom/innioasis/music/GenresActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5$1;

    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-direct {p1, v0, p2}, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5$1;-><init>(Lcom/innioasis/music/GenresActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 363
    iget v0, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 364
    iget-object p1, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5$1;->this$0:Lcom/innioasis/music/GenresActivity;

    const-string v0, "hd"

    invoke-virtual {p1, v0}, Lcom/innioasis/music/GenresActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 365
    iget-object p1, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {p1}, Lcom/innioasis/music/GenresActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityGenresBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityGenresBinding;->lv:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/GenresActivity;->getAdapter4()Lcom/innioasis/music/adapter/SongListAdapter2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/SongListAdapter2;->getPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 366
    iget-object p1, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {p1}, Lcom/innioasis/music/GenresActivity;->getAdapter4()Lcom/innioasis/music/adapter/SongListAdapter2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/music/adapter/SongListAdapter2;->getCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 367
    iget-object p1, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {p1}, Lcom/innioasis/music/GenresActivity;->getAdapter3_1()Lcom/innioasis/music/adapter/AlbumListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getPosition()I

    move-result p1

    .line 368
    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/GenresActivity;->getAdapter3_1()Lcom/innioasis/music/adapter/AlbumListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/innioasis/music/adapter/AlbumListAdapter;->removeItemAt(I)V

    .line 369
    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/GenresActivity;->getAdapter3_1()Lcom/innioasis/music/adapter/AlbumListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/innioasis/music/adapter/AlbumListAdapter;->setPosition(I)V

    .line 370
    iget-object p1, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {p1}, Lcom/innioasis/music/GenresActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityGenresBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityGenresBinding;->lv:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/GenresActivity;->getAdapter3_1()Lcom/innioasis/music/adapter/AlbumListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 371
    iget-object p1, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {p1}, Lcom/innioasis/music/GenresActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityGenresBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityGenresBinding;->lv:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/GenresActivity;->getAdapter3_1()Lcom/innioasis/music/adapter/AlbumListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 372
    iget-object p1, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5$1;->this$0:Lcom/innioasis/music/GenresActivity;

    invoke-virtual {p1}, Lcom/innioasis/music/GenresActivity;->getAdapter3_1()Lcom/innioasis/music/adapter/AlbumListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/AlbumListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/innioasis/music/GenresActivity;->showOrHideNone(I)V

    .line 373
    iget-object p1, p0, Lcom/innioasis/music/GenresActivity$isDeleteCallback$1$confirm$5$1;->this$0:Lcom/innioasis/music/GenresActivity;

    const v0, 0x7f110122

    invoke-virtual {p1, v0}, Lcom/innioasis/music/GenresActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.music_all_albums)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/innioasis/music/GenresActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 375
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
