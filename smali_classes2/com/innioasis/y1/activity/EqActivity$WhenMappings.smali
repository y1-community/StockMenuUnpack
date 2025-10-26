.class public final synthetic Lcom/innioasis/y1/activity/EqActivity$WhenMappings;
.super Ljava/lang/Object;
.source "EqActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/activity/EqActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/innioasis/y1/service/PlayerService$Playing;->values()[Lcom/innioasis/y1/service/PlayerService$Playing;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$Playing;->FM:Lcom/innioasis/y1/service/PlayerService$Playing;

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$Playing;->Audiobook:Lcom/innioasis/y1/service/PlayerService$Playing;

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$Playing;->Music:Lcom/innioasis/y1/service/PlayerService$Playing;

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v1, Lcom/innioasis/y1/service/PlayerService$Playing;->None:Lcom/innioasis/y1/service/PlayerService$Playing;

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sput-object v0, Lcom/innioasis/y1/activity/EqActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/innioasis/y1/base/BaseActivity$Direction;->values()[Lcom/innioasis/y1/base/BaseActivity$Direction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/innioasis/y1/base/BaseActivity$Direction;->LEFT:Lcom/innioasis/y1/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/innioasis/y1/base/BaseActivity$Direction;->RIGHT:Lcom/innioasis/y1/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/innioasis/y1/base/BaseActivity$Direction;->BOTTOM:Lcom/innioasis/y1/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/innioasis/y1/base/BaseActivity$Direction;->TOP:Lcom/innioasis/y1/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v1, Lcom/innioasis/y1/base/BaseActivity$Direction;->LLEFT:Lcom/innioasis/y1/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/innioasis/y1/base/BaseActivity$Direction;->LRIGHT:Lcom/innioasis/y1/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/innioasis/y1/base/BaseActivity$Direction;->LBOTTOM:Lcom/innioasis/y1/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcom/innioasis/y1/base/BaseActivity$Direction;->LTOP:Lcom/innioasis/y1/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sput-object v0, Lcom/innioasis/y1/activity/EqActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
