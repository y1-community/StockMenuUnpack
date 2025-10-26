.class public Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;
.super Ljava/lang/Object;
.source "FormattedValueStringBuilderImpl.java"

# interfaces
.implements Lcom/ibm/icu/impl/FormattedStringBuilder$FieldWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpanFieldPlaceholder"
.end annotation


# instance fields
.field public length:I

.field public normalField:Ljava/text/Format$Field;

.field public spanField:Lcom/ibm/icu/text/UFormat$SpanField;

.field public start:I

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unwrap()Ljava/text/Format$Field;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl$SpanFieldPlaceholder;->normalField:Ljava/text/Format$Field;

    return-object v0
.end method
