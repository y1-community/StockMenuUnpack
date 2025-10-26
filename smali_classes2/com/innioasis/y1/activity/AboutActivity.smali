.class public final Lcom/innioasis/y1/activity/AboutActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "AboutActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/activity/AboutActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityAboutBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u0008\u0010\u000c\u001a\u00020\u0005H\u0017J\u0008\u0010\r\u001a\u00020\u0005H\u0016J\u0008\u0010\u000e\u001a\u00020\u0005H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/AboutActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityAboutBinding;",
        "()V",
        "antiClockwise",
        "",
        "clockwise",
        "confirm",
        "direction",
        "d",
        "Lcom/innioasis/y1/base/BaseActivity$Direction;",
        "getViewBinding",
        "initView",
        "longConfirm",
        "quit",
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
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public antiClockwise()V
    .locals 0

    return-void
.end method

.method public clockwise()V
    .locals 0

    return-void
.end method

.method public confirm()V
    .locals 0

    return-void
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/innioasis/y1/activity/AboutActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AboutActivity;->finish()V

    :cond_0
    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AboutActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivityAboutBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivityAboutBinding;
    .locals 2

    .line 15
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AboutActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityAboutBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityAboutBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 12

    const v0, 0x7f110140

    .line 20
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.page_about)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/AboutActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 23
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "/storage/sdcard0"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long v2, v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    const/16 v4, 0x400

    int-to-float v4, v4

    div-float/2addr v2, v4

    div-float/2addr v2, v4

    const/high16 v5, 0x42800000    # 64.0f

    cmpl-float v5, v2, v5

    if-lez v5, :cond_0

    const-string v5, "128G"

    goto :goto_0

    :cond_0
    const-string v5, "64G"

    .line 29
    :goto_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v8, v0

    mul-long v6, v6, v8

    long-to-float v0, v6

    div-float/2addr v0, v3

    div-float/2addr v0, v4

    div-float/2addr v0, v4

    sub-float v3, v2, v0

    .line 31
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AboutActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v4

    check-cast v4, Lcom/innioasis/y1/databinding/ActivityAboutBinding;

    iget-object v4, v4, Lcom/innioasis/y1/databinding/ActivityAboutBinding;->infoStateTv1:Landroid/widget/TextView;

    .line 32
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f110191

    invoke-virtual {p0, v7}, Lcom/innioasis/y1/activity/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v8, 0x7f110178

    .line 33
    invoke-virtual {p0, v8}, Lcom/innioasis/y1/activity/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 32
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    sget-object v8, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {v9, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    const-string v10, "%.1fG"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "format(format, *args)"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 31
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AboutActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v4

    check-cast v4, Lcom/innioasis/y1/databinding/ActivityAboutBinding;

    iget-object v4, v4, Lcom/innioasis/y1/databinding/ActivityAboutBinding;->infoStateTv2:Landroid/widget/TextView;

    .line 35
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f110192

    invoke-virtual {p0, v9}, Lcom/innioasis/y1/activity/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v9, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v1

    invoke-static {v9, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v10, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v1, 0x7f11018f

    .line 36
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    sget-object v1, Lcom/innioasis/music/objects/Constant;->INSTANCE:Lcom/innioasis/music/objects/Constant;

    invoke-virtual {v1}, Lcom/innioasis/music/objects/Constant;->getSystemVersion()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 34
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/AboutActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityAboutBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityAboutBinding;->bztView:Lcom/innioasis/y1/utils/AboutView;

    div-float/2addr v0, v2

    const/16 v2, 0x168

    int-to-float v2, v2

    mul-float v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/utils/AboutView;->setData(F)V

    return-void
.end method

.method public longConfirm()V
    .locals 0

    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method
