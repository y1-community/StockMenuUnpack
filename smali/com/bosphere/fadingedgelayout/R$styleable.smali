.class public final Lcom/bosphere/fadingedgelayout/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bosphere/fadingedgelayout/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FadingEdgeLayout:[I

.field public static final FadingEdgeLayout_fel_edge:I = 0x0

.field public static final FadingEdgeLayout_fel_size_bottom:I = 0x1

.field public static final FadingEdgeLayout_fel_size_left:I = 0x2

.field public static final FadingEdgeLayout_fel_size_right:I = 0x3

.field public static final FadingEdgeLayout_fel_size_top:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bosphere/fadingedgelayout/R$styleable;->FadingEdgeLayout:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f04019b
        0x7f04019c
        0x7f04019d
        0x7f04019e
        0x7f04019f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
