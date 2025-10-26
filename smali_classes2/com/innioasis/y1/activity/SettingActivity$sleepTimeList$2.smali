.class final Lcom/innioasis/y1/activity/SettingActivity$sleepTimeList$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SettingActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/SettingActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lcom/innioasis/y1/activity/SettingActivity$SleepTime;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/innioasis/y1/activity/SettingActivity$SleepTime;",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/SettingActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/SettingActivity$sleepTimeList$2;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 699
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity$sleepTimeList$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/activity/SettingActivity$SleepTime;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/innioasis/y1/activity/SettingActivity$SleepTime;

    .line 701
    new-instance v1, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;

    .line 703
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "10"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/innioasis/y1/activity/SettingActivity$sleepTimeList$2;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-virtual {v3}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1101c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "10s"

    const/16 v5, 0x2710

    const v6, 0x7f08010a

    .line 701
    invoke-direct {v1, v3, v2, v5, v6}, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 707
    new-instance v1, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;

    .line 709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "15"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/innioasis/y1/activity/SettingActivity$sleepTimeList$2;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-virtual {v3}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "15s"

    const/16 v5, 0x3a98

    const v6, 0x7f08010c

    .line 707
    invoke-direct {v1, v3, v2, v5, v6}, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 713
    new-instance v1, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;

    .line 715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "30"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/innioasis/y1/activity/SettingActivity$sleepTimeList$2;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-virtual {v3}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "30s"

    const/16 v5, 0x7530

    const v6, 0x7f08010d

    .line 713
    invoke-direct {v1, v3, v2, v5, v6}, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 719
    new-instance v1, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;

    .line 721
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "45"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/innioasis/y1/activity/SettingActivity$sleepTimeList$2;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-virtual {v3}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "45s"

    const v5, 0xafc8

    const v6, 0x7f08010f

    .line 719
    invoke-direct {v1, v3, v2, v5, v6}, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 725
    new-instance v1, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;

    .line 727
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "60"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/innioasis/y1/activity/SettingActivity$sleepTimeList$2;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-virtual {v3}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "60s"

    const v5, 0xea60

    const v6, 0x7f080110

    .line 725
    invoke-direct {v1, v3, v2, v5, v6}, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 731
    new-instance v1, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;

    .line 733
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "120"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/innioasis/y1/activity/SettingActivity$sleepTimeList$2;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-virtual {v3}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "120s"

    const v5, 0x1d4c0

    const v6, 0x7f08010b

    .line 731
    invoke-direct {v1, v3, v2, v5, v6}, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 737
    new-instance v1, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;

    .line 739
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "300"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/innioasis/y1/activity/SettingActivity$sleepTimeList$2;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-virtual {v3}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "300s"

    const v4, 0x493e0

    const v5, 0x7f08010e

    .line 737
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 743
    new-instance v1, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;

    .line 744
    iget-object v2, p0, Lcom/innioasis/y1/activity/SettingActivity$sleepTimeList$2;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-virtual {v2}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11018b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "resources.getString(R.string.setting_sleep_always)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 745
    iget-object v5, p0, Lcom/innioasis/y1/activity/SettingActivity$sleepTimeList$2;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-virtual {v5}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    sget-object v4, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v4}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getLanguage()I

    move-result v4

    if-nez v4, :cond_0

    const v4, 0x7f080111

    goto :goto_0

    :cond_0
    const v4, 0x7f080112

    :goto_0
    const v5, 0x7fffffff

    .line 743
    invoke-direct {v1, v2, v3, v5, v4}, Lcom/innioasis/y1/activity/SettingActivity$SleepTime;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 700
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
