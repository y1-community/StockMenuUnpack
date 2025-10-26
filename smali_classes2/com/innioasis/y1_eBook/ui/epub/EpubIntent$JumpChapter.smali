.class public final Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$JumpChapter;
.super Lcom/innioasis/y1_eBook/ui/epub/EpubIntent;
.source "EpubIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1_eBook/ui/epub/EpubIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JumpChapter"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$JumpChapter;",
        "Lcom/innioasis/y1_eBook/ui/epub/EpubIntent;",
        "()V",
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
.field public static final INSTANCE:Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$JumpChapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$JumpChapter;

    invoke-direct {v0}, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$JumpChapter;-><init>()V

    sput-object v0, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$JumpChapter;->INSTANCE:Lcom/innioasis/y1_eBook/ui/epub/EpubIntent$JumpChapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0}, Lcom/innioasis/y1_eBook/ui/epub/EpubIntent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
