.class final Lcom/innioasis/y1/activity/SettingActivity$timeShutdownList$2;
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/SettingActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/SettingActivity$timeShutdownList$2;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 791
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/SettingActivity$timeShutdownList$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 793
    iget-object v1, p0, Lcom/innioasis/y1/activity/SettingActivity$timeShutdownList$2;->this$0:Lcom/innioasis/y1/activity/SettingActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "10Min"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "20Min"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "30Min"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "60Min"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "90Min"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "120Min"

    aput-object v2, v0, v1

    .line 792
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
