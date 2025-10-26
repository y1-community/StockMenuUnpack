.class public final Lcom/innioasis/y1/activity/theme/ThemeListActivity$setTheme$1$1;
.super Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;
.source "ThemeListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/theme/ThemeListActivity;->setTheme(Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/innioasis/y1/activity/theme/ThemeListActivity$setTheme$1$1",
        "Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;",
        "cancel",
        "",
        "confirm",
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
.field final synthetic $item:Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;

.field final synthetic this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;Lcom/innioasis/y1/activity/theme/ThemeListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$setTheme$1$1;->$item:Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;

    iput-object p2, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$setTheme$1$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    .line 734
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public confirm()V
    .locals 6

    .line 736
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbe\u7f6e\u4e3b\u9898 item:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$setTheme$1$1;->$item:Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    sget-object v0, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/utils/WallpaperUtils;->setUserIsSetDeskWallpaper(Z)V

    .line 738
    sget-object v0, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/utils/WallpaperUtils;->setUserIsSetGlobalWallpaper(Z)V

    .line 739
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$setTheme$1$1;->$item:Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$setTheme$1$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    const v3, 0x7f1101b3

    invoke-virtual {v1, v3}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$setTheme$1$1;->$item:Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;->getPath()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->setThemeName(Ljava/lang/String;)V

    goto :goto_0

    .line 742
    :cond_0
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$setTheme$1$1;->$item:Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->setThemeName(Ljava/lang/String;)V

    .line 744
    :goto_0
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==== "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/innioasis/y1/utils/TempUtil;->INSTANCE:Lcom/innioasis/y1/utils/TempUtil;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/TempUtil;->getDeadBeforeTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/innioasis/y1/utils/TempUtil;->INSTANCE:Lcom/innioasis/y1/utils/TempUtil;

    invoke-virtual {v4}, Lcom/innioasis/y1/utils/TempUtil;->getDeadBeforeTime2()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getMillisUntilFinished()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/Y1Application$Companion;->getMillisUntilFinished2()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 745
    sget-object v0, Lcom/innioasis/y1/utils/TempUtil;->INSTANCE:Lcom/innioasis/y1/utils/TempUtil;

    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getMillisUntilFinished()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/utils/TempUtil;->setDeadBeforeTime(J)V

    .line 746
    sget-object v0, Lcom/innioasis/y1/utils/TempUtil;->INSTANCE:Lcom/innioasis/y1/utils/TempUtil;

    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getMillisUntilFinished2()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/utils/TempUtil;->setDeadBeforeTime2(J)V

    const/4 v0, 0x1

    .line 747
    invoke-static {v0}, Lcom/blankj/utilcode/util/AppUtils;->relaunchApp(Z)V

    return-void
.end method
