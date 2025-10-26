.class final Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Y1Repository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/database/Y1Repository;->refreshDatabase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nY1Repository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Y1Repository.kt\ncom/innioasis/y1/database/Y1Repository$refreshDatabase$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1510:1\n1851#2,2:1511\n*S KotlinDebug\n*F\n+ 1 Y1Repository.kt\ncom/innioasis/y1/database/Y1Repository$refreshDatabase$1\n*L\n701#1:1511,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/innioasis/y1/database/Y1Repository;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/database/Y1Repository;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 589
    invoke-virtual {p0}, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 27

    move-object/from16 v1, p0

    const-string v0, "node.path"

    .line 590
    iget-object v2, v1, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/innioasis/y1/database/Y1Repository;->access$setRefreshDatabaseIng$p(Lcom/innioasis/y1/database/Y1Repository;Z)V

    .line 595
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v2

    const-string v4, "power"

    invoke-virtual {v2, v4}, Lcom/innioasis/y1/Y1Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/os/PowerManager;

    const-string v4, "com.innioasis.y1:refreshDatabase"

    .line 596
    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    const/4 v4, 0x0

    .line 601
    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 602
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 607
    :try_start_0
    sget-object v7, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v7, v3}, Lcom/innioasis/music/objects/Global;->setNeedShowScanDialog(Z)V

    .line 608
    sget-object v7, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5f00\u59cb\u5237\u65b0\u6570\u636e\u5e93\u6570\u636e  isRefreshDatabaseIng = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    invoke-static {v9}, Lcom/innioasis/y1/database/Y1Repository;->access$isRefreshDatabaseIng$p(Lcom/innioasis/y1/database/Y1Repository;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    .line 612
    sget-object v9, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v9}, Lcom/innioasis/music/objects/Global;->initScanState()V

    const-string v9, "/storage/sdcard0"

    .line 615
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/List;

    .line 616
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/List;

    .line 618
    new-instance v11, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 619
    sget-object v12, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v13, " \u5f00\u59cb\u5e7f\u5ea6\u641c\u7d22"

    new-array v14, v4, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 620
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v13, 0x64

    const-string v15, "refreshDatabase"

    if-lez v12, :cond_9

    .line 621
    :goto_1
    :try_start_1
    sget-object v12, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v12}, Lcom/innioasis/music/objects/Global;->getScanLock()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 622
    :cond_0
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    .line 623
    sget-object v13, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u627e\u5230\u6587\u4ef6 "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v14, v4, [Ljava/lang/Object;

    invoke-virtual {v13, v3, v14}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 625
    invoke-interface {v10, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 626
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "/storage/sdcard0/Themes"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v14, 0x0

    move-object/from16 v16, v2

    const/4 v2, 0x2

    :try_start_2
    invoke-static {v3, v13, v4, v2, v14}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v2, v16

    goto/16 :goto_3

    .line 629
    :cond_1
    iget-object v3, v1, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    invoke-virtual {v3, v12}, Lcom/innioasis/y1/database/Y1Repository;->endIsAudiobook(Ljava/io/File;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v13, "\u65f6\u51fa\u9519"

    const-string v17, "/storage/sdcard0/Audiobooks"

    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    move-wide/from16 v18, v7

    move-object/from16 v7, v17

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v3, v7, v4, v2, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_2
    move-wide/from16 v18, v7

    :goto_2
    iget-object v3, v1, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    invoke-virtual {v3, v12}, Lcom/innioasis/y1/database/Y1Repository;->endIsMusic(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    move-object/from16 v7, v17

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v3, v7, v4, v2, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 633
    :cond_3
    sget-object v20, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    const/16 v21, 0x0

    const-wide/16 v22, 0x64

    new-instance v2, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$1;

    iget-object v3, v1, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    invoke-direct {v2, v3, v12, v9, v11}, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$1;-><init>(Lcom/innioasis/y1/database/Y1Repository;Ljava/io/File;Ljava/util/List;Lkotlin/jvm/internal/Ref$LongRef;)V

    move-object/from16 v24, v2

    check-cast v24, Lkotlin/jvm/functions/Function0;

    const/16 v25, 0x1

    const/16 v26, 0x0

    invoke-static/range {v20 .. v26}, Lcom/innioasis/music/util/Other;->repeatTry$default(Lcom/innioasis/music/util/Other;IJLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 653
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v2, v15}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5728\u63d2\u5165\u6b4c\u66f2"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v7}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 657
    :cond_4
    iget-object v2, v1, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    invoke-virtual {v2, v12}, Lcom/innioasis/y1/database/Y1Repository;->endIsVideo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 658
    sget-object v20, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    const/16 v21, 0x0

    const-wide/16 v22, 0x64

    new-instance v2, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$2;

    iget-object v3, v1, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    invoke-direct {v2, v3, v12, v5, v6}, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$r$2;-><init>(Lcom/innioasis/y1/database/Y1Repository;Ljava/io/File;J)V

    move-object/from16 v24, v2

    check-cast v24, Lkotlin/jvm/functions/Function0;

    const/16 v25, 0x1

    const/16 v26, 0x0

    invoke-static/range {v20 .. v26}, Lcom/innioasis/music/util/Other;->repeatTry$default(Lcom/innioasis/music/util/Other;IJLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 680
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v2, v15}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5728\u63d2\u5165\u89c6\u9891"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v7}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    :cond_5
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v12}, Ljava/io/File;->isHidden()Z

    move-result v2

    if-nez v2, :cond_7

    .line 685
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 686
    move-object v3, v10

    check-cast v3, Ljava/util/Collection;

    if-nez v2, :cond_6

    new-array v2, v4, [Ljava/io/File;

    :cond_6
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_7
    move-object/from16 v2, v16

    move-wide/from16 v7, v18

    :cond_8
    :goto_3
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_9
    move-object/from16 v16, v2

    move-wide/from16 v18, v7

    .line 689
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v2, "refreshDatabase  \u7ed3\u675f\u5e7f\u5ea6\u641c\u7d22"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 690
    :goto_4
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Global;->getScanLock()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_4

    .line 691
    :cond_a
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    new-instance v2, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$1;

    iget-object v3, v1, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    invoke-direct {v2, v3, v9}, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$1;-><init>(Lcom/innioasis/y1/database/Y1Repository;Ljava/util/List;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v13, v14, v2}, Lcom/innioasis/music/util/Other;->repeatTry(IJLkotlin/jvm/functions/Function0;)Z

    .line 699
    iget-object v0, v1, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    invoke-static {v0}, Lcom/innioasis/y1/database/Y1Repository;->access$getSongDao$p(Lcom/innioasis/y1/database/Y1Repository;)Lcom/innioasis/y1/database/SongDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/innioasis/y1/database/SongDao;->getSongsSync()Ljava/util/List;

    move-result-object v0

    .line 700
    sget-object v2, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/innioasis/music/objects/Global;->setScanTotalCount(I)V

    .line 701
    check-cast v0, Ljava/lang/Iterable;

    iget-object v2, v1, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    .line 1511
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/innioasis/y1/database/Song;

    .line 702
    new-instance v7, Ljava/io/File;

    invoke-virtual {v3}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_b

    sget-object v7, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {v7}, Lcom/innioasis/music/util/Other;->sdCardIsReady()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 703
    sget-object v8, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    const/4 v9, 0x0

    const-wide/16 v10, 0x64

    new-instance v7, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$2$1;

    invoke-direct {v7, v2, v3}, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1$2$1;-><init>(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/y1/database/Song;)V

    move-object v12, v7

    check-cast v12, Lkotlin/jvm/functions/Function0;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lcom/innioasis/music/util/Other;->repeatTry$default(Lcom/innioasis/music/util/Other;IJLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    goto :goto_5

    .line 712
    :cond_c
    iget-object v0, v1, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    invoke-static {v0}, Lcom/innioasis/y1/database/Y1Repository;->access$getVideoDao$p(Lcom/innioasis/y1/database/Y1Repository;)Lcom/innioasis/y1/database/video/VideoInfoDao;

    move-result-object v0

    invoke-interface {v0, v5, v6}, Lcom/innioasis/y1/database/video/VideoInfoDao;->deleteByAddTimeSync(J)I

    move-result v0

    .line 713
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v2, v15}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5220\u9664\u6ca1\u66f4\u65b0\u7684\u89c6\u9891\u6570\u636e "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u6761"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 715
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/innioasis/music/objects/Global;->setNeedShowScanDialog(Z)V

    .line 716
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v0, v15}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u626b\u63cf\u5b8c\u6bd5\uff0c\u8017\u65f6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v5, v5, v18

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v16, v2

    .line 718
    :goto_6
    :try_start_4
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u626b\u63cf\u5f02\u5e38 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 720
    :goto_7
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0, v4}, Lcom/innioasis/music/objects/Global;->setRefreshDatabaseState(Z)V

    .line 721
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0, v4}, Lcom/innioasis/music/objects/Global;->setNeedShowScanDialog(Z)V

    .line 722
    iget-object v0, v1, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    invoke-static {v0, v4}, Lcom/innioasis/y1/database/Y1Repository;->access$setRefreshDatabaseIng$p(Lcom/innioasis/y1/database/Y1Repository;Z)V

    .line 723
    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_1
    move-exception v0

    .line 720
    :goto_8
    sget-object v2, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v2, v4}, Lcom/innioasis/music/objects/Global;->setRefreshDatabaseState(Z)V

    .line 721
    sget-object v2, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v2, v4}, Lcom/innioasis/music/objects/Global;->setNeedShowScanDialog(Z)V

    .line 722
    iget-object v2, v1, Lcom/innioasis/y1/database/Y1Repository$refreshDatabase$1;->this$0:Lcom/innioasis/y1/database/Y1Repository;

    invoke-static {v2, v4}, Lcom/innioasis/y1/database/Y1Repository;->access$setRefreshDatabaseIng$p(Lcom/innioasis/y1/database/Y1Repository;Z)V

    .line 723
    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method
