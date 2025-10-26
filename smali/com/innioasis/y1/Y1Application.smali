.class public final Lcom/innioasis/y1/Y1Application;
.super Landroidx/multidex/MultiDexApplication;
.source "Y1Application.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/Y1Application$Companion;,
        Lcom/innioasis/y1/Y1Application$TimberTree;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00082\u00020\u0001:\u0002\u0008\tB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/innioasis/y1/Y1Application;",
        "Landroidx/multidex/MultiDexApplication;",
        "()V",
        "initCrashTools",
        "",
        "initLog",
        "onCreate",
        "setLanguage",
        "Companion",
        "TimberTree",
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


# static fields
.field public static final ACTION_SHUTDOWN:Ljava/lang/String; = "com.innioasis.y1.ABOUT_SHUT_DOWN"

.field public static final Companion:Lcom/innioasis/y1/Y1Application$Companion;

.field private static app:Lcom/innioasis/y1/Y1Application;

.field private static appContext:Landroid/content/Context;

.field private static binder:Lcom/innioasis/fm/FmRadioService$MyBinder;

.field private static fmService:Lcom/innioasis/fm/FmRadioService;

.field private static millisUntilFinished:J

.field private static millisUntilFinished2:J

.field private static playerService:Lcom/innioasis/y1/service/PlayerService;

.field private static timer:Landroid/os/CountDownTimer;

.field public static timer2:Landroid/os/CountDownTimer;

.field public static y1Repository:Lcom/innioasis/y1/database/Y1Repository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/innioasis/y1/Y1Application$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/innioasis/y1/Y1Application$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method public static final synthetic access$getApp$cp()Lcom/innioasis/y1/Y1Application;
    .locals 1

    .line 34
    sget-object v0, Lcom/innioasis/y1/Y1Application;->app:Lcom/innioasis/y1/Y1Application;

    return-object v0
.end method

.method public static final synthetic access$getAppContext$cp()Landroid/content/Context;
    .locals 1

    .line 34
    sget-object v0, Lcom/innioasis/y1/Y1Application;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$getBinder$cp()Lcom/innioasis/fm/FmRadioService$MyBinder;
    .locals 1

    .line 34
    sget-object v0, Lcom/innioasis/y1/Y1Application;->binder:Lcom/innioasis/fm/FmRadioService$MyBinder;

    return-object v0
.end method

.method public static final synthetic access$getFmService$cp()Lcom/innioasis/fm/FmRadioService;
    .locals 1

    .line 34
    sget-object v0, Lcom/innioasis/y1/Y1Application;->fmService:Lcom/innioasis/fm/FmRadioService;

    return-object v0
.end method

.method public static final synthetic access$getMillisUntilFinished$cp()J
    .locals 2

    .line 34
    sget-wide v0, Lcom/innioasis/y1/Y1Application;->millisUntilFinished:J

    return-wide v0
.end method

.method public static final synthetic access$getMillisUntilFinished2$cp()J
    .locals 2

    .line 34
    sget-wide v0, Lcom/innioasis/y1/Y1Application;->millisUntilFinished2:J

    return-wide v0
.end method

.method public static final synthetic access$getPlayerService$cp()Lcom/innioasis/y1/service/PlayerService;
    .locals 1

    .line 34
    sget-object v0, Lcom/innioasis/y1/Y1Application;->playerService:Lcom/innioasis/y1/service/PlayerService;

    return-object v0
.end method

.method public static final synthetic access$getTimer$cp()Landroid/os/CountDownTimer;
    .locals 1

    .line 34
    sget-object v0, Lcom/innioasis/y1/Y1Application;->timer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method public static final synthetic access$setBinder$cp(Lcom/innioasis/fm/FmRadioService$MyBinder;)V
    .locals 0

    .line 34
    sput-object p0, Lcom/innioasis/y1/Y1Application;->binder:Lcom/innioasis/fm/FmRadioService$MyBinder;

    return-void
.end method

.method public static final synthetic access$setFmService$cp(Lcom/innioasis/fm/FmRadioService;)V
    .locals 0

    .line 34
    sput-object p0, Lcom/innioasis/y1/Y1Application;->fmService:Lcom/innioasis/fm/FmRadioService;

    return-void
.end method

.method public static final synthetic access$setMillisUntilFinished$cp(J)V
    .locals 0

    .line 34
    sput-wide p0, Lcom/innioasis/y1/Y1Application;->millisUntilFinished:J

    return-void
.end method

.method public static final synthetic access$setMillisUntilFinished2$cp(J)V
    .locals 0

    .line 34
    sput-wide p0, Lcom/innioasis/y1/Y1Application;->millisUntilFinished2:J

    return-void
