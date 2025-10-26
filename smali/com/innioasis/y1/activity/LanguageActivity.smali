.class public final Lcom/innioasis/y1/activity/LanguageActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "LanguageActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/activity/LanguageActivity$Companion;,
        Lcom/innioasis/y1/activity/LanguageActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityLanguageBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u00142\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0014B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\tH\u0017J\u0008\u0010\n\u001a\u00020\tH\u0017J\u0008\u0010\u000b\u001a\u00020\tH\u0016J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0002H\u0016J\u0008\u0010\u0010\u001a\u00020\tH\u0016J\u0008\u0010\u0011\u001a\u00020\tH\u0016J\u0008\u0010\u0012\u001a\u00020\tH\u0016J\u0008\u0010\u0013\u001a\u00020\tH\u0002R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/LanguageActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityLanguageBinding;",
        "()V",
        "adapter",
        "Lcom/innioasis/y1/base/BaseBindingAdapter;",
        "Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;",
        "Lcom/innioasis/y1/databinding/ItemMainBinding;",
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
        "selItem",
        "Companion",
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
.field public static final Companion:Lcom/innioasis/y1/activity/LanguageActivity$Companion;

.field private static final languageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapter:Lcom/innioasis/y1/base/BaseBindingAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/innioasis/y1/base/BaseBindingAdapter<",
            "Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;",
            "Lcom/innioasis/y1/databinding/ItemMainBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/innioasis/y1/activity/LanguageActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/innioasis/y1/activity/LanguageActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/y1/activity/LanguageActivity;->Companion:Lcom/innioasis/y1/activity/LanguageActivity$Companion;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;

    .line 28
    new-instance v1, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "CHINA"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "\u7b80\u4f53\u4e2d\u6587"

    const v4, 0x7f0800f8

    invoke-direct {v1, v3, v2, v4}, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;-><init>(Ljava/lang/String;Ljava/util/Locale;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 29
    new-instance v1, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "ENGLISH"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "English"

    const v4, 0x7f0800fa

    invoke-direct {v1, v3, v2, v4}, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;-><init>(Ljava/lang/String;Ljava/util/Locale;I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 30
    new-instance v1, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;

    new-instance v2, Ljava/util/Locale;

    const-string v3, "es"

    const-string v4, "ES"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Espa\u00f1ol"

    const v4, 0x7f0800fb

    invoke-direct {v1, v3, v2, v4}, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;-><init>(Ljava/lang/String;Ljava/util/Locale;I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 31
    new-instance v1, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;

    new-instance v2, Ljava/util/Locale;

    const-string v3, "he"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "\u05e2\u05d1\u05e8\u05d9\u05ea"

    const v4, 0x7f0800fd

    invoke-direct {v1, v3, v2, v4}, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;-><init>(Ljava/lang/String;Ljava/util/Locale;I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 32
    new-instance v1, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ru"

    const-string v4, "RU"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439"

    const v4, 0x7f0800ff

    invoke-direct {v1, v3, v2, v4}, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;-><init>(Ljava/lang/String;Ljava/util/Locale;I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 33
    new-instance v1, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    const-string v3, "KOREA"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "\u1112\u1161\u11ab\u1100\u116e\u11a8\u110b\u1165"

    const v4, 0x7f0800fe

    invoke-direct {v1, v3, v2, v4}, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;-><init>(Ljava/lang/String;Ljava/util/Locale;I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 34
    new-instance v1, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;

    sget-object v2, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    const-string v3, "FRENCH"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "French"

    const v4, 0x7f0800fc

    invoke-direct {v1, v3, v2, v4}, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;-><init>(Ljava/lang/String;Ljava/util/Locale;I)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 35
    new-instance v1, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;

    sget-object v2, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    const-string v3, "GERMAN"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "German"

    const v4, 0x7f0800f9

    invoke-direct {v1, v3, v2, v4}, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;-><init>(Ljava/lang/String;Ljava/util/Locale;I)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 27
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/innioasis/y1/activity/LanguageActivity;->languageList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLanguageList$cp()Ljava/util/List;
    .locals 1

    .line 22
    sget-object v0, Lcom/innioasis/y1/activity/LanguageActivity;->languageList:Ljava/util/List;

    return-object v0
.end method

.method private final selItem()V
    .locals 3

    .line 135
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityLanguageBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityLanguageBinding;->image:Landroid/widget/ImageView;

    sget-object v1, Lcom/innioasis/y1/activity/LanguageActivity;->languageList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->getMark()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;->getImage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public antiClockwise()V
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->getMark()I

    move-result v0

    if-lez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->getMark()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/LanguageActivity;->setMark(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/LanguageActivity;->setMark(I)V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/innioasis/y1/activity/LanguageActivity;->adapter:Lcom/innioasis/y1/base/BaseBindingAdapter;

    if-nez v0, :cond_1

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyDataSetChanged()V

    .line 99
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityLanguageBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityLanguageBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 100
    invoke-direct {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->selItem()V

    return-void
.end method

.method public clockwise()V
    .locals 3

    .line 81
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->getMark()I

    move-result v0

    sget-object v1, Lcom/innioasis/y1/activity/LanguageActivity;->languageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->getMark()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/LanguageActivity;->setMark(I)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/LanguageActivity;->setMark(I)V

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/innioasis/y1/activity/LanguageActivity;->adapter:Lcom/innioasis/y1/base/BaseBindingAdapter;

    if-nez v0, :cond_1

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyDataSetChanged()V

    .line 87
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityLanguageBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityLanguageBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 88
    invoke-direct {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->selItem()V

    return-void
.end method

.method public confirm()V
    .locals 3

    .line 108
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/music/util/Other;->setLanguage(I)V

    .line 109
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->getMark()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "MONOSPACE"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "Typeface::class.java.getDeclaredField(\"MONOSPACE\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 112
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/innioasis/y1/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/innioasis/y1/activity/LanguageActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->finish()V

    :cond_0
    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivityLanguageBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivityLanguageBinding;
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityLanguageBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityLanguageBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 5

    const v0, 0x7f110148

    .line 49
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/LanguageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.page_language)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/LanguageActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getLanguage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/LanguageActivity;->setMark(I)V

    .line 52
    new-instance v0, Lcom/innioasis/y1/activity/LanguageActivity$initView$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/LanguageActivity$initView$1;-><init>(Lcom/innioasis/y1/activity/LanguageActivity;)V

    check-cast v0, Lcom/innioasis/y1/base/BaseBindingAdapter;

    iput-object v0, p0, Lcom/innioasis/y1/activity/LanguageActivity;->adapter:Lcom/innioasis/y1/base/BaseBindingAdapter;

    .line 72
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityLanguageBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityLanguageBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/innioasis/y1/activity/LanguageActivity;->adapter:Lcom/innioasis/y1/base/BaseBindingAdapter;

    const/4 v2, 0x0

    const-string v3, "adapter"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 73
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityLanguageBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityLanguageBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 74
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityLanguageBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityLanguageBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 75
    iget-object v0, p0, Lcom/innioasis/y1/activity/LanguageActivity;->adapter:Lcom/innioasis/y1/base/BaseBindingAdapter;

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    sget-object v0, Lcom/innioasis/y1/activity/LanguageActivity;->languageList:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v2, v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->setList(Ljava/util/Collection;)V

    .line 76
    invoke-direct {p0}, Lcom/innioasis/y1/activity/LanguageActivity;->selItem()V

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
