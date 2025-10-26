.class public final Lcom/innioasis/y1/activity/EqActivity$Companion;
.super Ljava/lang/Object;
.source "EqActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/activity/EqActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0006\u0010\u0002\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/EqActivity$Companion;",
        "",
        "()V",
        "eqList",
        "",
        "Lcom/innioasis/y1/activity/EqActivity$EqData;",
        "getEqList$annotations",
        "getEqList",
        "()Ljava/util/List;",
        "isEq",
        "",
        "()Z",
        "setEq",
        "(Z)V",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/innioasis/y1/activity/EqActivity$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getEqList$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getEqList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/activity/EqActivity$EqData;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/innioasis/y1/activity/EqActivity$EqData;

    .line 54
    new-instance v1, Lcom/innioasis/y1/activity/EqActivity$EqData;

    .line 56
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11008e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app.resources.getString(R.string.eq_preset_normal)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v3, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    sget-object v4, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v4}, Lcom/innioasis/y1/utils/EqSPUtils;->getNormal()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/utils/EqSPUtils;->string2EqParameter(Ljava/lang/String;)Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    move-result-object v3

    const v4, 0x7f0800eb

    .line 54
    invoke-direct {v1, v4, v2, v3}, Lcom/innioasis/y1/activity/EqActivity$EqData;-><init>(ILjava/lang/String;Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 59
    new-instance v1, Lcom/innioasis/y1/activity/EqActivity$EqData;

    .line 61
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app.resources.getString(\u2026ring.eq_preset_classical)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v3, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    sget-object v4, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v4}, Lcom/innioasis/y1/utils/EqSPUtils;->getClassical()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/utils/EqSPUtils;->string2EqParameter(Ljava/lang/String;)Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    move-result-object v3

    const v4, 0x7f0800ed

    .line 59
    invoke-direct {v1, v4, v2, v3}, Lcom/innioasis/y1/activity/EqActivity$EqData;-><init>(ILjava/lang/String;Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 64
    new-instance v1, Lcom/innioasis/y1/activity/EqActivity$EqData;

    .line 66
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110088

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app.resources.getString(R.string.eq_preset_dance)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v3, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    sget-object v4, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v4}, Lcom/innioasis/y1/utils/EqSPUtils;->getDance()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/utils/EqSPUtils;->string2EqParameter(Ljava/lang/String;)Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    move-result-object v3

    const v4, 0x7f0800ee

    .line 64
    invoke-direct {v1, v4, v2, v3}, Lcom/innioasis/y1/activity/EqActivity$EqData;-><init>(ILjava/lang/String;Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 69
    new-instance v1, Lcom/innioasis/y1/activity/EqActivity$EqData;

    .line 71
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app.resources.getString(R.string.eq_preset_flat)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v3, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    sget-object v4, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v4}, Lcom/innioasis/y1/utils/EqSPUtils;->getFlat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/utils/EqSPUtils;->string2EqParameter(Ljava/lang/String;)Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    move-result-object v3

    const v4, 0x7f0800ef

    .line 69
    invoke-direct {v1, v4, v2, v3}, Lcom/innioasis/y1/activity/EqActivity$EqData;-><init>(ILjava/lang/String;Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 74
    new-instance v1, Lcom/innioasis/y1/activity/EqActivity$EqData;

    .line 76
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app.resources.getString(R.string.eq_preset_folk)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v3, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    sget-object v4, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v4}, Lcom/innioasis/y1/utils/EqSPUtils;->getFolk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/utils/EqSPUtils;->string2EqParameter(Ljava/lang/String;)Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    move-result-object v3

    const v4, 0x7f0800f0

    .line 74
    invoke-direct {v1, v4, v2, v3}, Lcom/innioasis/y1/activity/EqActivity$EqData;-><init>(ILjava/lang/String;Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 79
    new-instance v1, Lcom/innioasis/y1/activity/EqActivity$EqData;

    .line 81
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11008b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app.resources.getString(\u2026ing.eq_preset_heavymetal)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object v3, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    sget-object v4, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v4}, Lcom/innioasis/y1/utils/EqSPUtils;->getHeavymetal()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/utils/EqSPUtils;->string2EqParameter(Ljava/lang/String;)Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    move-result-object v3

    const v4, 0x7f0800f1

    .line 79
    invoke-direct {v1, v4, v2, v3}, Lcom/innioasis/y1/activity/EqActivity$EqData;-><init>(ILjava/lang/String;Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 84
    new-instance v1, Lcom/innioasis/y1/activity/EqActivity$EqData;

    .line 86
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app.resources.getString(R.string.eq_preset_hiphop)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object v3, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    sget-object v4, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v4}, Lcom/innioasis/y1/utils/EqSPUtils;->getHiphop()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/utils/EqSPUtils;->string2EqParameter(Ljava/lang/String;)Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    move-result-object v3

    const v4, 0x7f0800f2

    .line 84
    invoke-direct {v1, v4, v2, v3}, Lcom/innioasis/y1/activity/EqActivity$EqData;-><init>(ILjava/lang/String;Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 89
    new-instance v1, Lcom/innioasis/y1/activity/EqActivity$EqData;

    .line 91
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app.resources.getString(R.string.eq_preset_jazz)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sget-object v3, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    sget-object v4, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v4}, Lcom/innioasis/y1/utils/EqSPUtils;->getJazz()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/utils/EqSPUtils;->string2EqParameter(Ljava/lang/String;)Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    move-result-object v3

    const v4, 0x7f0800f3

    .line 89
    invoke-direct {v1, v4, v2, v3}, Lcom/innioasis/y1/activity/EqActivity$EqData;-><init>(ILjava/lang/String;Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 94
    new-instance v1, Lcom/innioasis/y1/activity/EqActivity$EqData;

    .line 96
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11008f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app.resources.getString(R.string.eq_preset_pop)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object v3, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    sget-object v4, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v4}, Lcom/innioasis/y1/utils/EqSPUtils;->getPop()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/utils/EqSPUtils;->string2EqParameter(Ljava/lang/String;)Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    move-result-object v3

    const v4, 0x7f0800f4

    .line 94
    invoke-direct {v1, v4, v2, v3}, Lcom/innioasis/y1/activity/EqActivity$EqData;-><init>(ILjava/lang/String;Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 99
    new-instance v1, Lcom/innioasis/y1/activity/EqActivity$EqData;

    .line 101
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getApp()Lcom/innioasis/y1/Y1Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110090

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app.resources.getString(R.string.eq_preset_rock)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    sget-object v3, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    sget-object v4, Lcom/innioasis/y1/utils/EqSPUtils;->INSTANCE:Lcom/innioasis/y1/utils/EqSPUtils;

    invoke-virtual {v4}, Lcom/innioasis/y1/utils/EqSPUtils;->getRock()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/utils/EqSPUtils;->string2EqParameter(Ljava/lang/String;)Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;

    move-result-object v3

    const v4, 0x7f0800ec

    .line 99
    invoke-direct {v1, v4, v2, v3}, Lcom/innioasis/y1/activity/EqActivity$EqData;-><init>(ILjava/lang/String;Lcom/innioasis/y1/utils/SharedPreferencesUtils$EqParameter;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 53
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isEq()Z
    .locals 1

    .line 106
    invoke-static {}, Lcom/innioasis/y1/activity/EqActivity;->access$isEq$cp()Z

    move-result v0

    return v0
.end method

.method public final setEq(Z)V
    .locals 0

    .line 106
    invoke-static {p1}, Lcom/innioasis/y1/activity/EqActivity;->access$setEq$cp(Z)V

    return-void
.end method