.end method

.method public static final synthetic access$setPlayerService$cp(Lcom/innioasis/y1/service/PlayerService;)V
    .locals 0

    .line 34
    sput-object p0, Lcom/innioasis/y1/Y1Application;->playerService:Lcom/innioasis/y1/service/PlayerService;

    return-void
.end method

.method public static final synthetic access$setTimer$cp(Landroid/os/CountDownTimer;)V
    .locals 0

    .line 34
    sput-object p0, Lcom/innioasis/y1/Y1Application;->timer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private final initCrashTools()V
    .locals 1

    .line 165
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lxcrash/XCrash;->init(Landroid/content/Context;)I

    return-void
.end method

.method private final initLog()V
    .locals 2

    .line 150
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Lcom/innioasis/y1/Y1Application$TimberTree;

    invoke-direct {v1}, Lcom/innioasis/y1/Y1Application$TimberTree;-><init>()V

    check-cast v1, Ltimber/log/Timber$Tree;

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->plant(Ltimber/log/Timber$Tree;)V

    return-void
.end method

.method private final setLanguage()V
    .locals 4

    .line 169
    invoke-virtual {p0}, Lcom/innioasis/y1/Y1Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 171
    sget-object v1, Lcom/innioasis/y1/activity/LanguageActivity;->Companion:Lcom/innioasis/y1/activity/LanguageActivity$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/LanguageActivity$Companion;->getLanguageList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getLanguage()I

    move-result v2

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;->getLocale()Ljava/util/Locale;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 174
    :cond_1
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getLanguage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/music/util/Other;->setLanguage(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 19

    move-object/from16 v0, p0

    .line 59
    invoke-super/range {p0 .. p0}, Landroidx/multidex/MultiDexApplication;->onCreate()V

    .line 60
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/Y1Application;->initLog()V

    .line 61
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Y1Application Init start"

    invoke-virtual {v1, v4, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 66
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository;->Companion:Lcom/innioasis/y1/database/Y1Repository$Companion;

    move-object v5, v0

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/innioasis/y1/database/Y1Repository$Companion;->initialize(Landroid/content/Context;)V

    .line 67
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    sget-object v6, Lcom/innioasis/y1/database/Y1Repository;->Companion:Lcom/innioasis/y1/database/Y1Repository$Companion;

    invoke-virtual {v6}, Lcom/innioasis/y1/database/Y1Repository$Companion;->get()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/innioasis/y1/Y1Application$Companion;->setY1Repository(Lcom/innioasis/y1/database/Y1Repository;)V

    .line 69
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/Y1Application;->initCrashTools()V

    .line 72
    sget-object v6, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v6, v5}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->init(Landroid/content/Context;)V

    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/Y1Application;->setLanguage()V

    .line 74
    sget-object v6, Lcom/innioasis/fm/util/FMSharedPreferences;->INSTANCE:Lcom/innioasis/fm/util/FMSharedPreferences;

    invoke-virtual {v6, v5}, Lcom/innioasis/fm/util/FMSharedPreferences;->init(Landroid/content/Context;)V

    .line 75
    sget-object v6, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v6, v5}, Lcom/innioasis/y1/utils/EqSPUtils;->init(Landroid/content/Context;)V

    .line 76
    sput-object v0, Lcom/innioasis/y1/Y1Application;->app:Lcom/innioasis/y1/Y1Application;

    .line 77
    sput-object v5, Lcom/innioasis/y1/Y1Application;->appContext:Landroid/content/Context;

    .line 80
    invoke-static {v5}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 83
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/innioasis/y1/service/StateBarService;

    invoke-direct {v6, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v6}, Lcom/innioasis/y1/Y1Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 84
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/innioasis/fm/FmRadioService;

    invoke-direct {v6, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v6}, Lcom/innioasis/y1/Y1Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 85
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/innioasis/fm/FmRadioService;

    invoke-direct {v6, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v7, Lcom/innioasis/y1/Y1Application$onCreate$1;

    invoke-direct {v7}, Lcom/innioasis/y1/Y1Application$onCreate$1;-><init>()V

    check-cast v7, Landroid/content/ServiceConnection;

    const/4 v8, 0x1

    invoke-virtual {v0, v6, v7, v8}, Lcom/innioasis/y1/Y1Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 94
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/innioasis/y1/service/PlayerService;

    invoke-direct {v6, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v6}, Lcom/innioasis/y1/Y1Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 95
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/innioasis/y1/service/PlayerService;

    invoke-direct {v6, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v7, Lcom/innioasis/y1/Y1Application$onCreate$2;

    invoke-direct {v7}, Lcom/innioasis/y1/Y1Application$onCreate$2;-><init>()V

    check-cast v7, Landroid/content/ServiceConnection;

    invoke-virtual {v0, v6, v7, v8}, Lcom/innioasis/y1/Y1Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 104
    new-instance v6, Ljava/io/File;

    const-string v7, "/storage/sdcard0/Audiobooks"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 106
    :cond_0
    new-instance v6, Ljava/io/File;

    const-string v7, "/storage/sdcard0/Videos"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 109
    :cond_1
    sget-object v6, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v6}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isCreatePlaylist()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository;->getAllPlaylistSync()Ljava/util/List;

    move-result-object v1

    .line 110
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setCreatePlaylist(Z)V

    const/4 v1, 0x1

    :goto_0
    const/4 v6, 0x6

    if-ge v1, v6, :cond_2

    .line 115
    sget-object v6, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v6}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v7

    new-instance v15, Lcom/innioasis/y1/database/Playlist;

    const/4 v10, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Playlist "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xd

    const/16 v18, 0x0

    move-object v9, v15

    move-object v8, v14

    move/from16 v14, v16

    move-object v2, v15

    move/from16 v15, v17

    move-object/from16 v16, v18

    invoke-direct/range {v9 .. v16}, Lcom/innioasis/y1/database/Playlist;-><init>(Ljava/util/UUID;Ljava/lang/String;JZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7, v2}, Lcom/innioasis/y1/database/Y1Repository;->addPlaylist(Lcom/innioasis/y1/database/Playlist;)V

    .line 116
    invoke-virtual {v6}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/innioasis/y1/database/Y1Repository;->addVideoList(Ljava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x1

    goto :goto_0

    .line 119
    :cond_2
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Y1Application Init end "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :try_start_0
    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isKeyLock()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 123
    :catch_0
    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setKeyLock(Z)V

    .line 127
    :goto_1
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/Y1Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/WindowManager;

    .line 128
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 129
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 130
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 131
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 132
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u5206\u8fa8\u7387"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-static {v5}, Lcom/tencent/mmkv/MMKV;->initialize(Landroid/content/Context;)Ljava/lang/String;

    .line 135
    sget-object v1, Lcom/innioasis/y1/utils/TempUtil;->INSTANCE:Lcom/innioasis/y1/utils/TempUtil;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/TempUtil;->getDeadBeforeTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    .line 136
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u5f00\u59cb\u5b9a\u65f6\u5173\u673a\uff1a"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/innioasis/y1/utils/TempUtil;->INSTANCE:Lcom/innioasis/y1/utils/TempUtil;

    invoke-virtual {v5}, Lcom/innioasis/y1/utils/TempUtil;->getDeadBeforeTime()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v6}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    sget-object v1, Lcom/innioasis/y1/utils/TempUtil;->INSTANCE:Lcom/innioasis/y1/utils/TempUtil;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/TempUtil;->startShutdown()V

    .line 138
    sget-object v1, Lcom/innioasis/y1/utils/TempUtil;->INSTANCE:Lcom/innioasis/y1/utils/TempUtil;

    invoke-virtual {v1, v3, v4}, Lcom/innioasis/y1/utils/TempUtil;->setDeadBeforeTime(J)V

    .line 141
    :cond_3
    sget-object v1, Lcom/innioasis/y1/utils/TempUtil;->INSTANCE:Lcom/innioasis/y1/utils/TempUtil;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/TempUtil;->getDeadBeforeTime2()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-lez v5, :cond_4

    .line 142
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u5f00\u59cb\u6709\u58f0\u8bfb\u7269\u5b9a\u65f6\u5173\u95ed\uff1a"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/innioasis/y1/utils/TempUtil;->INSTANCE:Lcom/innioasis/y1/utils/TempUtil;

    invoke-virtual {v5}, Lcom/innioasis/y1/utils/TempUtil;->getDeadBeforeTime2()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    sget-object v1, Lcom/innioasis/y1/utils/TempUtil;->INSTANCE:Lcom/innioasis/y1/utils/TempUtil;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/TempUtil;->startAudiobookShutdown()V

    .line 144
    sget-object v1, Lcom/innioasis/y1/utils/TempUtil;->INSTANCE:Lcom/innioasis/y1/utils/TempUtil;

    invoke-virtual {v1, v3, v4}, Lcom/innioasis/y1/utils/TempUtil;->setDeadBeforeTime2(J)V

    :cond_4
    return-void
.end method
