.class final Lcom/innioasis/y1/activity/SettingActivity$test$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SettingActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/SettingActivity;->test()V
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
    value = "SMAP\nSettingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingActivity.kt\ncom/innioasis/y1/activity/SettingActivity$test$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1508:1\n13543#2,2:1509\n*S KotlinDebug\n*F\n+ 1 SettingActivity.kt\ncom/innioasis/y1/activity/SettingActivity$test$1\n*L\n1369#1:1509,2\n*E\n"
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
    c = "com.innioasis.y1.activity.SettingActivity$test$1"
    f = "SettingActivity.kt"
    i = {}
    l = {
        0x56f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $p:Landroid/app/ProgressDialog;

.field label:I

.field final synthetic this$0:Lcom/innioasis/y1/activity/SettingActivity;


# direct methods
.method constructor <init>(Landroid/app/ProgressDialog;Lcom/innioasis/y1/activity/SettingActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ProgressDialog;",
            "Lcom/innioasis/y1/activity/SettingActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/innioasis/y1/activity/SettingActivity$test$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/activity/SettingActivity$test$1;->$p:Landroid/app/ProgressDialog;

    iput-object p2, p0, Lcom/innioasis/y1/activity/SettingActivity$test$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/innioasis/y1/activity/SettingActivity$test$1;

    iget-object v0, p0, Lcom/innioasis/y1/activity/SettingActivity$test$1;->$p:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/innioasis/y1/activity/SettingActivity$test$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-direct {p1, v0, v1, p2}, Lcom/innioasis/y1/activity/SettingActivity$test$1;-><init>(Landroid/app/ProgressDialog;Lcom/innioasis/y1/activity/SettingActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/SettingActivity$test$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/activity/SettingActivity$test$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/SettingActivity$test$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/activity/SettingActivity$test$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 1362
    iget v0, v1, Lcom/innioasis/y1/activity/SettingActivity$test$1;->label:I

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 1398
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1362
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1365
    new-instance v0, Ljava/io/File;

    const-string v4, "system/media/audio/piano"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1366
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 1367
    array-length v0, v4

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :cond_2
    move-object v9, v5

    .line 1368
    :goto_0
    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    if-eqz v4, :cond_9

    .line 1509
    array-length v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_9

    aget-object v0, v4, v8

    .line 1373
    new-instance v11, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "/storage/sdcard0"

    invoke-direct {v11, v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1375
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 1379
    :cond_3
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1380
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v19
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1381
    :try_start_2
    move-object v14, v12

    check-cast v14, Ljava/nio/channels/ReadableByteChannel;

    const-wide/16 v15, 0x0

    invoke-virtual {v12}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v17

    move-object/from16 v13, v19

    invoke-virtual/range {v13 .. v18}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 1382
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/innioasis/y1/database/Y1Repository;->insertSong(Ljava/io/File;)V

    .line 1383
    iget v0, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v0, v3

    iput v0, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v12, :cond_4

    .line 1387
    invoke-virtual {v12}, Ljava/nio/channels/FileChannel;->close()V

    :cond_4
    if-eqz v19, :cond_6

    .line 1388
    :goto_2
    invoke-virtual/range {v19 .. v19}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v19, v5

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v19, v5

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v19, v5

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v12, v5

    move-object/from16 v19, v12

    .line 1385
    :goto_3
    :try_start_3
    sget-object v11, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v13, "error occur while copy"

    new-array v14, v3, [Ljava/lang/Object;

    aput-object v0, v14, v7

    invoke-virtual {v11, v13, v14}, Ltimber/log/Timber$Forest;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v12, :cond_5

    .line 1387
    invoke-virtual {v12}, Ljava/nio/channels/FileChannel;->close()V

    :cond_5
    if-eqz v19, :cond_6

    goto :goto_2

    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catchall_2
    move-exception v0

    :goto_5
    move-object v5, v12

    :goto_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    :cond_7
    if-eqz v19, :cond_8

    .line 1388
    invoke-virtual/range {v19 .. v19}, Ljava/nio/channels/FileChannel;->close()V

    :cond_8
    throw v0

    .line 1391
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/innioasis/y1/activity/SettingActivity$test$1$2;

    iget-object v7, v1, Lcom/innioasis/y1/activity/SettingActivity$test$1;->$p:Landroid/app/ProgressDialog;

    iget-object v8, v1, Lcom/innioasis/y1/activity/SettingActivity$test$1;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    const/4 v11, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lcom/innioasis/y1/activity/SettingActivity$test$1$2;-><init>(Landroid/app/ProgressDialog;Lcom/innioasis/y1/activity/SettingActivity;Ljava/lang/Integer;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v3, v1, Lcom/innioasis/y1/activity/SettingActivity$test$1;->label:I

    invoke-static {v0, v4, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_a

    return-object v2

    .line 1398
    :cond_a
    :goto_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
