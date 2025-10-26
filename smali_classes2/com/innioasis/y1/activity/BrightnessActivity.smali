.class public final Lcom/innioasis/y1/activity/BrightnessActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "BrightnessActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/activity/BrightnessActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u0008\u0010\n\u001a\u00020\u0008H\u0016J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u0008\u0010\u000f\u001a\u00020\u0008H\u0017J\u0008\u0010\u0010\u001a\u00020\u0008H\u0016J\u0018\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0005H\u0002J\u0008\u0010\u0015\u001a\u00020\u0008H\u0016J\u0010\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0013H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/BrightnessActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;",
        "()V",
        "maxBrightness",
        "",
        "systemBrightness",
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
        "modifyScreenBrightness",
        "context",
        "Landroid/content/Context;",
        "brightessValue",
        "quit",
        "setScreenManualMode",
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
.field private final maxBrightness:I

.field private systemBrightness:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    const/16 v0, 0xff

    .line 15
    iput v0, p0, Lcom/innioasis/y1/activity/BrightnessActivity;->maxBrightness:I

    return-void
.end method

.method private final modifyScreenBrightness(Landroid/content/Context;I)V
    .locals 3

    .line 43
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/innioasis/y1/activity/BrightnessActivity;->setScreenManualMode(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "screen_brightness"

    .line 46
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private final setScreenManualMode(Landroid/content/Context;)V
    .locals 3

    const-string v0, "screen_brightness_mode"

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 21
    :try_start_0
    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 26
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public antiClockwise()V
    .locals 4

    .line 75
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BrightnessActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;->brightnessPb:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 76
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BrightnessActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;->brightnessTv:Landroid/widget/TextView;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BrightnessActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;->brightnessPb:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    iget v3, p0, Lcom/innioasis/y1/activity/BrightnessActivity;->maxBrightness:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BrightnessActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BrightnessActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;->brightnessPb:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/innioasis/y1/activity/BrightnessActivity;->modifyScreenBrightness(Landroid/content/Context;I)V

    return-void
.end method

.method public clockwise()V
    .locals 4

    .line 68
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BrightnessActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;->brightnessPb:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 69
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BrightnessActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;->brightnessTv:Landroid/widget/TextView;

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BrightnessActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;->brightnessPb:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    iget v3, p0, Lcom/innioasis/y1/activity/BrightnessActivity;->maxBrightness:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BrightnessActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BrightnessActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;->brightnessPb:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/innioasis/y1/activity/BrightnessActivity;->modifyScreenBrightness(Landroid/content/Context;I)V

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

    .line 94
    sget-object v0, Lcom/innioasis/y1/activity/BrightnessActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    .line 96
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BrightnessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/innioasis/y1/activity/BrightnessActivity;->setResult(ILandroid/content/Intent;)V

    .line 97
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BrightnessActivity;->finish()V

    :cond_0
    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BrightnessActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BrightnessActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 4

    const v0, 0x7f110141

    .line 58
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/BrightnessActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.page_brightness)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/BrightnessActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BrightnessActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;->brightnessPb:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/innioasis/y1/activity/BrightnessActivity;->maxBrightness:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 61
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 60
    iput v0, p0, Lcom/innioasis/y1/activity/BrightnessActivity;->systemBrightness:I

    .line 62
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BrightnessActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;->brightnessPb:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/innioasis/y1/activity/BrightnessActivity;->systemBrightness:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 63
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BrightnessActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;->brightnessTv:Landroid/widget/TextView;

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/BrightnessActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivityBrightnessBinding;->brightnessPb:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    iget v3, p0, Lcom/innioasis/y1/activity/BrightnessActivity;->maxBrightness:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
