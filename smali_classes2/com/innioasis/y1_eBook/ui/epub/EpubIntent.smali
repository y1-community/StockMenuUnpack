.class public abstract Lcom/innioasis/y1_eBook/ui/epub/EpubIntent;
.super Lcom/innioasis/y1_eBook/base/BaseIntent;
.source "EpubIntent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$InitBook;,
        Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$SwitchPageByOffset;,
        Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$SwitchPageByIndex;,
        Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$GetImage;,
        Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$JumpChapter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0005\u0003\u0004\u0005\u0006\u0007B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0005\u0008\t\n\u000b\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/ui/epub/EpubIntent;",
        "Lcom/innioasis/y1_eBook/base/BaseIntent;",
        "()V",
        "GetImage",
        "InitBook",
        "JumpChapter",
        "SwitchPageByIndex",
        "SwitchPageByOffset",
        "Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$GetImage;",
        "Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$InitBook;",
        "Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$JumpChapter;",
        "Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$SwitchPageByIndex;",
        "Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$SwitchPageByOffset;",
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

    .line 5
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/base/BaseIntent;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent;-><init>()V

    return-void
.end method
