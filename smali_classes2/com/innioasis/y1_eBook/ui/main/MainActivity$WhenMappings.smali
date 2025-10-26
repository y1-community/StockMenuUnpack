.class public final synthetic Lcom/innioasis/y1_eBook/ui/main/MainActivity$WhenMappings;
.super Ljava/lang/Object;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1_eBook/ui/main/MainActivity;
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
    .locals 9

    invoke-static {}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->values()[Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LEFT:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->RIGHT:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->BOTTOM:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->TOP:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->CENTER:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/4 v6, 0x5

    aput v6, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_LEFT_START:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/4 v7, 0x6

    aput v7, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_LEFT_ING:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/4 v8, 0x7

    aput v8, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_LEFT_END:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/16 v8, 0x8

    aput v8, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_RIGHT_START:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/16 v8, 0x9

    aput v8, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_RIGHT_ING:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/16 v8, 0xa

    aput v8, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_RIGHT_END:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/16 v8, 0xb

    aput v8, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_TOP_START:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/16 v8, 0xc

    aput v8, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_TOP_ING:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/16 v8, 0xd

    aput v8, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_TOP_END:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/16 v8, 0xe

    aput v8, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_BOTTOM_START:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/16 v8, 0xf

    aput v8, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_BOTTOM_ING:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/16 v8, 0x10

    aput v8, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_BOTTOM_END:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/16 v8, 0x11

    aput v8, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_CENTER_START:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/16 v8, 0x12

    aput v8, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_CENTER_ING:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/16 v8, 0x13

    aput v8, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->LONG_CENTER_END:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/16 v8, 0x14

    aput v8, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->CLOCK:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/16 v8, 0x15

    aput v8, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ANTI_CLOCK:Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/base/BaseActivity$Direction;->ordinal()I

    move-result v1

    const/16 v8, 0x16

    aput v8, v0, v1

    sput-object v0, Lcom/innioasis/y1_eBook/ui/main/MainActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;->values()[Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;->TXT:Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;->EPUB:Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;->PDF:Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;->MOBI:Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;->DOCX:Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sget-object v1, Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;->FB2:Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;

    invoke-virtual {v1}, Lcom/innioasis/y1_eBook/data/database/entities/Book$Type;->ordinal()I

    move-result v1

    aput v7, v0, v1

    sput-object v0, Lcom/innioasis/y1_eBook/ui/main/MainActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
