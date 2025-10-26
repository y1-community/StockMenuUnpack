.class Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;
.super Ljava/text/Format$Field;
.source "FormattedValueFieldPositionIteratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldWithValue"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x356e38214ef032b9L


# instance fields
.field public final field:Ljava/text/Format$Field;

.field public final value:I


# direct methods
.method public constructor <init>(Ljava/text/Format$Field;I)V
    .locals 1

    .line 32
    invoke-virtual {p1}, Ljava/text/Format$Field;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;->field:Ljava/text/Format$Field;

    .line 34
    iput p2, p0, Lcom/ibm/icu/impl/FormattedValueFieldPositionIteratorImpl$FieldWithValue;->value:I

    return-void
.end method
