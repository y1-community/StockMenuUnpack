.class public final Lcom/innioasis/y1/utils/Blur;
.super Ljava/lang/Object;
.source "Blur.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\u0004J$\u0010\n\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/innioasis/y1/utils/Blur;",
        "",
        "()V",
        "height",
        "",
        "width",
        "createBlurBitmap",
        "Landroid/graphics/Bitmap;",
        "sentBitmap",
        "radius",
        "goBlur",
        "bitmap",
        "",
        "mContext",
        "Landroid/content/Context;",
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
.field public static final INSTANCE:Lcom/innioasis/y1/utils/Blur;

.field private static height:I

.field private static width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/innioasis/y1/utils/Blur;

    invoke-direct {v0}, Lcom/innioasis/y1/utils/Blur;-><init>()V

    sput-object v0, Lcom/innioasis/y1/utils/Blur;->INSTANCE:Lcom/innioasis/y1/utils/Blur;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createBlurBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 37

    move-object/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 56
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-ge v1, v4, :cond_1

    return-object v2

    .line 60
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 61
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int v13, v2, v3

    .line 62
    new-array v14, v13, [I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    move-object v6, v14

    move v8, v2

    move v11, v2

    move v12, v3

    .line 63
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v5, v2, -0x1

    add-int/lit8 v6, v3, -0x1

    add-int v7, v1, v1

    add-int/2addr v7, v4

    .line 68
    new-array v8, v13, [I

    .line 69
    new-array v9, v13, [I

    .line 70
    new-array v10, v13, [I

    .line 81
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    new-array v11, v11, [I

    add-int/lit8 v12, v7, 0x1

    shr-int/2addr v12, v4

    mul-int v12, v12, v12

    mul-int/lit16 v13, v12, 0x100

    .line 84
    new-array v15, v13, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v13, :cond_2

    .line 87
    div-int v17, v4, v12

    aput v17, v15, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 92
    :cond_2
    new-array v4, v7, [[I

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v7, :cond_3

    const/4 v13, 0x3

    new-array v13, v13, [I

    .line 94
    aput-object v13, v4, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v12, v1, 0x1

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_2
    const/16 v19, 0x2

    if-ge v13, v3, :cond_8

    move-object/from16 v20, v0

    neg-int v0, v1

    move/from16 v29, v3

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move v3, v0

    const/4 v0, 0x0

    :goto_3
    const v30, 0xff00

    const/high16 v31, 0xff0000

    if-gt v3, v1, :cond_5

    move/from16 v32, v6

    move-object/from16 v33, v11

    const/4 v6, 0x0

    .line 121
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int v11, v17, v11

    aget v11, v14, v11

    add-int v34, v3, v1

    .line 122
    aget-object v34, v4, v34

    and-int v31, v11, v31

    shr-int/lit8 v31, v31, 0x10

    .line 123
    aput v31, v34, v6

    and-int v30, v11, v30

    shr-int/lit8 v30, v30, 0x8

    const/16 v16, 0x1

    .line 124
    aput v30, v34, v16

    and-int/lit16 v11, v11, 0xff

    .line 125
    aput v11, v34, v19

    .line 126
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    sub-int v11, v12, v11

    .line 127
    aget v30, v34, v6

    mul-int v30, v30, v11

    add-int v0, v0, v30

    .line 128
    aget v30, v34, v16

    mul-int v30, v30, v11

    add-int v21, v21, v30

    .line 129
    aget v30, v34, v19

    mul-int v30, v30, v11

    add-int v22, v22, v30

    if-lez v3, :cond_4

    .line 131
    aget v11, v34, v6

    add-int v26, v26, v11

    .line 132
    aget v11, v34, v16

    add-int v27, v27, v11

    .line 133
    aget v11, v34, v19

    add-int v28, v28, v11

    goto :goto_4

    .line 135
    :cond_4
    aget v11, v34, v6

    add-int v23, v23, v11

    .line 136
    aget v6, v34, v16

    add-int v24, v24, v6

    .line 137
    aget v6, v34, v19

    add-int v25, v25, v6

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move/from16 v6, v32

    move-object/from16 v11, v33

    goto :goto_3

    :cond_5
    move/from16 v32, v6

    move-object/from16 v33, v11

    move v3, v0

    move v6, v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v2, :cond_7

    .line 144
    aget v11, v15, v3

    aput v11, v8, v17

    .line 145
    aget v11, v15, v21

    aput v11, v9, v17

    .line 146
    aget v11, v15, v22

    aput v11, v10, v17

    sub-int v3, v3, v23

    sub-int v21, v21, v24

    sub-int v22, v22, v25

    sub-int v11, v6, v1

    add-int/2addr v11, v7

    .line 151
    rem-int/2addr v11, v7

    aget-object v11, v4, v11

    const/16 v34, 0x0

    .line 152
    aget v35, v11, v34

    sub-int v23, v23, v35

    const/16 v16, 0x1

    .line 153
    aget v34, v11, v16

    sub-int v24, v24, v34

    .line 154
    aget v34, v11, v19

    sub-int v25, v25, v34

    if-nez v13, :cond_6

    add-int v34, v0, v1

    move-object/from16 v35, v15

    add-int/lit8 v15, v34, 0x1

    .line 156
    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    aput v15, v33, v0

    goto :goto_6

    :cond_6
    move-object/from16 v35, v15

    .line 158
    :goto_6
    aget v15, v33, v0

    add-int v15, v18, v15

    aget v15, v14, v15

    and-int v34, v15, v31

    shr-int/lit8 v34, v34, 0x10

    const/16 v36, 0x0

    .line 159
    aput v34, v11, v36

    and-int v34, v15, v30

    shr-int/lit8 v34, v34, 0x8

    const/16 v16, 0x1

    .line 160
    aput v34, v11, v16

    and-int/lit16 v15, v15, 0xff

    .line 161
    aput v15, v11, v19

    .line 162
    aget v15, v11, v36

    add-int v26, v26, v15

    .line 163
    aget v15, v11, v16

    add-int v27, v27, v15

    .line 164
    aget v11, v11, v19

    add-int v28, v28, v11

    add-int v3, v3, v26

    add-int v21, v21, v27

    add-int v22, v22, v28

    add-int/lit8 v6, v6, 0x1

    .line 168
    rem-int/2addr v6, v7

    .line 169
    rem-int v11, v6, v7

    aget-object v11, v4, v11

    const/4 v15, 0x0

    .line 170
    aget v34, v11, v15

    add-int v23, v23, v34

    const/16 v16, 0x1

    .line 171
    aget v34, v11, v16

    add-int v24, v24, v34

    .line 172
    aget v34, v11, v19

    add-int v25, v25, v34

    .line 173
    aget v34, v11, v15

    sub-int v26, v26, v34

    .line 174
    aget v15, v11, v16

    sub-int v27, v27, v15

    .line 175
    aget v11, v11, v19

    sub-int v28, v28, v11

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v15, v35

    goto/16 :goto_5

    :cond_7
    move-object/from16 v35, v15

    add-int v18, v18, v2

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v20

    move/from16 v3, v29

    move/from16 v6, v32

    move-object/from16 v11, v33

    goto/16 :goto_2

    :cond_8
    move-object/from16 v20, v0

    move/from16 v29, v3

    move/from16 v32, v6

    move-object/from16 v33, v11

    move-object/from16 v35, v15

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v2, :cond_e

    neg-int v0, v1

    mul-int v3, v0, v2

    move/from16 v22, v7

    move-object/from16 v23, v14

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    move v7, v0

    move v14, v3

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_8
    if-gt v7, v1, :cond_b

    move/from16 v24, v2

    const/4 v2, 0x0

    .line 196
    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v25

    add-int v25, v25, v6

    add-int v26, v7, v1

    .line 197
    aget-object v26, v4, v26

    .line 198
    aget v27, v8, v25

    aput v27, v26, v2

    .line 199
    aget v2, v9, v25

    const/16 v16, 0x1

    aput v2, v26, v16

    .line 200
    aget v2, v10, v25

    aput v2, v26, v19

    .line 201
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v2, v12, v2

    .line 202
    aget v27, v8, v25

    mul-int v27, v27, v2

    add-int v0, v0, v27

    .line 203
    aget v27, v9, v25

    mul-int v27, v27, v2

    add-int v3, v3, v27

    .line 204
    aget v25, v10, v25

    mul-int v25, v25, v2

    add-int v5, v5, v25

    if-lez v7, :cond_9

    const/4 v2, 0x0

    .line 206
    aget v25, v26, v2

    add-int v17, v17, v25

    const/16 v16, 0x1

    .line 207
    aget v25, v26, v16

    add-int v18, v18, v25

    .line 208
    aget v25, v26, v19

    add-int v21, v21, v25

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    const/16 v16, 0x1

    .line 210
    aget v25, v26, v2

    add-int v11, v11, v25

    .line 211
    aget v2, v26, v16

    add-int/2addr v13, v2

    .line 212
    aget v2, v26, v19

    add-int/2addr v15, v2

    :goto_9
    move/from16 v2, v32

    if-ge v7, v2, :cond_a

    add-int v14, v14, v24

    :cond_a
    add-int/lit8 v7, v7, 0x1

    move/from16 v32, v2

    move/from16 v2, v24

    goto :goto_8

    :cond_b
    move/from16 v24, v2

    move/from16 v2, v32

    move/from16 v26, v1

    move/from16 v25, v6

    move/from16 v14, v29

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v14, :cond_d

    const/high16 v27, -0x1000000

    .line 223
    aget v28, v23, v25

    and-int v27, v28, v27

    aget v28, v35, v0

    shl-int/lit8 v28, v28, 0x10

    or-int v27, v27, v28

    .line 224
    aget v28, v35, v3

    shl-int/lit8 v28, v28, 0x8

    or-int v27, v27, v28

    aget v28, v35, v5

    or-int v27, v27, v28

    .line 223
    aput v27, v23, v25

    sub-int/2addr v0, v11

    sub-int/2addr v3, v13

    sub-int/2addr v5, v15

    sub-int v27, v26, v1

    add-int v27, v27, v22

    .line 229
    rem-int v27, v27, v22

    aget-object v27, v4, v27

    const/16 v28, 0x0

    .line 230
    aget v29, v27, v28

    sub-int v11, v11, v29

    const/16 v16, 0x1

    .line 231
    aget v28, v27, v16

    sub-int v13, v13, v28

    .line 232
    aget v28, v27, v19

    sub-int v15, v15, v28

    if-nez v6, :cond_c

    add-int v1, v7, v12

    .line 234
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int v1, v1, v24

    aput v1, v33, v7

    .line 236
    :cond_c
    aget v1, v33, v7

    add-int/2addr v1, v6

    .line 237
    aget v28, v8, v1

    const/16 v29, 0x0

    aput v28, v27, v29

    .line 238
    aget v28, v9, v1

    const/16 v16, 0x1

    aput v28, v27, v16

    .line 239
    aget v1, v10, v1

    aput v1, v27, v19

    .line 240
    aget v1, v27, v29

    add-int v17, v17, v1

    .line 241
    aget v1, v27, v16

    add-int v18, v18, v1

    .line 242
    aget v1, v27, v19

    add-int v21, v21, v1

    add-int v0, v0, v17

    add-int v3, v3, v18

    add-int v5, v5, v21

    add-int/lit8 v26, v26, 0x1

    .line 246
    rem-int v26, v26, v22

    .line 247
    aget-object v1, v4, v26

    const/16 v27, 0x0

    .line 248
    aget v28, v1, v27

    add-int v11, v11, v28

    const/16 v16, 0x1

    .line 249
    aget v28, v1, v16

    add-int v13, v13, v28

    .line 250
    aget v28, v1, v19

    add-int v15, v15, v28

    .line 251
    aget v28, v1, v27

    sub-int v17, v17, v28

    .line 252
    aget v28, v1, v16

    sub-int v18, v18, v28

    .line 253
    aget v1, v1, v19

    sub-int v21, v21, v1

    add-int v25, v25, v24

    add-int/lit8 v7, v7, 0x1

    move/from16 v1, p2

    goto/16 :goto_a

    :cond_d
    const/16 v16, 0x1

    const/16 v27, 0x0

    add-int/lit8 v6, v6, 0x1

    move/from16 v1, p2

    move/from16 v32, v2

    move/from16 v29, v14

    move/from16 v7, v22

    move-object/from16 v14, v23

    move/from16 v2, v24

    goto/16 :goto_7

    :cond_e
    move/from16 v24, v2

    move-object/from16 v23, v14

    move/from16 v14, v29

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, v20

    move-object/from16 v6, v23

    move/from16 v8, v24

    move/from16 v11, v24

    move v12, v14

    .line 259
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v20
.end method

.method public final goBlur(Landroid/graphics/Bitmap;FLandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sput v0, Lcom/innioasis/y1/utils/Blur;->width:I

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sput v0, Lcom/innioasis/y1/utils/Blur;->height:I

    .line 18
    sget v1, Lcom/innioasis/y1/utils/Blur;->width:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 21
    invoke-static {p3}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p3

    .line 24
    invoke-static {p3}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    .line 27
    invoke-static {p3, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p1

    const-string v2, "createFromBitmap(rs, bitmap)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {p3, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    const-string v3, "createFromBitmap(rs, result)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 34
    invoke-virtual {v1, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 35
    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 38
    invoke-virtual {v2, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 41
    invoke-virtual {p3}, Landroid/renderscript/RenderScript;->destroy()V

    return-object v0
.end method
