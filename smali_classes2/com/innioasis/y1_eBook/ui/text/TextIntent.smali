.class public abstract Lcom/innioasis/y1_eBook/ui/text/TextIntent;
.super Lcom/innioasis/y1_eBook/base/BaseIntent;
.source "TextIntent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1_eBook/ui/text/TextIntent$InitBook;,
        Lcom/innioasis/y1_eBook/ui/text/TextIntent$GetNextContent;,
        Lcom/innioasis/y1_eBook/ui/text/TextIntent$GetLastContent;,
        Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;,
        Lcom/innioasis/y1_eBook/ui/text/TextIntent$GetImage;,
        Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveBookMark;,
        Lcom/innioasis/y1_eBook/ui/text/TextIntent$GetBookMarkList;,
        Lcom/innioasis/y1_eBook/ui/text/TextIntent$JumpBookMark;,
        Lcom/innioasis/y1_eBook/ui/text/TextIntent$DeleteBookMark;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\t\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000bB\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\t\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/ui/text/TextIntent;",
        "Lcom/innioasis/y1_eBook/base/BaseIntent;",
        "()V",
        "DeleteBookMark",
        "GetBookMarkList",
        "GetImage",
        "GetLastContent",
        "GetNextContent",
        "InitBook",
        "JumpBookMark",
        "SaveBookMark",
        "SaveProgress",
        "Lcom/innioasis/y1_eBook/ui/text/TextIntent$DeleteBookMark;",
        "Lcom/innioasis/y1_eBook/ui/text/TextIntent$GetBookMarkList;",
        "Lcom/innioasis/y1_eBook/ui/text/TextIntent$GetImage;",
        "Lcom/innioasis/y1_eBook/ui/text/TextIntent$GetLastContent;",
        "Lcom/innioasis/y1_eBook/ui/text/TextIntent$GetNextContent;",
        "Lcom/innioasis/y1_eBook/ui/text/TextIntent$InitBook;",
        "Lcom/innioasis/y1_eBook/ui/text/TextIntent$JumpBookMark;",
        "Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveBookMark;",
        "Lcom/innioasis/y1_eBook/ui/text/TextIntent$SaveProgress;",
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

    .line 6
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/base/BaseIntent;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/text/TextIntent;-><init>()V

    return-void
.end method
