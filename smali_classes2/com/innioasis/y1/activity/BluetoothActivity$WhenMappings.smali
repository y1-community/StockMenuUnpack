.class public final synthetic Lcom/innioasis/y1/activity/BluetoothActivity$WhenMappings;
.super Ljava/lang/Object;
.source "BluetoothActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/activity/BluetoothActivity;
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

.field public static final synthetic $EnumSwitchMapping$2:[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    invoke-static {}, Lcom/innioasis/y1/utils/BLUtils$State;->values()[Lcom/innioasis/y1/utils/BLUtils$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$State;->STATE_OFF:Lcom/innioasis/y1/utils/BLUtils$State;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/BLUtils$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$State;->STATE_ON:Lcom/innioasis/y1/utils/BLUtils$State;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/BLUtils$State;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$State;->STATE_TURNING_ON:Lcom/innioasis/y1/utils/BLUtils$State;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/BLUtils$State;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$State;->STATE_TURNING_OFF:Lcom/innioasis/y1/utils/BLUtils$State;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/BLUtils$State;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sput-object v0, Lcom/innioasis/y1/activity/BluetoothActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->values()[Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->BOND_SUCCESS:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->BOND_ING:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->BOND_FAIL:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->SEARCHS_ING:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->SEARCHS_START:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->ordinal()I

    move-result v1

    const/4 v6, 0x5

    aput v6, v0, v1

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->SEARCHS_END:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->ordinal()I

    move-result v1

    const/4 v7, 0x6

    aput v7, v0, v1

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->SEARCHS:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->ordinal()I

    move-result v1

    const/4 v8, 0x7

    aput v8, v0, v1

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->CONNECT_ING:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->ordinal()I

    move-result v1

    const/16 v9, 0x8

    aput v9, v0, v1

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->CONNECT_SUCCESS:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->ordinal()I

    move-result v1

    const/16 v10, 0x9

    aput v10, v0, v1

    sget-object v1, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->CONNECT_FAIL:Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/BLUtils$DeviceSTATE;->ordinal()I

    move-result v1

    const/16 v10, 0xa

    aput v10, v0, v1

    sput-object v0, Lcom/innioasis/y1/activity/BluetoothActivity$WhenMappings;->$EnumSwitchMapping$1:[I

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

    aput v6, v0, v1

    sget-object v1, Lcom/innioasis/y1/base/BaseActivity$Direction;->LRIGHT:Lcom/innioasis/y1/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    aput v7, v0, v1

    sget-object v1, Lcom/innioasis/y1/base/BaseActivity$Direction;->LBOTTOM:Lcom/innioasis/y1/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    aput v8, v0, v1

    sget-object v1, Lcom/innioasis/y1/base/BaseActivity$Direction;->LTOP:Lcom/innioasis/y1/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    aput v9, v0, v1

    sput-object v0, Lcom/innioasis/y1/activity/BluetoothActivity$WhenMappings;->$EnumSwitchMapping$2:[I

    return-void
.end method
