.class public final Lcom/innioasis/y1/activity/DateOneLevelActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "DateOneLevelActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/activity/DateOneLevelActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityDateOneLevelBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0012H\u0016J\u0008\u0010\u0014\u001a\u00020\u0012H\u0016J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u0008\u0010\u0019\u001a\u00020\u0012H\u0016J\u0008\u0010\u001a\u001a\u00020\u0012H\u0016J\u0008\u0010\u001b\u001a\u00020\u0012H\u0014J\u0008\u0010\u001c\u001a\u00020\u0012H\u0016J\u0008\u0010\u001d\u001a\u00020\u0012H\u0002R \u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/DateOneLevelActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityDateOneLevelBinding;",
        "()V",
        "itemViews",
        "",
        "Landroid/widget/LinearLayout;",
        "getItemViews",
        "()Ljava/util/List;",
        "setItemViews",
        "(Ljava/util/List;)V",
        "position",
        "",
        "getPosition",
        "()I",
        "setPosition",
        "(I)V",
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
        "onResume",
        "quit",
        "refresh",
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
.field private itemViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/innioasis/y1/activity/DateOneLevelActivity;->itemViews:Ljava/util/List;

    return-void
.end method

.method private final refresh()V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_7

    .line 61
    iget-object v2, p0, Lcom/innioasis/y1/activity/DateOneLevelActivity;->itemViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 62
    iget v3, p0, Lcom/innioasis/y1/activity/DateOneLevelActivity;->position:I

    const-string v4, "null cannot be cast to non-null type android.widget.TextView"

    const/4 v5, 0x1

    if-ne v3, v1, :cond_0

    .line 64
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 65
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    .line 66
    sget-object v6, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06025c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v3, v7, v5}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 69
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 70
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    .line 71
    sget-object v4, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v3, v6, v5}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 74
    sget-object v3, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    const v6, 0x7f08014a

    invoke-virtual {v3, v4, v6, v5}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    goto :goto_1

    .line 76
    :cond_0
    sget-object v3, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    move-object v6, v2

    check-cast v6, Landroid/view/View;

    const v7, 0x7f080144

    invoke-virtual {v3, v6, v7, v0}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 77
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 78
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    .line 79
    sget-object v6, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const/4 v7, -0x1

    invoke-virtual {v6, v3, v7, v0}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    .line 82
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 83
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    .line 84
    sget-object v4, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v4, v3, v7, v0}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetTextColor(Landroid/widget/TextView;IZ)V

    :goto_1
    const/4 v3, 0x2

    const-string v4, "On"

    const-string v6, "Off"

    if-ne v1, v3, :cond_4

    .line 89
    sget-object v3, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->is24()Z

    move-result v3

    const v7, 0x7f0a0153

    if-eqz v3, :cond_1

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v7, v4

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 90
    :cond_1
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_2
    sget-object v3, Lcom/innioasis/y1/utils/TimeUtils;->INSTANCE:Lcom/innioasis/y1/utils/TimeUtils;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/TimeUtils;->getNowTimeM()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/CharSequence;

    new-array v8, v5, [Ljava/lang/String;

    const-string v3, ":"

    aput-object v3, v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 92
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 93
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 94
    sget-object v5, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v5}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->is24()Z

    move-result v5

    const/16 v8, 0x3a

    if-eqz v5, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v5

    check-cast v5, Lcom/innioasis/y1/databinding/ActivityDateOneLevelBinding;

    iget-object v5, v5, Lcom/innioasis/y1/databinding/ActivityDateOneLevelBinding;->showTime:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 97
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v9, 0xc

    if-lt v5, v9, :cond_3

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v5

    check-cast v5, Lcom/innioasis/y1/databinding/ActivityDateOneLevelBinding;

    iget-object v5, v5, Lcom/innioasis/y1/databinding/ActivityDateOneLevelBinding;->showTime:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sub-int/2addr v7, v9

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pm"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 98
    :cond_3
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v5

    check-cast v5, Lcom/innioasis/y1/databinding/ActivityDateOneLevelBinding;

    iget-object v5, v5, Lcom/innioasis/y1/databinding/ActivityDateOneLevelBinding;->showTime:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " am"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_6

    .line 102
    sget-object v3, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isInTitle()Z

    move-result v3

    const v5, 0x7f0a0154

    if-eqz v3, :cond_5

    .line 103
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f110149

    .line 104
    invoke-virtual {p0, v2}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.page_time)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->setStateBarLeftText(Ljava/lang/String;)V

    goto :goto_4

    .line 107
    :cond_5
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public antiClockwise()V
    .locals 1

    .line 136
    iget v0, p0, Lcom/innioasis/y1/activity/DateOneLevelActivity;->position:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/innioasis/y1/activity/DateOneLevelActivity;->position:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Lcom/innioasis/y1/activity/DateOneLevelActivity;->position:I

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->refresh()V

    return-void
