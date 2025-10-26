.class public final Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaUnmountableReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$Companion;,
        Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u0000 \u000f2\u00020\u0001:\u0002\u000f\u0010B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J$\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00040\u000bH\u0002J$\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00040\u000bH\u0002J$\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00040\u000bH\u0002\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "()V",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "showAskFormatDialog",
        "block",
        "Lkotlin/Function1;",
        "",
        "showNoFormatDialog",
        "showYesFormatDialog",
        "Companion",
        "FormatDialog",
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
.field public static final Companion:Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$Companion;

.field private static asked:Z

.field private static curDialog:Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;->Companion:Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCurDialog$cp()Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;
    .locals 1

    .line 21
    sget-object v0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;->curDialog:Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;

    return-object v0
.end method

.method public static final synthetic access$setCurDialog$cp(Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;)V
    .locals 0

    .line 21
    sput-object p0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;->curDialog:Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;

    return-void
.end method

.method public static final synthetic access$showNoFormatDialog(Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;->showNoFormatDialog(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$showYesFormatDialog(Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;->showYesFormatDialog(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final showAskFormatDialog(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;-><init>(Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;->curDialog:Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;

    const v1, 0x7f11002e

    .line 87
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.ask_format_message)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f1101d1

    .line 88
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f110136

    .line 89
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 86
    new-instance p1, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$showAskFormatDialog$1;

    invoke-direct {p1, p2}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$showAskFormatDialog$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-virtual/range {v0 .. v6}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->setAndShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final showNoFormatDialog(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 111
    new-instance v0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;-><init>(Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;->curDialog:Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;

    const v1, 0x7f110138

    .line 113
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.no_format_message)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f1100bc

    .line 114
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1100b5

    .line 115
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 112
    new-instance p1, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$showNoFormatDialog$1;

    invoke-direct {p1, p2}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$showNoFormatDialog$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-virtual/range {v0 .. v6}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->setAndShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final showYesFormatDialog(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;-><init>(Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;->curDialog:Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;

    const v1, 0x7f1101d2

    .line 100
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.yes_format_message)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f1100b5

    .line 101
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f11006d

    .line 102
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 99
    new-instance p1, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$showYesFormatDialog$1;

    invoke-direct {p1, p2}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$showYesFormatDialog$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-virtual/range {v0 .. v6}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->setAndShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_0

    const-string v0, "PATH"

    .line 57
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 58
    :goto_0
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " asked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;->asked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    .line 60
    :cond_1
    sget-boolean v0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;->asked:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 61
    sput-boolean v0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;->asked:Z

    .line 63
    new-instance v0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$onReceive$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$onReceive$1;-><init>(Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;Landroid/content/Context;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1, v0}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;->showAskFormatDialog(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    :cond_3
    :goto_1
    return-void
.end method
