.class public final Lcom/innioasis/y1/activity/LanguageActivity$Companion;
.super Ljava/lang/Object;
.source "LanguageActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/activity/LanguageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0008B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/LanguageActivity$Companion;",
        "",
        "()V",
        "languageList",
        "",
        "Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;",
        "getLanguageList",
        "()Ljava/util/List;",
        "Language",
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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/innioasis/y1/activity/LanguageActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lcom/innioasis/y1/activity/LanguageActivity;->access$getLanguageList$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
