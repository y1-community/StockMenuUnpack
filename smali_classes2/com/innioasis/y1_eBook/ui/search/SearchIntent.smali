.class public abstract Lcom/innioasis/y1_eBook/ui/search/SearchIntent;
.super Lcom/innioasis/y1_eBook/base/BaseIntent;
.source "SearchIntent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1_eBook/ui/search/SearchIntent$GetFileBook;,
        Lcom/innioasis/y1_eBook/ui/search/SearchIntent$SaveBook;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0005\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/ui/search/SearchIntent;",
        "Lcom/innioasis/y1_eBook/base/BaseIntent;",
        "()V",
        "GetFileBook",
        "SaveBook",
        "Lcom/innioasis/y1_eBook/ui/search/SearchIntent$GetFileBook;",
        "Lcom/innioasis/y1_eBook/ui/search/SearchIntent$SaveBook;",
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

    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/search/SearchIntent;-><init>()V

    return-void
.end method
