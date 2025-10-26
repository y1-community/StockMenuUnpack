.class final Lcom/innioasis/music/FilesActivity$refresh$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FilesActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/FilesActivity;->refresh(Ljava/lang/String;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilesActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilesActivity.kt\ncom/innioasis/music/FilesActivity$refresh$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,331:1\n1851#2,2:332\n6143#3,2:334\n6152#3,2:336\n6143#3,2:338\n6152#3,2:340\n*S KotlinDebug\n*F\n+ 1 FilesActivity.kt\ncom/innioasis/music/FilesActivity$refresh$1\n*L\n76#1:332,2\n88#1:334,2\n91#1:336,2\n95#1:338,2\n96#1:340,2\n*E\n"
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
    c = "com.innioasis.music.FilesActivity$refresh$1"
    f = "FilesActivity.kt"
    i = {}
    l = {
        0x67
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $file:Ljava/io/File;

.field final synthetic $timber:Landroid/os/CountDownTimer;

.field label:I

.field final synthetic this$0:Lcom/innioasis/music/FilesActivity;


# direct methods
.method public static synthetic $r8$lambda$4nN0gAMwWAJO_Eku70nKfbk99RA(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lcom/innioasis/music/FilesActivity$refresh$1;->invokeSuspend$lambda-1(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Ljava/io/File;Lcom/innioasis/music/FilesActivity;Landroid/os/CountDownTimer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/innioasis/music/FilesActivity;",
            "Landroid/os/CountDownTimer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/music/FilesActivity$refresh$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/music/FilesActivity$refresh$1;->$file:Ljava/io/File;

    iput-object p2, p0, Lcom/innioasis/music/FilesActivity$refresh$1;->this$0:Lcom/innioasis/music/FilesActivity;

    iput-object p3, p0, Lcom/innioasis/music/FilesActivity$refresh$1;->$timber:Landroid/os/CountDownTimer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-1(Ljava/io/File;)Z
    .locals 4

    .line 83
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/storage/sdcard0/Audiobooks"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "it.path"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v2, 0x0

    const-string v3, "/storage/sdcard0/Themes"

    invoke-static {p0, v3, v1, v0, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
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

    new-instance p1, Lcom/innioasis/music/FilesActivity$refresh$1;

    iget-object v0, p0, Lcom/innioasis/music/FilesActivity$refresh$1;->$file:Ljava/io/File;

    iget-object v1, p0, Lcom/innioasis/music/FilesActivity$refresh$1;->this$0:Lcom/innioasis/music/FilesActivity;

    iget-object v2, p0, Lcom/innioasis/music/FilesActivity$refresh$1;->$timber:Landroid/os/CountDownTimer;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/innioasis/music/FilesActivity$refresh$1;-><init>(Ljava/io/File;Lcom/innioasis/music/FilesActivity;Landroid/os/CountDownTimer;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/FilesActivity$refresh$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/FilesActivity$refresh$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/music/FilesActivity$refresh$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/music/FilesActivity$refresh$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 73
    iget v1, p0, Lcom/innioasis/music/FilesActivity$refresh$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object p1

    iget-object v1, p0, Lcom/innioasis/music/FilesActivity$refresh$1;->$file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "file.path"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByParentPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 76
    check-cast p1, Ljava/lang/Iterable;

    iget-object v3, p0, Lcom/innioasis/music/FilesActivity$refresh$1;->$file:Ljava/io/File;

    .line 332
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/innioasis/y1/database/Song;

    .line 77
    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 79
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    :cond_4
    iget-object p1, p0, Lcom/innioasis/music/FilesActivity$refresh$1;->$file:Ljava/io/File;

    sget-object v3, Lcom/innioasis/music/FilesActivity$refresh$1$$ExternalSyntheticLambda0;->INSTANCE:Lcom/innioasis/music/FilesActivity$refresh$1$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    .line 87
    sget-object v3, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortByName()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 88
    sget-object v3, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p1, :cond_8

    .line 334
    array-length v3, p1

    if-le v3, v2, :cond_8

    new-instance v3, Lcom/innioasis/music/FilesActivity$refresh$1$invokeSuspend$$inlined$sortBy$1;

    invoke-direct {v3}, Lcom/innioasis/music/FilesActivity$refresh$1$invokeSuspend$$inlined$sortBy$1;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {p1, v3}, Lkotlin/collections/ArraysKt;->sortWith([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_8

    .line 336
    array-length v3, p1

    if-le v3, v2, :cond_8

    new-instance v3, Lcom/innioasis/music/FilesActivity$refresh$1$invokeSuspend$$inlined$sortByDescending$1;

    invoke-direct {v3}, Lcom/innioasis/music/FilesActivity$refresh$1$invokeSuspend$$inlined$sortByDescending$1;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {p1, v3}, Lkotlin/collections/ArraysKt;->sortWith([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_1

    .line 95
    :cond_6
    sget-object v3, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz p1, :cond_8

    .line 338
    array-length v3, p1

    if-le v3, v2, :cond_8

    new-instance v3, Lcom/innioasis/music/FilesActivity$refresh$1$invokeSuspend$$inlined$sortBy$2;

    invoke-direct {v3}, Lcom/innioasis/music/FilesActivity$refresh$1$invokeSuspend$$inlined$sortBy$2;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {p1, v3}, Lkotlin/collections/ArraysKt;->sortWith([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_1

    :cond_7
    if-eqz p1, :cond_8

    .line 340
    array-length v3, p1

    if-le v3, v2, :cond_8

    new-instance v3, Lcom/innioasis/music/FilesActivity$refresh$1$invokeSuspend$$inlined$sortByDescending$2;

    invoke-direct {v3}, Lcom/innioasis/music/FilesActivity$refresh$1$invokeSuspend$$inlined$sortByDescending$2;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {p1, v3}, Lkotlin/collections/ArraysKt;->sortWith([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 99
    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/innioasis/music/FilesActivity$refresh$1;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-static {v3, v1}, Lcom/innioasis/music/FilesActivity;->access$setNowSongFileList$p(Lcom/innioasis/music/FilesActivity;Ljava/util/List;)V

    .line 100
    iget-object v3, p0, Lcom/innioasis/music/FilesActivity$refresh$1;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-static {v3}, Lcom/innioasis/music/FilesActivity;->access$getFileList$p(Lcom/innioasis/music/FilesActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 101
    iget-object v3, p0, Lcom/innioasis/music/FilesActivity$refresh$1;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-static {v3}, Lcom/innioasis/music/FilesActivity;->access$getFileList$p(Lcom/innioasis/music/FilesActivity;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    if-nez p1, :cond_9

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/io/File;

    :cond_9
    invoke-static {v3, p1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 102
    iget-object p1, p0, Lcom/innioasis/music/FilesActivity$refresh$1;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-static {p1}, Lcom/innioasis/music/FilesActivity;->access$getFileList$p(Lcom/innioasis/music/FilesActivity;)Ljava/util/List;

    move-result-object p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/innioasis/music/FilesActivity$refresh$1$6;

    iget-object v3, p0, Lcom/innioasis/music/FilesActivity$refresh$1;->this$0:Lcom/innioasis/music/FilesActivity;

    iget-object v4, p0, Lcom/innioasis/music/FilesActivity$refresh$1;->$timber:Landroid/os/CountDownTimer;

    invoke-direct {v1, v3, v4, v5}, Lcom/innioasis/music/FilesActivity$refresh$1$6;-><init>(Lcom/innioasis/music/FilesActivity;Landroid/os/CountDownTimer;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/innioasis/music/FilesActivity$refresh$1;->label:I

    invoke-static {p1, v1, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    .line 112
    :cond_a
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
