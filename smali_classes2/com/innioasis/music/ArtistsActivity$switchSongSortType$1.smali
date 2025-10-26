.class final Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ArtistsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/ArtistsActivity;->switchSongSortType(Ljava/lang/String;Lcom/innioasis/y1/database/Y1Repository$SongSortType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1$WhenMappings;
    }
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
    c = "com.innioasis.music.ArtistsActivity$switchSongSortType$1"
    f = "ArtistsActivity.kt"
    i = {}
    l = {
        0x274
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $artist:Ljava/lang/String;

.field final synthetic $type:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

.field label:I

.field final synthetic this$0:Lcom/innioasis/music/ArtistsActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/ArtistsActivity;Lcom/innioasis/y1/database/Y1Repository$SongSortType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/music/ArtistsActivity;",
            "Lcom/innioasis/y1/database/Y1Repository$SongSortType;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    iput-object p2, p0, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;->$type:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    iput-object p3, p0, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;->$artist:Ljava/lang/String;

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

    new-instance p1, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;

    iget-object v0, p0, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    iget-object v1, p0, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;->$type:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    iget-object v2, p0, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;->$artist:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;-><init>(Lcom/innioasis/music/ArtistsActivity;Lcom/innioasis/y1/database/Y1Repository$SongSortType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 586
    iget v1, p0, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 637
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 586
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 587
    iget-object p1, p0, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    invoke-static {p1}, Lcom/innioasis/music/ArtistsActivity;->access$getSongAdapter(Lcom/innioasis/music/ArtistsActivity;)Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object p1

    const/4 v1, 0x0

    .line 589
    invoke-virtual {p1, v1}, Lcom/innioasis/music/adapter/SongListAdapter;->setCanShowAlbum(Z)V

    .line 590
    invoke-virtual {p1, v1}, Lcom/innioasis/music/adapter/SongListAdapter;->setCanShowSongName(Z)V

    .line 591
    invoke-virtual {p1, v1}, Lcom/innioasis/music/adapter/SongListAdapter;->setCanShowTime(Z)V

    .line 592
    iget-object v1, p0, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;->$type:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    sget-object v3, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 625
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 623
    :pswitch_0
    invoke-virtual {p1, v2}, Lcom/innioasis/music/adapter/SongListAdapter;->setCanShowSongName(Z)V

    .line 624
    invoke-virtual {p1, v2}, Lcom/innioasis/music/adapter/SongListAdapter;->setCanShowAlbum(Z)V

    .line 625
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository;->Companion:Lcom/innioasis/y1/database/Y1Repository$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$Companion;->get()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    iget-object v3, p0, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;->$artist:Ljava/lang/String;

    sget-object v4, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->Album:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v1, v3, v4}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByArtist(Ljava/lang/String;Lcom/innioasis/y1/database/Y1Repository$SongSortType;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 618
    :pswitch_1
    invoke-virtual {p1, v2}, Lcom/innioasis/music/adapter/SongListAdapter;->setCanShowSongName(Z)V

    .line 619
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository;->Companion:Lcom/innioasis/y1/database/Y1Repository$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$Companion;->get()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    iget-object v3, p0, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;->$artist:Ljava/lang/String;

    sget-object v4, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->SongName_Z_To_A:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v1, v3, v4}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByArtist(Ljava/lang/String;Lcom/innioasis/y1/database/Y1Repository$SongSortType;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 613
    :pswitch_2
    invoke-virtual {p1, v2}, Lcom/innioasis/music/adapter/SongListAdapter;->setCanShowSongName(Z)V

    .line 614
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository;->Companion:Lcom/innioasis/y1/database/Y1Repository$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$Companion;->get()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    iget-object v3, p0, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;->$artist:Ljava/lang/String;

    sget-object v4, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->SongName_A_To_Z:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v1, v3, v4}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByArtist(Ljava/lang/String;Lcom/innioasis/y1/database/Y1Repository$SongSortType;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 608
    :pswitch_3
    invoke-virtual {p1, v2}, Lcom/innioasis/music/adapter/SongListAdapter;->setCanShowTime(Z)V

    .line 609
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository;->Companion:Lcom/innioasis/y1/database/Y1Repository$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$Companion;->get()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    iget-object v3, p0, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;->$artist:Ljava/lang/String;

    sget-object v4, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->Time_Desc:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v1, v3, v4}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByArtist(Ljava/lang/String;Lcom/innioasis/y1/database/Y1Repository$SongSortType;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 603
    :pswitch_4
    invoke-virtual {p1, v2}, Lcom/innioasis/music/adapter/SongListAdapter;->setCanShowTime(Z)V

    .line 604
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository;->Companion:Lcom/innioasis/y1/database/Y1Repository$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$Companion;->get()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    iget-object v3, p0, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;->$artist:Ljava/lang/String;

    sget-object v4, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->Time_Asc:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v1, v3, v4}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByArtist(Ljava/lang/String;Lcom/innioasis/y1/database/Y1Repository$SongSortType;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 599
    :pswitch_5
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository;->Companion:Lcom/innioasis/y1/database/Y1Repository$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$Companion;->get()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    iget-object v3, p0, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;->$artist:Ljava/lang/String;

    sget-object v4, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->FileName_Z_To_A:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v1, v3, v4}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByArtist(Ljava/lang/String;Lcom/innioasis/y1/database/Y1Repository$SongSortType;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 595
    :pswitch_6
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository;->Companion:Lcom/innioasis/y1/database/Y1Repository$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$Companion;->get()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    iget-object v3, p0, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;->$artist:Ljava/lang/String;

    sget-object v4, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->FileName_A_To_Z:Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    invoke-virtual {v1, v3, v4}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByArtist(Ljava/lang/String;Lcom/innioasis/y1/database/Y1Repository$SongSortType;)Ljava/util/List;

    move-result-object v1

    .line 628
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1$1;

    iget-object v5, p0, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;->this$0:Lcom/innioasis/music/ArtistsActivity;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v1, p1, v6}, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1$1;-><init>(Lcom/innioasis/music/ArtistsActivity;Ljava/util/List;Lcom/innioasis/music/adapter/SongListAdapter;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/innioasis/music/ArtistsActivity$switchSongSortType$1;->label:I

    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 637
    :cond_2
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
