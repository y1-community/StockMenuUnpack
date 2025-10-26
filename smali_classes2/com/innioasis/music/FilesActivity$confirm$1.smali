.class final Lcom/innioasis/music/FilesActivity$confirm$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FilesActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/FilesActivity;->confirm()V
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
    value = "SMAP\nFilesActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilesActivity.kt\ncom/innioasis/music/FilesActivity$confirm$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,331:1\n1851#2,2:332\n350#2,7:334\n*S KotlinDebug\n*F\n+ 1 FilesActivity.kt\ncom/innioasis/music/FilesActivity$confirm$1\n*L\n267#1:332,2\n271#1:334,7\n*E\n"
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
.field final synthetic $file:Ljava/io/File;

.field final synthetic $songList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/innioasis/music/FilesActivity;


# direct methods
.method public static synthetic $r8$lambda$S3T4yZ7dljPLxJPnqSs0w69mq6Y(Ljava/util/List;Lcom/innioasis/music/FilesActivity;Ljava/io/File;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/innioasis/music/FilesActivity$confirm$1;->invoke$lambda-2(Ljava/util/List;Lcom/innioasis/music/FilesActivity;Ljava/io/File;)V

    return-void
.end method

.method constructor <init>(Lcom/innioasis/music/FilesActivity;Ljava/util/List;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/music/FilesActivity;",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/music/FilesActivity$confirm$1;->this$0:Lcom/innioasis/music/FilesActivity;

    iput-object p2, p0, Lcom/innioasis/music/FilesActivity$confirm$1;->$songList:Ljava/util/List;

    iput-object p3, p0, Lcom/innioasis/music/FilesActivity$confirm$1;->$file:Ljava/io/File;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-2(Ljava/util/List;Lcom/innioasis/music/FilesActivity;Ljava/io/File;)V
    .locals 5

    const-string v0, "$songList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 336
    check-cast v3, Lcom/innioasis/y1/database/Song;

    .line 272
    invoke-virtual {v3}, Lcom/innioasis/y1/database/Song;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 274
    :goto_1
    invoke-static {p1}, Lcom/innioasis/music/FilesActivity;->access$isAudiobookPath$p(Lcom/innioasis/music/FilesActivity;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 275
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/innioasis/music/FilesActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/innioasis/y1/activity/AudioPlayerActivity;

    invoke-direct {p2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/innioasis/y1/service/PlayerService;->setWasPlayBookmark(Z)V

    .line 279
    :goto_2
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/innioasis/y1/service/PlayerService;->setBookMarkProgress(Lcom/innioasis/y1/database/Bookmark;)V

    .line 280
    :goto_3
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_5

    if-gez v2, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    invoke-virtual {v0, p0, v1}, Lcom/innioasis/y1/service/PlayerService;->setAudiobookPlaylist(Ljava/util/List;I)V

    .line 284
    :cond_5
    invoke-virtual {p1, p2}, Lcom/innioasis/music/FilesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    .line 286
    :cond_6
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/innioasis/music/FilesActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/innioasis/music/MusicPlayerActivity;

    invoke-direct {p2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_8

    if-gez v2, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    invoke-virtual {v0, p0, v1}, Lcom/innioasis/y1/service/PlayerService;->setMusicPlaylist(Ljava/util/List;I)V

    .line 293
    :cond_8
    invoke-virtual {p1, p2}, Lcom/innioasis/music/FilesActivity;->startActivity(Landroid/content/Intent;)V

    :goto_6
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lcom/innioasis/music/FilesActivity$confirm$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 25

    move-object/from16 v0, p0

    .line 267
    iget-object v1, v0, Lcom/innioasis/music/FilesActivity$confirm$1;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-static {v1}, Lcom/innioasis/music/FilesActivity;->access$getNowSongFileList$p(Lcom/innioasis/music/FilesActivity;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    iget-object v2, v0, Lcom/innioasis/music/FilesActivity$confirm$1;->$songList:Ljava/util/List;

    .line 332
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 268
    new-instance v15, Lcom/innioasis/y1/database/Song;

    move-object v4, v15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v24, v15

    move-object/from16 v15, v16

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    const-string v5, "xx.path"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x77ff

    const/16 v23, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v4 .. v23}, Lcom/innioasis/y1/database/Song;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v24

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    :cond_0
    iget-object v1, v0, Lcom/innioasis/music/FilesActivity$confirm$1;->this$0:Lcom/innioasis/music/FilesActivity;

    iget-object v2, v0, Lcom/innioasis/music/FilesActivity$confirm$1;->$songList:Ljava/util/List;

    iget-object v3, v0, Lcom/innioasis/music/FilesActivity$confirm$1;->$file:Ljava/io/File;

    new-instance v4, Lcom/innioasis/music/FilesActivity$confirm$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v1, v3}, Lcom/innioasis/music/FilesActivity$confirm$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Lcom/innioasis/music/FilesActivity;Ljava/io/File;)V

    invoke-virtual {v1, v4}, Lcom/innioasis/music/FilesActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
