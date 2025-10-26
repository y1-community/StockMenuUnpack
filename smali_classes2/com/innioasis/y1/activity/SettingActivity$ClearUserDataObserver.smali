.class public final Lcom/innioasis/y1/activity/SettingActivity$ClearUserDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "SettingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/activity/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ClearUserDataObserver"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/SettingActivity$ClearUserDataObserver;",
        "Landroid/content/pm/IPackageDataObserver$Stub;",
        "(Lcom/innioasis/y1/activity/SettingActivity;)V",
        "onRemoveCompleted",
        "",
        "packageName",
        "",
        "succeeded",
        "",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/SettingActivity;


# direct methods
.method public static synthetic $r8$lambda$_5YfTTHrljrbFVtdkqKhArzxjHc(Lcom/innioasis/y1/activity/SettingActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/innioasis/y1/activity/SettingActivity$ClearUserDataObserver;->onRemoveCompleted$lambda-0(Lcom/innioasis/y1/activity/SettingActivity;)V

    return-void
.end method

.method public constructor <init>(Lcom/innioasis/y1/activity/SettingActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1433
    iput-object p1, p0, Lcom/innioasis/y1/activity/SettingActivity$ClearUserDataObserver;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method

.method private static final onRemoveCompleted$lambda-0(Lcom/innioasis/y1/activity/SettingActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1439
    :try_start_0
    invoke-static {p0}, Lcom/innioasis/y1/activity/SettingActivity;->access$getClearDialog$p(Lcom/innioasis/y1/activity/SettingActivity;)Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/LoadingDialog;->dismiss()V

    .line 1441
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f11001f

    .line 1442
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    .line 1440
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1444
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 2

    .line 1435
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "dl"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " succeeded: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1436
    iget-object p1, p0, Lcom/innioasis/y1/activity/SettingActivity$ClearUserDataObserver;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/SettingActivity;->access$getClearFlag$p(Lcom/innioasis/y1/activity/SettingActivity;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/innioasis/y1/activity/SettingActivity;->access$setClearFlag$p(Lcom/innioasis/y1/activity/SettingActivity;I)V

    .line 1437
    iget-object p1, p0, Lcom/innioasis/y1/activity/SettingActivity$ClearUserDataObserver;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/SettingActivity;->access$getClearFlag$p(Lcom/innioasis/y1/activity/SettingActivity;)I

    move-result p1

    iget-object p2, p0, Lcom/innioasis/y1/activity/SettingActivity$ClearUserDataObserver;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-static {p2}, Lcom/innioasis/y1/activity/SettingActivity;->access$getClearTotal$p(Lcom/innioasis/y1/activity/SettingActivity;)I

    move-result p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/innioasis/y1/activity/SettingActivity$ClearUserDataObserver;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    new-instance p2, Lcom/innioasis/y1/activity/SettingActivity$ClearUserDataObserver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/innioasis/y1/activity/SettingActivity$ClearUserDataObserver$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/y1/activity/SettingActivity;)V

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/activity/SettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