.end method

.method public clockwise()V
    .locals 2

    .line 130
    iget v0, p0, Lcom/innioasis/y1/activity/DateOneLevelActivity;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/innioasis/y1/activity/DateOneLevelActivity;->position:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 131
    iput v1, p0, Lcom/innioasis/y1/activity/DateOneLevelActivity;->position:I

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->refresh()V

    return-void
.end method

.method public confirm()V
    .locals 5

    .line 146
    iget v0, p0, Lcom/innioasis/y1/activity/DateOneLevelActivity;->position:I

    const-string v1, "isSetDate"

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isInTitle()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setInTitle(Z)V

    .line 164
    invoke-direct {p0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->refresh()V

    .line 165
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isInTitle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {p0, v2}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->updateTime(Z)V

    goto :goto_0

    :cond_1
    const v0, 0x7f110149

    .line 169
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.page_time)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->setStateBarLeftText(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_2
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->is24()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->set24(Z)V

    .line 159
    invoke-direct {p0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->refresh()V

    .line 160
    move-object v0, p0

    check-cast v0, Lcom/innioasis/y1/base/BaseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v3, v2, v1}, Lcom/innioasis/y1/base/BaseActivity;->updateTime$default(Lcom/innioasis/y1/base/BaseActivity;ZILjava/lang/Object;)V

    goto :goto_0

    .line 153
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v4, Lcom/innioasis/y1/activity/DateTwoLevelActivity;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 148
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/innioasis/y1/activity/DateTwoLevelActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/innioasis/y1/activity/DateOneLevelActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    .line 184
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->setResult(ILandroid/content/Intent;)V

    .line 185
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->finish()V

    :cond_0
    return-void
.end method

.method public final getItemViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/innioasis/y1/activity/DateOneLevelActivity;->itemViews:Ljava/util/List;

    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/innioasis/y1/activity/DateOneLevelActivity;->position:I

    return v0
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivityDateOneLevelBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivityDateOneLevelBinding;
    .locals 2

    .line 20
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityDateOneLevelBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityDateOneLevelBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 4

    const v0, 0x7f110149

    .line 24
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.page_time)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/innioasis/y1/activity/DateOneLevelActivity;->itemViews:Ljava/util/List;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/widget/LinearLayout;

    const v2, 0x7f0a0139

    .line 27
    invoke-virtual {p0, v2}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0a013a

    .line 28
    invoke-virtual {p0, v2}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f0a013b

    .line 29
    invoke-virtual {p0, v2}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const v2, 0x7f0a013c

    .line 30
    invoke-virtual {p0, v2}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 26
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    invoke-direct {p0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->refresh()V

    return-void
.end method

.method public longConfirm()V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 14

    .line 44
    invoke-super {p0}, Lcom/innioasis/y1/base/BaseActivity;->onResume()V

    .line 45
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityDateOneLevelBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityDateOneLevelBinding;->showDate:Landroid/widget/TextView;

    sget-object v1, Lcom/innioasis/y1/utils/TimeUtils;->INSTANCE:Lcom/innioasis/y1/utils/TimeUtils;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "resources"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/utils/TimeUtils;->getWeekOfDate(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    sget-object v0, Lcom/innioasis/y1/utils/TimeUtils;->INSTANCE:Lcom/innioasis/y1/utils/TimeUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/TimeUtils;->getNowDate()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "/"

    const/4 v7, 0x0

    aput-object v3, v2, v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 47
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivityDateOneLevelBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivityDateOneLevelBinding;->showDay:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    sget-object v1, Lcom/innioasis/y1/utils/TimeUtils;->INSTANCE:Lcom/innioasis/y1/utils/TimeUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/TimeUtils;->getNowTimeM()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/CharSequence;

    new-array v9, v0, [Ljava/lang/String;

    const-string v1, ":"

    aput-object v1, v9, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 49
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 50
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->is24()Z

    move-result v1

    const/16 v3, 0x3a

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityDateOneLevelBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityDateOneLevelBinding;->showTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0xc

    if-lt v1, v4, :cond_1

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityDateOneLevelBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityDateOneLevelBinding;->showTime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pm"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/DateOneLevelActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityDateOneLevelBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityDateOneLevelBinding;->showTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " am"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method

.method public final setItemViews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/LinearLayout;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/innioasis/y1/activity/DateOneLevelActivity;->itemViews:Ljava/util/List;

    return-void
.end method

.method public final setPosition(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/innioasis/y1/activity/DateOneLevelActivity;->position:I

    return-void
.end method
