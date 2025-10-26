.class Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$NullField;
.super Ljava/text/Format$Field;
.source "FormattedValueStringBuilderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NullField"
.end annotation


# static fields
.field static final END:Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$NullField;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 150
    new-instance v0, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$NullField;

    const-string v1, "end"

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$NullField;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$NullField;->END:Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$NullField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    return-void
.end method
