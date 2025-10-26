.class public abstract Lcom/innioasis/y1_eBook/ui/text/TextState;
.super Lcom/innioasis/y1_eBook/base/BaseState;
.source "TextState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1_eBook/ui/text/TextState$Toast;,
        Lcom/innioasis/y1_eBook/ui/text/TextState$StartLoading;,
        Lcom/innioasis/y1_eBook/ui/text/TextState$EndLoading;,
        Lcom/innioasis/y1_eBook/ui/text/TextState$InitBookSuccess;,
        Lcom/innioasis/y1_eBook/ui/text/TextState$GetNextContentSuccess;,
        Lcom/innioasis/y1_eBook/ui/text/TextState$GetLastContentSuccess;,
        Lcom/innioasis/y1_eBook/ui/text/TextState$GetBookMarkListSuccess;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0007\u0003\u0004\u0005\u0006\u0007\u0008\tB\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0007\n\u000b\u000c\r\u000e\u000f\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/ui/text/TextState;",
        "Lcom/innioasis/y1_eBook/base/BaseState;",
        "()V",
        "EndLoading",
        "GetBookMarkListSuccess",
        "GetLastContentSuccess",
        "GetNextContentSuccess",
        "InitBookSuccess",
        "StartLoading",
        "Toast",
        "Lcom/innioasis/y1_eBook/ui/text/TextState$EndLoading;",
        "Lcom/innioasis/y1_eBook/ui/text/TextState$GetBookMarkListSuccess;",
        "Lcom/innioasis/y1_eBook/ui/text/TextState$GetLastContentSuccess;",
        "Lcom/innioasis/y1_eBook/ui/text/TextState$GetNextContentSuccess;",
        "Lcom/innioasis/y1_eBook/ui/text/TextState$InitBookSuccess;",
        "Lcom/innioasis/y1_eBook/ui/text/TextState$StartLoading;",
        "Lcom/innioasis/y1_eBook/ui/text/TextState$Toast;",
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

    .line 7
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/base/BaseState;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextState;-><init>()V

    return-void
.end method
