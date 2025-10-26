.class final Lcom/innioasis/y1/utils/InputMethodDialog$charsTable$2;
.super Lkotlin/jvm/internal/Lambda;
.source "InputMethodDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/utils/InputMethodDialog;-><init>(Landroid/app/Activity;Lcom/innioasis/y1/utils/InputMethodDialog$Callback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/innioasis/y1/utils/InputMethodDialog$charsTable$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/innioasis/y1/utils/InputMethodDialog$charsTable$2;

    invoke-direct {v0}, Lcom/innioasis/y1/utils/InputMethodDialog$charsTable$2;-><init>()V

    sput-object v0, Lcom/innioasis/y1/utils/InputMethodDialog$charsTable$2;->INSTANCE:Lcom/innioasis/y1/utils/InputMethodDialog$charsTable$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/InputMethodDialog$charsTable$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 42
    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getLanguage()I

    move-result v1

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    const/16 v1, 0x21

    new-array v1, v1, [Ljava/lang/String;

    const-string v5, "\u0410"

    aput-object v5, v1, v3

    const-string v3, "\u0411"

    const/4 v5, 0x1

    aput-object v3, v1, v5

    const/4 v3, 0x2

    const-string v5, "\u0412"

    aput-object v5, v1, v3

    const/4 v3, 0x3

    const-string v5, "\u0413"

    aput-object v5, v1, v3

    const-string v3, "\u0414"

    aput-object v3, v1, v4

    const/4 v3, 0x5

    const-string v4, "\u0415"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "\u0401"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "\u0416"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string v4, "\u0417"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    const-string v4, "\u0418"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    const-string v4, "\u0419"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    const-string v4, "\u041a"

    aput-object v4, v1, v3

    const/16 v3, 0xc

    const-string v4, "\u041b"

    aput-object v4, v1, v3

    const/16 v3, 0xd

    const-string v4, "\u041c"

    aput-object v4, v1, v3

    const/16 v3, 0xe

    const-string v4, "\u041d"

    aput-object v4, v1, v3

    const/16 v3, 0xf

    const-string v4, "\u041e"

    aput-object v4, v1, v3

    const/16 v3, 0x10

    const-string v4, "\u041f"

    aput-object v4, v1, v3

    const/16 v3, 0x11

    const-string v4, "\u0420"

    aput-object v4, v1, v3

    const/16 v3, 0x12

    const-string v4, "\u0421"

    aput-object v4, v1, v3

    const/16 v3, 0x13

    const-string v4, "\u0422"

    aput-object v4, v1, v3

    const/16 v3, 0x14

    const-string v4, "\u0423"

    aput-object v4, v1, v3

    const/16 v3, 0x15

    const-string v4, "\u0424"

    aput-object v4, v1, v3

    const/16 v3, 0x16

    const-string v4, "\u0425"

    aput-object v4, v1, v3

    const/16 v3, 0x17

    const-string v4, "\u0426"

    aput-object v4, v1, v3

    const/16 v3, 0x18

    const-string v4, "\u0427"

    aput-object v4, v1, v3

    const/16 v3, 0x19

    const-string v4, "\u0428"

    aput-object v4, v1, v3

    const-string v3, "\u0429"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "\u042a"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "\u042b"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "\u042c"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "\u042d"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "\u042e"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "\u042f"

    aput-object v3, v1, v2

    .line 44
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    add-int/lit8 v1, v3, 0x41

    int-to-char v1, v1

    .line 53
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method
